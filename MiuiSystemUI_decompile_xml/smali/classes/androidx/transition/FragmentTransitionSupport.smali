.class public Landroidx/transition/FragmentTransitionSupport;
.super Landroidx/fragment/app/FragmentTransitionImpl;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/FragmentTransitionImpl;-><init>()V

    .line 2
    return-void
    .line 5
.end method

.method public static hasSimpleTarget(Landroidx/transition/Transition;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    .line 2
    invoke-static {p0}, Landroidx/fragment/app/FragmentTransitionImpl;->isNullOrEmpty(Ljava/util/List;)Z

    .line 4
    move-result p0

    .line 7
    if-eqz p0, :cond_1

    .line 8
    const/4 p0, 0x0

    .line 10
    invoke-static {p0}, Landroidx/fragment/app/FragmentTransitionImpl;->isNullOrEmpty(Ljava/util/List;)Z

    .line 11
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    invoke-static {p0}, Landroidx/fragment/app/FragmentTransitionImpl;->isNullOrEmpty(Ljava/util/List;)Z

    .line 17
    move-result p0

    .line 20
    if-nez p0, :cond_0

    .line 21
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 26
    :goto_1
    return p0
    .line 27
.end method


# virtual methods
.method public final addTarget(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Landroidx/transition/Transition;

    .line 2
    invoke-virtual {p2, p1}, Landroidx/transition/Transition;->addTarget(Landroid/view/View;)V

    .line 4
    return-void
    .line 7
.end method

.method public final addTargets(Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Landroidx/transition/Transition;

    .line 2
    if-nez p2, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    instance-of v0, p2, Landroidx/transition/TransitionSet;

    .line 7
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    check-cast p2, Landroidx/transition/TransitionSet;

    .line 12
    iget-object v0, p2, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 16
    move-result v0

    .line 19
    :goto_0
    if-ge v1, v0, :cond_4

    .line 20
    if-ltz v1, :cond_2

    .line 22
    iget-object v2, p2, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 26
    move-result v2

    .line 29
    if-lt v1, v2, :cond_1

    .line 30
    goto :goto_1

    .line 32
    :cond_1
    iget-object v2, p2, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object v2

    .line 38
    check-cast v2, Landroidx/transition/Transition;

    .line 39
    goto :goto_2

    .line 41
    :cond_2
    :goto_1
    const/4 v2, 0x0

    .line 42
    :goto_2
    invoke-virtual {p0, p1, v2}, Landroidx/transition/FragmentTransitionSupport;->addTargets(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 46
    goto :goto_0

    .line 48
    :cond_3
    invoke-static {p2}, Landroidx/transition/FragmentTransitionSupport;->hasSimpleTarget(Landroidx/transition/Transition;)Z

    .line 49
    move-result p0

    .line 52
    if-nez p0, :cond_4

    .line 53
    iget-object p0, p2, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    .line 55
    invoke-static {p0}, Landroidx/fragment/app/FragmentTransitionImpl;->isNullOrEmpty(Ljava/util/List;)Z

    .line 57
    move-result p0

    .line 60
    if-eqz p0, :cond_4

    .line 61
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 63
    move-result p0

    .line 66
    :goto_3
    if-ge v1, p0, :cond_4

    .line 67
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 69
    move-result-object v0

    .line 72
    check-cast v0, Landroid/view/View;

    .line 73
    invoke-virtual {p2, v0}, Landroidx/transition/Transition;->addTarget(Landroid/view/View;)V

    .line 75
    add-int/lit8 v1, v1, 0x1

    .line 78
    goto :goto_3

    .line 80
    :cond_4
    return-void
    .line 81
.end method

.method public final beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Landroidx/transition/Transition;

    .line 2
    invoke-static {p1, p2}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    .line 4
    return-void
    .line 7
.end method

.method public final canHandle(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Landroidx/transition/Transition;

    .line 2
    return p0
    .line 4
.end method

.method public final cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    check-cast p1, Landroidx/transition/Transition;

    .line 4
    invoke-virtual {p1}, Landroidx/transition/Transition;->clone()Landroidx/transition/Transition;

    .line 6
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return-object p0
    .line 12
.end method

.method public final mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/transition/Transition;

    .line 2
    check-cast p2, Landroidx/transition/Transition;

    .line 4
    check-cast p3, Landroidx/transition/Transition;

    .line 6
    if-eqz p1, :cond_0

    .line 8
    if-eqz p2, :cond_0

    .line 10
    new-instance p0, Landroidx/transition/TransitionSet;

    .line 12
    invoke-direct {p0}, Landroidx/transition/TransitionSet;-><init>()V

    .line 14
    invoke-virtual {p0, p1}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)V

    .line 17
    invoke-virtual {p0, p2}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)V

    .line 20
    const/4 p1, 0x1

    .line 23
    invoke-virtual {p0, p1}, Landroidx/transition/TransitionSet;->setOrdering(I)V

    .line 24
    move-object p1, p0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    if-eqz p1, :cond_1

    .line 29
    goto :goto_0

    .line 31
    :cond_1
    if-eqz p2, :cond_2

    .line 32
    move-object p1, p2

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const/4 p1, 0x0

    .line 36
    :goto_0
    if-eqz p3, :cond_4

    .line 37
    new-instance p0, Landroidx/transition/TransitionSet;

    .line 39
    invoke-direct {p0}, Landroidx/transition/TransitionSet;-><init>()V

    .line 41
    if-eqz p1, :cond_3

    .line 44
    invoke-virtual {p0, p1}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)V

    .line 46
    :cond_3
    invoke-virtual {p0, p3}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)V

    .line 49
    return-object p0

    .line 52
    :cond_4
    return-object p1
    .line 53
.end method

.method public final mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p0, Landroidx/transition/TransitionSet;

    .line 2
    invoke-direct {p0}, Landroidx/transition/TransitionSet;-><init>()V

    .line 4
    if-eqz p1, :cond_0

    .line 7
    check-cast p1, Landroidx/transition/Transition;

    .line 9
    invoke-virtual {p0, p1}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)V

    .line 11
    :cond_0
    check-cast p2, Landroidx/transition/Transition;

    .line 14
    invoke-virtual {p0, p2}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)V

    .line 16
    return-object p0
    .line 19
