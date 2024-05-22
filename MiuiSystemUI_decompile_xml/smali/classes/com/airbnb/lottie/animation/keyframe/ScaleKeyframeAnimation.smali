.class public final Lcom/airbnb/lottie/animation/keyframe/ScaleKeyframeAnimation;
.super Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final scaleXY:Lcom/airbnb/lottie/value/ScaleXY;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 2
    new-instance p1, Lcom/airbnb/lottie/value/ScaleXY;

    .line 5
    invoke-direct {p1}, Lcom/airbnb/lottie/value/ScaleXY;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/ScaleKeyframeAnimation;->scaleXY:Lcom/airbnb/lottie/value/ScaleXY;

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public final getValue(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p1, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    .line 6
    if-eqz v1, :cond_1

    .line 8
    check-cast v0, Lcom/airbnb/lottie/value/ScaleXY;

    .line 10
    check-cast v1, Lcom/airbnb/lottie/value/ScaleXY;

    .line 12
    iget-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->valueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;

    .line 14
    if-eqz v2, :cond_0

    .line 16
    iget v3, p1, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    .line 18
    iget-object p1, p1, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    .line 20
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 22
    move-result v4

    .line 25
    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getLinearCurrentKeyframeProgress()F

    .line 26
    move-result v8

    .line 29
    iget v9, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->progress:F

    .line 30
    move-object v5, v0

    .line 32
    move-object v6, v1

    .line 33
    move v7, p2

    .line 34
    invoke-virtual/range {v2 .. v9}, Lcom/airbnb/lottie/value/LottieValueCallback;->getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    .line 35
    move-result-object p1

    .line 38
    check-cast p1, Lcom/airbnb/lottie/value/ScaleXY;

    .line 39
    if-eqz p1, :cond_0

    .line 41
    goto :goto_0

    .line 43
    :cond_0
    iget p1, v0, Lcom/airbnb/lottie/value/ScaleXY;->scaleX:F

    .line 44
    iget v2, v1, Lcom/airbnb/lottie/value/ScaleXY;->scaleX:F

    .line 46
    sget-object v3, Lcom/airbnb/lottie/utils/MiscUtils;->pathFromDataCurrentPoint:Landroid/graphics/PointF;

    .line 48
    invoke-static {v2, p1, p2, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 50
    move-result p1

    .line 53
    iget v0, v0, Lcom/airbnb/lottie/value/ScaleXY;->scaleY:F

    .line 54
    iget v1, v1, Lcom/airbnb/lottie/value/ScaleXY;->scaleY:F

    .line 56
    invoke-static {v1, v0, p2, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 58
    move-result p2

    .line 61
    iget-object p0, p0, Lcom/airbnb/lottie/animation/keyframe/ScaleKeyframeAnimation;->scaleXY:Lcom/airbnb/lottie/value/ScaleXY;

    .line 62
    iput p1, p0, Lcom/airbnb/lottie/value/ScaleXY;->scaleX:F

    .line 64
    iput p2, p0, Lcom/airbnb/lottie/value/ScaleXY;->scaleY:F

    .line 66
    move-object p1, p0

    .line 68
    :goto_0
    return-object p1

    .line 69
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 70
    const-string p1, "Missing values for keyframe."

    .line 72
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 74
    throw p0
    .line 77
.end method
