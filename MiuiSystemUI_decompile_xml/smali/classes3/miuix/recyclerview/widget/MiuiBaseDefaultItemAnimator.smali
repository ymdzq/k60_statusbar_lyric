.class public abstract Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;
.super Landroidx/recyclerview/widget/SimpleItemAnimator;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final sEmptyAddList:Ljava/util/List;

.field public static final sEmptyChangeList:Ljava/util/List;

.field public static final sEmptyMoveList:Ljava/util/List;


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
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    sput-object v0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->sEmptyAddList:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    sput-object v0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->sEmptyMoveList:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    sput-object v0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->sEmptyChangeList:Ljava/util/List;

    .line 21
    return-void
    .line 23
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/SimpleItemAnimator;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iput-object v0, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    iput-object v0, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    iput-object v0, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    .line 40
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    iput-object v0, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    .line 47
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    iput-object v0, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    .line 54
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    iput-object v0, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    .line 61
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    iput-object v0, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    .line 68
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    iput-object v0, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    .line 75
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    iput-object v0, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 80
    return-void
    .line 82
.end method


# virtual methods
.method public final animateAdd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 5
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 8
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 11
    iget-object p0, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    return-void
    .line 19
.end method

.method public final animateAppearance(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 6

    .line 1
    if-eqz p2, :cond_1

    .line 2
    iget v2, p2, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 4
    iget v4, p3, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 6
    if-ne v2, v4, :cond_0

    .line 8
    iget v0, p2, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    .line 10
    iget v1, p3, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    .line 12
    if-eq v0, v1, :cond_1

    .line 14
    :cond_0
    iget v3, p2, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    .line 16
    iget v5, p3, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    .line 18
    move-object v0, p0

    .line 20
    move-object v1, p1

    .line 21
    invoke-virtual/range {v0 .. v5}, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z

    .line 22
    move-result p0

    .line 25
    return p0

    .line 26
    :cond_1
    invoke-virtual {p0, p1}, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->animateAdd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 27
    const/4 p0, 0x1

    .line 30
    return p0
    .line 31
.end method

.method public final animateChange(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 8

    .line 1
    if-ne p1, p2, :cond_0

    .line 2
    move-object v0, p0

    .line 4
    move-object v1, p2

    .line 5
    move v2, p3

    .line 6
    move v3, p4

    .line 7
    move v4, p5

    .line 8
    move v5, p6

    .line 9
    invoke-virtual/range {v0 .. v5}, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z

    .line 10
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    new-instance v7, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$ChangeInfo;

    .line 15
    move-object v0, v7

    .line 17
    move-object v1, p1

    .line 18
    move-object v2, p2

    .line 19
    move v3, p3

    .line 20
    move v4, p4

    .line 21
    move v5, p5

    .line 22
    move v6, p6

    .line 23
    invoke-direct/range {v0 .. v6}, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$ChangeInfo;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    .line 24
    move-object p1, p0

    .line 27
    check-cast p1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    .line 28
    iget-object p2, v7, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 30
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 32
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    .line 34
    move-result p2

    .line 37
    iget-object v0, v7, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 38
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    .line 42
    move-result v0

    .line 45
    iget-object v1, v7, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 46
    invoke-virtual {p1, v1}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 48
    sub-int/2addr p5, p3

    .line 51
    int-to-float p3, p5

    .line 52
    sub-float/2addr p3, p2

    .line 53
    float-to-int p3, p3

    .line 54
    sub-int/2addr p6, p4

    .line 55
    int-to-float p4, p6

    .line 56
    sub-float/2addr p4, v0

    .line 57
    float-to-int p4, p4

    .line 58
    iget-object p5, v7, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 59
    iget-object p5, p5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 61
    invoke-virtual {p5, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 63
    iget-object p2, v7, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 66
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 68
    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 70
    iget-object p2, v7, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 73
    if-eqz p2, :cond_1

    .line 75
    invoke-virtual {p1, p2}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 77
    iget-object p1, v7, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 80
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 82
    neg-int p2, p3

    .line 84
    int-to-float p2, p2

    .line 85
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 86
    iget-object p1, v7, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 89
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 91
    neg-int p2, p4

    .line 93
    int-to-float p2, p2

    .line 94
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 95
    :cond_1
    invoke-virtual {p0, v7}, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->animateChangeImpl(Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$ChangeInfo;)V

    .line 98
    const/4 p0, 0x1

    .line 101
    return p0
    .line 102
.end method

.method public abstract animateChangeImpl(Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$ChangeInfo;)V
.end method

.method public final animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2
    sub-int v0, p4, p2

    .line 5
    sub-int v1, p5, p3

    .line 7
    if-nez v0, :cond_0

    .line 9
    if-nez v1, :cond_0

    .line 11
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 13
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :cond_0
    new-instance v6, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$MoveInfo;

    .line 18
    move-object v0, v6

    .line 20
    move-object v1, p1

    .line 21
    move v2, p2

    .line 22
    move v3, p3

    .line 23
    move v4, p4

    .line 24
    move v5, p5

    .line 25
    invoke-direct/range {v0 .. v5}, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$MoveInfo;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    .line 26
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 29
    sub-int/2addr p2, p4

    .line 31
    int-to-float p2, p2

    .line 32
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 33
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 36
    sub-int/2addr p3, p5

    .line 38
    int-to-float p2, p3

    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 40
    iget-object p0, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    const/4 p0, 0x1

    .line 48
    return p0
    .line 49
.end method

.method public final animateRemove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2
    iget-object p0, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

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
    check-cast p1, Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result p0

    .line 7
    :goto_0
    add-int/lit8 p0, p0, -0x1

    .line 8
    if-ltz p0, :cond_0

    .line 10
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 15
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 16
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 18
    filled-new-array {v0}, [Landroid/view/View;

    .line 20
    move-result-object v0

    .line 23
    invoke-static {v0}, Lmiuix/animation/Folme;->end([Ljava/lang/Object;)V

    .line 24
    goto :goto_0

    .line 27
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 28
    return-void
    .line 31
.end method

.method public final endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 8

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2
    filled-new-array {v0}, [Landroid/view/View;

    .line 4
    move-result-object v1

    .line 7
    invoke-static {v1}, Lmiuix/animation/Folme;->end([Ljava/lang/Object;)V

    .line 8
    iget-object v1, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v2

    .line 16
    :cond_0
    :goto_0
    add-int/lit8 v2, v2, -0x1

    .line 17
    const/4 v3, 0x0

    .line 19
    if-ltz v2, :cond_1

    .line 20
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v4

    .line 25
    check-cast v4, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$MoveInfo;

    .line 26
    iget-object v4, v4, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

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
    goto :goto_0

    .line 44
    :cond_1
    iget-object v1, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {p0, p1, v1}, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->endChangeAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)V

    .line 47
    iget-object v1, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 50
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 52
    move-result v1

    .line 55
    const/high16 v2, 0x3f800000    # 1.0f

    .line 56
    if-eqz v1, :cond_2

    .line 58
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 60
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 63
    :cond_2
    iget-object v1, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    .line 66
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 68
    move-result v1

    .line 71
    if-eqz v1, :cond_3

    .line 72
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 74
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 77
    :cond_3
    iget-object v1, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 80
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 82
    move-result v4

    .line 85
    :goto_1
    add-int/lit8 v4, v4, -0x1

    .line 86
    if-ltz v4, :cond_5

    .line 88
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 90
    move-result-object v5

    .line 93
    check-cast v5, Ljava/util/ArrayList;

    .line 94
    invoke-virtual {p0, p1, v5}, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->endChangeAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)V

    .line 96
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 99
    move-result v5

    .line 102
    if-eqz v5, :cond_4

    .line 103
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 105
    :cond_4
    goto :goto_1

    .line 108
    :cond_5
    iget-object v1, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 109
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 111
    move-result v4

    .line 114
    :goto_2
    add-int/lit8 v4, v4, -0x1

    .line 115
    if-ltz v4, :cond_8

    .line 117
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 119
    move-result-object v5

    .line 122
    check-cast v5, Ljava/util/ArrayList;

    .line 123
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 125
    move-result v6

    .line 128
    :goto_3
    add-int/lit8 v6, v6, -0x1

    .line 129
    if-ltz v6, :cond_7

    .line 131
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 133
    move-result-object v7

    .line 136
    check-cast v7, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$MoveInfo;

    .line 137
    iget-object v7, v7, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 139
    if-ne v7, p1, :cond_6

    .line 141
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 143
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 146
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 149
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 152
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 155
    move-result v5

    .line 158
    if-eqz v5, :cond_7

    .line 159
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 161
    goto :goto_4

    .line 164
    :cond_6
    goto :goto_3

    .line 165
    :cond_7
    :goto_4
    goto :goto_2

    .line 166
    :cond_8
    iget-object v1, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 167
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 169
    move-result v3

    .line 172
    :goto_5
    add-int/lit8 v3, v3, -0x1

    .line 173
    if-ltz v3, :cond_a

    .line 175
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 177
    move-result-object v4

    .line 180
    check-cast v4, Ljava/util/ArrayList;

    .line 181
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 183
    move-result v5

    .line 186
    if-eqz v5, :cond_9

    .line 187
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 189
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 192
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 195
    move-result v4

    .line 198
    if-eqz v4, :cond_9

    .line 199
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 201
    :cond_9
    goto :goto_5

    .line 204
    :cond_a
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 205
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 207
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 210
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 212
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 215
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 217
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 220
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 222
    invoke-virtual {p0}, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->isRunning()Z

    .line 225
    move-result p1

    .line 228
    if-nez p1, :cond_b

    .line 229
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationsFinished()V

    .line 231
    :cond_b
    return-void
    .line 234
.end method

.method public final endAnimations()V
    .locals 8

    .line 1
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

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
    check-cast v3, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$MoveInfo;

    .line 17
    iget-object v4, v3, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 19
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 21
    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 23
    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 26
    iget-object v2, v3, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 29
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 31
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 34
    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

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
    check-cast v4, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$ChangeInfo;

    .line 105
    iget-object v5, v4, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 107
    if-eqz v5, :cond_3

    .line 109
    invoke-virtual {p0, v4, v5}, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->endChangeAnimationIfNecessary(Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    .line 111
    :cond_3
    iget-object v5, v4, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 114
    if-eqz v5, :cond_4

    .line 116
    invoke-virtual {p0, v4, v5}, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->endChangeAnimationIfNecessary(Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    .line 118
    :cond_4
    goto :goto_3

    .line 121
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 122
    invoke-virtual {p0}, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->isRunning()Z

    .line 125
    move-result v0

    .line 128
    if-nez v0, :cond_6

    .line 129
    return-void

    .line 131
    :cond_6
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

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
    check-cast v6, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$MoveInfo;

    .line 160
    iget-object v7, v6, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 162
    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 164
    invoke-virtual {v7, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 166
    invoke-virtual {v7, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 169
    iget-object v6, v6, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

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
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

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
    check-cast v4, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$ChangeInfo;

    .line 271
    iget-object v5, v4, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 273
    if-eqz v5, :cond_d

    .line 275
    invoke-virtual {p0, v4, v5}, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->endChangeAnimationIfNecessary(Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    .line 277
    :cond_d
    iget-object v5, v4, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 280
    if-eqz v5, :cond_e

    .line 282
    invoke-virtual {p0, v4, v5}, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->endChangeAnimationIfNecessary(Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

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
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 298
    invoke-virtual {p0, v0}, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 300
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 303
    invoke-virtual {p0, v0}, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 305
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 308
    invoke-virtual {p0, v0}, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 310
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 313
    invoke-virtual {p0, v0}, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->cancelAll(Ljava/util/List;)V

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
    check-cast v1, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$ChangeInfo;

    .line 14
    invoke-virtual {p0, v1, p1}, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->endChangeAnimationIfNecessary(Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    .line 16
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    iget-object v2, v1, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 22
    if-nez v2, :cond_0

    .line 24
    iget-object v2, v1, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

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

.method public final endChangeAnimationIfNecessary(Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .line 1
    iget-object v0, p1, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-ne v0, p2, :cond_0

    .line 5
    iput-object v1, p1, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p1, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 10
    if-ne v0, p2, :cond_1

    .line 12
    iput-object v1, p1, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

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
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 20
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 28
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 34
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 36
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 44
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 50
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 52
    move-result v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 58
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 60
    move-result v0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 66
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 68
    move-result v0

    .line 71
    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 74
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 76
    move-result v0

    .line 79
    if-eqz v0, :cond_1

    .line 80
    iget-object p0, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

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

.method public abstract resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end method

.method public final runPendingAnimations()V
    .locals 12

    .line 1
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    move-result v1

    .line 7
    xor-int/lit8 v1, v1, 0x1

    .line 8
    iget-object v2, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    move-result v3

    .line 15
    xor-int/lit8 v3, v3, 0x1

    .line 16
    iget-object v4, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 20
    move-result v5

    .line 23
    xor-int/lit8 v5, v5, 0x1

    .line 24
    iget-object v6, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 28
    move-result v7

    .line 31
    xor-int/lit8 v7, v7, 0x1

    .line 32
    if-nez v1, :cond_0

    .line 34
    if-nez v3, :cond_0

    .line 36
    if-nez v5, :cond_0

    .line 38
    if-nez v7, :cond_0

    .line 40
    return-void

    .line 42
    :cond_0
    iget-object v3, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 43
    new-instance v5, Ljava/util/ArrayList;

    .line 45
    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 47
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 53
    iget-object v2, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 56
    new-instance v3, Ljava/util/ArrayList;

    .line 58
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 60
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 66
    iget-object v2, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 69
    new-instance v3, Ljava/util/ArrayList;

    .line 71
    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 73
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 79
    new-instance v2, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$1;

    .line 82
    invoke-direct {v2, p0}, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$1;-><init>(Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;)V

    .line 84
    if-eqz v1, :cond_2

    .line 87
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 89
    move-result-object v1

    .line 92
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    move-result v3

    .line 96
    const/4 v4, 0x0

    .line 97
    if-eqz v3, :cond_1

    .line 98
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    move-result-object v3

    .line 103
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 104
    move-object v5, p0

    .line 106
    check-cast v5, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    .line 107
    iget-object v6, v5, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 109
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v6, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 114
    sget-object v7, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->sAttachedListener:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$1;

    .line 116
    invoke-virtual {v6, v7}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 118
    iget-object v6, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 121
    filled-new-array {v6}, [Landroid/view/View;

    .line 123
    move-result-object v7

    .line 126
    invoke-static {v7}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 127
    move-result-object v7

    .line 130
    invoke-interface {v7}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 131
    move-result-object v7

    .line 134
    sget-object v8, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 135
    const/4 v9, 0x0

    .line 137
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 138
    move-result-object v10

    .line 141
    sget-object v11, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->sSpeedConfig:Lmiuix/animation/base/AnimConfig;

    .line 142
    filled-new-array {v8, v10, v11}, [Ljava/lang/Object;

    .line 144
    move-result-object v10

    .line 147
    invoke-interface {v7, v10}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 148
    filled-new-array {v6}, [Landroid/view/View;

    .line 151
    move-result-object v7

    .line 154
    invoke-static {v7}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 155
    move-result-object v7

    .line 158
    invoke-interface {v7}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 159
    move-result-object v7

    .line 162
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 163
    move-result-object v9

    .line 166
    filled-new-array {v8, v9}, [Ljava/lang/Object;

    .line 167
    move-result-object v8

    .line 170
    invoke-interface {v7, v8}, Lmiuix/animation/IStateStyle;->predictDuration([Ljava/lang/Object;)J

    .line 171
    move-result-wide v7

    .line 174
    new-instance v9, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$2;

    .line 175
    invoke-direct {v9, v5, v3, v4}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$2;-><init>(Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 177
    invoke-virtual {v6, v9, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 180
    goto :goto_0

    .line 183
    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 184
    move-result-object p0

    .line 187
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 188
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 190
    const-wide/16 v3, 0x64

    .line 192
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 194
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 197
    goto :goto_1

    .line 200
    :cond_2
    invoke-virtual {v2}, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$1;->run()V

    .line 201
    :goto_1
    return-void
    .line 204
.end method
