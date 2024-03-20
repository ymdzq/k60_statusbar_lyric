.class public final Landroidx/core/animation/AnimatorSet;
.super Landroidx/core/animation/Animator;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroidx/core/animation/AnimationHandler$AnimationFrameCallback;


# static fields
.field public static final EVENT_COMPARATOR:Landroidx/core/animation/AnimatorSet$3;


# instance fields
.field public mChildrenInitialized:Z

.field public mDelayAnim:Landroidx/core/animation/ValueAnimator;

.field public mDependencyDirty:Z

.field public mDuration:J

.field public mEvents:Ljava/util/ArrayList;

.field public mFirstFrame:J

.field public mInterpolator:Landroidx/core/animation/Interpolator;

.field public mLastEventId:I

.field public mNoOpListener:Landroidx/core/animation/AnimatorListenerAdapter;

.field public mNodeMap:Landroidx/collection/SimpleArrayMap;

.field public mNodes:Ljava/util/ArrayList;

.field public mPauseTime:J

.field public mPlayingSet:Ljava/util/ArrayList;

.field public mReversing:Z

.field public mRootNode:Landroidx/core/animation/AnimatorSet$Node;

.field public mSeekState:Landroidx/core/animation/AnimatorSet$SeekState;

.field public mSelfPulse:Z

.field public mStartDelay:J

.field public mStarted:Z

