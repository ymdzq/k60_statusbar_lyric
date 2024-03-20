.class public final Landroidx/fragment/app/DefaultSpecialEffectsController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final container:Landroid/view/ViewGroup;

.field public isContainerPostponed:Z

.field public operationDirectionIsPop:Z

.field public final pendingOperations:Ljava/util/List;

.field public final runningOperations:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->container:Landroid/view/ViewGroup;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->pendingOperations:Ljava/util/List;

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    .line 14
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->runningOperations:Ljava/util/List;

    .line 19
    return-void
    .line 21
.end method

.method public static captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 4

    .line 1
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 2
    if-eqz v0, :cond_2

    .line 4
    move-object v0, p1

    .line 6
    check-cast v0, Landroid/view/ViewGroup;

    .line 7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    .line 9
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 15
    move-result v0

    .line 18
    if-nez v0, :cond_3

    .line 19
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    goto :goto_1

    .line 24
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 25
    move-result p1

    .line 28
    const/4 v1, 0x0

    .line 29
    :goto_0
    if-ge v1, p1, :cond_3

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 32
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 36
    move-result v3

    .line 39
    if-nez v3, :cond_1

    .line 40
    invoke-static {p0, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 42
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 45
    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 48
    move-result v0

    .line 51
    if-nez v0, :cond_3

    .line 52
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_3
    :goto_1
    return-void
    .line 57
.end method

.method public static findNamedViews(Landroidx/collection/ArrayMap;Landroid/view/View;)V
    .locals 4

    .line 1
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 2
    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api21Impl;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0, v0, p1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 13
    if-eqz v0, :cond_2

    .line 15
    check-cast p1, Landroid/view/ViewGroup;

    .line 17
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 19
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    :goto_0
    if-ge v1, v0, :cond_2

    .line 24
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 30
    move-result v3

    .line 33
    if-nez v3, :cond_1

    .line 34
    invoke-static {p0, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController;->findNamedViews(Landroidx/collection/ArrayMap;Landroid/view/View;)V

    .line 36
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 39
    goto :goto_0

    .line 41
    :cond_2
    return-void
    .line 42
.end method

.method public static final getOrCreateController(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/DefaultSpecialEffectsController;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getSpecialEffectsControllerFactory()Landroidx/fragment/app/FragmentManager$4;

    .line 2
    const p1, 0x7f0a08af    # @id/special_effects_controller_view_tag

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 11
    instance-of v1, v0, Landroidx/fragment/app/DefaultSpecialEffectsController;

    .line 12
    if-eqz v1, :cond_0

    .line 14
    check-cast v0, Landroidx/fragment/app/DefaultSpecialEffectsController;

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Landroidx/fragment/app/DefaultSpecialEffectsController;

    .line 19
    invoke-direct {v0, p0}, Landroidx/fragment/app/DefaultSpecialEffectsController;-><init>(Landroid/view/ViewGroup;)V

    .line 21
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 24
    :goto_0
    return-object v0
    .line 27
.end method


# virtual methods
.method public final enqueue(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/FragmentStateManager;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->pendingOperations:Ljava/util/List;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Landroidx/core/os/CancellationSignal;

    .line 5
    invoke-direct {v1}, Landroidx/core/os/CancellationSignal;-><init>()V

    .line 7
    iget-object v2, p3, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 10
    invoke-virtual {p0, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController;->findPendingOperation(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 12
    move-result-object v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    invoke-virtual {v2, p1, p2}, Landroidx/fragment/app/SpecialEffectsController$Operation;->mergeWith(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    :try_start_1
    new-instance v2, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    .line 23
    invoke-direct {v2, p1, p2, p3, v1}, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/FragmentStateManager;Landroidx/core/os/CancellationSignal;)V

    .line 25
    iget-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->pendingOperations:Ljava/util/List;

    .line 28
    check-cast p1, Ljava/util/ArrayList;

    .line 30
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance p1, Landroidx/fragment/app/SpecialEffectsController$$ExternalSyntheticLambda0;

    .line 35
    const/4 p2, 0x0

    .line 37
    invoke-direct {p1, p0, v2, p2}, Landroidx/fragment/app/SpecialEffectsController$$ExternalSyntheticLambda0;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;I)V

    .line 38
    iget-object p2, v2, Landroidx/fragment/app/SpecialEffectsController$Operation;->completionListeners:Ljava/util/List;

    .line 41
    check-cast p2, Ljava/util/ArrayList;

    .line 43
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance p1, Landroidx/fragment/app/SpecialEffectsController$$ExternalSyntheticLambda0;

    .line 48
    const/4 p2, 0x1

    .line 50
    invoke-direct {p1, p0, v2, p2}, Landroidx/fragment/app/SpecialEffectsController$$ExternalSyntheticLambda0;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;I)V

    .line 51
    iget-object p0, v2, Landroidx/fragment/app/SpecialEffectsController$Operation;->completionListeners:Ljava/util/List;

    .line 54
    check-cast p0, Ljava/util/ArrayList;

    .line 56
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    monitor-exit v0

    .line 61
    :goto_0
    return-void

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    monitor-exit v0

    .line 64
    throw p0
    .line 65
.end method

.method public final executeOperations(Ljava/util/List;Z)V
    .locals 34

    .line 1
    move-object/from16 v6, p0

    .line 2
    move-object/from16 v0, p1

    .line 4
    move/from16 v1, p2

    .line 6
    move-object v2, v0

    .line 8
    check-cast v2, Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v3

    .line 14
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v4

    .line 18
    sget-object v5, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 19
    const/4 v8, 0x0

    .line 21
    if-eqz v4, :cond_2

    .line 22
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v4

    .line 27
    move-object v10, v4

    .line 28
    check-cast v10, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 29
    iget-object v11, v10, Landroidx/fragment/app/SpecialEffectsController$Operation;->fragment:Landroidx/fragment/app/Fragment;

    .line 31
    iget-object v11, v11, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 33
    invoke-static {v11}, Landroidx/fragment/app/SpecialEffectsController$Companion;->asOperationState(Landroid/view/View;)Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 35
    move-result-object v11

    .line 38
    if-ne v11, v5, :cond_1

    .line 39
    iget-object v10, v10, Landroidx/fragment/app/SpecialEffectsController$Operation;->finalState:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 41
    if-eq v10, v5, :cond_1

    .line 43
    const/4 v10, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move v10, v8

    .line 47
    :goto_0
    if-eqz v10, :cond_0

    .line 48
    goto :goto_1

    .line 50
    :cond_2
    const/4 v4, 0x0

    .line 51
    :goto_1
    move-object v10, v4

    .line 52
    check-cast v10, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 53
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 55
    move-result v3

    .line 58
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    .line 59
    move-result-object v3

    .line 62
    :cond_3
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 63
    move-result v4

    .line 66
    if-eqz v4, :cond_5

    .line 67
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 69
    move-result-object v4

    .line 72
    move-object v11, v4

    .line 73
    check-cast v11, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 74
    iget-object v12, v11, Landroidx/fragment/app/SpecialEffectsController$Operation;->fragment:Landroidx/fragment/app/Fragment;

    .line 76
    iget-object v12, v12, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 78
    invoke-static {v12}, Landroidx/fragment/app/SpecialEffectsController$Companion;->asOperationState(Landroid/view/View;)Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 80
    move-result-object v12

    .line 83
    if-eq v12, v5, :cond_4

    .line 84
    iget-object v11, v11, Landroidx/fragment/app/SpecialEffectsController$Operation;->finalState:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 86
    if-ne v11, v5, :cond_4

    .line 88
    const/4 v11, 0x1

    .line 90
    goto :goto_2

    .line 91
    :cond_4
    move v11, v8

    .line 92
    :goto_2
    if-eqz v11, :cond_3

    .line 93
    goto :goto_3

    .line 95
    :cond_5
    const/4 v4, 0x0

    .line 96
    :goto_3
    move-object v11, v4

    .line 97
    check-cast v11, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 98
    const/4 v12, 0x2

    .line 100
    invoke-static {v12}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 101
    move-result v3

    .line 104
    if-eqz v3, :cond_6

    .line 105
    invoke-static {v10}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 107
    invoke-static {v11}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    .line 113
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 115
    new-instance v4, Ljava/util/ArrayList;

    .line 118
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 120
    new-instance v13, Ljava/util/ArrayList;

    .line 123
    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 125
    invoke-static/range {p1 .. p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 128
    move-result-object v0

    .line 131
    check-cast v0, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 132
    iget-object v0, v0, Landroidx/fragment/app/SpecialEffectsController$Operation;->fragment:Landroidx/fragment/app/Fragment;

    .line 134
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 136
    move-result-object v14

    .line 139
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    move-result v15

    .line 143
    if-eqz v15, :cond_7

    .line 144
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    move-result-object v15

    .line 149
    check-cast v15, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 150
    iget-object v15, v15, Landroidx/fragment/app/SpecialEffectsController$Operation;->fragment:Landroidx/fragment/app/Fragment;

    .line 152
    iget-object v15, v15, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 154
    iget-object v9, v0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 156
    iget v12, v9, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterAnim:I

    .line 158
    iput v12, v15, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterAnim:I

    .line 160
    iget v12, v9, Landroidx/fragment/app/Fragment$AnimationInfo;->mExitAnim:I

    .line 162
    iput v12, v15, Landroidx/fragment/app/Fragment$AnimationInfo;->mExitAnim:I

    .line 164
    iget v12, v9, Landroidx/fragment/app/Fragment$AnimationInfo;->mPopEnterAnim:I

    .line 166
    iput v12, v15, Landroidx/fragment/app/Fragment$AnimationInfo;->mPopEnterAnim:I

    .line 168
    iget v9, v9, Landroidx/fragment/app/Fragment$AnimationInfo;->mPopExitAnim:I

    .line 170
    iput v9, v15, Landroidx/fragment/app/Fragment$AnimationInfo;->mPopExitAnim:I

    .line 172
    const/4 v12, 0x2

    .line 174
    goto :goto_4

    .line 175
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 176
    move-result-object v0

    .line 179
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 180
    move-result v2

    .line 183
    if-eqz v2, :cond_a

    .line 184
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 186
    move-result-object v2

    .line 189
    check-cast v2, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 190
    new-instance v9, Landroidx/core/os/CancellationSignal;

    .line 192
    invoke-direct {v9}, Landroidx/core/os/CancellationSignal;-><init>()V

    .line 194
    invoke-virtual {v2}, Landroidx/fragment/app/SpecialEffectsController$Operation;->onStart()V

    .line 197
    iget-object v12, v2, Landroidx/fragment/app/SpecialEffectsController$Operation;->specialEffectsSignals:Ljava/util/Set;

    .line 200
    invoke-interface {v12, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 202
    new-instance v12, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    .line 205
    invoke-direct {v12, v2, v9, v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;Z)V

    .line 207
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    new-instance v9, Landroidx/core/os/CancellationSignal;

    .line 213
    invoke-direct {v9}, Landroidx/core/os/CancellationSignal;-><init>()V

    .line 215
    invoke-virtual {v2}, Landroidx/fragment/app/SpecialEffectsController$Operation;->onStart()V

    .line 218
    iget-object v12, v2, Landroidx/fragment/app/SpecialEffectsController$Operation;->specialEffectsSignals:Ljava/util/Set;

    .line 221
    invoke-interface {v12, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance v12, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    .line 226
    if-eqz v1, :cond_8

    .line 228
    if-ne v2, v10, :cond_9

    .line 230
    goto :goto_6

    .line 232
    :cond_8
    if-ne v2, v11, :cond_9

    .line 233
    :goto_6
    const/4 v14, 0x1

    .line 235
    goto :goto_7

    .line 236
    :cond_9
    move v14, v8

    .line 237
    :goto_7
    invoke-direct {v12, v2, v9, v1, v14}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;ZZ)V

    .line 238
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v9, Landroidx/fragment/app/DefaultSpecialEffectsController$$ExternalSyntheticLambda0;

    .line 244
    invoke-direct {v9, v13, v2, v8, v6}, Landroidx/fragment/app/DefaultSpecialEffectsController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 246
    iget-object v2, v2, Landroidx/fragment/app/SpecialEffectsController$Operation;->completionListeners:Ljava/util/List;

    .line 249
    check-cast v2, Ljava/util/ArrayList;

    .line 251
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    goto :goto_5

    .line 256
    :cond_a
    new-instance v9, Ljava/util/LinkedHashMap;

    .line 257
    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    .line 262
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 264
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 267
    move-result-object v2

    .line 270
    :cond_b
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 271
    move-result v12

    .line 274
    if-eqz v12, :cond_c

    .line 275
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 277
    move-result-object v12

    .line 280
    move-object v14, v12

    .line 281
    check-cast v14, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    .line 282
    invoke-virtual {v14}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->isVisibilityUnchanged()Z

    .line 284
    move-result v14

    .line 287
    if-nez v14, :cond_b

    .line 288
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    goto :goto_8

    .line 293
    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    .line 294
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 296
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 299
    move-result-object v0

    .line 302
    :cond_d
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 303
    move-result v12

    .line 306
    if-eqz v12, :cond_f

    .line 307
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 309
    move-result-object v12

    .line 312
    move-object v14, v12

    .line 313
    check-cast v14, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    .line 314
    invoke-virtual {v14}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getHandlingImpl()Landroidx/fragment/app/FragmentTransitionImpl;

    .line 316
    move-result-object v14

    .line 319
    if-eqz v14, :cond_e

    .line 320
    const/4 v14, 0x1

    .line 322
    goto :goto_a

    .line 323
    :cond_e
    move v14, v8

    .line 324
    :goto_a
    if-eqz v14, :cond_d

    .line 325
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    goto :goto_9

    .line 330
    :cond_f
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 331
    move-result-object v0

    .line 334
    const/4 v2, 0x0

    .line 335
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 336
    move-result v12

    .line 339
    if-eqz v12, :cond_13

    .line 340
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 342
    move-result-object v12

    .line 345
    check-cast v12, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    .line 346
    invoke-virtual {v12}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getHandlingImpl()Landroidx/fragment/app/FragmentTransitionImpl;

    .line 348
    move-result-object v14

    .line 351
    if-eqz v2, :cond_11

    .line 352
    if-ne v14, v2, :cond_10

    .line 354
    goto :goto_c

    .line 356
    :cond_10
    move v2, v8

    .line 357
    goto :goto_d

    .line 358
    :cond_11
    :goto_c
    const/4 v2, 0x1

    .line 359
    :goto_d
    if-eqz v2, :cond_12

    .line 360
    move-object v2, v14

    .line 362
    goto :goto_b

    .line 363
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 364
    const-string v1, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "

    .line 366
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 368
    iget-object v1, v12, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->operation:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 371
    iget-object v1, v1, Landroidx/fragment/app/SpecialEffectsController$Operation;->fragment:Landroidx/fragment/app/Fragment;

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 375
    const-string v1, " returned Transition "

    .line 378
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    iget-object v1, v12, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->transition:Ljava/lang/Object;

    .line 383
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 385
    const-string v1, " which uses a different Transition type than other Fragments."

    .line 388
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    move-result-object v0

    .line 396
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 397
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 399
    move-result-object v0

    .line 402
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 403
    throw v1

    .line 406
    :cond_13
    sget-object v12, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->GONE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 407
    iget-object v14, v6, Landroidx/fragment/app/DefaultSpecialEffectsController;->container:Landroid/view/ViewGroup;

    .line 409
    if-nez v2, :cond_15

    .line 411
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 413
    move-result-object v0

    .line 416
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 417
    move-result v1

    .line 420
    if-eqz v1, :cond_14

    .line 421
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 423
    move-result-object v1

    .line 426
    check-cast v1, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    .line 427
    iget-object v2, v1, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->operation:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 429
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 431
    invoke-interface {v9, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    invoke-virtual {v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->completeSpecialEffect()V

    .line 436
    goto :goto_e

    .line 439
    :cond_14
    move-object/from16 v24, v3

    .line 440
    move v6, v8

    .line 442
    move-object/from16 v30, v11

    .line 443
    move-object/from16 v28, v12

    .line 445
    move-object/from16 v27, v13

    .line 447
    move-object v13, v9

    .line 449
    goto/16 :goto_2e

    .line 450
    :cond_15
    new-instance v0, Landroid/view/View;

    .line 452
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 454
    move-result-object v15

    .line 457
    invoke-direct {v0, v15}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 458
    new-instance v15, Landroid/graphics/Rect;

    .line 461
    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 463
    new-instance v8, Ljava/util/ArrayList;

    .line 466
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 468
    new-instance v7, Ljava/util/ArrayList;

    .line 471
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 473
    new-instance v6, Landroidx/collection/ArrayMap;

    .line 476
    invoke-direct {v6}, Landroidx/collection/ArrayMap;-><init>()V

    .line 478
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 481
    move-result-object v23

    .line 484
    move-object/from16 v24, v3

    .line 485
    const/16 p1, 0x0

    .line 487
    const/4 v3, 0x0

    .line 489
    const/16 v25, 0x0

    .line 490
    :goto_f
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    .line 492
    move-result v17

    .line 495
    if-eqz v17, :cond_2b

    .line 496
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 498
    move-result-object v17

    .line 501
    move-object/from16 v26, v5

    .line 502
    move-object/from16 v5, v17

    .line 504
    check-cast v5, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    .line 506
    iget-object v5, v5, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->sharedElementTransition:Ljava/lang/Object;

    .line 508
    if-eqz v5, :cond_16

    .line 510
    const/16 v17, 0x1

    .line 512
    goto :goto_10

    .line 514
    :cond_16
    const/16 v17, 0x0

    .line 515
    :goto_10
    if-eqz v17, :cond_2a

    .line 517
    if-eqz v10, :cond_2a

    .line 519
    if-eqz v11, :cond_2a

    .line 521
    invoke-virtual {v2, v5}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    move-result-object v3

    .line 526
    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentTransitionImpl;->wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    move-result-object v3

    .line 530
    iget-object v5, v11, Landroidx/fragment/app/SpecialEffectsController$Operation;->fragment:Landroidx/fragment/app/Fragment;

    .line 531
    move-object/from16 v27, v13

    .line 533
    iget-object v13, v5, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 535
    if-eqz v13, :cond_17

    .line 537
    iget-object v13, v13, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 539
    if-nez v13, :cond_18

    .line 541
    :cond_17
    new-instance v13, Ljava/util/ArrayList;

    .line 543
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 545
    :cond_18
    move-object/from16 v28, v12

    .line 548
    iget-object v12, v10, Landroidx/fragment/app/SpecialEffectsController$Operation;->fragment:Landroidx/fragment/app/Fragment;

    .line 550
    move-object/from16 v29, v4

    .line 552
    iget-object v4, v12, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 554
    if-eqz v4, :cond_19

    .line 556
    iget-object v4, v4, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 558
    if-nez v4, :cond_1a

    .line 560
    :cond_19
    new-instance v4, Ljava/util/ArrayList;

    .line 562
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 564
    :cond_1a
    move-object/from16 v30, v9

    .line 567
    iget-object v9, v12, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 569
    if-eqz v9, :cond_1b

    .line 571
    iget-object v9, v9, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 573
    if-nez v9, :cond_1c

    .line 575
    :cond_1b
    new-instance v9, Ljava/util/ArrayList;

    .line 577
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 579
    :cond_1c
    move-object/from16 v31, v0

    .line 582
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 584
    move-result v0

    .line 587
    move-object/from16 v33, v2

    .line 588
    move-object/from16 v32, v15

    .line 590
    const/4 v15, 0x0

    .line 592
    :goto_11
    const/4 v2, -0x1

    .line 593
    if-ge v15, v0, :cond_1e

    .line 594
    move/from16 v17, v0

    .line 596
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 598
    move-result-object v0

    .line 601
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 602
    move-result v0

    .line 605
    if-eq v0, v2, :cond_1d

    .line 606
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 608
    move-result-object v2

    .line 611
    invoke-virtual {v13, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 612
    :cond_1d
    add-int/lit8 v15, v15, 0x1

    .line 615
    move/from16 v0, v17

    .line 617
    goto :goto_11

    .line 619
    :cond_1e
    iget-object v0, v5, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 620
    if-eqz v0, :cond_1f

    .line 622
    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 624
    if-nez v0, :cond_20

    .line 626
    :cond_1f
    new-instance v0, Ljava/util/ArrayList;

    .line 628
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 630
    :cond_20
    if-nez v1, :cond_21

    .line 633
    new-instance v4, Lkotlin/Pair;

    .line 635
    const/4 v9, 0x0

    .line 637
    invoke-direct {v4, v9, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 638
    goto :goto_12

    .line 641
    :cond_21
    const/4 v9, 0x0

    .line 642
    new-instance v4, Lkotlin/Pair;

    .line 643
    invoke-direct {v4, v9, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 645
    :goto_12
    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 648
    move-result-object v9

    .line 651
    invoke-static {v9}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 652
    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 655
    move-result-object v4

    .line 658
    invoke-static {v4}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 659
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 662
    move-result v4

    .line 665
    const/4 v9, 0x0

    .line 666
    :goto_13
    if-ge v9, v4, :cond_22

    .line 667
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 669
    move-result-object v15

    .line 672
    check-cast v15, Ljava/lang/String;

    .line 673
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 675
    move-result-object v17

    .line 678
    move-object/from16 v2, v17

    .line 679
    check-cast v2, Ljava/lang/String;

    .line 681
    invoke-virtual {v6, v15, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    add-int/lit8 v9, v9, 0x1

    .line 686
    const/4 v2, -0x1

    .line 688
    goto :goto_13

    .line 689
    :cond_22
    const/4 v2, 0x2

    .line 690
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 691
    move-result v4

    .line 694
    if-eqz v4, :cond_24

    .line 695
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 697
    move-result-object v2

    .line 700
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 701
    move-result v4

    .line 704
    if-eqz v4, :cond_23

    .line 705
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 707
    move-result-object v4

    .line 710
    check-cast v4, Ljava/lang/String;

    .line 711
    goto :goto_14

    .line 713
    :cond_23
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 714
    move-result-object v2

    .line 717
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 718
    move-result v4

    .line 721
    if-eqz v4, :cond_24

    .line 722
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 724
    move-result-object v4

    .line 727
    check-cast v4, Ljava/lang/String;

    .line 728
    goto :goto_15

    .line 730
    :cond_24
    new-instance v2, Landroidx/collection/ArrayMap;

    .line 731
    invoke-direct {v2}, Landroidx/collection/ArrayMap;-><init>()V

    .line 733
    iget-object v4, v12, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 736
    invoke-static {v2, v4}, Landroidx/fragment/app/DefaultSpecialEffectsController;->findNamedViews(Landroidx/collection/ArrayMap;Landroid/view/View;)V

    .line 738
    invoke-virtual {v2, v13}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 741
    invoke-virtual {v2}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    .line 744
    move-result-object v4

    .line 747
    invoke-virtual {v6, v4}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 748
    new-instance v4, Landroidx/collection/ArrayMap;

    .line 751
    invoke-direct {v4}, Landroidx/collection/ArrayMap;-><init>()V

    .line 753
    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 756
    invoke-static {v4, v5}, Landroidx/fragment/app/DefaultSpecialEffectsController;->findNamedViews(Landroidx/collection/ArrayMap;Landroid/view/View;)V

    .line 758
    invoke-virtual {v4, v0}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 761
    invoke-virtual {v6}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    .line 764
    move-result-object v5

    .line 767
    invoke-virtual {v4, v5}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 768
    sget-object v5, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionCompat21;

    .line 771
    iget v5, v6, Landroidx/collection/SimpleArrayMap;->size:I

    .line 773
    const/4 v9, -0x1

    .line 775
    add-int/2addr v5, v9

    .line 776
    :goto_16
    if-ge v9, v5, :cond_26

    .line 777
    invoke-virtual {v6, v5}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 779
    move-result-object v12

    .line 782
    check-cast v12, Ljava/lang/String;

    .line 783
    invoke-virtual {v4, v12}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 785
    move-result v12

    .line 788
    if-nez v12, :cond_25

    .line 789
    invoke-virtual {v6, v5}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 791
    :cond_25
    add-int/lit8 v5, v5, -0x1

    .line 794
    goto :goto_16

    .line 796
    :cond_26
    invoke-virtual {v6}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    .line 797
    move-result-object v5

    .line 800
    invoke-virtual {v2}, Landroidx/collection/ArrayMap;->entrySet()Ljava/util/Set;

    .line 801
    move-result-object v9

    .line 804
    new-instance v12, Landroidx/fragment/app/DefaultSpecialEffectsController$retainMatchingViews$1;

    .line 805
    invoke-direct {v12, v5}, Landroidx/fragment/app/DefaultSpecialEffectsController$retainMatchingViews$1;-><init>(Ljava/util/Collection;)V

    .line 807
    const/4 v5, 0x0

    .line 810
    invoke-static {v9, v12, v5}, Lkotlin/collections/CollectionsKt__ReversedViewsKt;->filterInPlace$CollectionsKt__MutableCollectionsKt(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;Z)Z

    .line 811
    invoke-virtual {v6}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    .line 814
    move-result-object v9

    .line 817
    invoke-virtual {v4}, Landroidx/collection/ArrayMap;->entrySet()Ljava/util/Set;

    .line 818
    move-result-object v12

    .line 821
    new-instance v15, Landroidx/fragment/app/DefaultSpecialEffectsController$retainMatchingViews$1;

    .line 822
    invoke-direct {v15, v9}, Landroidx/fragment/app/DefaultSpecialEffectsController$retainMatchingViews$1;-><init>(Ljava/util/Collection;)V

    .line 824
    invoke-static {v12, v15, v5}, Lkotlin/collections/CollectionsKt__ReversedViewsKt;->filterInPlace$CollectionsKt__MutableCollectionsKt(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;Z)Z

    .line 827
    invoke-virtual {v6}, Landroidx/collection/SimpleArrayMap;->isEmpty()Z

    .line 830
    move-result v5

    .line 833
    if-eqz v5, :cond_27

    .line 834
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 836
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 839
    move-object/from16 v5, v26

    .line 842
    move-object/from16 v13, v27

    .line 844
    move-object/from16 v12, v28

    .line 846
    move-object/from16 v4, v29

    .line 848
    move-object/from16 v9, v30

    .line 850
    move-object/from16 v0, v31

    .line 852
    move-object/from16 v15, v32

    .line 854
    move-object/from16 v2, v33

    .line 856
    const/4 v3, 0x0

    .line 858
    goto/16 :goto_f

    .line 859
    :cond_27
    new-instance v5, Landroidx/fragment/app/DefaultSpecialEffectsController$$ExternalSyntheticLambda1;

    .line 861
    invoke-direct {v5, v11, v10, v1, v4}, Landroidx/fragment/app/DefaultSpecialEffectsController$$ExternalSyntheticLambda1;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/SpecialEffectsController$Operation;ZLandroidx/collection/ArrayMap;)V

    .line 863
    invoke-static {v14, v5}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 866
    invoke-virtual {v2}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    .line 869
    move-result-object v5

    .line 872
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 873
    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    .line 876
    move-result v5

    .line 879
    const/4 v9, 0x1

    .line 880
    xor-int/2addr v5, v9

    .line 881
    if-eqz v5, :cond_28

    .line 882
    const/4 v5, 0x0

    .line 884
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 885
    move-result-object v9

    .line 888
    check-cast v9, Ljava/lang/String;

    .line 889
    invoke-virtual {v2, v9}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    move-result-object v2

    .line 894
    check-cast v2, Landroid/view/View;

    .line 895
    move-object/from16 v5, v33

    .line 897
    invoke-virtual {v5, v2, v3}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Landroid/view/View;Ljava/lang/Object;)V

    .line 899
    goto :goto_17

    .line 902
    :cond_28
    move-object/from16 v5, v33

    .line 903
    move-object/from16 v2, p1

    .line 905
    :goto_17
    invoke-virtual {v4}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    .line 907
    move-result-object v9

    .line 910
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 911
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 914
    move-result v9

    .line 917
    const/4 v12, 0x1

    .line 918
    xor-int/2addr v9, v12

    .line 919
    if-eqz v9, :cond_29

    .line 920
    const/4 v9, 0x0

    .line 922
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 923
    move-result-object v0

    .line 926
    check-cast v0, Ljava/lang/String;

    .line 927
    invoke-virtual {v4, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    move-result-object v0

    .line 932
    check-cast v0, Landroid/view/View;

    .line 933
    if-eqz v0, :cond_29

    .line 935
    new-instance v4, Landroidx/fragment/app/DefaultSpecialEffectsController$$ExternalSyntheticLambda0;

    .line 937
    move-object/from16 v9, v32

    .line 939
    invoke-direct {v4, v5, v0, v12, v9}, Landroidx/fragment/app/DefaultSpecialEffectsController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 941
    invoke-static {v14, v4}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 944
    move/from16 v25, v12

    .line 947
    goto :goto_18

    .line 949
    :cond_29
    move-object/from16 v9, v32

    .line 950
    :goto_18
    move-object/from16 v0, v31

    .line 952
    invoke-virtual {v5, v3, v0, v8}, Landroidx/fragment/app/FragmentTransitionImpl;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 954
    const/16 v19, 0x0

    .line 957
    const/16 v20, 0x0

    .line 959
    move-object/from16 v17, v5

    .line 961
    move-object/from16 v18, v3

    .line 963
    move-object/from16 v21, v3

    .line 965
    move-object/from16 v22, v7

    .line 967
    invoke-virtual/range {v17 .. v22}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 969
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 972
    move-object/from16 v13, v30

    .line 974
    invoke-interface {v13, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    invoke-interface {v13, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    goto :goto_19

    .line 982
    :cond_2a
    move-object v5, v2

    .line 983
    move-object/from16 v29, v4

    .line 984
    move-object/from16 v28, v12

    .line 986
    move-object/from16 v27, v13

    .line 988
    const/4 v12, 0x1

    .line 990
    move-object v13, v9

    .line 991
    move-object v9, v15

    .line 992
    move-object/from16 v2, p1

    .line 993
    :goto_19
    move-object/from16 p1, v2

    .line 995
    move-object v2, v5

    .line 997
    move-object v15, v9

    .line 998
    move-object v9, v13

    .line 999
    move-object/from16 v5, v26

    .line 1000
    move-object/from16 v13, v27

    .line 1002
    move-object/from16 v12, v28

    .line 1004
    move-object/from16 v4, v29

    .line 1006
    goto/16 :goto_f

    .line 1008
    :cond_2b
    move-object/from16 v29, v4

    .line 1010
    move-object/from16 v26, v5

    .line 1012
    move-object/from16 v28, v12

    .line 1014
    move-object/from16 v27, v13

    .line 1016
    const/4 v12, 0x1

    .line 1018
    move-object v5, v2

    .line 1019
    move-object v13, v9

    .line 1020
    move-object v9, v15

    .line 1021
    new-instance v1, Ljava/util/ArrayList;

    .line 1022
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1024
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1027
    move-result-object v2

    .line 1030
    const/4 v4, 0x0

    .line 1031
    const/4 v15, 0x0

    .line 1032
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1033
    move-result v16

    .line 1036
    if-eqz v16, :cond_38

    .line 1037
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1039
    move-result-object v16

    .line 1042
    move-object/from16 v12, v16

    .line 1043
    check-cast v12, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    .line 1045
    invoke-virtual {v12}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->isVisibilityUnchanged()Z

    .line 1047
    move-result v16

    .line 1050
    move-object/from16 p2, v2

    .line 1051
    iget-object v2, v12, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->operation:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 1053
    if-eqz v16, :cond_2c

    .line 1055
    move-object/from16 v16, v6

    .line 1057
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1059
    invoke-interface {v13, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    invoke-virtual {v12}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->completeSpecialEffect()V

    .line 1064
    goto :goto_1c

    .line 1067
    :cond_2c
    move-object/from16 v16, v6

    .line 1068
    iget-object v6, v12, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->transition:Ljava/lang/Object;

    .line 1070
    invoke-virtual {v5, v6}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    move-result-object v6

    .line 1075
    if-eqz v3, :cond_2e

    .line 1076
    if-eq v2, v10, :cond_2d

    .line 1078
    if-ne v2, v11, :cond_2e

    .line 1080
    :cond_2d
    const/16 v17, 0x1

    .line 1082
    goto :goto_1b

    .line 1084
    :cond_2e
    const/16 v17, 0x0

    .line 1085
    :goto_1b
    if-nez v6, :cond_30

    .line 1087
    if-nez v17, :cond_2f

    .line 1089
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1091
    invoke-interface {v13, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    invoke-virtual {v12}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->completeSpecialEffect()V

    .line 1096
    :cond_2f
    :goto_1c
    move-object/from16 v2, p2

    .line 1099
    move-object/from16 v6, v16

    .line 1101
    :goto_1d
    const/4 v12, 0x1

    .line 1103
    goto :goto_1a

    .line 1104
    :cond_30
    move-object/from16 v30, v11

    .line 1105
    new-instance v11, Ljava/util/ArrayList;

    .line 1107
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1109
    move-object/from16 v31, v3

    .line 1112
    iget-object v3, v2, Landroidx/fragment/app/SpecialEffectsController$Operation;->fragment:Landroidx/fragment/app/Fragment;

    .line 1114
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1116
    invoke-static {v11, v3}, Landroidx/fragment/app/DefaultSpecialEffectsController;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 1118
    if-eqz v17, :cond_32

    .line 1121
    if-ne v2, v10, :cond_31

    .line 1123
    invoke-static {v8}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 1125
    move-result-object v3

    .line 1128
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1129
    goto :goto_1e

    .line 1132
    :cond_31
    invoke-static {v7}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 1133
    move-result-object v3

    .line 1136
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1137
    :cond_32
    :goto_1e
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1140
    move-result v3

    .line 1143
    if-eqz v3, :cond_33

    .line 1144
    invoke-virtual {v5, v0, v6}, Landroidx/fragment/app/FragmentTransitionImpl;->addTarget(Landroid/view/View;Ljava/lang/Object;)V

    .line 1146
    move-object/from16 v17, v0

    .line 1149
    :goto_1f
    move-object/from16 v32, v8

    .line 1151
    goto :goto_20

    .line 1153
    :cond_33
    invoke-virtual {v5, v11, v6}, Landroidx/fragment/app/FragmentTransitionImpl;->addTargets(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 1154
    const/16 v21, 0x0

    .line 1157
    const/16 v22, 0x0

    .line 1159
    move-object/from16 v17, v5

    .line 1161
    move-object/from16 v18, v6

    .line 1163
    move-object/from16 v19, v6

    .line 1165
    move-object/from16 v20, v11

    .line 1167
    invoke-virtual/range {v17 .. v22}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 1169
    iget-object v3, v2, Landroidx/fragment/app/SpecialEffectsController$Operation;->finalState:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 1172
    move-object/from16 v17, v0

    .line 1174
    move-object/from16 v0, v28

    .line 1176
    if-ne v3, v0, :cond_34

    .line 1178
    move-object/from16 v3, v27

    .line 1180
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1182
    new-instance v3, Ljava/util/ArrayList;

    .line 1185
    invoke-direct {v3, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1187
    move-object/from16 v28, v0

    .line 1190
    iget-object v0, v2, Landroidx/fragment/app/SpecialEffectsController$Operation;->fragment:Landroidx/fragment/app/Fragment;

    .line 1192
    move-object/from16 v32, v8

    .line 1194
    iget-object v8, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1196
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1198
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1201
    invoke-virtual {v5, v6, v0, v3}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleHideFragmentView(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 1203
    new-instance v0, Landroidx/fragment/app/DefaultSpecialEffectsController$$ExternalSyntheticLambda2;

    .line 1206
    invoke-direct {v0, v11}, Landroidx/fragment/app/DefaultSpecialEffectsController$$ExternalSyntheticLambda2;-><init>(Ljava/util/ArrayList;)V

    .line 1208
    invoke-static {v14, v0}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1211
    goto :goto_20

    .line 1214
    :cond_34
    move-object/from16 v28, v0

    .line 1215
    goto :goto_1f

    .line 1217
    :goto_20
    iget-object v0, v2, Landroidx/fragment/app/SpecialEffectsController$Operation;->finalState:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 1218
    move-object/from16 v3, v26

    .line 1220
    if-ne v0, v3, :cond_36

    .line 1222
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1224
    if-eqz v25, :cond_35

    .line 1227
    invoke-virtual {v5, v6, v9}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 1229
    :cond_35
    move-object/from16 v0, p1

    .line 1232
    goto :goto_21

    .line 1234
    :cond_36
    move-object/from16 v0, p1

    .line 1235
    invoke-virtual {v5, v0, v6}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Landroid/view/View;Ljava/lang/Object;)V

    .line 1237
    :goto_21
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1240
    invoke-interface {v13, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1242
    iget-boolean v2, v12, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->isOverlapAllowed:Z

    .line 1245
    if-eqz v2, :cond_37

    .line 1247
    invoke-virtual {v5, v15, v6}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    move-result-object v2

    .line 1252
    move-object v15, v2

    .line 1253
    goto :goto_22

    .line 1254
    :cond_37
    invoke-virtual {v5, v4, v6}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1255
    move-result-object v2

    .line 1258
    move-object v4, v2

    .line 1259
    :goto_22
    move-object/from16 v2, p2

    .line 1260
    move-object/from16 p1, v0

    .line 1262
    move-object/from16 v26, v3

    .line 1264
    move-object/from16 v6, v16

    .line 1266
    move-object/from16 v0, v17

    .line 1268
    move-object/from16 v11, v30

    .line 1270
    move-object/from16 v3, v31

    .line 1272
    move-object/from16 v8, v32

    .line 1274
    goto/16 :goto_1d

    .line 1276
    :cond_38
    move-object v2, v3

    .line 1278
    move-object/from16 v16, v6

    .line 1279
    move-object/from16 v32, v8

    .line 1281
    move-object/from16 v30, v11

    .line 1283
    invoke-virtual {v5, v15, v4, v2}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    move-result-object v0

    .line 1288
    if-nez v0, :cond_39

    .line 1289
    move-object/from16 v9, v30

    .line 1291
    goto/16 :goto_27

    .line 1293
    :cond_39
    new-instance v3, Ljava/util/ArrayList;

    .line 1295
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1297
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1300
    move-result-object v4

    .line 1303
    :cond_3a
    :goto_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1304
    move-result v6

    .line 1307
    if-eqz v6, :cond_3b

    .line 1308
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1310
    move-result-object v6

    .line 1313
    move-object v8, v6

    .line 1314
    check-cast v8, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    .line 1315
    invoke-virtual {v8}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->isVisibilityUnchanged()Z

    .line 1317
    move-result v8

    .line 1320
    if-nez v8, :cond_3a

    .line 1321
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1323
    goto :goto_23

    .line 1326
    :cond_3b
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1327
    move-result-object v3

    .line 1330
    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1331
    move-result v4

    .line 1334
    if-eqz v4, :cond_42

    .line 1335
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1337
    move-result-object v4

    .line 1340
    check-cast v4, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    .line 1341
    iget-object v6, v4, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->transition:Ljava/lang/Object;

    .line 1343
    iget-object v8, v4, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->operation:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 1345
    move-object/from16 v9, v30

    .line 1347
    if-eqz v2, :cond_3d

    .line 1349
    if-eq v8, v10, :cond_3c

    .line 1351
    if-ne v8, v9, :cond_3d

    .line 1353
    :cond_3c
    const/4 v11, 0x1

    .line 1355
    goto :goto_25

    .line 1356
    :cond_3d
    const/4 v11, 0x0

    .line 1357
    :goto_25
    if-nez v6, :cond_3e

    .line 1358
    if-eqz v11, :cond_41

    .line 1360
    :cond_3e
    sget-object v6, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 1362
    invoke-static {v14}, Landroidx/core/view/ViewCompat$Api19Impl;->isLaidOut(Landroid/view/View;)Z

    .line 1364
    move-result v6

    .line 1367
    if-nez v6, :cond_40

    .line 1368
    const/4 v6, 0x2

    .line 1370
    invoke-static {v6}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 1371
    move-result v11

    .line 1374
    if-eqz v11, :cond_3f

    .line 1375
    invoke-static {v14}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 1377
    invoke-static {v8}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 1380
    :cond_3f
    invoke-virtual {v4}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->completeSpecialEffect()V

    .line 1383
    goto :goto_26

    .line 1386
    :cond_40
    iget-object v6, v8, Landroidx/fragment/app/SpecialEffectsController$Operation;->fragment:Landroidx/fragment/app/Fragment;

    .line 1387
    new-instance v6, Landroidx/fragment/app/DefaultSpecialEffectsController$$ExternalSyntheticLambda3;

    .line 1389
    invoke-direct {v6, v4, v8}, Landroidx/fragment/app/DefaultSpecialEffectsController$$ExternalSyntheticLambda3;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    .line 1391
    iget-object v4, v4, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->signal:Landroidx/core/os/CancellationSignal;

    .line 1394
    invoke-virtual {v5, v0, v4, v6}, Landroidx/fragment/app/FragmentTransitionImpl;->setListenerForTransitionEnd(Ljava/lang/Object;Landroidx/core/os/CancellationSignal;Landroidx/fragment/app/DefaultSpecialEffectsController$$ExternalSyntheticLambda3;)V

    .line 1396
    :cond_41
    :goto_26
    move-object/from16 v30, v9

    .line 1399
    goto :goto_24

    .line 1401
    :cond_42
    move-object/from16 v9, v30

    .line 1402
    sget-object v3, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 1404
    invoke-static {v14}, Landroidx/core/view/ViewCompat$Api19Impl;->isLaidOut(Landroid/view/View;)Z

    .line 1406
    move-result v3

    .line 1409
    if-nez v3, :cond_43

    .line 1410
    :goto_27
    move-object/from16 v30, v9

    .line 1412
    const/4 v6, 0x0

    .line 1414
    goto/16 :goto_2e

    .line 1415
    :cond_43
    const/4 v3, 0x4

    .line 1417
    invoke-static {v3, v1}, Landroidx/fragment/app/FragmentTransition;->setViewVisibility(ILjava/util/List;)V

    .line 1418
    new-instance v3, Ljava/util/ArrayList;

    .line 1421
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1423
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1426
    move-result v4

    .line 1429
    const/4 v6, 0x0

    .line 1430
    :goto_28
    if-ge v6, v4, :cond_44

    .line 1431
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1433
    move-result-object v8

    .line 1436
    check-cast v8, Landroid/view/View;

    .line 1437
    sget-object v11, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 1439
    invoke-static {v8}, Landroidx/core/view/ViewCompat$Api21Impl;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    .line 1441
    move-result-object v11

    .line 1444
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1445
    const/4 v11, 0x0

    .line 1448
    invoke-static {v8, v11}, Landroidx/core/view/ViewCompat$Api21Impl;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    .line 1449
    add-int/lit8 v6, v6, 0x1

    .line 1452
    goto :goto_28

    .line 1454
    :cond_44
    const/4 v6, 0x2

    .line 1455
    invoke-static {v6}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 1456
    move-result v4

    .line 1459
    if-eqz v4, :cond_46

    .line 1460
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1462
    move-result-object v4

    .line 1465
    :goto_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1466
    move-result v6

    .line 1469
    if-eqz v6, :cond_45

    .line 1470
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1472
    move-result-object v6

    .line 1475
    check-cast v6, Landroid/view/View;

    .line 1476
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1478
    invoke-static {v6}, Landroidx/core/view/ViewCompat$Api21Impl;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    .line 1481
    goto :goto_29

    .line 1484
    :cond_45
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1485
    move-result-object v4

    .line 1488
    :goto_2a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1489
    move-result v6

    .line 1492
    if-eqz v6, :cond_46

    .line 1493
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1495
    move-result-object v6

    .line 1498
    check-cast v6, Landroid/view/View;

    .line 1499
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1501
    invoke-static {v6}, Landroidx/core/view/ViewCompat$Api21Impl;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    .line 1504
    goto :goto_2a

    .line 1507
    :cond_46
    invoke-virtual {v5, v14, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 1508
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1511
    move-result v0

    .line 1514
    new-instance v4, Ljava/util/ArrayList;

    .line 1515
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1517
    const/4 v6, 0x0

    .line 1520
    :goto_2b
    if-ge v6, v0, :cond_4a

    .line 1521
    move-object/from16 v8, v32

    .line 1523
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1525
    move-result-object v11

    .line 1528
    check-cast v11, Landroid/view/View;

    .line 1529
    sget-object v12, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 1531
    invoke-static {v11}, Landroidx/core/view/ViewCompat$Api21Impl;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    .line 1533
    move-result-object v12

    .line 1536
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1537
    if-nez v12, :cond_48

    .line 1540
    :cond_47
    move-object/from16 v30, v9

    .line 1542
    goto :goto_2d

    .line 1544
    :cond_48
    const/4 v15, 0x0

    .line 1545
    invoke-static {v11, v15}, Landroidx/core/view/ViewCompat$Api21Impl;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    .line 1546
    move-object/from16 v11, v16

    .line 1549
    invoke-virtual {v11, v12}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1551
    move-result-object v16

    .line 1554
    move-object/from16 v15, v16

    .line 1555
    check-cast v15, Ljava/lang/String;

    .line 1557
    move-object/from16 v16, v11

    .line 1559
    const/4 v11, 0x0

    .line 1561
    :goto_2c
    if-ge v11, v0, :cond_47

    .line 1562
    move-object/from16 v30, v9

    .line 1564
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1566
    move-result-object v9

    .line 1569
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1570
    move-result v9

    .line 1573
    if-eqz v9, :cond_49

    .line 1574
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1576
    move-result-object v9

    .line 1579
    check-cast v9, Landroid/view/View;

    .line 1580
    invoke-static {v9, v12}, Landroidx/core/view/ViewCompat$Api21Impl;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    .line 1582
    goto :goto_2d

    .line 1585
    :cond_49
    add-int/lit8 v11, v11, 0x1

    .line 1586
    move-object/from16 v9, v30

    .line 1588
    goto :goto_2c

    .line 1590
    :goto_2d
    add-int/lit8 v6, v6, 0x1

    .line 1591
    move-object/from16 v32, v8

    .line 1593
    move-object/from16 v9, v30

    .line 1595
    goto :goto_2b

    .line 1597
    :cond_4a
    move-object/from16 v30, v9

    .line 1598
    move-object/from16 v8, v32

    .line 1600
    new-instance v6, Landroidx/fragment/app/FragmentTransitionImpl$1;

    .line 1602
    move-object/from16 v17, v6

    .line 1604
    move/from16 v18, v0

    .line 1606
    move-object/from16 v19, v7

    .line 1608
    move-object/from16 v20, v3

    .line 1610
    move-object/from16 v21, v8

    .line 1612
    move-object/from16 v22, v4

    .line 1614
    invoke-direct/range {v17 .. v22}, Landroidx/fragment/app/FragmentTransitionImpl$1;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1616
    invoke-static {v14, v6}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1619
    const/4 v6, 0x0

    .line 1622
    invoke-static {v6, v1}, Landroidx/fragment/app/FragmentTransition;->setViewVisibility(ILjava/util/List;)V

    .line 1623
    invoke-virtual {v5, v2, v8, v7}, Landroidx/fragment/app/FragmentTransitionImpl;->swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1626
    :goto_2e
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1629
    invoke-virtual {v13, v0}, Ljava/util/LinkedHashMap;->containsValue(Ljava/lang/Object;)Z

    .line 1631
    move-result v7

    .line 1634
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 1635
    move-result-object v8

    .line 1638
    new-instance v9, Ljava/util/ArrayList;

    .line 1639
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1641
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1644
    move-result-object v11

    .line 1647
    move v5, v6

    .line 1648
    :goto_2f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 1649
    move-result v0

    .line 1652
    if-eqz v0, :cond_53

    .line 1653
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1655
    move-result-object v0

    .line 1658
    move-object v12, v0

    .line 1659
    check-cast v12, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    .line 1660
    invoke-virtual {v12}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->isVisibilityUnchanged()Z

    .line 1662
    move-result v0

    .line 1665
    if-eqz v0, :cond_4b

    .line 1666
    invoke-virtual {v12}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->completeSpecialEffect()V

    .line 1668
    goto :goto_2f

    .line 1671
    :cond_4b
    invoke-virtual {v12, v8}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->getAnimation(Landroid/content/Context;)Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    .line 1672
    move-result-object v0

    .line 1675
    if-nez v0, :cond_4c

    .line 1676
    invoke-virtual {v12}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->completeSpecialEffect()V

    .line 1678
    goto :goto_2f

    .line 1681
    :cond_4c
    iget-object v15, v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    .line 1682
    if-nez v15, :cond_4d

    .line 1684
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1686
    goto :goto_2f

    .line 1689
    :cond_4d
    iget-object v4, v12, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->operation:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 1690
    iget-object v0, v4, Landroidx/fragment/app/SpecialEffectsController$Operation;->fragment:Landroidx/fragment/app/Fragment;

    .line 1692
    invoke-virtual {v13, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1694
    move-result-object v1

    .line 1697
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1698
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1700
    move-result v1

    .line 1703
    if-eqz v1, :cond_4f

    .line 1704
    const/4 v1, 0x2

    .line 1706
    invoke-static {v1}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 1707
    move-result v2

    .line 1710
    if-eqz v2, :cond_4e

    .line 1711
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 1713
    :cond_4e
    invoke-virtual {v12}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->completeSpecialEffect()V

    .line 1716
    goto :goto_2f

    .line 1719
    :cond_4f
    iget-object v1, v4, Landroidx/fragment/app/SpecialEffectsController$Operation;->finalState:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 1720
    move-object/from16 v2, v28

    .line 1722
    if-ne v1, v2, :cond_50

    .line 1724
    const/4 v3, 0x1

    .line 1726
    goto :goto_30

    .line 1727
    :cond_50
    move v3, v6

    .line 1728
    :goto_30
    move-object/from16 v5, v27

    .line 1729
    if-eqz v3, :cond_51

    .line 1731
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1733
    :cond_51
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1736
    invoke-virtual {v14, v1}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 1738
    new-instance v0, Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$1;

    .line 1741
    move-object/from16 v16, v2

    .line 1743
    move-object v2, v0

    .line 1745
    move-object/from16 p1, v1

    .line 1746
    move-object/from16 v1, p0

    .line 1748
    move-object v6, v2

    .line 1750
    move-object/from16 v2, p1

    .line 1751
    move-object/from16 v17, v5

    .line 1753
    move-object v5, v4

    .line 1755
    move-object/from16 p2, v5

    .line 1756
    move-object v5, v12

    .line 1758
    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$1;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/view/View;ZLandroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;)V

    .line 1759
    invoke-virtual {v15, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1762
    move-object/from16 v0, p1

    .line 1765
    invoke-virtual {v15, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1767
    invoke-virtual {v15}, Landroid/animation/Animator;->start()V

    .line 1770
    const/4 v0, 0x2

    .line 1773
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 1774
    move-result v1

    .line 1777
    if-eqz v1, :cond_52

    .line 1778
    invoke-virtual/range {p2 .. p2}, Landroidx/fragment/app/SpecialEffectsController$Operation;->toString()Ljava/lang/String;

    .line 1780
    :cond_52
    new-instance v0, Landroidx/fragment/app/DefaultSpecialEffectsController$$ExternalSyntheticLambda4;

    .line 1783
    move-object/from16 v1, p2

    .line 1785
    invoke-direct {v0, v15, v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$$ExternalSyntheticLambda4;-><init>(Landroid/animation/Animator;Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    .line 1787
    iget-object v1, v12, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->signal:Landroidx/core/os/CancellationSignal;

    .line 1790
    invoke-virtual {v1, v0}, Landroidx/core/os/CancellationSignal;->setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V

    .line 1792
    move-object/from16 v28, v16

    .line 1795
    move-object/from16 v27, v17

    .line 1797
    const/4 v5, 0x1

    .line 1799
    const/4 v6, 0x0

    .line 1800
    goto/16 :goto_2f

    .line 1801
    :cond_53
    move-object/from16 v17, v27

    .line 1803
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1805
    move-result-object v0

    .line 1808
    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1809
    move-result v1

    .line 1812
    if-eqz v1, :cond_5c

    .line 1813
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1815
    move-result-object v1

    .line 1818
    check-cast v1, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    .line 1819
    iget-object v2, v1, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->operation:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 1821
    iget-object v3, v2, Landroidx/fragment/app/SpecialEffectsController$Operation;->fragment:Landroidx/fragment/app/Fragment;

    .line 1823
    if-eqz v7, :cond_55

    .line 1825
    const/4 v4, 0x2

    .line 1827
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 1828
    move-result v2

    .line 1831
    if-eqz v2, :cond_54

    .line 1832
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 1834
    :cond_54
    invoke-virtual {v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->completeSpecialEffect()V

    .line 1837
    goto :goto_31

    .line 1840
    :cond_55
    const/4 v4, 0x2

    .line 1841
    if-eqz v5, :cond_57

    .line 1842
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 1844
    move-result v2

    .line 1847
    if-eqz v2, :cond_56

    .line 1848
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 1850
    :cond_56
    invoke-virtual {v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->completeSpecialEffect()V

    .line 1853
    goto :goto_31

    .line 1856
    :cond_57
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1857
    invoke-virtual {v1, v8}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->getAnimation(Landroid/content/Context;)Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    .line 1859
    move-result-object v4

    .line 1862
    const-string v6, "Required value was null."

    .line 1863
    if-eqz v4, :cond_5b

    .line 1865
    iget-object v4, v4, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    .line 1867
    if-eqz v4, :cond_5a

    .line 1869
    iget-object v6, v2, Landroidx/fragment/app/SpecialEffectsController$Operation;->finalState:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 1871
    sget-object v9, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->REMOVED:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 1873
    if-eq v6, v9, :cond_58

    .line 1875
    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1877
    invoke-virtual {v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->completeSpecialEffect()V

    .line 1880
    move-object/from16 v9, p0

    .line 1883
    goto :goto_32

    .line 1885
    :cond_58
    invoke-virtual {v14, v3}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 1886
    new-instance v6, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;

    .line 1889
    invoke-direct {v6, v4, v14, v3}, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 1891
    new-instance v4, Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$3;

    .line 1894
    move-object/from16 v9, p0

    .line 1896
    invoke-direct {v4, v3, v1, v9, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$3;-><init>(Landroid/view/View;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;Landroidx/fragment/app/DefaultSpecialEffectsController;Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    .line 1898
    invoke-virtual {v6, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1901
    invoke-virtual {v3, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1904
    const/4 v4, 0x2

    .line 1907
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 1908
    move-result v6

    .line 1911
    if-eqz v6, :cond_59

    .line 1912
    invoke-virtual {v2}, Landroidx/fragment/app/SpecialEffectsController$Operation;->toString()Ljava/lang/String;

    .line 1914
    :cond_59
    :goto_32
    new-instance v4, Landroidx/fragment/app/DefaultSpecialEffectsController$$ExternalSyntheticLambda5;

    .line 1917
    invoke-direct {v4, v3, v1, v9, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController$$ExternalSyntheticLambda5;-><init>(Landroid/view/View;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;Landroidx/fragment/app/DefaultSpecialEffectsController;Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    .line 1919
    iget-object v1, v1, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->signal:Landroidx/core/os/CancellationSignal;

    .line 1922
    invoke-virtual {v1, v4}, Landroidx/core/os/CancellationSignal;->setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V

    .line 1924
    goto :goto_31

    .line 1927
    :cond_5a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1928
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1930
    move-result-object v1

    .line 1933
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1934
    throw v0

    .line 1937
    :cond_5b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1938
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1940
    move-result-object v1

    .line 1943
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1944
    throw v0

    .line 1947
    :cond_5c
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1948
    move-result-object v0

    .line 1951
    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1952
    move-result v1

    .line 1955
    if-eqz v1, :cond_5d

    .line 1956
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1958
    move-result-object v1

    .line 1961
    check-cast v1, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 1962
    iget-object v2, v1, Landroidx/fragment/app/SpecialEffectsController$Operation;->fragment:Landroidx/fragment/app/Fragment;

    .line 1964
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1966
    iget-object v1, v1, Landroidx/fragment/app/SpecialEffectsController$Operation;->finalState:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 1968
    invoke-virtual {v1, v2}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->applyState(Landroid/view/View;)V

    .line 1970
    goto :goto_33

    .line 1973
    :cond_5d
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 1974
    const/4 v0, 0x2

    .line 1977
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 1978
    move-result v0

    .line 1981
    if-eqz v0, :cond_5e

    .line 1982
    invoke-static {v10}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 1984
    invoke-static/range {v30 .. v30}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 1987
    :cond_5e
    return-void
    .line 1990
.end method

.method public final executePendingOperations()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->isContainerPostponed:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    goto/16 :goto_2

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->container:Landroid/view/ViewGroup;

    .line 8
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 10
    invoke-static {v0}, Landroidx/core/view/ViewCompat$Api19Impl;->isAttachedToWindow(Landroid/view/View;)Z

    .line 12
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-nez v0, :cond_1

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->forceCompleteAllOperations()V

    .line 19
    iput-boolean v1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->operationDirectionIsPop:Z

    .line 22
    goto/16 :goto_2

    .line 24
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->pendingOperations:Ljava/util/List;

    .line 26
    monitor-enter v0

    .line 28
    :try_start_0
    iget-object v2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->pendingOperations:Ljava/util/List;

    .line 29
    check-cast v2, Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 33
    move-result v2

    .line 36
    xor-int/lit8 v2, v2, 0x1

    .line 37
    if-eqz v2, :cond_6

    .line 39
    iget-object v2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->runningOperations:Ljava/util/List;

    .line 41
    new-instance v3, Ljava/util/ArrayList;

    .line 43
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 45
    iget-object v2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->runningOperations:Ljava/util/List;

    .line 48
    check-cast v2, Ljava/util/ArrayList;

    .line 50
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 52
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 55
    move-result-object v2

    .line 58
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    move-result v3

    .line 62
    if-eqz v3, :cond_4

    .line 63
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    move-result-object v3

    .line 68
    check-cast v3, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 69
    const/4 v4, 0x2

    .line 71
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 72
    move-result v4

    .line 75
    if-eqz v4, :cond_3

    .line 76
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    :cond_3
    invoke-virtual {v3}, Landroidx/fragment/app/SpecialEffectsController$Operation;->cancel()V

    .line 81
    iget-boolean v4, v3, Landroidx/fragment/app/SpecialEffectsController$Operation;->isComplete:Z

    .line 84
    if-nez v4, :cond_2

    .line 86
    iget-object v4, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->runningOperations:Ljava/util/List;

    .line 88
    check-cast v4, Ljava/util/ArrayList;

    .line 90
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    goto :goto_0

    .line 95
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->updateFinalState()V

    .line 96
    iget-object v2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->pendingOperations:Ljava/util/List;

    .line 99
    new-instance v3, Ljava/util/ArrayList;

    .line 101
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 103
    iget-object v2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->pendingOperations:Ljava/util/List;

    .line 106
    check-cast v2, Ljava/util/ArrayList;

    .line 108
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 110
    iget-object v2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->runningOperations:Ljava/util/List;

    .line 113
    check-cast v2, Ljava/util/ArrayList;

    .line 115
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 117
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 120
    move-result-object v2

    .line 123
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    move-result v4

    .line 127
    if-eqz v4, :cond_5

    .line 128
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    move-result-object v4

    .line 133
    check-cast v4, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 134
    invoke-virtual {v4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->onStart()V

    .line 136
    goto :goto_1

    .line 139
    :cond_5
    iget-boolean v2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->operationDirectionIsPop:Z

    .line 140
    invoke-virtual {p0, v3, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController;->executeOperations(Ljava/util/List;Z)V

    .line 142
    iput-boolean v1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->operationDirectionIsPop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :cond_6
    monitor-exit v0

    .line 147
    :goto_2
    return-void

    .line 148
    :catchall_0
    move-exception p0

    .line 149
    monitor-exit v0

    .line 150
    throw p0
    .line 151
.end method

.method public final findPendingOperation(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/SpecialEffectsController$Operation;
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->pendingOperations:Ljava/util/List;

    .line 2
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p0

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 19
    move-object v1, v0

    .line 20
    check-cast v1, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 21
    iget-object v2, v1, Landroidx/fragment/app/SpecialEffectsController$Operation;->fragment:Landroidx/fragment/app/Fragment;

    .line 23
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    iget-boolean v1, v1, Landroidx/fragment/app/SpecialEffectsController$Operation;->isCanceled:Z

    .line 31
    if-nez v1, :cond_1

    .line 33
    const/4 v1, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    :goto_0
    if-eqz v1, :cond_0

    .line 38
    goto :goto_1

    .line 40
    :cond_2
    const/4 v0, 0x0

    .line 41
    :goto_1
    check-cast v0, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 42
    return-object v0
    .line 44
.end method

.method public final forceCompleteAllOperations()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->container:Landroid/view/ViewGroup;

    .line 2
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 4
    invoke-static {v0}, Landroidx/core/view/ViewCompat$Api19Impl;->isAttachedToWindow(Landroid/view/View;)Z

    .line 6
    move-result v0

    .line 9
    iget-object v1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->pendingOperations:Ljava/util/List;

    .line 10
    monitor-enter v1

    .line 12
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->updateFinalState()V

    .line 13
    iget-object v2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->pendingOperations:Ljava/util/List;

    .line 16
    check-cast v2, Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v2

    .line 23
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v3

    .line 27
    if-eqz v3, :cond_0

    .line 28
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v3

    .line 33
    check-cast v3, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 34
    invoke-virtual {v3}, Landroidx/fragment/app/SpecialEffectsController$Operation;->onStart()V

    .line 36
    goto :goto_0

    .line 39
    :cond_0
    iget-object v2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->runningOperations:Ljava/util/List;

    .line 40
    new-instance v3, Ljava/util/ArrayList;

    .line 42
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 44
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 47
    move-result-object v2

    .line 50
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    move-result v3

    .line 54
    const/4 v4, 0x2

    .line 55
    if-eqz v3, :cond_3

    .line 56
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object v3

    .line 61
    check-cast v3, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 62
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 64
    move-result v4

    .line 67
    if-eqz v4, :cond_2

    .line 68
    if-eqz v0, :cond_1

    .line 70
    goto :goto_2

    .line 72
    :cond_1
    iget-object v4, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->container:Landroid/view/ViewGroup;

    .line 73
    invoke-static {v4}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    :goto_2
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    :cond_2
    invoke-virtual {v3}, Landroidx/fragment/app/SpecialEffectsController$Operation;->cancel()V

    .line 81
    goto :goto_1

    .line 84
    :cond_3
    iget-object v2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->pendingOperations:Ljava/util/List;

    .line 85
    new-instance v3, Ljava/util/ArrayList;

    .line 87
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 89
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 92
    move-result-object v2

    .line 95
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    move-result v3

    .line 99
    if-eqz v3, :cond_6

    .line 100
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    move-result-object v3

    .line 105
    check-cast v3, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 106
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 108
    move-result v5

    .line 111
    if-eqz v5, :cond_5

    .line 112
    if-eqz v0, :cond_4

    .line 114
    goto :goto_4

    .line 116
    :cond_4
    iget-object v5, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->container:Landroid/view/ViewGroup;

    .line 117
    invoke-static {v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 119
    :goto_4
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 122
    :cond_5
    invoke-virtual {v3}, Landroidx/fragment/app/SpecialEffectsController$Operation;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    goto :goto_3

    .line 128
    :cond_6
    monitor-exit v1

    .line 129
    return-void

    .line 130
    :catchall_0
    move-exception p0

    .line 131
    monitor-exit v1

    .line 132
    throw p0
    .line 133
.end method

.method public final markPostponedState()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->pendingOperations:Ljava/util/List;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->updateFinalState()V

    .line 5
    iget-object v1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->pendingOperations:Ljava/util/List;

    .line 8
    check-cast v1, Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 12
    move-result v2

    .line 15
    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 16
    move-result-object v1

    .line 19
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 20
    move-result v2

    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v4, 0x0

    .line 25
    if-eqz v2, :cond_2

    .line 26
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 31
    move-object v5, v2

    .line 32
    check-cast v5, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 33
    iget-object v6, v5, Landroidx/fragment/app/SpecialEffectsController$Operation;->fragment:Landroidx/fragment/app/Fragment;

    .line 35
    iget-object v6, v6, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 37
    invoke-static {v6}, Landroidx/fragment/app/SpecialEffectsController$Companion;->asOperationState(Landroid/view/View;)Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 39
    move-result-object v6

    .line 42
    iget-object v5, v5, Landroidx/fragment/app/SpecialEffectsController$Operation;->finalState:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 43
    sget-object v7, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 45
    if-ne v5, v7, :cond_1

    .line 47
    if-eq v6, v7, :cond_1

    .line 49
    const/4 v5, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move v5, v3

    .line 53
    :goto_0
    if-eqz v5, :cond_0

    .line 54
    goto :goto_1

    .line 56
    :cond_2
    move-object v2, v4

    .line 57
    :goto_1
    check-cast v2, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 58
    if-eqz v2, :cond_3

    .line 60
    iget-object v4, v2, Landroidx/fragment/app/SpecialEffectsController$Operation;->fragment:Landroidx/fragment/app/Fragment;

    .line 62
    :cond_3
    if-eqz v4, :cond_4

    .line 64
    iget-object v1, v4, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 66
    :cond_4
    iput-boolean v3, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->isContainerPostponed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit v0

    .line 70
    return-void

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    monitor-exit v0

    .line 73
    throw p0
    .line 74
.end method

.method public final updateFinalState()V
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->pendingOperations:Ljava/util/List;

    .line 2
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_4

    .line 14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 19
    check-cast v0, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 20
    iget-object v1, v0, Landroidx/fragment/app/SpecialEffectsController$Operation;->lifecycleImpact:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 22
    sget-object v2, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->ADDING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 24
    if-ne v1, v2, :cond_0

    .line 26
    iget-object v1, v0, Landroidx/fragment/app/SpecialEffectsController$Operation;->fragment:Landroidx/fragment/app/Fragment;

    .line 28
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    .line 30
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 34
    move-result v1

    .line 37
    if-eqz v1, :cond_3

    .line 38
    const/4 v2, 0x4

    .line 40
    if-eq v1, v2, :cond_2

    .line 41
    const/16 v2, 0x8

    .line 43
    if-ne v1, v2, :cond_1

    .line 45
    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->GONE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 47
    goto :goto_1

    .line 49
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 50
    const-string v0, "Unknown visibility "

    .line 52
    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 57
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    throw p0

    .line 61
    :cond_2
    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->INVISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 62
    goto :goto_1

    .line 64
    :cond_3
    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 65
    :goto_1
    sget-object v2, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->NONE:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 67
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/SpecialEffectsController$Operation;->mergeWith(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;)V

    .line 69
    goto :goto_0

    .line 72
    :cond_4
    return-void
    .line 73
.end method