.end method

.method public final replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3

    .line 1
    check-cast p1, Landroidx/transition/Transition;

    .line 2
    instance-of v0, p1, Landroidx/transition/TransitionSet;

    .line 4
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    check-cast p1, Landroidx/transition/TransitionSet;

    .line 9
    iget-object v0, p1, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v0

    .line 16
    :goto_0
    if-ge v1, v0, :cond_5

    .line 17
    if-ltz v1, :cond_1

    .line 19
    iget-object v2, p1, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 23
    move-result v2

    .line 26
    if-lt v1, v2, :cond_0

    .line 27
    goto :goto_1

    .line 29
    :cond_0
    iget-object v2, p1, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 35
    check-cast v2, Landroidx/transition/Transition;

    .line 36
    goto :goto_2

    .line 38
    :cond_1
    :goto_1
    const/4 v2, 0x0

    .line 39
    :goto_2
    invoke-virtual {p0, v2, p2, p3}, Landroidx/transition/FragmentTransitionSupport;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 43
    goto :goto_0

    .line 45
    :cond_2
    invoke-static {p1}, Landroidx/transition/FragmentTransitionSupport;->hasSimpleTarget(Landroidx/transition/Transition;)Z

    .line 46
    move-result p0

    .line 49
    if-nez p0, :cond_5

    .line 50
    iget-object p0, p1, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 54
    move-result v0

    .line 57
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 58
    move-result v2

    .line 61
    if-ne v0, v2, :cond_5

    .line 62
    invoke-interface {p0, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    .line 64
    move-result p0

    .line 67
    if-eqz p0, :cond_5

    .line 68
    if-nez p3, :cond_3

    .line 70
    move p0, v1

    .line 72
    goto :goto_3

    .line 73
    :cond_3
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 74
    move-result p0

    .line 77
    :goto_3
    if-ge v1, p0, :cond_4

    .line 78
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 80
    move-result-object v0

    .line 83
    check-cast v0, Landroid/view/View;

    .line 84
    invoke-virtual {p1, v0}, Landroidx/transition/Transition;->addTarget(Landroid/view/View;)V

    .line 86
    add-int/lit8 v1, v1, 0x1

    .line 89
    goto :goto_3

    .line 91
    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 92
    move-result p0

    .line 95
    :goto_4
    add-int/lit8 p0, p0, -0x1

    .line 96
    if-ltz p0, :cond_5

    .line 98
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 100
    move-result-object p3

    .line 103
    check-cast p3, Landroid/view/View;

    .line 104
    invoke-virtual {p1, p3}, Landroidx/transition/Transition;->removeTarget(Landroid/view/View;)V

    .line 106
    goto :goto_4

    .line 109
    :cond_5
    return-void
    .line 110
.end method

.method public final scheduleHideFragmentView(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/transition/Transition;

    .line 2
    new-instance p0, Landroidx/transition/FragmentTransitionSupport$2;

    .line 4
    invoke-direct {p0, p2, p3}, Landroidx/transition/FragmentTransitionSupport$2;-><init>(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 6
    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)V

    .line 9
    return-void
    .line 12
.end method

.method public final scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 7

    .line 1
    check-cast p1, Landroidx/transition/Transition;

    .line 2
    new-instance v6, Landroidx/transition/FragmentTransitionSupport$3;

    .line 4
    move-object v0, v6

    .line 6
    move-object v1, p0

    .line 7
    move-object v2, p2

    .line 8
    move-object v3, p3

    .line 9
    move-object v4, p4

    .line 10
    move-object v5, p5

    .line 11
    invoke-direct/range {v0 .. v5}, Landroidx/transition/FragmentTransitionSupport$3;-><init>(Landroidx/transition/FragmentTransitionSupport;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 12
    invoke-virtual {p1, v6}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)V

    .line 15
    return-void
    .line 18
.end method

.method public final setEpicenter(Landroid/view/View;Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    check-cast p2, Landroidx/transition/Transition;

    .line 2
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 3
    invoke-static {p0, p1}, Landroidx/fragment/app/FragmentTransitionImpl;->getBoundsOnScreen(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 4
    new-instance p1, Landroidx/transition/FragmentTransitionSupport$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroidx/transition/FragmentTransitionSupport$1;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {p2, p1}, Landroidx/transition/Transition;->setEpicenterCallback(Landroidx/transition/Transition$EpicenterCallback;)V

    :cond_0
    return-void
.end method

.method public final setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 1

    .line 5
    check-cast p1, Landroidx/transition/Transition;

    .line 6
    new-instance p0, Landroidx/transition/FragmentTransitionSupport$1;

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Landroidx/transition/FragmentTransitionSupport$1;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->setEpicenterCallback(Landroidx/transition/Transition$EpicenterCallback;)V

    return-void
.end method

.method public final setListenerForTransitionEnd(Ljava/lang/Object;Landroidx/core/os/CancellationSignal;Landroidx/fragment/app/DefaultSpecialEffectsController$$ExternalSyntheticLambda3;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/transition/Transition;

    .line 2
    new-instance p0, Landroidx/transition/FragmentTransitionSupport$4;

    .line 4
    invoke-direct {p0, p1}, Landroidx/transition/FragmentTransitionSupport$4;-><init>(Landroidx/transition/Transition;)V

    .line 6
    invoke-virtual {p2, p0}, Landroidx/core/os/CancellationSignal;->setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V

    .line 9
    new-instance p0, Landroidx/transition/FragmentTransitionSupport$5;

    .line 12
    invoke-direct {p0, p3}, Landroidx/transition/FragmentTransitionSupport$5;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController$$ExternalSyntheticLambda3;)V

    .line 14
    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)V

    .line 17
    return-void
    .line 20
.end method

.method public final setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    check-cast p1, Landroidx/transition/TransitionSet;

    .line 2
    iget-object v0, p1, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_0

    .line 14
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v3

    .line 19
    check-cast v3, Landroid/view/View;

    .line 20
    invoke-static {v3, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->bfsAddViewChildren(Landroid/view/View;Ljava/util/List;)V

    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-virtual {p0, p3, p1}, Landroidx/transition/FragmentTransitionSupport;->addTargets(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 34
    return-void
    .line 37
.end method

.method public final swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    check-cast p1, Landroidx/transition/TransitionSet;

    .line 2
    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p1, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8
    iget-object v0, p1, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 13
    invoke-virtual {p0, p1, p2, p3}, Landroidx/transition/FragmentTransitionSupport;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 16
    :cond_0
    return-void
    .line 19
.end method

.method public final wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance p0, Landroidx/transition/TransitionSet;

    .line 6
    invoke-direct {p0}, Landroidx/transition/TransitionSet;-><init>()V

    .line 8
    check-cast p1, Landroidx/transition/Transition;

    .line 11
    invoke-virtual {p0, p1}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)V

    .line 13
    return-object p0
    .line 16
.end method