.field public mTotalDuration:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/core/animation/AnimatorSet$3;

    .line 2
    invoke-direct {v0}, Landroidx/core/animation/AnimatorSet$3;-><init>()V

    .line 4
    sput-object v0, Landroidx/core/animation/AnimatorSet;->EVENT_COMPARATOR:Landroidx/core/animation/AnimatorSet$3;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Landroidx/core/animation/Animator;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Landroidx/core/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    .line 12
    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    .line 14
    iput-object v0, p0, Landroidx/core/animation/AnimatorSet;->mNodeMap:Landroidx/collection/SimpleArrayMap;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iput-object v0, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    iput-object v0, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 31
    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Landroidx/core/animation/AnimatorSet;->mDependencyDirty:Z

    .line 34
    iput-boolean v0, p0, Landroidx/core/animation/AnimatorSet;->mStarted:Z

    .line 36
    const-wide/16 v1, 0x0

    .line 38
    iput-wide v1, p0, Landroidx/core/animation/AnimatorSet;->mStartDelay:J

    .line 40
    const/4 v3, 0x2

    .line 42
    new-array v3, v3, [F

    .line 43
    fill-array-data v3, :array_0

    .line 45
    invoke-static {v3}, Landroidx/core/animation/ValueAnimator;->ofFloat([F)Landroidx/core/animation/ValueAnimator;

    .line 48
    move-result-object v3

    .line 51
    invoke-virtual {v3, v1, v2}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    .line 52
    iput-object v3, p0, Landroidx/core/animation/AnimatorSet;->mDelayAnim:Landroidx/core/animation/ValueAnimator;

    .line 55
    new-instance v4, Landroidx/core/animation/AnimatorSet$Node;

    .line 57
    invoke-direct {v4, v3}, Landroidx/core/animation/AnimatorSet$Node;-><init>(Landroidx/core/animation/Animator;)V

    .line 59
    iput-object v4, p0, Landroidx/core/animation/AnimatorSet;->mRootNode:Landroidx/core/animation/AnimatorSet$Node;

    .line 62
    const-wide/16 v5, -0x1

    .line 64
    iput-wide v5, p0, Landroidx/core/animation/AnimatorSet;->mDuration:J

    .line 66
    const/4 v7, 0x0

    .line 68
    iput-object v7, p0, Landroidx/core/animation/AnimatorSet;->mInterpolator:Landroidx/core/animation/Interpolator;

    .line 69
    iput-wide v1, p0, Landroidx/core/animation/AnimatorSet;->mTotalDuration:J

    .line 71
    iput-wide v5, p0, Landroidx/core/animation/AnimatorSet;->mFirstFrame:J

    .line 73
    const/4 v1, -0x1

    .line 75
    iput v1, p0, Landroidx/core/animation/AnimatorSet;->mLastEventId:I

    .line 76
    iput-boolean v0, p0, Landroidx/core/animation/AnimatorSet;->mReversing:Z

    .line 78
    const/4 v1, 0x1

    .line 80
    iput-boolean v1, p0, Landroidx/core/animation/AnimatorSet;->mSelfPulse:Z

    .line 81
    new-instance v1, Landroidx/core/animation/AnimatorSet$SeekState;

    .line 83
    invoke-direct {v1, p0}, Landroidx/core/animation/AnimatorSet$SeekState;-><init>(Landroidx/core/animation/AnimatorSet;)V

    .line 85
    iput-object v1, p0, Landroidx/core/animation/AnimatorSet;->mSeekState:Landroidx/core/animation/AnimatorSet$SeekState;

    .line 88
    iput-boolean v0, p0, Landroidx/core/animation/AnimatorSet;->mChildrenInitialized:Z

    .line 90
    iput-wide v5, p0, Landroidx/core/animation/AnimatorSet;->mPauseTime:J

    .line 92
    new-instance v0, Landroidx/core/animation/AnimatorSet$1;

    .line 94
    invoke-direct {v0, p0}, Landroidx/core/animation/AnimatorSet$1;-><init>(Landroidx/core/animation/AnimatorSet;)V

    .line 96
    iput-object v0, p0, Landroidx/core/animation/AnimatorSet;->mNoOpListener:Landroidx/core/animation/AnimatorListenerAdapter;

    .line 99
    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mNodeMap:Landroidx/collection/SimpleArrayMap;

    .line 101
    invoke-virtual {v0, v3, v4}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 106
    iget-object p0, p0, Landroidx/core/animation/AnimatorSet;->mRootNode:Landroidx/core/animation/AnimatorSet$Node;

    .line 108
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    return-void

    .line 113
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 114
.end method

.method public static findSiblings(Landroidx/core/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Landroidx/core/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    .line 11
    if-nez v0, :cond_0

    .line 13
    return-void

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    iget-object v1, p0, Landroidx/core/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 19
    move-result v1

    .line 22
    if-ge v0, v1, :cond_1

    .line 23
    iget-object v1, p0, Landroidx/core/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 30
    check-cast v1, Landroidx/core/animation/AnimatorSet$Node;

    .line 31
    invoke-static {v1, p1}, Landroidx/core/animation/AnimatorSet;->findSiblings(Landroidx/core/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V

    .line 33
    add-int/lit8 v0, v0, 0x1

    .line 36
    goto :goto_0

    .line 38
    :cond_1
    return-void
    .line 39
.end method

.method public static isEmptySet(Landroidx/core/animation/AnimatorSet;)Z
    .locals 4

    .line 1
    iget-wide v0, p0, Landroidx/core/animation/AnimatorSet;->mStartDelay:J

    .line 2
    const-wide/16 v2, 0x0

    .line 4
    cmp-long v0, v0, v2

    .line 6
    const/4 v1, 0x0

    .line 8
    if-lez v0, :cond_0

    .line 9
    return v1

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    invoke-virtual {p0}, Landroidx/core/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    .line 13
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 17
    move-result v2

    .line 20
    if-ge v0, v2, :cond_3

    .line 21
    invoke-virtual {p0}, Landroidx/core/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    .line 23
    move-result-object v2

    .line 26
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 30
    check-cast v2, Landroidx/core/animation/Animator;

    .line 31
    instance-of v3, v2, Landroidx/core/animation/AnimatorSet;

    .line 33
    if-nez v3, :cond_1

    .line 35
    return v1

    .line 37
    :cond_1
    check-cast v2, Landroidx/core/animation/AnimatorSet;

    .line 38
    invoke-static {v2}, Landroidx/core/animation/AnimatorSet;->isEmptySet(Landroidx/core/animation/AnimatorSet;)Z

    .line 40
    move-result v2

    .line 43
    if-nez v2, :cond_2

    .line 44
    return v1

    .line 46
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 47
    goto :goto_0

    .line 49
    :cond_3
    const/4 p0, 0x1

    .line 50
    return p0
    .line 51
.end method

.method public static pulseFrame(JLandroidx/core/animation/AnimatorSet$Node;)V
    .locals 1

    .line 1
    iget-boolean v0, p2, Landroidx/core/animation/AnimatorSet$Node;->mEnded:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object v0, p2, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    .line 6
    long-to-float p0, p0

    .line 8
    const/high16 p1, 0x3f800000    # 1.0f

    .line 9
    mul-float/2addr p0, p1

    .line 11
    float-to-long p0, p0

    .line 12
    invoke-virtual {v0, p0, p1}, Landroidx/core/animation/Animator;->pulseAnimationFrame(J)Z

    .line 13
    move-result p0

    .line 16
    iput-boolean p0, p2, Landroidx/core/animation/AnimatorSet$Node;->mEnded:Z

    .line 17
    :cond_0
    return-void
    .line 19
.end method


# virtual methods
.method public final cancel()V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    move-result-object v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    iget-boolean v0, p0, Landroidx/core/animation/AnimatorSet;->mStarted:Z

    .line 8
    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Landroidx/core/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 12
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 20
    check-cast v0, Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 23
    move-result v2

    .line 26
    move v3, v1

    .line 27
    :goto_0
    if-ge v3, v2, :cond_0

    .line 28
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v4

    .line 33
    check-cast v4, Landroidx/core/animation/Animator$AnimatorListener;

    .line 34
    invoke-interface {v4}, Landroidx/core/animation/Animator$AnimatorListener;->onAnimationCancel()V

    .line 36
    add-int/lit8 v3, v3, 0x1

    .line 39
    goto :goto_0

    .line 41
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 42
    iget-object v2, p0, Landroidx/core/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 44
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 46
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 49
    move-result v2

    .line 52
    :goto_1
    if-ge v1, v2, :cond_1

    .line 53
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    move-result-object v3

    .line 58
    check-cast v3, Landroidx/core/animation/AnimatorSet$Node;

    .line 59
    iget-object v3, v3, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    .line 61
    invoke-virtual {v3}, Landroidx/core/animation/Animator;->cancel()V

    .line 63
    add-int/lit8 v1, v1, 0x1

    .line 66
    goto :goto_1

    .line 68
    :cond_1
    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 69
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 71
    invoke-virtual {p0}, Landroidx/core/animation/AnimatorSet;->endAnimation()V

    .line 74
    :cond_2
    return-void

    .line 77
    :cond_3
    new-instance p0, Landroid/util/AndroidRuntimeException;

    .line 78
    const-string v0, "Animators may only be run on Looper threads"

    .line 80
    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 82
    throw p0
    .line 85
.end method

.method public final bridge synthetic clone()Landroidx/core/animation/Animator;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/core/animation/AnimatorSet;->clone()Landroidx/core/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method public final clone()Landroidx/core/animation/AnimatorSet;
    .locals 12

    .line 3
    invoke-super {p0}, Landroidx/core/animation/Animator;->clone()Landroidx/core/animation/Animator;

    move-result-object v0

    check-cast v0, Landroidx/core/animation/AnimatorSet;

    .line 4
    iget-object v1, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    .line 5
    iput-boolean v2, v0, Landroidx/core/animation/AnimatorSet;->mStarted:Z

    const-wide/16 v3, -0x1

    .line 6
    iput-wide v3, v0, Landroidx/core/animation/AnimatorSet;->mFirstFrame:J

    const/4 v5, -0x1

    .line 7
    iput v5, v0, Landroidx/core/animation/AnimatorSet;->mLastEventId:I

    .line 8
    iput-wide v3, v0, Landroidx/core/animation/AnimatorSet;->mPauseTime:J

    .line 9
    new-instance v3, Landroidx/core/animation/AnimatorSet$SeekState;

    invoke-direct {v3, p0}, Landroidx/core/animation/AnimatorSet$SeekState;-><init>(Landroidx/core/animation/AnimatorSet;)V

    iput-object v3, v0, Landroidx/core/animation/AnimatorSet;->mSeekState:Landroidx/core/animation/AnimatorSet$SeekState;

    const/4 v3, 0x1

    .line 10
    iput-boolean v3, v0, Landroidx/core/animation/AnimatorSet;->mSelfPulse:Z

    .line 11
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Landroidx/core/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 12
    new-instance v4, Landroidx/collection/SimpleArrayMap;

    .line 13
    invoke-direct {v4, v2}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    .line 14
    iput-object v4, v0, Landroidx/core/animation/AnimatorSet;->mNodeMap:Landroidx/collection/SimpleArrayMap;

    .line 15
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, v0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 16
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 17
    new-instance v4, Landroidx/core/animation/AnimatorSet$2;

    invoke-direct {v4, v0}, Landroidx/core/animation/AnimatorSet$2;-><init>(Landroidx/core/animation/AnimatorSet;)V

    iput-object v4, v0, Landroidx/core/animation/AnimatorSet;->mNoOpListener:Landroidx/core/animation/AnimatorListenerAdapter;

    .line 18
    iput-boolean v2, v0, Landroidx/core/animation/AnimatorSet;->mReversing:Z

    .line 19
    iput-boolean v3, v0, Landroidx/core/animation/AnimatorSet;->mDependencyDirty:Z

    .line 20
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    move v4, v2

    :goto_0
    const/4 v5, 0x0

    if-ge v4, v1, :cond_2

    .line 21
    iget-object v6, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/core/animation/AnimatorSet$Node;

    .line 22
    invoke-virtual {v6}, Landroidx/core/animation/AnimatorSet$Node;->clone()Landroidx/core/animation/AnimatorSet$Node;

    move-result-object v7

    .line 23
    iget-object v8, v7, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    iget-object v9, p0, Landroidx/core/animation/AnimatorSet;->mNoOpListener:Landroidx/core/animation/AnimatorListenerAdapter;

    .line 24
    iget-object v10, v8, Landroidx/core/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-nez v10, :cond_0

    goto :goto_1

    .line 25
    :cond_0
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 26
    iget-object v9, v8, Landroidx/core/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_1

    .line 27
    iput-object v5, v8, Landroidx/core/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 28
    :cond_1
    :goto_1
    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v5, v0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v5, v0, Landroidx/core/animation/AnimatorSet;->mNodeMap:Landroidx/collection/SimpleArrayMap;

    iget-object v6, v7, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    invoke-virtual {v5, v6, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 31
    :cond_2
    iget-object v4, p0, Landroidx/core/animation/AnimatorSet;->mRootNode:Landroidx/core/animation/AnimatorSet$Node;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/animation/AnimatorSet$Node;

    iput-object v4, v0, Landroidx/core/animation/AnimatorSet;->mRootNode:Landroidx/core/animation/AnimatorSet$Node;

    .line 32
    iget-object v4, v4, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    check-cast v4, Landroidx/core/animation/ValueAnimator;

    iput-object v4, v0, Landroidx/core/animation/AnimatorSet;->mDelayAnim:Landroidx/core/animation/ValueAnimator;

    move v4, v2

    :goto_2
    if-ge v4, v1, :cond_a

    .line 33
    iget-object v6, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/core/animation/AnimatorSet$Node;

    .line 34
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/core/animation/AnimatorSet$Node;

    .line 35
    iget-object v8, v6, Landroidx/core/animation/AnimatorSet$Node;->mLatestParent:Landroidx/core/animation/AnimatorSet$Node;

    if-nez v8, :cond_3

    move-object v8, v5

    goto :goto_3

    .line 36
    :cond_3
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/core/animation/AnimatorSet$Node;

    :goto_3
    iput-object v8, v7, Landroidx/core/animation/AnimatorSet$Node;->mLatestParent:Landroidx/core/animation/AnimatorSet$Node;

    .line 37
    iget-object v8, v6, Landroidx/core/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    if-nez v8, :cond_4

    move v8, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    :goto_4
    move v9, v2

    :goto_5
    if-ge v9, v8, :cond_5

    .line 38
    iget-object v10, v7, Landroidx/core/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    iget-object v11, v6, Landroidx/core/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/core/animation/AnimatorSet$Node;

    invoke-virtual {v10, v9, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 39
    :cond_5
    iget-object v8, v6, Landroidx/core/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    if-nez v8, :cond_6

    move v8, v2

    goto :goto_6

    :cond_6
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    :goto_6
    move v9, v2

    :goto_7
    if-ge v9, v8, :cond_7

    .line 40
    iget-object v10, v7, Landroidx/core/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    iget-object v11, v6, Landroidx/core/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/core/animation/AnimatorSet$Node;

    invoke-virtual {v10, v9, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 41
    :cond_7
    iget-object v8, v6, Landroidx/core/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    if-nez v8, :cond_8

    move v8, v2

    goto :goto_8

    :cond_8
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    :goto_8
    move v9, v2

    :goto_9
    if-ge v9, v8, :cond_9

    .line 42
    iget-object v10, v7, Landroidx/core/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    iget-object v11, v6, Landroidx/core/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/core/animation/AnimatorSet$Node;

    invoke-virtual {v10, v9, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_a
    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroidx/core/animation/AnimatorSet;->clone()Landroidx/core/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method public final createDependencyGraph()V
    .locals 12

    .line 1
    iget-boolean v0, p0, Landroidx/core/animation/AnimatorSet;->mDependencyDirty:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_2

    .line 6
    move v0, v1

    .line 8
    :goto_0
    iget-object v3, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v3

    .line 14
    if-ge v0, v3, :cond_1

    .line 15
    iget-object v3, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v3

    .line 22
    check-cast v3, Landroidx/core/animation/AnimatorSet$Node;

    .line 23
    iget-object v3, v3, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    .line 25
    iget-object v4, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v4

    .line 32
    check-cast v4, Landroidx/core/animation/AnimatorSet$Node;

    .line 33
    iget-wide v4, v4, Landroidx/core/animation/AnimatorSet$Node;->mTotalDuration:J

    .line 35
    invoke-virtual {v3}, Landroidx/core/animation/Animator;->getTotalDuration()J

    .line 37
    move-result-wide v6

    .line 40
    cmp-long v3, v4, v6

    .line 41
    if-eqz v3, :cond_0

    .line 43
    move v0, v2

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 47
    goto :goto_0

    .line 49
    :cond_1
    move v0, v1

    .line 50
    :goto_1
    if-nez v0, :cond_2

    .line 51
    return-void

    .line 53
    :cond_2
    iput-boolean v1, p0, Landroidx/core/animation/AnimatorSet;->mDependencyDirty:Z

    .line 54
    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 56
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 58
    move-result v0

    .line 61
    move v3, v1

    .line 62
    :goto_2
    if-ge v3, v0, :cond_3

    .line 63
    iget-object v4, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 65
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    move-result-object v4

    .line 70
    check-cast v4, Landroidx/core/animation/AnimatorSet$Node;

    .line 71
    iput-boolean v1, v4, Landroidx/core/animation/AnimatorSet$Node;->mParentsAdded:Z

    .line 73
    add-int/lit8 v3, v3, 0x1

    .line 75
    goto :goto_2

    .line 77
    :cond_3
    move v3, v1

    .line 78
    :goto_3
    if-ge v3, v0, :cond_c

    .line 79
    iget-object v4, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 81
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    move-result-object v4

    .line 86
    check-cast v4, Landroidx/core/animation/AnimatorSet$Node;

    .line 87
    iget-boolean v5, v4, Landroidx/core/animation/AnimatorSet$Node;->mParentsAdded:Z

    .line 89
    if-eqz v5, :cond_4

    .line 91
    goto/16 :goto_a

    .line 93
    :cond_4
    iput-boolean v2, v4, Landroidx/core/animation/AnimatorSet$Node;->mParentsAdded:Z

    .line 95
    iget-object v5, v4, Landroidx/core/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    .line 97
    if-nez v5, :cond_5

    .line 99
    goto :goto_a

    .line 101
    :cond_5
    invoke-static {v4, v5}, Landroidx/core/animation/AnimatorSet;->findSiblings(Landroidx/core/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V

    .line 102
    iget-object v5, v4, Landroidx/core/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    .line 105
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 107
    iget-object v5, v4, Landroidx/core/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    .line 110
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 112
    move-result v5

    .line 115
    move v6, v1

    .line 116
    :goto_4
    if-ge v6, v5, :cond_8

    .line 117
    iget-object v7, v4, Landroidx/core/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    .line 119
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 121
    move-result-object v7

    .line 124
    check-cast v7, Landroidx/core/animation/AnimatorSet$Node;

    .line 125
    iget-object v7, v7, Landroidx/core/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    .line 127
    if-nez v7, :cond_6

    .line 129
    goto :goto_6

    .line 131
    :cond_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 132
    move-result v8

    .line 135
    move v9, v1

    .line 136
    :goto_5
    if-ge v9, v8, :cond_7

    .line 137
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 139
    move-result-object v10

    .line 142
    check-cast v10, Landroidx/core/animation/AnimatorSet$Node;

    .line 143
    invoke-virtual {v4, v10}, Landroidx/core/animation/AnimatorSet$Node;->addParent(Landroidx/core/animation/AnimatorSet$Node;)V

    .line 145
    add-int/lit8 v9, v9, 0x1

    .line 148
    goto :goto_5

    .line 150
    :cond_7
    :goto_6
    add-int/lit8 v6, v6, 0x1

    .line 151
    goto :goto_4

    .line 153
    :cond_8
    move v6, v1

    .line 154
    :goto_7
    if-ge v6, v5, :cond_b

    .line 155
    iget-object v7, v4, Landroidx/core/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    .line 157
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 159
    move-result-object v7

    .line 162
    check-cast v7, Landroidx/core/animation/AnimatorSet$Node;

    .line 163
    iget-object v8, v4, Landroidx/core/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    .line 165
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    if-nez v8, :cond_9

    .line 170
    goto :goto_9

    .line 172
    :cond_9
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 173
    move-result v9

    .line 176
    move v10, v1

    .line 177
    :goto_8
    if-ge v10, v9, :cond_a

    .line 178
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 180
    move-result-object v11

    .line 183
    check-cast v11, Landroidx/core/animation/AnimatorSet$Node;

    .line 184
    invoke-virtual {v7, v11}, Landroidx/core/animation/AnimatorSet$Node;->addParent(Landroidx/core/animation/AnimatorSet$Node;)V

    .line 186
    add-int/lit8 v10, v10, 0x1

    .line 189
    goto :goto_8

    .line 191
    :cond_a
    :goto_9
    iput-boolean v2, v7, Landroidx/core/animation/AnimatorSet$Node;->mParentsAdded:Z

    .line 192
    add-int/lit8 v6, v6, 0x1

    .line 194
    goto :goto_7

    .line 196
    :cond_b
    :goto_a
    add-int/lit8 v3, v3, 0x1

    .line 197
    goto :goto_3

    .line 199
    :cond_c
    move v3, v1

    .line 200
    :goto_b
    if-ge v3, v0, :cond_e

    .line 201
    iget-object v4, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 203
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 205
    move-result-object v4

    .line 208
    check-cast v4, Landroidx/core/animation/AnimatorSet$Node;

    .line 209
    iget-object v5, p0, Landroidx/core/animation/AnimatorSet;->mRootNode:Landroidx/core/animation/AnimatorSet$Node;

    .line 211
    if-eq v4, v5, :cond_d

    .line 213
    iget-object v6, v4, Landroidx/core/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    .line 215
    if-nez v6, :cond_d

    .line 217
    invoke-virtual {v4, v5}, Landroidx/core/animation/AnimatorSet$Node;->addParent(Landroidx/core/animation/AnimatorSet$Node;)V

    .line 219
    :cond_d
    add-int/lit8 v3, v3, 0x1

    .line 222
    goto :goto_b

    .line 224
    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    .line 225
    iget-object v3, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 227
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 229
    move-result v3

    .line 232
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 233
    iget-object v3, p0, Landroidx/core/animation/AnimatorSet;->mRootNode:Landroidx/core/animation/AnimatorSet$Node;

    .line 236
    const-wide/16 v4, 0x0

    .line 238
    iput-wide v4, v3, Landroidx/core/animation/AnimatorSet$Node;->mStartTime:J

    .line 240
    iget-object v4, p0, Landroidx/core/animation/AnimatorSet;->mDelayAnim:Landroidx/core/animation/ValueAnimator;

    .line 242
    iget-wide v4, v4, Landroidx/core/animation/ValueAnimator;->mDuration:J

    .line 244
    iput-wide v4, v3, Landroidx/core/animation/AnimatorSet$Node;->mEndTime:J

    .line 246
    invoke-virtual {p0, v3, v0}, Landroidx/core/animation/AnimatorSet;->updatePlayTime(Landroidx/core/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V

    .line 248
    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 251
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 253
    move v0, v2

    .line 256
    :goto_c
    iget-object v3, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 257
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 259
    move-result v3

    .line 262
    const/4 v4, 0x2

    .line 263
    if-ge v0, v3, :cond_f

    .line 264
    iget-object v3, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 266
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 268
    move-result-object v3

    .line 271
    check-cast v3, Landroidx/core/animation/AnimatorSet$Node;

    .line 272
    iget-object v5, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 274
    new-instance v6, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    .line 276
    invoke-direct {v6, v3, v1}, Landroidx/core/animation/AnimatorSet$AnimationEvent;-><init>(Landroidx/core/animation/AnimatorSet$Node;I)V

    .line 278
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v5, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 284
    new-instance v6, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    .line 286
    invoke-direct {v6, v3, v2}, Landroidx/core/animation/AnimatorSet$AnimationEvent;-><init>(Landroidx/core/animation/AnimatorSet$Node;I)V

    .line 288
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v5, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 294
    new-instance v6, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    .line 296
    invoke-direct {v6, v3, v4}, Landroidx/core/animation/AnimatorSet$AnimationEvent;-><init>(Landroidx/core/animation/AnimatorSet$Node;I)V

    .line 298
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    add-int/lit8 v0, v0, 0x1

    .line 304
    goto :goto_c

    .line 306
    :cond_f
    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 307
    sget-object v3, Landroidx/core/animation/AnimatorSet;->EVENT_COMPARATOR:Landroidx/core/animation/AnimatorSet$3;

    .line 309
    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 311
    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 314
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 316
    move-result v0

    .line 319
    move v3, v1

    .line 320
    :goto_d
    if-ge v3, v0, :cond_1a

    .line 321
    iget-object v5, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 323
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 325
    move-result-object v5

    .line 328
    check-cast v5, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    .line 329
    iget v6, v5, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mEvent:I

    .line 331
    if-ne v6, v4, :cond_19

    .line 333
    iget-object v5, v5, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mNode:Landroidx/core/animation/AnimatorSet$Node;

    .line 335
    iget-wide v6, v5, Landroidx/core/animation/AnimatorSet$Node;->mStartTime:J

    .line 337
    iget-wide v8, v5, Landroidx/core/animation/AnimatorSet$Node;->mEndTime:J

    .line 339
    cmp-long v10, v6, v8

    .line 341
    if-nez v10, :cond_10

    .line 343
    move v6, v2

    .line 345
    goto :goto_e

    .line 346
    :cond_10
    iget-object v10, v5, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    .line 347
    invoke-virtual {v10}, Landroidx/core/animation/Animator;->getStartDelay()J

    .line 349
    move-result-wide v10

    .line 352
    add-long/2addr v10, v6

    .line 353
    cmp-long v6, v8, v10

    .line 354
    if-nez v6, :cond_19

    .line 356
    move v6, v1

    .line 358
    :goto_e
    add-int/lit8 v7, v3, 0x1

    .line 359
    move v9, v0

    .line 361
    move v10, v9

    .line 362
    move v8, v7

    .line 363
    :goto_f
    if-ge v8, v0, :cond_14

    .line 364
    if-ge v9, v0, :cond_11

    .line 366
    if-ge v10, v0, :cond_11

    .line 368
    goto :goto_11

    .line 370
    :cond_11
    iget-object v11, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 371
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 373
    move-result-object v11

    .line 376
    check-cast v11, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    .line 377
    iget-object v11, v11, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mNode:Landroidx/core/animation/AnimatorSet$Node;

    .line 379
    if-ne v11, v5, :cond_13

    .line 381
    iget-object v11, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 383
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 385
    move-result-object v11

    .line 388
    check-cast v11, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    .line 389
    iget v11, v11, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mEvent:I

    .line 391
    if-nez v11, :cond_12

    .line 393
    move v9, v8

    .line 395
    goto :goto_10

    .line 396
    :cond_12
    iget-object v11, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 397
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 399
    move-result-object v11

    .line 402
    check-cast v11, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    .line 403
    iget v11, v11, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mEvent:I

    .line 405
    if-ne v11, v2, :cond_13

    .line 407
    move v10, v8

    .line 409
    :cond_13
    :goto_10
    add-int/lit8 v8, v8, 0x1

    .line 410
    goto :goto_f

    .line 412
    :cond_14
    :goto_11
    if-eqz v6, :cond_16

    .line 413
    iget-object v5, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 415
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 417
    move-result v5

    .line 420
    if-eq v9, v5, :cond_15

    .line 421
    goto :goto_12

    .line 423
    :cond_15
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 424
    const-string v0, "Something went wrong, no start isfound after stop for an animation that has the same start and endtime."

    .line 426
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 428
    throw p0

    .line 431
    :cond_16
    :goto_12
    iget-object v5, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 432
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 434
    move-result v5

    .line 437
    if-eq v10, v5, :cond_18

    .line 438
    if-eqz v6, :cond_17

    .line 440
    iget-object v5, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 442
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 444
    move-result-object v5

    .line 447
    check-cast v5, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    .line 448
    iget-object v6, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 450
    invoke-virtual {v6, v3, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 452
    move v3, v7

    .line 455
    :cond_17
    iget-object v5, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 456
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 458
    move-result-object v5

    .line 461
    check-cast v5, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    .line 462
    iget-object v6, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 464
    invoke-virtual {v6, v3, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 466
    add-int/2addr v3, v4

    .line 469
    goto/16 :goto_d

    .line 470
    :cond_18
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 472
    const-string v0, "Something went wrong, no startdelay end is found after stop for an animation"

    .line 474
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 476
    throw p0

    .line 479
    :cond_19
    add-int/lit8 v3, v3, 0x1

    .line 480
    goto/16 :goto_d

    .line 482
    :cond_1a
    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 484
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 486
    move-result v0

    .line 489
    if-nez v0, :cond_1c

    .line 490
    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 492
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 494
    move-result-object v0

    .line 497
    check-cast v0, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    .line 498
    iget v0, v0, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mEvent:I

    .line 500
    if-nez v0, :cond_1b

    .line 502
    goto :goto_13

    .line 504
    :cond_1b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 505
    const-string v0, "Sorting went bad, the start event should always be at index 0"

    .line 507
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 509
    throw p0

    .line 512
    :cond_1c
    :goto_13
    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 513
    new-instance v3, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    .line 515
    iget-object v5, p0, Landroidx/core/animation/AnimatorSet;->mRootNode:Landroidx/core/animation/AnimatorSet$Node;

    .line 517
    invoke-direct {v3, v5, v1}, Landroidx/core/animation/AnimatorSet$AnimationEvent;-><init>(Landroidx/core/animation/AnimatorSet$Node;I)V

    .line 519
    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 522
    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 525
    new-instance v1, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    .line 527
    iget-object v3, p0, Landroidx/core/animation/AnimatorSet;->mRootNode:Landroidx/core/animation/AnimatorSet$Node;

    .line 529
    invoke-direct {v1, v3, v2}, Landroidx/core/animation/AnimatorSet$AnimationEvent;-><init>(Landroidx/core/animation/AnimatorSet$Node;I)V

    .line 531
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 534
    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 537
    new-instance v1, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    .line 539
    iget-object v3, p0, Landroidx/core/animation/AnimatorSet;->mRootNode:Landroidx/core/animation/AnimatorSet$Node;

    .line 541
    invoke-direct {v1, v3, v4}, Landroidx/core/animation/AnimatorSet$AnimationEvent;-><init>(Landroidx/core/animation/AnimatorSet$Node;I)V

    .line 543
    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 546
    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 549
    invoke-static {v0, v2}, Landroidx/appcompat/view/menu/CascadingMenuPopup$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 551
    move-result-object v0

    .line 554
    check-cast v0, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    .line 555
    iget v0, v0, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mEvent:I

    .line 557
    if-eqz v0, :cond_1d

    .line 559
    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 561
    invoke-static {v0, v2}, Landroidx/appcompat/view/menu/CascadingMenuPopup$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 563
    move-result-object v0

    .line 566
    check-cast v0, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    .line 567
    iget v0, v0, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mEvent:I

    .line 569
    if-eq v0, v2, :cond_1d

    .line 571
    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 573
    invoke-static {v0, v2}, Landroidx/appcompat/view/menu/CascadingMenuPopup$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 575
    move-result-object v0

    .line 578
    check-cast v0, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    .line 579
    invoke-virtual {v0}, Landroidx/core/animation/AnimatorSet$AnimationEvent;->getTime()J

    .line 581
    move-result-wide v0

    .line 584
    iput-wide v0, p0, Landroidx/core/animation/AnimatorSet;->mTotalDuration:J

    .line 585
    return-void

    .line 587
    :cond_1d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 588
    const-string v0, "Something went wrong, the last event is not an end event"

    .line 590
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 592
    throw p0
    .line 595
.end method

.method public final doAnimationFrame(J)Z
    .locals 11

    .line 1
    iget-wide v0, p0, Landroidx/core/animation/AnimatorSet;->mFirstFrame:J

    .line 2
    const-wide/16 v2, 0x0

    .line 4
    cmp-long v0, v0, v2

    .line 6
    if-gez v0, :cond_0

    .line 8
    iput-wide p1, p0, Landroidx/core/animation/AnimatorSet;->mFirstFrame:J

    .line 10
    :cond_0
    iget-wide v0, p0, Landroidx/core/animation/AnimatorSet;->mPauseTime:J

    .line 12
    cmp-long v2, v0, v2

    .line 14
    const-wide/16 v3, -0x1

    .line 16
    if-lez v2, :cond_1

    .line 18
    iget-wide v5, p0, Landroidx/core/animation/AnimatorSet;->mFirstFrame:J

    .line 20
    sub-long v0, p1, v0

    .line 22
    add-long/2addr v0, v5

    .line 24
    iput-wide v0, p0, Landroidx/core/animation/AnimatorSet;->mFirstFrame:J

    .line 25
    iput-wide v3, p0, Landroidx/core/animation/AnimatorSet;->mPauseTime:J

    .line 27
    :cond_1
    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mSeekState:Landroidx/core/animation/AnimatorSet$SeekState;

    .line 29
    iget-wide v1, v0, Landroidx/core/animation/AnimatorSet$SeekState;->mPlayTime:J

    .line 31
    cmp-long v1, v1, v3

    .line 33
    const/4 v2, 0x0

    .line 35
    const/4 v5, 0x1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    move v1, v5

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    move v1, v2

    .line 41
    :goto_0
    const/high16 v6, 0x3f800000    # 1.0f

    .line 42
    if-eqz v1, :cond_5

    .line 44
    iget-boolean v1, p0, Landroidx/core/animation/AnimatorSet;->mReversing:Z

    .line 46
    invoke-virtual {v0, v1}, Landroidx/core/animation/AnimatorSet$SeekState;->updateSeekDirection(Z)V

    .line 48
    iget-boolean v0, p0, Landroidx/core/animation/AnimatorSet;->mReversing:Z

    .line 51
    if-eqz v0, :cond_3

    .line 53
    iget-object v1, p0, Landroidx/core/animation/AnimatorSet;->mSeekState:Landroidx/core/animation/AnimatorSet$SeekState;

    .line 55
    iget-wide v7, v1, Landroidx/core/animation/AnimatorSet$SeekState;->mPlayTime:J

    .line 57
    long-to-float v1, v7

    .line 59
    mul-float/2addr v1, v6

    .line 60
    float-to-long v7, v1

    .line 61
    sub-long v7, p1, v7

    .line 62
    iput-wide v7, p0, Landroidx/core/animation/AnimatorSet;->mFirstFrame:J

    .line 64
    goto :goto_1

    .line 66
    :cond_3
    iget-object v1, p0, Landroidx/core/animation/AnimatorSet;->mSeekState:Landroidx/core/animation/AnimatorSet$SeekState;

    .line 67
    iget-wide v7, v1, Landroidx/core/animation/AnimatorSet$SeekState;->mPlayTime:J

    .line 69
    iget-wide v9, p0, Landroidx/core/animation/AnimatorSet;->mStartDelay:J

    .line 71
    add-long/2addr v7, v9

    .line 73
    long-to-float v1, v7

    .line 74
    mul-float/2addr v1, v6

    .line 75
    float-to-long v7, v1

    .line 76
    sub-long v7, p1, v7

    .line 77
    iput-wide v7, p0, Landroidx/core/animation/AnimatorSet;->mFirstFrame:J

    .line 79
    :goto_1
    xor-int/2addr v0, v5

    .line 81
    invoke-virtual {p0, v0}, Landroidx/core/animation/AnimatorSet;->skipToEndValue(Z)V

    .line 82
    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 85
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 87
    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 90
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 92
    move-result v0

    .line 95
    sub-int/2addr v0, v5

    .line 96
    :goto_2
    if-ltz v0, :cond_4

    .line 97
    iget-object v1, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 99
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 101
    move-result-object v1

    .line 104
    check-cast v1, Landroidx/core/animation/AnimatorSet$Node;

    .line 105
    iput-boolean v2, v1, Landroidx/core/animation/AnimatorSet$Node;->mEnded:Z

    .line 107
    add-int/lit8 v0, v0, -0x1

    .line 109
    goto :goto_2

    .line 111
    :cond_4
    const/4 v0, -0x1

    .line 112
    iput v0, p0, Landroidx/core/animation/AnimatorSet;->mLastEventId:I

    .line 113
    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mSeekState:Landroidx/core/animation/AnimatorSet$SeekState;

    .line 115
    iput-wide v3, v0, Landroidx/core/animation/AnimatorSet$SeekState;->mPlayTime:J

    .line 117
    iput-boolean v2, v0, Landroidx/core/animation/AnimatorSet$SeekState;->mSeekingInReverse:Z

    .line 119
    :cond_5
    iget-boolean v0, p0, Landroidx/core/animation/AnimatorSet;->mReversing:Z

    .line 121
    if-nez v0, :cond_6

    .line 123
    iget-wide v0, p0, Landroidx/core/animation/AnimatorSet;->mFirstFrame:J

    .line 125
    iget-wide v3, p0, Landroidx/core/animation/AnimatorSet;->mStartDelay:J

    .line 127
    long-to-float v3, v3

    .line 129
    mul-float/2addr v3, v6

    .line 130
    float-to-long v3, v3

    .line 131
    add-long/2addr v0, v3

    .line 132
    cmp-long v0, p1, v0

    .line 133
    if-gez v0, :cond_6

    .line 135
    return v2

    .line 137
    :cond_6
    iget-wide v0, p0, Landroidx/core/animation/AnimatorSet;->mFirstFrame:J

    .line 138
    sub-long/2addr p1, v0

    .line 140
    long-to-float p1, p1

    .line 141
    div-float/2addr p1, v6

    .line 142
    float-to-long p1, p1

    .line 143
    invoke-virtual {p0, p1, p2}, Landroidx/core/animation/AnimatorSet;->findLatestEventIdForTime(J)I

    .line 144
    move-result v0

    .line 147
    iget v1, p0, Landroidx/core/animation/AnimatorSet;->mLastEventId:I

    .line 148
    invoke-virtual {p0, v1, v0, p1, p2}, Landroidx/core/animation/AnimatorSet;->handleAnimationEvents(IIJ)V

    .line 150
    iput v0, p0, Landroidx/core/animation/AnimatorSet;->mLastEventId:I

    .line 153
    move v0, v2

    .line 155
    :goto_3
    iget-object v1, p0, Landroidx/core/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 156
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 158
    move-result v1

    .line 161
    if-ge v0, v1, :cond_8

    .line 162
    iget-object v1, p0, Landroidx/core/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 164
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 166
    move-result-object v1

    .line 169
    check-cast v1, Landroidx/core/animation/AnimatorSet$Node;

    .line 170
    iget-boolean v3, v1, Landroidx/core/animation/AnimatorSet$Node;->mEnded:Z

    .line 172
    if-nez v3, :cond_7

    .line 174
    invoke-virtual {p0, p1, p2, v1}, Landroidx/core/animation/AnimatorSet;->getPlayTimeForNode(JLandroidx/core/animation/AnimatorSet$Node;)J

    .line 176
    move-result-wide v3

    .line 179
    invoke-static {v3, v4, v1}, Landroidx/core/animation/AnimatorSet;->pulseFrame(JLandroidx/core/animation/AnimatorSet$Node;)V

    .line 180
    :cond_7
    add-int/lit8 v0, v0, 0x1

    .line 183
    goto :goto_3

    .line 185
    :cond_8
    iget-object p1, p0, Landroidx/core/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 186
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 188
    move-result p1

    .line 191
    sub-int/2addr p1, v5

    .line 192
    :goto_4
    if-ltz p1, :cond_a

    .line 193
    iget-object p2, p0, Landroidx/core/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 195
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 197
    move-result-object p2

    .line 200
    check-cast p2, Landroidx/core/animation/AnimatorSet$Node;

    .line 201
    iget-boolean p2, p2, Landroidx/core/animation/AnimatorSet$Node;->mEnded:Z

    .line 203
    if-eqz p2, :cond_9

    .line 205
    iget-object p2, p0, Landroidx/core/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 207
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 209
    :cond_9
    add-int/lit8 p1, p1, -0x1

    .line 212
    goto :goto_4

    .line 214
    :cond_a
    iget-boolean p1, p0, Landroidx/core/animation/AnimatorSet;->mReversing:Z

    .line 215
    if-eqz p1, :cond_c

    .line 217
    iget-object p1, p0, Landroidx/core/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 219
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 221
    move-result p1

    .line 224
    if-ne p1, v5, :cond_b

    .line 225
    iget-object p1, p0, Landroidx/core/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 227
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 229
    move-result-object p1

    .line 232
    iget-object p2, p0, Landroidx/core/animation/AnimatorSet;->mRootNode:Landroidx/core/animation/AnimatorSet$Node;

    .line 233
    if-ne p1, p2, :cond_b

    .line 235
    goto :goto_5

    .line 237
    :cond_b
    iget-object p1, p0, Landroidx/core/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 238
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 240
    move-result p1

    .line 243
    if-eqz p1, :cond_d

    .line 244
    iget p1, p0, Landroidx/core/animation/AnimatorSet;->mLastEventId:I

    .line 246
    const/4 p2, 0x3

    .line 248
    if-ge p1, p2, :cond_d

    .line 249
    goto :goto_5

    .line 251
    :cond_c
    iget-object p1, p0, Landroidx/core/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 252
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 254
    move-result p1

    .line 257
    if-eqz p1, :cond_d

    .line 258
    iget p1, p0, Landroidx/core/animation/AnimatorSet;->mLastEventId:I

    .line 260
    iget-object p2, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 262
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 264
    move-result p2

    .line 267
    sub-int/2addr p2, v5

    .line 268
    if-ne p1, p2, :cond_d

    .line 269
    :goto_5
    move p1, v5

    .line 271
    goto :goto_6

    .line 272
    :cond_d
    move p1, v2

    .line 273
    :goto_6
    iget-object p2, p0, Landroidx/core/animation/Animator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 274
    if-eqz p2, :cond_e

    .line 276
    move p2, v2

    .line 278
    :goto_7
    iget-object v0, p0, Landroidx/core/animation/Animator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 279
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 281
    move-result v0

    .line 284
    if-ge p2, v0, :cond_e

    .line 285
    iget-object v0, p0, Landroidx/core/animation/Animator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 287
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 289
    move-result-object v0

    .line 292
    check-cast v0, Landroidx/core/animation/Animator$AnimatorUpdateListener;

    .line 293
    invoke-interface {v0, p0}, Landroidx/core/animation/Animator$AnimatorUpdateListener;->onAnimationUpdate(Landroidx/core/animation/Animator;)V

    .line 295
    add-int/lit8 p2, p2, 0x1

    .line 298
    goto :goto_7

    .line 300
    :cond_e
    if-eqz p1, :cond_f

    .line 301
    invoke-virtual {p0}, Landroidx/core/animation/AnimatorSet;->endAnimation()V

    .line 303
    return v5

    .line 306
    :cond_f
    return v2
    .line 307
.end method

.method public final end()V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    move-result-object v0

    .line 5
    if-eqz v0, :cond_9

    .line 6
    iget-boolean v0, p0, Landroidx/core/animation/AnimatorSet;->mStarted:Z

    .line 8
    if-eqz v0, :cond_8

    .line 10
    iget-boolean v0, p0, Landroidx/core/animation/AnimatorSet;->mReversing:Z

    .line 12
    const/4 v1, 0x2

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eqz v0, :cond_4

    .line 16
    iget v0, p0, Landroidx/core/animation/AnimatorSet;->mLastEventId:I

    .line 18
    const/4 v3, -0x1

    .line 20
    if-ne v0, v3, :cond_0

    .line 21
    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 25
    move-result v0

    .line 28
    :cond_0
    iput v0, p0, Landroidx/core/animation/AnimatorSet;->mLastEventId:I

    .line 29
    :cond_1
    :goto_0
    iget v0, p0, Landroidx/core/animation/AnimatorSet;->mLastEventId:I

    .line 31
    if-lez v0, :cond_7

    .line 33
    add-int/lit8 v0, v0, -0x1

    .line 35
    iput v0, p0, Landroidx/core/animation/AnimatorSet;->mLastEventId:I

    .line 37
    iget-object v3, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    move-result-object v0

    .line 44
    check-cast v0, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    .line 45
    iget-object v3, v0, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mNode:Landroidx/core/animation/AnimatorSet$Node;

    .line 47
    iget-object v3, v3, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    .line 49
    iget-object v4, p0, Landroidx/core/animation/AnimatorSet;->mNodeMap:Landroidx/collection/SimpleArrayMap;

    .line 51
    invoke-virtual {v4, v3}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    move-result-object v4

    .line 56
    check-cast v4, Landroidx/core/animation/AnimatorSet$Node;

    .line 57
    iget-boolean v4, v4, Landroidx/core/animation/AnimatorSet$Node;->mEnded:Z

    .line 59
    if-eqz v4, :cond_2

    .line 61
    goto :goto_0

    .line 63
    :cond_2
    iget v0, v0, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mEvent:I

    .line 64
    if-ne v0, v1, :cond_3

    .line 66
    invoke-virtual {v3}, Landroidx/core/animation/Animator;->reverse()V

    .line 68
    goto :goto_0

    .line 71
    :cond_3
    if-ne v0, v2, :cond_1

    .line 72
    invoke-virtual {v3}, Landroidx/core/animation/Animator;->isStarted()Z

    .line 74
    move-result v0

    .line 77
    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {v3}, Landroidx/core/animation/Animator;->end()V

    .line 80
    goto :goto_0

    .line 83
    :cond_4
    :goto_1
    iget v0, p0, Landroidx/core/animation/AnimatorSet;->mLastEventId:I

    .line 84
    iget-object v3, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 86
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 88
    move-result v3

    .line 91
    sub-int/2addr v3, v2

    .line 92
    if-ge v0, v3, :cond_7

    .line 93
    iget v0, p0, Landroidx/core/animation/AnimatorSet;->mLastEventId:I

    .line 95
    add-int/2addr v0, v2

    .line 97
    iput v0, p0, Landroidx/core/animation/AnimatorSet;->mLastEventId:I

    .line 98
    iget-object v3, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 100
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 102
    move-result-object v0

    .line 105
    check-cast v0, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    .line 106
    iget-object v3, v0, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mNode:Landroidx/core/animation/AnimatorSet$Node;

    .line 108
    iget-object v3, v3, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    .line 110
    iget-object v4, p0, Landroidx/core/animation/AnimatorSet;->mNodeMap:Landroidx/collection/SimpleArrayMap;

    .line 112
    invoke-virtual {v4, v3}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    move-result-object v4

    .line 117
    check-cast v4, Landroidx/core/animation/AnimatorSet$Node;

    .line 118
    iget-boolean v4, v4, Landroidx/core/animation/AnimatorSet$Node;->mEnded:Z

    .line 120
    if-eqz v4, :cond_5

    .line 122
    goto :goto_1

    .line 124
    :cond_5
    iget v0, v0, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mEvent:I

    .line 125
    if-nez v0, :cond_6

    .line 127
    invoke-virtual {v3}, Landroidx/core/animation/Animator;->start()V

    .line 129
    goto :goto_1

    .line 132
    :cond_6
    if-ne v0, v1, :cond_4

    .line 133
    invoke-virtual {v3}, Landroidx/core/animation/Animator;->isStarted()Z

    .line 135
    move-result v0

    .line 138
    if-eqz v0, :cond_4

    .line 139
    invoke-virtual {v3}, Landroidx/core/animation/Animator;->end()V

    .line 141
    goto :goto_1

    .line 144
    :cond_7
    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 145
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 147
    :cond_8
    invoke-virtual {p0}, Landroidx/core/animation/AnimatorSet;->endAnimation()V

    .line 150
    return-void

    .line 153
    :cond_9
    new-instance p0, Landroid/util/AndroidRuntimeException;

    .line 154
    const-string v0, "Animators may only be run on Looper threads"

    .line 156
    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 158
    throw p0
    .line 161
.end method

.method public final endAnimation()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/core/animation/AnimatorSet;->mStarted:Z

    .line 3
    const-wide/16 v1, -0x1

    .line 5
    iput-wide v1, p0, Landroidx/core/animation/AnimatorSet;->mFirstFrame:J

    .line 7
    const/4 v3, -0x1

    .line 9
    iput v3, p0, Landroidx/core/animation/AnimatorSet;->mLastEventId:I

    .line 10
    iput-wide v1, p0, Landroidx/core/animation/AnimatorSet;->mPauseTime:J

    .line 12
    iget-object v3, p0, Landroidx/core/animation/AnimatorSet;->mSeekState:Landroidx/core/animation/AnimatorSet$SeekState;

    .line 14
    iput-wide v1, v3, Landroidx/core/animation/AnimatorSet$SeekState;->mPlayTime:J

    .line 16
    iput-boolean v0, v3, Landroidx/core/animation/AnimatorSet$SeekState;->mSeekingInReverse:Z

    .line 18
    iget-object v1, p0, Landroidx/core/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 22
    iget-boolean v1, p0, Landroidx/core/animation/AnimatorSet;->mSelfPulse:Z

    .line 25
    const/4 v2, 0x0

    .line 27
    const/4 v3, 0x1

    .line 28
    if-nez v1, :cond_0

    .line 29
    goto :goto_0

    .line 31
    :cond_0
    invoke-static {}, Landroidx/core/animation/AnimationHandler;->getInstance()Landroidx/core/animation/AnimationHandler;

    .line 32
    move-result-object v1

    .line 35
    iget-object v4, v1, Landroidx/core/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 38
    move-result v5

    .line 41
    if-ltz v5, :cond_1

    .line 42
    invoke-virtual {v4, v5, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 44
    iput-boolean v3, v1, Landroidx/core/animation/AnimationHandler;->mListDirty:Z

    .line 47
    :cond_1
    :goto_0
    iget-object v1, p0, Landroidx/core/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 49
    if-eqz v1, :cond_2

    .line 51
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 53
    move-result-object v1

    .line 56
    check-cast v1, Ljava/util/ArrayList;

    .line 57
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 59
    move-result v4

    .line 62
    move v5, v0

    .line 63
    :goto_1
    if-ge v5, v4, :cond_2

    .line 64
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 66
    move-result-object v6

    .line 69
    check-cast v6, Landroidx/core/animation/Animator$AnimatorListener;

    .line 70
    invoke-interface {v6, p0}, Landroidx/core/animation/Animator$AnimatorListener;->onAnimationEnd(Landroidx/core/animation/Animator;)V

    .line 72
    add-int/lit8 v5, v5, 0x1

    .line 75
    goto :goto_1

    .line 77
    :cond_2
    move v1, v3

    .line 78
    :goto_2
    iget-object v4, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 79
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 81
    move-result v4

    .line 84
    if-ge v1, v4, :cond_5

    .line 85
    iget-object v4, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 87
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 89
    move-result-object v4

    .line 92
    check-cast v4, Landroidx/core/animation/AnimatorSet$Node;

    .line 93
    iget-object v4, v4, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    .line 95
    iget-object v5, p0, Landroidx/core/animation/AnimatorSet;->mNoOpListener:Landroidx/core/animation/AnimatorListenerAdapter;

    .line 97
    iget-object v6, v4, Landroidx/core/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 99
    if-nez v6, :cond_3

    .line 101
    goto :goto_3

    .line 103
    :cond_3
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 104
    iget-object v5, v4, Landroidx/core/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 107
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 109
    move-result v5

    .line 112
    if-nez v5, :cond_4

    .line 113
    iput-object v2, v4, Landroidx/core/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 115
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 117
    goto :goto_2

    .line 119
    :cond_5
    iput-boolean v3, p0, Landroidx/core/animation/AnimatorSet;->mSelfPulse:Z

    .line 120
    iput-boolean v0, p0, Landroidx/core/animation/AnimatorSet;->mReversing:Z

    .line 122
    return-void
    .line 124
.end method

.method public final findLatestEventIdForTime(J)I
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 7
    iget v1, p0, Landroidx/core/animation/AnimatorSet;->mLastEventId:I

    .line 8
    iget-boolean v2, p0, Landroidx/core/animation/AnimatorSet;->mReversing:Z

    .line 10
    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {p0}, Landroidx/core/animation/AnimatorSet;->getTotalDuration()J

    .line 14
    move-result-wide v2

    .line 17
    sub-long/2addr v2, p1

    .line 18
    iget p1, p0, Landroidx/core/animation/AnimatorSet;->mLastEventId:I

    .line 19
    const/4 p2, -0x1

    .line 21
    if-ne p1, p2, :cond_0

    .line 22
    goto :goto_0

    .line 24
    :cond_0
    move v0, p1

    .line 25
    :goto_0
    iput v0, p0, Landroidx/core/animation/AnimatorSet;->mLastEventId:I

    .line 26
    add-int/lit8 v0, v0, -0x1

    .line 28
    :goto_1
    if-ltz v0, :cond_4

    .line 30
    iget-object p1, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object p1

    .line 37
    check-cast p1, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    .line 38
    invoke-virtual {p1}, Landroidx/core/animation/AnimatorSet$AnimationEvent;->getTime()J

    .line 40
    move-result-wide p1

    .line 43
    cmp-long p1, p1, v2

    .line 44
    if-ltz p1, :cond_1

    .line 46
    move v1, v0

    .line 48
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 49
    goto :goto_1

    .line 51
    :cond_2
    add-int/lit8 v2, v1, 0x1

    .line 52
    :goto_2
    if-ge v2, v0, :cond_4

    .line 54
    iget-object v3, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 56
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    move-result-object v3

    .line 61
    check-cast v3, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    .line 62
    invoke-virtual {v3}, Landroidx/core/animation/AnimatorSet$AnimationEvent;->getTime()J

    .line 64
    move-result-wide v4

    .line 67
    const-wide/16 v6, -0x1

    .line 68
    cmp-long v4, v4, v6

    .line 70
    if-eqz v4, :cond_3

    .line 72
    invoke-virtual {v3}, Landroidx/core/animation/AnimatorSet$AnimationEvent;->getTime()J

    .line 74
    move-result-wide v3

    .line 77
    cmp-long v3, v3, p1

    .line 78
    if-gtz v3, :cond_3

    .line 80
    move v1, v2

    .line 82
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 83
    goto :goto_2

    .line 85
    :cond_4
    return v1
    .line 86
.end method

.method public final getChildAnimations()Ljava/util/ArrayList;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v1, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_1

    .line 14
    iget-object v3, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v3

    .line 21
    check-cast v3, Landroidx/core/animation/AnimatorSet$Node;

    .line 22
    iget-object v4, p0, Landroidx/core/animation/AnimatorSet;->mRootNode:Landroidx/core/animation/AnimatorSet$Node;

    .line 24
    if-eq v3, v4, :cond_0

    .line 26
    iget-object v3, v3, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    .line 28
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 33
    goto :goto_0

    .line 35
    :cond_1
    return-object v0
    .line 36
.end method

.method public final getNodeForAnimation(Landroidx/core/animation/Animator;)Landroidx/core/animation/AnimatorSet$Node;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mNodeMap:Landroidx/collection/SimpleArrayMap;

    .line 2
    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/core/animation/AnimatorSet$Node;

    .line 8
    if-nez v0, :cond_0

    .line 10
    new-instance v0, Landroidx/core/animation/AnimatorSet$Node;

    .line 12
    invoke-direct {v0, p1}, Landroidx/core/animation/AnimatorSet$Node;-><init>(Landroidx/core/animation/Animator;)V

    .line 14
    iget-object v1, p0, Landroidx/core/animation/AnimatorSet;->mNodeMap:Landroidx/collection/SimpleArrayMap;

    .line 17
    invoke-virtual {v1, p1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object p0, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    instance-of p0, p1, Landroidx/core/animation/AnimatorSet;

    .line 27
    if-eqz p0, :cond_0

    .line 29
    check-cast p1, Landroidx/core/animation/AnimatorSet;

    .line 31
    const/4 p0, 0x0

    .line 33
    iput-boolean p0, p1, Landroidx/core/animation/AnimatorSet;->mSelfPulse:Z

    .line 34
    :cond_0
    return-object v0
    .line 36
.end method

.method public final getPlayTimeForNode(JLandroidx/core/animation/AnimatorSet$Node;)J
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/core/animation/AnimatorSet;->mReversing:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/core/animation/AnimatorSet;->getTotalDuration()J

    .line 6
    move-result-wide v0

    .line 9
    sub-long/2addr v0, p1

    .line 10
    iget-wide p0, p3, Landroidx/core/animation/AnimatorSet$Node;->mEndTime:J

    .line 11
    sub-long/2addr p0, v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-wide v0, p3, Landroidx/core/animation/AnimatorSet$Node;->mStartTime:J

    .line 15
    sub-long p0, p1, v0

    .line 17
    :goto_0
    return-wide p0
    .line 19
.end method

.method public final getStartDelay()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/core/animation/AnimatorSet;->mStartDelay:J

    .line 2
    return-wide v0
    .line 4
.end method

.method public final getTotalDuration()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/core/animation/AnimatorSet;->updateAnimatorsDuration()V

    .line 2
    invoke-virtual {p0}, Landroidx/core/animation/AnimatorSet;->createDependencyGraph()V

    .line 5
    iget-wide v0, p0, Landroidx/core/animation/AnimatorSet;->mTotalDuration:J

    .line 8
    return-wide v0
    .line 10
.end method

.method public final handleAnimationEvents(IIJ)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Landroidx/core/animation/AnimatorSet;->mReversing:Z

    .line 2
    const-wide/16 v1, 0x0

    .line 4
    const/4 v3, 0x2

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x1

    .line 8
    if-eqz v0, :cond_4

    .line 9
    const/4 v0, -0x1

    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    iget-object p1, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 16
    move-result p1

    .line 19
    :cond_0
    sub-int/2addr p1, v5

    .line 20
    :goto_0
    if-lt p1, p2, :cond_8

    .line 21
    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 28
    check-cast v0, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    .line 29
    iget-object v6, v0, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mNode:Landroidx/core/animation/AnimatorSet$Node;

    .line 31
    iget v7, v0, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mEvent:I

    .line 33
    if-ne v7, v3, :cond_2

    .line 35
    iget-object v7, v6, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    .line 37
    invoke-virtual {v7}, Landroidx/core/animation/Animator;->isStarted()Z

    .line 39
    move-result v7

    .line 42
    if-eqz v7, :cond_1

    .line 43
    iget-object v7, v6, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    .line 45
    invoke-virtual {v7}, Landroidx/core/animation/Animator;->cancel()V

    .line 47
    :cond_1
    iput-boolean v4, v6, Landroidx/core/animation/AnimatorSet$Node;->mEnded:Z

    .line 50
    iget-object v7, p0, Landroidx/core/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 52
    iget-object v0, v0, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mNode:Landroidx/core/animation/AnimatorSet$Node;

    .line 54
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, v6, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    .line 59
    invoke-virtual {v0, v5}, Landroidx/core/animation/Animator;->startWithoutPulsing(Z)V

    .line 61
    invoke-static {v1, v2, v6}, Landroidx/core/animation/AnimatorSet;->pulseFrame(JLandroidx/core/animation/AnimatorSet$Node;)V

    .line 64
    goto :goto_1

    .line 67
    :cond_2
    if-ne v7, v5, :cond_3

    .line 68
    iget-boolean v0, v6, Landroidx/core/animation/AnimatorSet$Node;->mEnded:Z

    .line 70
    if-nez v0, :cond_3

    .line 72
    invoke-virtual {p0, p3, p4, v6}, Landroidx/core/animation/AnimatorSet;->getPlayTimeForNode(JLandroidx/core/animation/AnimatorSet$Node;)J

    .line 74
    move-result-wide v7

    .line 77
    invoke-static {v7, v8, v6}, Landroidx/core/animation/AnimatorSet;->pulseFrame(JLandroidx/core/animation/AnimatorSet$Node;)V

    .line 78
    :cond_3
    :goto_1
    add-int/lit8 p1, p1, -0x1

    .line 81
    goto :goto_0

    .line 83
    :cond_4
    add-int/2addr p1, v5

    .line 84
    :goto_2
    if-gt p1, p2, :cond_8

    .line 85
    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 87
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 89
    move-result-object v0

    .line 92
    check-cast v0, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    .line 93
    iget-object v5, v0, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mNode:Landroidx/core/animation/AnimatorSet$Node;

    .line 95
    iget v0, v0, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mEvent:I

    .line 97
    if-nez v0, :cond_6

    .line 99
    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 101
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v0, v5, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    .line 106
    invoke-virtual {v0}, Landroidx/core/animation/Animator;->isStarted()Z

    .line 108
    move-result v0

    .line 111
    if-eqz v0, :cond_5

    .line 112
    iget-object v0, v5, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    .line 114
    invoke-virtual {v0}, Landroidx/core/animation/Animator;->cancel()V

    .line 116
    :cond_5
    iput-boolean v4, v5, Landroidx/core/animation/AnimatorSet$Node;->mEnded:Z

    .line 119
    iget-object v0, v5, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    .line 121
    invoke-virtual {v0, v4}, Landroidx/core/animation/Animator;->startWithoutPulsing(Z)V

    .line 123
    invoke-static {v1, v2, v5}, Landroidx/core/animation/AnimatorSet;->pulseFrame(JLandroidx/core/animation/AnimatorSet$Node;)V

    .line 126
    goto :goto_3

    .line 129
    :cond_6
    if-ne v0, v3, :cond_7

    .line 130
    iget-boolean v0, v5, Landroidx/core/animation/AnimatorSet$Node;->mEnded:Z

    .line 132
    if-nez v0, :cond_7

    .line 134
    invoke-virtual {p0, p3, p4, v5}, Landroidx/core/animation/AnimatorSet;->getPlayTimeForNode(JLandroidx/core/animation/AnimatorSet$Node;)J

    .line 136
    move-result-wide v6

    .line 139
    invoke-static {v6, v7, v5}, Landroidx/core/animation/AnimatorSet;->pulseFrame(JLandroidx/core/animation/AnimatorSet$Node;)V

    .line 140
    :cond_7
    :goto_3
    add-int/lit8 p1, p1, 0x1

    .line 143
    goto :goto_2

    .line 145
    :cond_8
    return-void
    .line 146
.end method

.method public final initAnimation()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mInterpolator:Landroidx/core/animation/Interpolator;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v1

    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    iget-object v1, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 20
    check-cast v1, Landroidx/core/animation/AnimatorSet$Node;

    .line 21
    iget-object v1, v1, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    .line 23
    iget-object v2, p0, Landroidx/core/animation/AnimatorSet;->mInterpolator:Landroidx/core/animation/Interpolator;

    .line 25
    invoke-virtual {v1, v2}, Landroidx/core/animation/Animator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 30
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p0}, Landroidx/core/animation/AnimatorSet;->updateAnimatorsDuration()V

    .line 33
    invoke-virtual {p0}, Landroidx/core/animation/AnimatorSet;->createDependencyGraph()V

    .line 36
    return-void
    .line 39
.end method

.method public final isInitialized()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/core/animation/AnimatorSet;->mChildrenInitialized:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    move v2, v0

    .line 9
    :goto_0
    iget-object v3, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 12
    move-result v3

    .line 15
    if-ge v2, v3, :cond_2

    .line 16
    iget-object v3, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v3

    .line 23
    check-cast v3, Landroidx/core/animation/AnimatorSet$Node;

    .line 24
    iget-object v3, v3, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    .line 26
    invoke-virtual {v3}, Landroidx/core/animation/Animator;->isInitialized()Z

    .line 28
    move-result v3

    .line 31
    if-nez v3, :cond_1

    .line 32
    move v1, v0

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 36
    goto :goto_0

    .line 38
    :cond_2
    :goto_1
    iput-boolean v1, p0, Landroidx/core/animation/AnimatorSet;->mChildrenInitialized:Z

    .line 39
    return v1
    .line 41
.end method

.method public final isStarted()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/core/animation/AnimatorSet;->mStarted:Z

    .line 2
    return p0
    .line 4
.end method

.method public final playTogether(Ljava/util/Collection;)V
    .locals 3

    .line 8
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/animation/Animator;

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Landroidx/core/animation/AnimatorSet$Builder;

    invoke-direct {v0, p0, v1}, Landroidx/core/animation/AnimatorSet$Builder;-><init>(Landroidx/core/animation/AnimatorSet;Landroidx/core/animation/Animator;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v2, v0, Landroidx/core/animation/AnimatorSet$Builder;->this$0:Landroidx/core/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroidx/core/animation/AnimatorSet;->getNodeForAnimation(Landroidx/core/animation/Animator;)Landroidx/core/animation/AnimatorSet$Node;

    move-result-object v1

    .line 12
    iget-object v2, v0, Landroidx/core/animation/AnimatorSet$Builder;->mCurrentNode:Landroidx/core/animation/AnimatorSet$Node;

    invoke-virtual {v2, v1}, Landroidx/core/animation/AnimatorSet$Node;->addSibling(Landroidx/core/animation/AnimatorSet$Node;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final varargs playTogether([Landroidx/core/animation/Animator;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    aget-object v0, p1, v0

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Landroidx/core/animation/AnimatorSet;->mDependencyDirty:Z

    .line 3
    invoke-virtual {p0, v0}, Landroidx/core/animation/AnimatorSet;->getNodeForAnimation(Landroidx/core/animation/Animator;)Landroidx/core/animation/AnimatorSet$Node;

    move-result-object v0

    .line 4
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 5
    aget-object v2, p1, v1

    .line 6
    invoke-virtual {p0, v2}, Landroidx/core/animation/AnimatorSet;->getNodeForAnimation(Landroidx/core/animation/Animator;)Landroidx/core/animation/AnimatorSet$Node;

    move-result-object v2

    .line 7
    invoke-virtual {v0, v2}, Landroidx/core/animation/AnimatorSet$Node;->addSibling(Landroidx/core/animation/AnimatorSet$Node;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final pulseAnimationFrame(J)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/core/animation/AnimatorSet;->doAnimationFrame(J)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final reverse()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0, v0}, Landroidx/core/animation/AnimatorSet;->start(ZZ)V

    .line 3
    return-void
    .line 6
.end method

.method public final setDuration(J)Landroidx/core/animation/Animator;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    cmp-long v0, p1, v0

    .line 4
    if-ltz v0, :cond_0

    .line 6
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Landroidx/core/animation/AnimatorSet;->mDependencyDirty:Z

    .line 9
    iput-wide p1, p0, Landroidx/core/animation/AnimatorSet;->mDuration:J

    .line 11
    return-object p0

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 14
    const-string p1, "duration must be a value of zero or greater"

    .line 16
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    throw p0
    .line 21
.end method

.method public final setInterpolator(Landroidx/core/animation/Interpolator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/animation/AnimatorSet;->mInterpolator:Landroidx/core/animation/Interpolator;

    .line 2
    return-void
    .line 4
.end method

.method public final skipToEndValue(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/core/animation/AnimatorSet;->mSelfPulse:Z

    .line 2
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/core/animation/AnimatorSet;->isInitialized()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    const-string p1, "Children must be initialized."

    .line 15
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    throw p0

    .line 20
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/core/animation/AnimatorSet;->initAnimation()V

    .line 21
    if-eqz p1, :cond_3

    .line 24
    iget-object p1, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 28
    move-result p1

    .line 31
    const/4 v0, 0x1

    .line 32
    sub-int/2addr p1, v0

    .line 33
    :goto_1
    if-ltz p1, :cond_5

    .line 34
    iget-object v1, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v1

    .line 41
    check-cast v1, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    .line 42
    iget v1, v1, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mEvent:I

    .line 44
    if-ne v1, v0, :cond_2

    .line 46
    iget-object v1, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 48
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object v1

    .line 53
    check-cast v1, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    .line 54
    iget-object v1, v1, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mNode:Landroidx/core/animation/AnimatorSet$Node;

    .line 56
    iget-object v1, v1, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    .line 58
    invoke-virtual {v1, v0}, Landroidx/core/animation/Animator;->skipToEndValue(Z)V

    .line 60
    :cond_2
    add-int/lit8 p1, p1, -0x1

    .line 63
    goto :goto_1

    .line 65
    :cond_3
    const/4 p1, 0x0

    .line 66
    move v0, p1

    .line 67
    :goto_2
    iget-object v1, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 68
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 70
    move-result v1

    .line 73
    if-ge v0, v1, :cond_5

    .line 74
    iget-object v1, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 76
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    move-result-object v1

    .line 81
    check-cast v1, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    .line 82
    iget v1, v1, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mEvent:I

    .line 84
    const/4 v2, 0x2

    .line 86
    if-ne v1, v2, :cond_4

    .line 87
    iget-object v1, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    .line 89
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 91
    move-result-object v1

    .line 94
    check-cast v1, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    .line 95
    iget-object v1, v1, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mNode:Landroidx/core/animation/AnimatorSet$Node;

    .line 97
    iget-object v1, v1, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    .line 99
    invoke-virtual {v1, p1}, Landroidx/core/animation/Animator;->skipToEndValue(Z)V

    .line 101
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 104
    goto :goto_2

    .line 106
    :cond_5
    return-void
    .line 107
.end method

.method public final start()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Landroidx/core/animation/AnimatorSet;->start(ZZ)V

    return-void
.end method

.method public final start(ZZ)V
    .locals 9

    .line 2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/core/animation/AnimatorSet;->mStarted:Z

    .line 4
    iput-boolean p2, p0, Landroidx/core/animation/AnimatorSet;->mSelfPulse:Z

    const-wide/16 v1, -0x1

    .line 5
    iput-wide v1, p0, Landroidx/core/animation/AnimatorSet;->mPauseTime:J

    .line 6
    iget-object p2, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, p2, :cond_0

    .line 7
    iget-object v5, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/core/animation/AnimatorSet$Node;

    .line 8
    iput-boolean v3, v5, Landroidx/core/animation/AnimatorSet$Node;->mEnded:Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroidx/core/animation/AnimatorSet;->initAnimation()V

    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p0}, Landroidx/core/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v4

    cmp-long p2, v4, v1

    if-eqz p2, :cond_1

    move p2, v0

    goto :goto_1

    :cond_1
    move p2, v3

    :goto_1
    if-eqz p2, :cond_2

    goto :goto_2

    .line 11
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Cannot reverse infinite AnimatorSet"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_3
    :goto_2
    iput-boolean p1, p0, Landroidx/core/animation/AnimatorSet;->mReversing:Z

    .line 13
    invoke-static {p0}, Landroidx/core/animation/AnimatorSet;->isEmptySet(Landroidx/core/animation/AnimatorSet;)Z

    move-result p1

    if-nez p1, :cond_13

    move p2, v0

    .line 14
    :goto_3
    iget-object v4, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p2, v4, :cond_4

    .line 15
    iget-object v4, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/animation/AnimatorSet$Node;

    iget-object v4, v4, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    iget-object v5, p0, Landroidx/core/animation/AnimatorSet;->mNoOpListener:Landroidx/core/animation/AnimatorListenerAdapter;

    invoke-virtual {v4, v5}, Landroidx/core/animation/Animator;->addListener(Landroidx/core/animation/Animator$AnimatorListener;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 16
    :cond_4
    iget-object p2, p0, Landroidx/core/animation/AnimatorSet;->mSeekState:Landroidx/core/animation/AnimatorSet$SeekState;

    .line 17
    iget-object v4, p2, Landroidx/core/animation/AnimatorSet$SeekState;->this$0:Landroidx/core/animation/AnimatorSet;

    .line 18
    iget-boolean v5, v4, Landroidx/core/animation/AnimatorSet;->mReversing:Z

    if-eqz v5, :cond_5

    .line 19
    invoke-virtual {v4}, Landroidx/core/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v5

    iget-wide v7, v4, Landroidx/core/animation/AnimatorSet;->mStartDelay:J

    sub-long/2addr v5, v7

    iget-wide v7, p2, Landroidx/core/animation/AnimatorSet$SeekState;->mPlayTime:J

    sub-long/2addr v5, v7

    goto :goto_4

    .line 20
    :cond_5
    iget-wide v5, p2, Landroidx/core/animation/AnimatorSet$SeekState;->mPlayTime:J

    :goto_4
    const-wide/16 v7, 0x0

    cmp-long p2, v5, v7

    if-nez p2, :cond_6

    .line 21
    iget-boolean p2, p0, Landroidx/core/animation/AnimatorSet;->mReversing:Z

    if-eqz p2, :cond_6

    .line 22
    iget-object p2, p0, Landroidx/core/animation/AnimatorSet;->mSeekState:Landroidx/core/animation/AnimatorSet$SeekState;

    .line 23
    iput-wide v1, p2, Landroidx/core/animation/AnimatorSet$SeekState;->mPlayTime:J

    .line 24
    iput-boolean v3, p2, Landroidx/core/animation/AnimatorSet$SeekState;->mSeekingInReverse:Z

    .line 25
    :cond_6
    invoke-virtual {p0}, Landroidx/core/animation/AnimatorSet;->isInitialized()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 26
    iget-boolean p2, p0, Landroidx/core/animation/AnimatorSet;->mReversing:Z

    xor-int/2addr p2, v0

    invoke-virtual {p0, p2}, Landroidx/core/animation/AnimatorSet;->skipToEndValue(Z)V

    goto :goto_6

    .line 27
    :cond_7
    iget-boolean p2, p0, Landroidx/core/animation/AnimatorSet;->mReversing:Z

    if-eqz p2, :cond_9

    .line 28
    invoke-virtual {p0}, Landroidx/core/animation/AnimatorSet;->isInitialized()Z

    move-result p2

    if-nez p2, :cond_8

    .line 29
    iput-boolean v0, p0, Landroidx/core/animation/AnimatorSet;->mChildrenInitialized:Z

    .line 30
    invoke-virtual {p0, v3}, Landroidx/core/animation/AnimatorSet;->skipToEndValue(Z)V

    .line 31
    :cond_8
    iget-boolean p2, p0, Landroidx/core/animation/AnimatorSet;->mReversing:Z

    xor-int/2addr p2, v0

    invoke-virtual {p0, p2}, Landroidx/core/animation/AnimatorSet;->skipToEndValue(Z)V

    goto :goto_6

    .line 32
    :cond_9
    iget-object p2, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v0

    :goto_5
    if-ltz p2, :cond_b

    .line 33
    iget-object v4, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    iget v4, v4, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v4, v0, :cond_a

    .line 34
    iget-object v4, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    iget-object v4, v4, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mNode:Landroidx/core/animation/AnimatorSet$Node;

    iget-object v4, v4, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    .line 35
    invoke-virtual {v4}, Landroidx/core/animation/Animator;->isInitialized()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 36
    invoke-virtual {v4, v0}, Landroidx/core/animation/Animator;->skipToEndValue(Z)V

    :cond_a
    add-int/lit8 p2, p2, -0x1

    goto :goto_5

    .line 37
    :cond_b
    :goto_6
    iget-boolean p2, p0, Landroidx/core/animation/AnimatorSet;->mReversing:Z

    if-nez p2, :cond_d

    iget-wide v4, p0, Landroidx/core/animation/AnimatorSet;->mStartDelay:J

    cmp-long v4, v4, v7

    if-eqz v4, :cond_d

    iget-object v4, p0, Landroidx/core/animation/AnimatorSet;->mSeekState:Landroidx/core/animation/AnimatorSet$SeekState;

    .line 38
    iget-wide v4, v4, Landroidx/core/animation/AnimatorSet$SeekState;->mPlayTime:J

    cmp-long v4, v4, v1

    if-eqz v4, :cond_c

    move v4, v0

    goto :goto_7

    :cond_c
    move v4, v3

    :goto_7
    if-eqz v4, :cond_12

    .line 39
    :cond_d
    iget-object v4, p0, Landroidx/core/animation/AnimatorSet;->mSeekState:Landroidx/core/animation/AnimatorSet$SeekState;

    .line 40
    iget-wide v5, v4, Landroidx/core/animation/AnimatorSet$SeekState;->mPlayTime:J

    cmp-long v1, v5, v1

    if-eqz v1, :cond_e

    move v1, v0

    goto :goto_8

    :cond_e
    move v1, v3

    :goto_8
    if-eqz v1, :cond_f

    .line 41
    invoke-virtual {v4, p2}, Landroidx/core/animation/AnimatorSet$SeekState;->updateSeekDirection(Z)V

    .line 42
    iget-object p2, p0, Landroidx/core/animation/AnimatorSet;->mSeekState:Landroidx/core/animation/AnimatorSet$SeekState;

    .line 43
    iget-wide v7, p2, Landroidx/core/animation/AnimatorSet$SeekState;->mPlayTime:J

    .line 44
    :cond_f
    invoke-virtual {p0, v7, v8}, Landroidx/core/animation/AnimatorSet;->findLatestEventIdForTime(J)I

    move-result p2

    const/4 v1, -0x1

    .line 45
    invoke-virtual {p0, v1, p2, v7, v8}, Landroidx/core/animation/AnimatorSet;->handleAnimationEvents(IIJ)V

    .line 46
    iget-object v1, p0, Landroidx/core/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_9
    if-ltz v1, :cond_11

    .line 47
    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/animation/AnimatorSet$Node;

    iget-boolean v0, v0, Landroidx/core/animation/AnimatorSet$Node;->mEnded:Z

    if-eqz v0, :cond_10

    .line 48
    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_10
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 49
    :cond_11
    iput p2, p0, Landroidx/core/animation/AnimatorSet;->mLastEventId:I

    .line 50
    :cond_12
    iget-boolean p2, p0, Landroidx/core/animation/AnimatorSet;->mSelfPulse:Z

    if-eqz p2, :cond_13

    .line 51
    invoke-static {p0}, Landroidx/core/animation/Animator;->addAnimationCallback(Landroidx/core/animation/AnimationHandler$AnimationFrameCallback;)V

    .line 52
    :cond_13
    iget-object p2, p0, Landroidx/core/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz p2, :cond_14

    .line 53
    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    .line 54
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_a
    if-ge v3, v0, :cond_14

    .line 55
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/animation/Animator$AnimatorListener;

    .line 56
    invoke-interface {v1}, Landroidx/core/animation/Animator$AnimatorListener;->onAnimationStart$1()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_14
    if-eqz p1, :cond_15

    .line 57
    invoke-virtual {p0}, Landroidx/core/animation/AnimatorSet;->end()V

    :cond_15
    return-void

    .line 58
    :cond_16
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string p1, "Animators may only be run on Looper threads"

    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final startWithoutPulsing(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Landroidx/core/animation/AnimatorSet;->start(ZZ)V

    .line 3
    return-void
    .line 6
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "AnimatorSet@"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 9
    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string/jumbo v1, "{"

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 29
    iget-object v1, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 32
    move-result v1

    .line 35
    const/4 v2, 0x0

    .line 36
    :goto_0
    if-ge v2, v1, :cond_0

    .line 37
    iget-object v3, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    move-result-object v3

    .line 44
    check-cast v3, Landroidx/core/animation/AnimatorSet$Node;

    .line 45
    const-string v4, "\n    "

    .line 47
    invoke-static {v0, v4}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    move-result-object v0

    .line 52
    iget-object v3, v3, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    .line 53
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 55
    move-result-object v3

    .line 58
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v0

    .line 65
    add-int/lit8 v2, v2, 0x1

    .line 66
    goto :goto_0

    .line 68
    :cond_0
    const-string p0, "\n}"

    .line 69
    invoke-static {v0, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object p0

    .line 74
    return-object p0
    .line 75
.end method

.method public final updateAnimatorsDuration()V
    .locals 5

    .line 1
    iget-wide v0, p0, Landroidx/core/animation/AnimatorSet;->mDuration:J

    .line 2
    const-wide/16 v2, 0x0

    .line 4
    cmp-long v0, v0, v2

    .line 6
    if-ltz v0, :cond_0

    .line 8
    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 12
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    if-ge v1, v0, :cond_0

    .line 17
    iget-object v2, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 24
    check-cast v2, Landroidx/core/animation/AnimatorSet$Node;

    .line 25
    iget-object v2, v2, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    .line 27
    iget-wide v3, p0, Landroidx/core/animation/AnimatorSet;->mDuration:J

    .line 29
    invoke-virtual {v2, v3, v4}, Landroidx/core/animation/Animator;->setDuration(J)Landroidx/core/animation/Animator;

    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 34
    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mDelayAnim:Landroidx/core/animation/ValueAnimator;

    .line 37
    iget-wide v1, p0, Landroidx/core/animation/AnimatorSet;->mStartDelay:J

    .line 39
    invoke-virtual {v0, v1, v2}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    .line 41
    return-void
    .line 44
.end method

.method public final updatePlayTime(Landroidx/core/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V
    .locals 10

    .line 1
    iget-object v0, p1, Landroidx/core/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    .line 2
    const/4 v1, 0x0

    .line 4
    const-wide/16 v2, -0x1

    .line 5
    if-nez v0, :cond_2

    .line 7
    iget-object p2, p0, Landroidx/core/animation/AnimatorSet;->mRootNode:Landroidx/core/animation/AnimatorSet$Node;

    .line 9
    if-ne p1, p2, :cond_1

    .line 11
    :goto_0
    iget-object p1, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result p1

    .line 18
    if-ge v1, p1, :cond_1

    .line 19
    iget-object p1, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 26
    check-cast p1, Landroidx/core/animation/AnimatorSet$Node;

    .line 27
    iget-object p2, p0, Landroidx/core/animation/AnimatorSet;->mRootNode:Landroidx/core/animation/AnimatorSet$Node;

    .line 29
    if-eq p1, p2, :cond_0

    .line 31
    iput-wide v2, p1, Landroidx/core/animation/AnimatorSet$Node;->mStartTime:J

    .line 33
    iput-wide v2, p1, Landroidx/core/animation/AnimatorSet$Node;->mEndTime:J

    .line 35
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 37
    goto :goto_0

    .line 39
    :cond_1
    return-void

    .line 40
    :cond_2
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v0, p1, Landroidx/core/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    .line 44
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 46
    move-result v0

    .line 49
    :goto_1
    if-ge v1, v0, :cond_9

    .line 50
    iget-object v4, p1, Landroidx/core/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    move-result-object v4

    .line 57
    check-cast v4, Landroidx/core/animation/AnimatorSet$Node;

    .line 58
    iget-object v5, v4, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    .line 60
    invoke-virtual {v5}, Landroidx/core/animation/Animator;->getTotalDuration()J

    .line 62
    move-result-wide v5

    .line 65
    iput-wide v5, v4, Landroidx/core/animation/AnimatorSet$Node;->mTotalDuration:J

    .line 66
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 68
    move-result v5

    .line 71
    if-ltz v5, :cond_4

    .line 72
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 74
    move-result v6

    .line 77
    const/4 v7, 0x0

    .line 78
    if-ge v5, v6, :cond_3

    .line 79
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    move-result-object v6

    .line 84
    check-cast v6, Landroidx/core/animation/AnimatorSet$Node;

    .line 85
    iput-object v7, v6, Landroidx/core/animation/AnimatorSet$Node;->mLatestParent:Landroidx/core/animation/AnimatorSet$Node;

    .line 87
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 89
    move-result-object v6

    .line 92
    check-cast v6, Landroidx/core/animation/AnimatorSet$Node;

    .line 93
    iput-wide v2, v6, Landroidx/core/animation/AnimatorSet$Node;->mStartTime:J

    .line 95
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 97
    move-result-object v6

    .line 100
    check-cast v6, Landroidx/core/animation/AnimatorSet$Node;

    .line 101
    iput-wide v2, v6, Landroidx/core/animation/AnimatorSet$Node;->mEndTime:J

    .line 103
    add-int/lit8 v5, v5, 0x1

    .line 105
    goto :goto_2

    .line 107
    :cond_3
    iput-wide v2, v4, Landroidx/core/animation/AnimatorSet$Node;->mStartTime:J

    .line 108
    iput-wide v2, v4, Landroidx/core/animation/AnimatorSet$Node;->mEndTime:J

    .line 110
    iput-object v7, v4, Landroidx/core/animation/AnimatorSet$Node;->mLatestParent:Landroidx/core/animation/AnimatorSet$Node;

    .line 112
    new-instance v4, Ljava/lang/StringBuilder;

    .line 114
    const-string v5, "Cycle found in AnimatorSet: "

    .line 116
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object v4

    .line 127
    const-string v5, "AnimatorSet"

    .line 128
    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    goto :goto_5

    .line 133
    :cond_4
    iget-wide v5, v4, Landroidx/core/animation/AnimatorSet$Node;->mStartTime:J

    .line 134
    cmp-long v7, v5, v2

    .line 136
    if-eqz v7, :cond_8

    .line 138
    iget-wide v7, p1, Landroidx/core/animation/AnimatorSet$Node;->mEndTime:J

    .line 140
    cmp-long v9, v7, v2

    .line 142
    if-nez v9, :cond_5

    .line 144
    iput-object p1, v4, Landroidx/core/animation/AnimatorSet$Node;->mLatestParent:Landroidx/core/animation/AnimatorSet$Node;

    .line 146
    iput-wide v2, v4, Landroidx/core/animation/AnimatorSet$Node;->mStartTime:J

    .line 148
    iput-wide v2, v4, Landroidx/core/animation/AnimatorSet$Node;->mEndTime:J

    .line 150
    goto :goto_4

    .line 152
    :cond_5
    cmp-long v5, v7, v5

    .line 153
    if-ltz v5, :cond_6

    .line 155
    iput-object p1, v4, Landroidx/core/animation/AnimatorSet$Node;->mLatestParent:Landroidx/core/animation/AnimatorSet$Node;

    .line 157
    iput-wide v7, v4, Landroidx/core/animation/AnimatorSet$Node;->mStartTime:J

    .line 159
    :cond_6
    iget-wide v5, v4, Landroidx/core/animation/AnimatorSet$Node;->mTotalDuration:J

    .line 161
    cmp-long v7, v5, v2

    .line 163
    if-nez v7, :cond_7

    .line 165
    move-wide v7, v2

    .line 167
    goto :goto_3

    .line 168
    :cond_7
    iget-wide v7, v4, Landroidx/core/animation/AnimatorSet$Node;->mStartTime:J

    .line 169
    add-long/2addr v7, v5

    .line 171
    :goto_3
    iput-wide v7, v4, Landroidx/core/animation/AnimatorSet$Node;->mEndTime:J

    .line 172
    :cond_8
    :goto_4
    invoke-virtual {p0, v4, p2}, Landroidx/core/animation/AnimatorSet;->updatePlayTime(Landroidx/core/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V

    .line 174
    :goto_5
    add-int/lit8 v1, v1, 0x1

    .line 177
    goto/16 :goto_1

    .line 179
    :cond_9
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 181
    return-void
    .line 184
.end method
