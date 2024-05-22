.class public final Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;
.super Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# virtual methods
.method public final createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .locals 1

    .line 1
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/ScaleKeyframeAnimation;

    .line 2
    iget-object p0, p0, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/util/List;

    .line 4
    invoke-direct {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/ScaleKeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 6
    return-object v0
    .line 9
.end method
