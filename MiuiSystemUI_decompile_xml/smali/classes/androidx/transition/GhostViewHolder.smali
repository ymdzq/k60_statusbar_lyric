.class public final Landroidx/transition/GhostViewHolder;
.super Landroid/widget/FrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAttached:Z

.field public final mParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 6
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 10
    iput-object p1, p0, Landroidx/transition/GhostViewHolder;->mParent:Landroid/view/ViewGroup;

    .line 13
    const v0, 0x7f0a03a6    # @id/ghost_view_holder

    .line 15
    invoke-virtual {p1, v0, p0}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 18
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 21
    move-result-object p1

    .line 24
    invoke-virtual {p1, p0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 25
    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Landroidx/transition/GhostViewHolder;->mAttached:Z

    .line 29
    return-void
    .line 31
.end method

.method public static getParents(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    check-cast v0, Landroid/view/View;

    .line 10
    invoke-static {p0, v0}, Landroidx/transition/GhostViewHolder;->getParents(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    return-void
    .line 18
.end method


# virtual methods
.method public final onViewAdded(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/transition/GhostViewHolder;->mAttached:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewAdded(Landroid/view/View;)V

    .line 6
    return-void

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 10
    const-string p1, "This GhostViewHolder is detached!"

    .line 12
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 14
    throw p0
    .line 17
.end method

.method public final onViewRemoved(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewRemoved(Landroid/view/View;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 5
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 13
    move-result-object v0

    .line 16
    if-eq v0, p1, :cond_1

    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 19
    move-result p1

    .line 22
    if-nez p1, :cond_2

    .line 23
    :cond_1
    iget-object p1, p0, Landroidx/transition/GhostViewHolder;->mParent:Landroid/view/ViewGroup;

    .line 25
    const v0, 0x7f0a03a6    # @id/ghost_view_holder

    .line 27
    const/4 v1, 0x0

    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 31
    iget-object p1, p0, Landroidx/transition/GhostViewHolder;->mParent:Landroid/view/ViewGroup;

    .line 34
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 36
    move-result-object p1

    .line 39
    invoke-virtual {p1, p0}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 40
    iput-boolean v2, p0, Landroidx/transition/GhostViewHolder;->mAttached:Z

    .line 43
    :cond_2
    return-void
    .line 45
.end method
