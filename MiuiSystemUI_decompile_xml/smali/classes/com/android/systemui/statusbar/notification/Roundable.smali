.class public interface abstract Lcom/android/systemui/statusbar/notification/Roundable;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# virtual methods
.method public applyRoundnessAndInvalidate()V
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getRoundableState()Lcom/android/systemui/statusbar/notification/RoundableState;

    .line 2
    move-result-object p0

    .line 5
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/RoundableState;->targetView:Landroid/view/View;

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 8
    return-void
    .line 11
.end method

.method public getBottomCornerRadius()F
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getBottomRoundness()F

    .line 2
    move-result v0

    .line 5
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getMaxRadius()F

    .line 6
    move-result p0

    .line 9
    mul-float/2addr p0, v0

    .line 10
    return p0
    .line 11
.end method

.method public getBottomRoundness()F
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getRoundableState()Lcom/android/systemui/statusbar/notification/RoundableState;

    .line 2
    move-result-object p0

    .line 5
    iget p0, p0, Lcom/android/systemui/statusbar/notification/RoundableState;->bottomRoundness:F

    .line 6
    return p0
    .line 8
.end method

.method public getMaxRadius()F
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getRoundableState()Lcom/android/systemui/statusbar/notification/RoundableState;

    .line 2
    move-result-object p0

    .line 5
    iget p0, p0, Lcom/android/systemui/statusbar/notification/RoundableState;->maxRadius:F

    .line 6
    return p0
    .line 8
.end method

.method public abstract getRoundableState()Lcom/android/systemui/statusbar/notification/RoundableState;
.end method

.method public getTopCornerRadius()F
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getTopRoundness()F

    .line 2
    move-result v0

    .line 5
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getMaxRadius()F

    .line 6
    move-result p0

    .line 9
    mul-float/2addr p0, v0

    .line 10
    return p0
    .line 11
.end method

.method public getTopRoundness()F
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getRoundableState()Lcom/android/systemui/statusbar/notification/RoundableState;

    .line 2
    move-result-object p0

    .line 5
    iget p0, p0, Lcom/android/systemui/statusbar/notification/RoundableState;->topRoundness:F

    .line 6
    return p0
    .line 8
.end method

