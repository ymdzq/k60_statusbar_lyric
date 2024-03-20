.class public final Landroidx/core/animation/AnimatorSet$3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .line 1
    check-cast p1, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    .line 2
    check-cast p2, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    .line 4
    invoke-virtual {p1}, Landroidx/core/animation/AnimatorSet$AnimationEvent;->getTime()J

    .line 6
    move-result-wide v0

    .line 9
    invoke-virtual {p2}, Landroidx/core/animation/AnimatorSet$AnimationEvent;->getTime()J

    .line 10
    move-result-wide v2

    .line 13
    cmp-long p0, v0, v2

    .line 14
    const/4 v4, 0x1

    .line 16
    if-nez p0, :cond_1

    .line 17
    iget p0, p2, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mEvent:I

    .line 19
    iget p1, p1, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mEvent:I

    .line 21
    add-int p2, p0, p1

    .line 23
    if-ne p2, v4, :cond_0

    .line 25
    sub-int v4, p1, p0

    .line 27
    goto :goto_1

    .line 29
    :cond_0
    sub-int v4, p0, p1

    .line 30
    goto :goto_1

    .line 32
    :cond_1
    const-wide/16 p0, -0x1

    .line 33
    cmp-long p2, v2, p0

    .line 35
    const/4 v5, -0x1

    .line 37
    if-nez p2, :cond_2

    .line 38
    goto :goto_0

    .line 40
    :cond_2
    cmp-long p0, v0, p0

    .line 41
    if-nez p0, :cond_3

    .line 43
    goto :goto_1

    .line 45
    :cond_3
    sub-long/2addr v0, v2

    .line 46
    const-wide/16 p0, 0x0

    .line 47
    cmp-long p0, v0, p0

    .line 49
    if-lez p0, :cond_4

    .line 51
    goto :goto_1

    .line 53
    :cond_4
    :goto_0
    move v4, v5

    .line 54
    :goto_1
    return v4
    .line 55
.end method
