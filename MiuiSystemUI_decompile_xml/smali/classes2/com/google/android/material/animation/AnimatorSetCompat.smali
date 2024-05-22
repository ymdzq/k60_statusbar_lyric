.class public abstract Lcom/google/android/material/animation/AnimatorSetCompat;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static playTogether(Landroid/animation/AnimatorSet;Ljava/util/List;)V
    .locals 11

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 5
    move-result v1

    .line 8
    const-wide/16 v2, 0x0

    .line 9
    const/4 v4, 0x0

    .line 11
    move v5, v4

    .line 12
    :goto_0
    if-ge v5, v1, :cond_0

    .line 13
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v6

    .line 18
    check-cast v6, Landroid/animation/Animator;

    .line 19
    invoke-virtual {v6}, Landroid/animation/Animator;->getStartDelay()J

    .line 21
    move-result-wide v7

    .line 24
    invoke-virtual {v6}, Landroid/animation/Animator;->getDuration()J

    .line 25
    move-result-wide v9

    .line 28
    add-long/2addr v9, v7

    .line 29
    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->max(JJ)J

    .line 30
    move-result-wide v2

    .line 33
    add-int/lit8 v5, v5, 0x1

    .line 34
    goto :goto_0

    .line 36
    :cond_0
    filled-new-array {v4, v4}, [I

    .line 37
    move-result-object v1

    .line 40
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 41
    move-result-object v1

    .line 44
    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 45
    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 48
    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 51
    return-void
    .line 54
.end method