.method public getUpdatedRadii()[F
    .locals 6

    .line 1
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getRoundableState()Lcom/android/systemui/statusbar/notification/RoundableState;

    .line 2
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/RoundableState;->radiiBuffer:[F

    .line 6
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getTopCornerRadius()F

    .line 8
    move-result v1

    .line 11
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getBottomCornerRadius()F

    .line 12
    move-result p0

    .line 15
    array-length v2, v0

    .line 16
    const/16 v3, 0x8

    .line 17
    if-ne v2, v3, :cond_5

    .line 19
    const/4 v2, 0x0

    .line 21
    aget v3, v0, v2

    .line 22
    cmpg-float v3, v3, v1

    .line 24
    const/4 v4, 0x1

    .line 26
    if-nez v3, :cond_0

    .line 27
    move v3, v4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v3, v2

    .line 31
    :goto_0
    const/4 v5, 0x4

    .line 32
    if-eqz v3, :cond_2

    .line 33
    aget v3, v0, v5

    .line 35
    cmpg-float v3, v3, p0

    .line 37
    if-nez v3, :cond_1

    .line 39
    goto :goto_1

    .line 41
    :cond_1
    move v4, v2

    .line 42
    :goto_1
    if-nez v4, :cond_4

    .line 43
    :cond_2
    new-instance v3, Lkotlin/ranges/IntRange;

    .line 45
    const/4 v4, 0x3

    .line 47
    invoke-direct {v3, v2, v4}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 48
    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    .line 51
    move-result-object v2

    .line 54
    :goto_2
    iget-boolean v3, v2, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    .line 55
    if-eqz v3, :cond_3

    .line 57
    invoke-virtual {v2}, Lkotlin/collections/IntIterator;->nextInt()I

    .line 59
    move-result v3

    .line 62
    aput v1, v0, v3

    .line 63
    goto :goto_2

    .line 65
    :cond_3
    new-instance v1, Lkotlin/ranges/IntRange;

    .line 66
    const/4 v2, 0x7

    .line 68
    invoke-direct {v1, v5, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 69
    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    .line 72
    move-result-object v1

    .line 75
    :goto_3
    iget-boolean v2, v1, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    .line 76
    if-eqz v2, :cond_4

    .line 78
    invoke-virtual {v1}, Lkotlin/collections/IntIterator;->nextInt()I

    .line 80
    move-result v2

    .line 83
    aput p0, v0, v2

    .line 84
    goto :goto_3

    .line 86
    :cond_4
    return-object v0

    .line 87
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 88
    array-length v0, v0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    .line 91
    const-string v2, "Unexpected radiiBuffer size "

    .line 93
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 105
    move-result-object v0

    .line 108
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 109
    throw p0
    .line 112
.end method

.method public hasRoundedCorner()Z
    .locals 4

    .line 1
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getTopRoundness()F

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    cmpg-float v0, v0, v1

    .line 7
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    move v0, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v0, v3

    .line 15
    :goto_0
    if-eqz v0, :cond_3

    .line 16
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getBottomRoundness()F

    .line 18
    move-result p0

    .line 21
    cmpg-float p0, p0, v1

    .line 22
    if-nez p0, :cond_1

    .line 24
    move p0, v2

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move p0, v3

    .line 28
    :goto_1
    if-nez p0, :cond_2

    .line 29
    goto :goto_2

    .line 31
    :cond_2
    move v2, v3

    .line 32
    :cond_3
    :goto_2
    return v2
    .line 33
.end method

.method public requestBottomRoundness(FLcom/android/systemui/statusbar/notification/SourceType;Z)Z
    .locals 6

    .line 1
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getRoundableState()Lcom/android/systemui/statusbar/notification/RoundableState;

    .line 2
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/RoundableState;->bottomRoundnessMap:Ljava/util/Map;

    .line 6
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 8
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 10
    move-result-object v1

    .line 13
    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->maxOrNull(Ljava/lang/Iterable;)Ljava/lang/Float;

    .line 14
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 21
    move-result v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v1, v2

    .line 26
    :goto_0
    cmpg-float v3, p1, v2

    .line 27
    const/4 v4, 0x0

    .line 29
    const/4 v5, 0x1

    .line 30
    if-nez v3, :cond_1

    .line 31
    move v3, v5

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v3, v4

    .line 35
    :goto_1
    if-eqz v3, :cond_2

    .line 36
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    goto :goto_2

    .line 41
    :cond_2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 42
    move-result-object p1

    .line 45
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :goto_2
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 49
    move-result-object p1

    .line 52
    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->maxOrNull(Ljava/lang/Iterable;)Ljava/lang/Float;

    .line 53
    move-result-object p1

    .line 56
    if-eqz p1, :cond_3

    .line 57
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 59
    move-result v2

    .line 62
    :cond_3
    cmpg-float p1, v1, v2

    .line 63
    if-nez p1, :cond_4

    .line 65
    move p1, v5

    .line 67
    goto :goto_3

    .line 68
    :cond_4
    move p1, v4

    .line 69
    :goto_3
    if-nez p1, :cond_9

    .line 70
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getRoundableState()Lcom/android/systemui/statusbar/notification/RoundableState;

    .line 72
    move-result-object p1

    .line 75
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/RoundableState;->bottomAnimatable:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 76
    iget p2, p2, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;->val$animatorTag:I

    .line 78
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/RoundableState;->targetView:Landroid/view/View;

    .line 80
    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 82
    move-result-object p1

    .line 85
    if-eqz p1, :cond_5

    .line 86
    move p1, v5

    .line 88
    goto :goto_4

    .line 89
    :cond_5
    move p1, v4

    .line 90
    :goto_4
    if-eqz p1, :cond_6

    .line 91
    sub-float p1, v2, v1

    .line 93
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 95
    move-result p1

    .line 98
    const/high16 p2, 0x3f000000    # 0.5f

    .line 99
    cmpl-float p1, p1, p2

    .line 101
    if-lez p1, :cond_6

    .line 103
    move p1, v5

    .line 105
    goto :goto_5

    .line 106
    :cond_6
    move p1, v4

    .line 107
    :goto_5
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getRoundableState()Lcom/android/systemui/statusbar/notification/RoundableState;

    .line 108
    move-result-object p0

    .line 111
    if-nez p1, :cond_7

    .line 112
    if-eqz p3, :cond_8

    .line 114
    :cond_7
    move v4, v5

    .line 116
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/RoundableState;->bottomAnimatable:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 117
    sget-object p2, Lcom/android/systemui/statusbar/notification/RoundableState;->DURATION:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 119
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/RoundableState;->targetView:Landroid/view/View;

    .line 121
    invoke-static {p0, p1, v2, p2, v4}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    .line 123
    return v5

    .line 126
    :cond_9
    return v4
    .line 127
.end method

.method public requestRoundness(FFLcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;)V
    .locals 1

    .line 3
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getRoundableState()Lcom/android/systemui/statusbar/notification/RoundableState;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/RoundableState;->targetView:Landroid/view/View;

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    .line 6
    invoke-interface {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/notification/Roundable;->requestRoundness(FFLcom/android/systemui/statusbar/notification/SourceType;Z)Z

    return-void
.end method

.method public requestRoundness(FFLcom/android/systemui/statusbar/notification/SourceType;Z)Z
    .locals 0

    .line 1
    invoke-interface {p0, p1, p3, p4}, Lcom/android/systemui/statusbar/notification/Roundable;->requestTopRoundness(FLcom/android/systemui/statusbar/notification/SourceType;Z)Z

    move-result p1

    .line 2
    invoke-interface {p0, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/Roundable;->requestBottomRoundness(FLcom/android/systemui/statusbar/notification/SourceType;Z)Z

    move-result p0

    if-nez p1, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public requestRoundnessReset(Lcom/android/systemui/statusbar/notification/SourceType;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getRoundableState()Lcom/android/systemui/statusbar/notification/RoundableState;

    .line 2
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/RoundableState;->targetView:Landroid/view/View;

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 8
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-interface {p0, v1, v1, p1, v0}, Lcom/android/systemui/statusbar/notification/Roundable;->requestRoundness(FFLcom/android/systemui/statusbar/notification/SourceType;Z)Z

    .line 13
    return-void
    .line 16
.end method

.method public requestTopRoundness(FLcom/android/systemui/statusbar/notification/SourceType;Z)Z
    .locals 6

    .line 1
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getRoundableState()Lcom/android/systemui/statusbar/notification/RoundableState;

    .line 2
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/RoundableState;->topRoundnessMap:Ljava/util/Map;

    .line 6
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 8
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 10
    move-result-object v1

    .line 13
    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->maxOrNull(Ljava/lang/Iterable;)Ljava/lang/Float;

    .line 14
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 21
    move-result v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v1, v2

    .line 26
    :goto_0
    cmpg-float v3, p1, v2

    .line 27
    const/4 v4, 0x0

    .line 29
    const/4 v5, 0x1

    .line 30
    if-nez v3, :cond_1

    .line 31
    move v3, v5

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v3, v4

    .line 35
    :goto_1
    if-eqz v3, :cond_2

    .line 36
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    goto :goto_2

    .line 41
    :cond_2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 42
    move-result-object p1

    .line 45
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :goto_2
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 49
    move-result-object p1

    .line 52
    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->maxOrNull(Ljava/lang/Iterable;)Ljava/lang/Float;

    .line 53
    move-result-object p1

    .line 56
    if-eqz p1, :cond_3

    .line 57
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 59
    move-result v2

    .line 62
    :cond_3
    cmpg-float p1, v1, v2

    .line 63
    if-nez p1, :cond_4

    .line 65
    move p1, v5

    .line 67
    goto :goto_3

    .line 68
    :cond_4
    move p1, v4

    .line 69
    :goto_3
    if-nez p1, :cond_9

    .line 70
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getRoundableState()Lcom/android/systemui/statusbar/notification/RoundableState;

    .line 72
    move-result-object p1

    .line 75
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/RoundableState;->topAnimatable:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 76
    iget p2, p2, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;->val$animatorTag:I

    .line 78
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/RoundableState;->targetView:Landroid/view/View;

    .line 80
    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 82
    move-result-object p1

    .line 85
    if-eqz p1, :cond_5

    .line 86
    move p1, v5

    .line 88
    goto :goto_4

    .line 89
    :cond_5
    move p1, v4

    .line 90
    :goto_4
    if-eqz p1, :cond_6

    .line 91
    sub-float p1, v2, v1

    .line 93
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 95
    move-result p1

    .line 98
    const/high16 p2, 0x3f000000    # 0.5f

    .line 99
    cmpl-float p1, p1, p2

    .line 101
    if-lez p1, :cond_6

    .line 103
    move p1, v5

    .line 105
    goto :goto_5

    .line 106
    :cond_6
    move p1, v4

    .line 107
    :goto_5
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getRoundableState()Lcom/android/systemui/statusbar/notification/RoundableState;

    .line 108
    move-result-object p0

    .line 111
    if-nez p1, :cond_7

    .line 112
    if-eqz p3, :cond_8

    .line 114
    :cond_7
    move v4, v5

    .line 116
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/RoundableState;->topAnimatable:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 117
    sget-object p2, Lcom/android/systemui/statusbar/notification/RoundableState;->DURATION:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 119
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/RoundableState;->targetView:Landroid/view/View;

    .line 121
    invoke-static {p0, p1, v2, p2, v4}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    .line 123
    return v5

    .line 126
    :cond_9
    return v4
    .line 127
.end method
