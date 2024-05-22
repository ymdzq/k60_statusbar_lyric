.class public final Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper;


# instance fields
.field public cachedCurrentKeyframe:Lcom/airbnb/lottie/value/Keyframe;

.field public cachedInterpolatedProgress:F

.field public currentKeyframe:Lcom/airbnb/lottie/value/Keyframe;

.field public final keyframes:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->cachedCurrentKeyframe:Lcom/airbnb/lottie/value/Keyframe;

    .line 6
    const/high16 v0, -0x40800000    # -1.0f

    .line 8
    iput v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->cachedInterpolatedProgress:F

    .line 10
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->keyframes:Ljava/util/List;

    .line 12
    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->findKeyframe(F)Lcom/airbnb/lottie/value/Keyframe;

    .line 15
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->currentKeyframe:Lcom/airbnb/lottie/value/Keyframe;

    .line 19
    return-void
    .line 21
.end method


# virtual methods
.method public final findKeyframe(F)Lcom/airbnb/lottie/value/Keyframe;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->keyframes:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    sub-int/2addr v1, v2

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 13
    check-cast v1, Lcom/airbnb/lottie/value/Keyframe;

    .line 14
    invoke-virtual {v1}, Lcom/airbnb/lottie/value/Keyframe;->getStartProgress()F

    .line 16
    move-result v3

    .line 19
    cmpl-float v3, p1, v3

    .line 20
    if-ltz v3, :cond_0

    .line 22
    return-object v1

    .line 24
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 25
    move-result v1

    .line 28
    add-int/lit8 v1, v1, -0x2

    .line 29
    :goto_0
    const/4 v3, 0x0

    .line 31
    if-lt v1, v2, :cond_4

    .line 32
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object v4

    .line 37
    check-cast v4, Lcom/airbnb/lottie/value/Keyframe;

    .line 38
    iget-object v5, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->currentKeyframe:Lcom/airbnb/lottie/value/Keyframe;

    .line 40
    if-ne v5, v4, :cond_1

    .line 42
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {v4}, Lcom/airbnb/lottie/value/Keyframe;->getStartProgress()F

    .line 45
    move-result v5

    .line 48
    cmpl-float v5, p1, v5

    .line 49
    if-ltz v5, :cond_2

    .line 51
    invoke-virtual {v4}, Lcom/airbnb/lottie/value/Keyframe;->getEndProgress()F

    .line 53
    move-result v5

    .line 56
    cmpg-float v5, p1, v5

    .line 57
    if-gez v5, :cond_2

    .line 59
    move v3, v2

    .line 61
    :cond_2
    if-eqz v3, :cond_3

    .line 62
    return-object v4

    .line 64
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 65
    goto :goto_0

    .line 67
    :cond_4
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 68
    move-result-object p0

    .line 71
    check-cast p0, Lcom/airbnb/lottie/value/Keyframe;

    .line 72
    return-object p0
    .line 74
.end method

.method public final getCurrentKeyframe()Lcom/airbnb/lottie/value/Keyframe;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->currentKeyframe:Lcom/airbnb/lottie/value/Keyframe;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getEndProgress()F
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->keyframes:Ljava/util/List;

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 13
    check-cast p0, Lcom/airbnb/lottie/value/Keyframe;

    .line 14
    invoke-virtual {p0}, Lcom/airbnb/lottie/value/Keyframe;->getEndProgress()F

    .line 16
    move-result p0

    .line 19
    return p0
    .line 20
.end method

.method public final getStartDelayProgress()F
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->keyframes:Ljava/util/List;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 5
    move-result-object p0

    .line 8
    check-cast p0, Lcom/airbnb/lottie/value/Keyframe;

    .line 9
    invoke-virtual {p0}, Lcom/airbnb/lottie/value/Keyframe;->getStartProgress()F

    .line 11
    move-result p0

    .line 14
    return p0
    .line 15
.end method

.method public final isCachedValueEnabled(F)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->cachedCurrentKeyframe:Lcom/airbnb/lottie/value/Keyframe;

    .line 2
    iget-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->currentKeyframe:Lcom/airbnb/lottie/value/Keyframe;

    .line 4
    if-ne v0, v1, :cond_0

    .line 6
    iget v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->cachedInterpolatedProgress:F

    .line 8
    cmpl-float v0, v0, p1

    .line 10
    if-nez v0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    iput-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->cachedCurrentKeyframe:Lcom/airbnb/lottie/value/Keyframe;

    .line 16
    iput p1, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->cachedInterpolatedProgress:F

    .line 18
    const/4 p0, 0x0

    .line 20
    return p0
    .line 21
.end method

.method public final isEmpty()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final isValueChanged(F)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->currentKeyframe:Lcom/airbnb/lottie/value/Keyframe;

    .line 2
    invoke-virtual {v0}, Lcom/airbnb/lottie/value/Keyframe;->getStartProgress()F

    .line 4
    move-result v1

    .line 7
    cmpl-float v1, p1, v1

    .line 8
    const/4 v2, 0x1

    .line 10
    if-ltz v1, :cond_0

    .line 11
    invoke-virtual {v0}, Lcom/airbnb/lottie/value/Keyframe;->getEndProgress()F

    .line 13
    move-result v0

    .line 16
    cmpg-float v0, p1, v0

    .line 17
    if-gez v0, :cond_0

    .line 19
    move v0, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    if-eqz v0, :cond_1

    .line 24
    iget-object p0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->currentKeyframe:Lcom/airbnb/lottie/value/Keyframe;

    .line 26
    invoke-virtual {p0}, Lcom/airbnb/lottie/value/Keyframe;->isStatic()Z

    .line 28
    move-result p0

    .line 31
    xor-int/2addr p0, v2

    .line 32
    return p0

    .line 33
    :cond_1
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->findKeyframe(F)Lcom/airbnb/lottie/value/Keyframe;

    .line 34
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;->currentKeyframe:Lcom/airbnb/lottie/value/Keyframe;

    .line 38
    return v2
    .line 40
.end method
