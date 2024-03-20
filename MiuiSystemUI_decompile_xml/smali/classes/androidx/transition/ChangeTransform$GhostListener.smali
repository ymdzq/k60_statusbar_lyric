.class public final Landroidx/transition/ChangeTransform$GhostListener;
.super Landroidx/transition/TransitionListenerAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mGhostView:Landroidx/transition/GhostView;

.field public final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroidx/transition/GhostViewPort;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/transition/ChangeTransform$GhostListener;->mView:Landroid/view/View;

    .line 5
    iput-object p2, p0, Landroidx/transition/ChangeTransform$GhostListener;->mGhostView:Landroidx/transition/GhostView;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 1

    .line 1
    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)V

    .line 2
    sget p1, Landroidx/transition/GhostViewPort;->$r8$clinit:I

    .line 5
    iget-object p0, p0, Landroidx/transition/ChangeTransform$GhostListener;->mView:Landroid/view/View;

    .line 7
    const p1, 0x7f0a03a5    # @id/ghost_view

    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 15
    check-cast p1, Landroidx/transition/GhostViewPort;

    .line 16
    if-eqz p1, :cond_0

    .line 18
    iget v0, p1, Landroidx/transition/GhostViewPort;->mReferences:I

    .line 20
    add-int/lit8 v0, v0, -0x1

    .line 22
    iput v0, p1, Landroidx/transition/GhostViewPort;->mReferences:I

    .line 24
    if-gtz v0, :cond_0

    .line 26
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    .line 28
    move-result-object v0

    .line 31
    check-cast v0, Landroidx/transition/GhostViewHolder;

    .line 32
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 34
    :cond_0
    const p1, 0x7f0a09dc    # @id/transition_transform

    .line 37
    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 41
    const p1, 0x7f0a06ec    # @id/parent_matrix

    .line 44
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 47
    return-void
    .line 50
.end method

.method public final onTransitionPause()V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/transition/ChangeTransform$GhostListener;->mGhostView:Landroidx/transition/GhostView;

    .line 2
    const/4 v0, 0x4

    .line 4
    invoke-interface {p0, v0}, Landroidx/transition/GhostView;->setVisibility(I)V

    .line 5
    return-void
    .line 8
.end method

.method public final onTransitionResume()V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/transition/ChangeTransform$GhostListener;->mGhostView:Landroidx/transition/GhostView;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-interface {p0, v0}, Landroidx/transition/GhostView;->setVisibility(I)V

    .line 5
    return-void
    .line 8
.end method
