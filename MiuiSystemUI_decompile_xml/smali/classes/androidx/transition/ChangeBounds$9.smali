.class public final Landroidx/transition/ChangeBounds$9;
.super Landroidx/transition/TransitionListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mCanceled:Z

.field public final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/transition/ChangeBounds$9;->val$parent:Landroid/view/ViewGroup;

    .line 2
    invoke-direct {p0}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    .line 4
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Landroidx/transition/ChangeBounds$9;->mCanceled:Z

    .line 8
    return-void
    .line 10
.end method


# virtual methods
.method public final onTransitionCancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/transition/ChangeBounds$9;->val$parent:Landroid/view/ViewGroup;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 5
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Landroidx/transition/ChangeBounds$9;->mCanceled:Z

    .line 9
    return-void
    .line 11
.end method

.method public final onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/transition/ChangeBounds$9;->mCanceled:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Landroidx/transition/ChangeBounds$9;->val$parent:Landroid/view/ViewGroup;

    .line 6
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 9
    :cond_0
    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)V

    .line 12
    return-void
    .line 15
.end method

.method public final onTransitionPause()V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/transition/ChangeBounds$9;->val$parent:Landroid/view/ViewGroup;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 5
    return-void
    .line 8
.end method

.method public final onTransitionResume()V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/transition/ChangeBounds$9;->val$parent:Landroid/view/ViewGroup;

    .line 2
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 5
    return-void
    .line 8
.end method
