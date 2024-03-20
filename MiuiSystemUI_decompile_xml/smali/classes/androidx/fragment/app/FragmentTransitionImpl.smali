.class public abstract Landroidx/fragment/app/FragmentTransitionImpl;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static bfsAddViewChildren(Landroid/view/View;Ljava/util/List;)V
    .locals 9

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    const/4 v3, 0x1

    .line 8
    if-ge v2, v0, :cond_1

    .line 9
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v4

    .line 14
    if-ne v4, p0, :cond_0

    .line 15
    move v2, v3

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 19
    goto :goto_0

    .line 21
    :cond_1
    move v2, v1

    .line 22
    :goto_1
    if-eqz v2, :cond_2

    .line 23
    return-void

    .line 25
    :cond_2
    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 26
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 31
    if-eqz v2, :cond_3

    .line 32
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_3
    move p0, v0

    .line 37
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 38
    move-result v2

    .line 41
    if-ge p0, v2, :cond_8

    .line 42
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    move-result-object v2

    .line 47
    check-cast v2, Landroid/view/View;

    .line 48
    instance-of v4, v2, Landroid/view/ViewGroup;

    .line 50
    if-eqz v4, :cond_7

    .line 52
    check-cast v2, Landroid/view/ViewGroup;

    .line 54
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 56
    move-result v4

    .line 59
    move v5, v1

    .line 60
    :goto_3
    if-ge v5, v4, :cond_7

    .line 61
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 63
    move-result-object v6

    .line 66
    move v7, v1

    .line 67
    :goto_4
    if-ge v7, v0, :cond_5

    .line 68
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    move-result-object v8

    .line 73
    if-ne v8, v6, :cond_4

    .line 74
    move v7, v3

    .line 76
    goto :goto_5

    .line 77
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 78
    goto :goto_4

    .line 80
    :cond_5
    move v7, v1

    .line 81
    :goto_5
    if-nez v7, :cond_6

    .line 82
    invoke-static {v6}, Landroidx/core/view/ViewCompat$Api21Impl;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    .line 84
    move-result-object v7

    .line 87
    if-eqz v7, :cond_6

    .line 88
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 93
    goto :goto_3

    .line 95
    :cond_7
    add-int/lit8 p0, p0, 0x1

    .line 96
    goto :goto_2

    .line 98
    :cond_8
    return-void
    .line 99
.end method

.method public static getBoundsOnScreen(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 4

    .line 1
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 2
    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api19Impl;->isAttachedToWindow(Landroid/view/View;)Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    .line 11
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 16
    move-result v1

    .line 19
    int-to-float v1, v1

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 21
    move-result v2

    .line 24
    int-to-float v2, v2

    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    .line 30
    move-result-object v1

    .line 33
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 37
    move-result v1

    .line 40
    int-to-float v1, v1

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 42
    move-result v2

    .line 45
    int-to-float v2, v2

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 50
    move-result-object v1

    .line 53
    :goto_0
    instance-of v2, v1, Landroid/view/View;

    .line 54
    if-eqz v2, :cond_1

    .line 56
    check-cast v1, Landroid/view/View;

    .line 58
    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    .line 60
    move-result v2

    .line 63
    neg-int v2, v2

    .line 64
    int-to-float v2, v2

    .line 65
    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    .line 66
    move-result v3

    .line 69
    neg-int v3, v3

    .line 70
    int-to-float v3, v3

    .line 71
    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 72
    invoke-virtual {v1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    .line 75
    move-result-object v2

    .line 78
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 79
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 82
    move-result v2

    .line 85
    int-to-float v2, v2

    .line 86
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 87
    move-result v3

    .line 90
    int-to-float v3, v3

    .line 91
    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 92
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 95
    move-result-object v1

    .line 98
    goto :goto_0

    .line 99
    :cond_1
    const/4 v1, 0x2

    .line 100
    new-array v1, v1, [I

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 103
    move-result-object p1

    .line 106
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 107
    const/4 p1, 0x0

    .line 110
    aget p1, v1, p1

    .line 111
    int-to-float p1, p1

    .line 113
    const/4 v2, 0x1

    .line 114
    aget v1, v1, v2

    .line 115
    int-to-float v1, v1

    .line 117
    invoke-virtual {v0, p1, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 118
    iget p1, v0, Landroid/graphics/RectF;->left:F

    .line 121
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 123
    move-result p1

    .line 126
    iget v1, v0, Landroid/graphics/RectF;->top:F

    .line 127
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 129
    move-result v1

    .line 132
    iget v2, v0, Landroid/graphics/RectF;->right:F

    .line 133
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 135
    move-result v2

    .line 138
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 139
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 141
    move-result v0

    .line 144
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 145
    return-void
.end method

.method public static isNullOrEmpty(Ljava/util/List;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    .line 2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 4
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    :goto_1
    return p0
    .line 14
.end method


# virtual methods
.method public abstract addTarget(Landroid/view/View;Ljava/lang/Object;)V
.end method

.method public abstract addTargets(Ljava/util/ArrayList;Ljava/lang/Object;)V
.end method

.method public abstract beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V
.end method

.method public abstract canHandle(Ljava/lang/Object;)Z
.end method

.method public abstract cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract scheduleHideFragmentView(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
.end method

.method public abstract scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
.end method

.method public abstract setEpicenter(Landroid/view/View;Ljava/lang/Object;)V
.end method

.method public abstract setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V
.end method

.method public abstract setListenerForTransitionEnd(Ljava/lang/Object;Landroidx/core/os/CancellationSignal;Landroidx/fragment/app/DefaultSpecialEffectsController$$ExternalSyntheticLambda3;)V
.end method

.method public abstract setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
.end method

.method public abstract swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end method

.method public abstract wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;
.end method
