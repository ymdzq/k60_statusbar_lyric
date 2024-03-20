.class public abstract Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutExtKt;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static final generateHeadsUpChildrenPositionAnimation(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/android/systemui/util/ConvenienceExtensionsKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;

    .line 2
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutExtKt$generateHeadsUpChildrenPositionAnimation$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutExtKt$generateHeadsUpChildrenPositionAnimation$1;

    .line 6
    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    .line 8
    move-result-object v0

    .line 11
    sget-object v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutExtKt$generateHeadsUpChildrenPositionAnimation$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutExtKt$generateHeadsUpChildrenPositionAnimation$2;

    .line 12
    new-instance v2, Lkotlin/sequences/FilteringSequence$iterator$1;

    .line 14
    invoke-direct {v2, v0}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    .line 16
    :goto_0
    invoke-virtual {v2}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    .line 19
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v2}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    check-cast v0, Landroid/view/View;

    .line 32
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getAnimationEvents()Ljava/util/List;

    .line 36
    move-result-object v3

    .line 39
    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/HeadsUpPositionEvent;

    .line 40
    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/notification/stack/HeadsUpPositionEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    .line 42
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    goto :goto_0

    .line 48
    :cond_0
    return-void
    .line 49
.end method

.method public static final resetTransitionAlpha(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/android/systemui/util/ConvenienceExtensionsKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;

    .line 2
    move-result-object p0

    .line 5
    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->filterNotNull(Lkotlin/sequences/Sequence;)Lkotlin/sequences/FilteringSequence;

    .line 6
    move-result-object p0

    .line 9
    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutExtKt$resetTransitionAlpha$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutExtKt$resetTransitionAlpha$1;

    .line 10
    new-instance v1, Lkotlin/sequences/FilteringSequence$iterator$1;

    .line 12
    invoke-direct {v1, p0}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    .line 14
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    .line 17
    move-result p0

    .line 20
    if-eqz p0, :cond_2

    .line 21
    invoke-virtual {v1}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    .line 23
    move-result-object p0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    check-cast p0, Landroid/view/View;

    .line 30
    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 32
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTransitionAlpha()F

    .line 34
    move-result v2

    .line 37
    const/high16 v3, 0x3f800000    # 1.0f

    .line 38
    cmpg-float v2, v2, v3

    .line 40
    if-nez v2, :cond_1

    .line 42
    const/4 v2, 0x1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/4 v2, 0x0

    .line 46
    :goto_1
    if-nez v2, :cond_0

    .line 47
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setTransitionAlpha(F)V

    .line 49
    goto :goto_0

    .line 52
    :cond_2
    return-void
    .line 53
.end method

.method public static final setPanelAppeared(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;ZZ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getAmbientState()Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 2
    move-result-object v0

    .line 5
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->panelAppeared:Z

    .line 6
    if-eq v0, p1, :cond_1

    .line 8
    if-nez p2, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getAnimationEvents()Ljava/util/List;

    .line 12
    move-result-object p2

    .line 15
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/PanelAppearDisappearEvent;

    .line 16
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/PanelAppearDisappearEvent;-><init>()V

    .line 18
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    const/4 p2, 0x1

    .line 24
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 27
    invoke-static {p0}, Lcom/android/systemui/util/ConvenienceExtensionsKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;

    .line 30
    move-result-object p2

    .line 33
    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutExtKt$setPanelAppeared$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutExtKt$setPanelAppeared$1;

    .line 34
    invoke-static {p2, v0}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    .line 36
    move-result-object p2

    .line 39
    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutExtKt$setPanelAppeared$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutExtKt$setPanelAppeared$2;

    .line 40
    new-instance v1, Lkotlin/sequences/FilteringSequence$iterator$1;

    .line 42
    invoke-direct {v1, p2}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    .line 44
    :goto_0
    invoke-virtual {v1}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    .line 47
    move-result p2

    .line 50
    if-eqz p2, :cond_1

    .line 51
    invoke-virtual {v1}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    .line 53
    move-result-object p2

    .line 56
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    check-cast p2, Landroid/view/View;

    .line 60
    check-cast p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 62
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->cancelAppearDrawing()V

    .line 64
    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getAmbientState()Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 68
    move-result-object p0

    .line 71
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->panelAppeared:Z

    .line 72
    return-void
    .line 74
.end method
