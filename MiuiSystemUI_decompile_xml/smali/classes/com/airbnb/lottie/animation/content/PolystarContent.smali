.class public final Lcom/airbnb/lottie/animation/content/PolystarContent;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/PathContent;
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/airbnb/lottie/animation/content/KeyPathElementContent;


# instance fields
.field public final hidden:Z

.field public final innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

.field public final innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

.field public isPathValid:Z

.field public final isReversed:Z

.field public final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field public final name:Ljava/lang/String;

.field public final outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

.field public final outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

.field public final path:Landroid/graphics/Path;

.field public final pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

.field public final positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

.field public final rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

.field public final trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

.field public final type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/PolystarShape;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Path;

    .line 5
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    .line 10
    new-instance v0, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 12
    invoke-direct {v0}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 17
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 19
    iget-object p1, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->name:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->name:Ljava/lang/String;

    .line 23
    iget-object p1, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    .line 25
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    .line 27
    iget-boolean v0, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->hidden:Z

    .line 29
    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->hidden:Z

    .line 31
    iget-boolean v0, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->isReversed:Z

    .line 33
    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->isReversed:Z

    .line 35
    iget-object v0, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->points:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 37
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 39
    move-result-object v0

    .line 42
    move-object v1, v0

    .line 43
    check-cast v1, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 44
    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 46
    iget-object v1, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->position:Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    .line 48
    invoke-interface {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 50
    move-result-object v1

    .line 53
    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 54
    iget-object v2, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->rotation:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 56
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 58
    move-result-object v2

    .line 61
    move-object v3, v2

    .line 62
    check-cast v3, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 63
    iput-object v3, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 65
    iget-object v3, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->outerRadius:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 67
    invoke-virtual {v3}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 69
    move-result-object v3

    .line 72
    move-object v4, v3

    .line 73
    check-cast v4, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 74
    iput-object v4, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 76
    iget-object v4, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->outerRoundedness:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 78
    invoke-virtual {v4}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 80
    move-result-object v4

    .line 83
    move-object v5, v4

    .line 84
    check-cast v5, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 85
    iput-object v5, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 87
    sget-object v5, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->STAR:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    .line 89
    if-ne p1, v5, :cond_0

    .line 91
    iget-object v6, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->innerRadius:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 93
    invoke-virtual {v6}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 95
    move-result-object v6

    .line 98
    check-cast v6, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 99
    iput-object v6, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 101
    iget-object p3, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->innerRoundedness:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 103
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 105
    move-result-object p3

    .line 108
    check-cast p3, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 109
    iput-object p3, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 111
    goto :goto_0

    .line 113
    :cond_0
    const/4 p3, 0x0

    .line 114
    iput-object p3, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 115
    iput-object p3, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 117
    :goto_0
    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 119
    invoke-virtual {p2, v1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 122
    invoke-virtual {p2, v2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 125
    invoke-virtual {p2, v3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 128
    invoke-virtual {p2, v4}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 131
    if-ne p1, v5, :cond_1

    .line 134
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 136
    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 138
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 141
    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 143
    :cond_1
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 146
    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 149
    invoke-virtual {v2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 152
    invoke-virtual {v3, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 155
    invoke-virtual {v4, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 158
    if-ne p1, v5, :cond_2

    .line 161
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 163
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 165
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 168
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 170
    :cond_2
    return-void
    .line 173
.end method


# virtual methods
.method public final addValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_POINTS:Ljava/lang/Float;

    .line 2
    if-ne p2, v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 6
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 8
    goto :goto_0

    .line 11
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_ROTATION:Ljava/lang/Float;

    .line 12
    if-ne p2, v0, :cond_1

    .line 14
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 16
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 18
    goto :goto_0

    .line 21
    :cond_1
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POSITION:Landroid/graphics/PointF;

    .line 22
    if-ne p2, v0, :cond_2

    .line 24
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 26
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 28
    goto :goto_0

    .line 31
    :cond_2
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_INNER_RADIUS:Ljava/lang/Float;

    .line 32
    if-ne p2, v0, :cond_3

    .line 34
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 36
    if-eqz v0, :cond_3

    .line 38
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 40
    goto :goto_0

    .line 43
    :cond_3
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_OUTER_RADIUS:Ljava/lang/Float;

    .line 44
    if-ne p2, v0, :cond_4

    .line 46
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 48
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 50
    goto :goto_0

    .line 53
    :cond_4
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_INNER_ROUNDEDNESS:Ljava/lang/Float;

    .line 54
    if-ne p2, v0, :cond_5

    .line 56
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 58
    if-eqz v0, :cond_5

    .line 60
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 62
    goto :goto_0

    .line 65
    :cond_5
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_OUTER_ROUNDEDNESS:Ljava/lang/Float;

    .line 66
    if-ne p2, v0, :cond_6

    .line 68
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 70
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 72
    :cond_6
    :goto_0
    return-void
    .line 75
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->name:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getPath()Landroid/graphics/Path;
    .locals 39

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-boolean v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->isPathValid:Z

    .line 4
    iget-object v9, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    return-object v9

    .line 10
    :cond_0
    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    .line 11
    iget-boolean v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->hidden:Z

    .line 14
    const/4 v2, 0x1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    iput-boolean v2, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->isPathValid:Z

    .line 19
    return-object v9

    .line 21
    :cond_1
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    .line 22
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 24
    move-result v1

    .line 27
    iget-object v10, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 28
    iget-object v3, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 30
    const/high16 v4, 0x42c80000    # 100.0f

    .line 32
    iget-object v5, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 34
    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    .line 36
    const-wide v11, 0x4056800000000000L    # 90.0

    .line 41
    const-wide/16 v13, 0x0

    .line 46
    iget-object v8, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 48
    iget-object v15, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 50
    const-wide v16, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 52
    const/16 v18, 0x0

    .line 57
    if-eqz v1, :cond_6

    .line 59
    if-eq v1, v2, :cond_2

    .line 61
    goto/16 :goto_3

    .line 63
    :cond_2
    invoke-virtual {v15}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 65
    move-result-object v1

    .line 68
    check-cast v1, Ljava/lang/Float;

    .line 69
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 71
    move-result v1

    .line 74
    float-to-double v1, v1

    .line 75
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    .line 76
    move-result-wide v1

    .line 79
    double-to-int v1, v1

    .line 80
    if-nez v8, :cond_3

    .line 81
    goto :goto_0

    .line 83
    :cond_3
    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 84
    move-result-object v2

    .line 87
    check-cast v2, Ljava/lang/Float;

    .line 88
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 90
    move-result v2

    .line 93
    float-to-double v13, v2

    .line 94
    :goto_0
    sub-double/2addr v13, v11

    .line 95
    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    .line 96
    move-result-wide v11

    .line 99
    int-to-double v1, v1

    .line 100
    div-double/2addr v6, v1

    .line 101
    double-to-float v6, v6

    .line 102
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 103
    move-result-object v3

    .line 106
    check-cast v3, Ljava/lang/Float;

    .line 107
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 109
    move-result v3

    .line 112
    div-float v13, v3, v4

    .line 113
    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 115
    move-result-object v3

    .line 118
    check-cast v3, Ljava/lang/Float;

    .line 119
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 121
    move-result v14

    .line 124
    float-to-double v7, v14

    .line 125
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    .line 126
    move-result-wide v3

    .line 129
    mul-double/2addr v3, v7

    .line 130
    double-to-float v3, v3

    .line 131
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    .line 132
    move-result-wide v4

    .line 135
    mul-double/2addr v4, v7

    .line 136
    double-to-float v4, v4

    .line 137
    invoke-virtual {v9, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 138
    float-to-double v5, v6

    .line 141
    add-double/2addr v11, v5

    .line 142
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 143
    move-result-wide v19

    .line 146
    const/4 v1, 0x0

    .line 147
    move-wide/from16 v21, v5

    .line 148
    :goto_1
    int-to-double v5, v1

    .line 150
    cmpg-double v2, v5, v19

    .line 151
    if-gez v2, :cond_5

    .line 153
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    .line 155
    move-result-wide v5

    .line 158
    mul-double/2addr v5, v7

    .line 159
    double-to-float v15, v5

    .line 160
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    .line 161
    move-result-wide v5

    .line 164
    mul-double/2addr v5, v7

    .line 165
    double-to-float v6, v5

    .line 166
    cmpl-float v2, v13, v18

    .line 167
    if-eqz v2, :cond_4

    .line 169
    move-wide/from16 v23, v7

    .line 171
    float-to-double v7, v4

    .line 173
    move/from16 v25, v1

    .line 174
    float-to-double v0, v3

    .line 176
    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    .line 177
    move-result-wide v0

    .line 180
    sub-double v0, v0, v16

    .line 181
    double-to-float v0, v0

    .line 183
    float-to-double v0, v0

    .line 184
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 185
    move-result-wide v7

    .line 188
    double-to-float v2, v7

    .line 189
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 190
    move-result-wide v0

    .line 193
    double-to-float v0, v0

    .line 194
    float-to-double v7, v6

    .line 195
    move-object v1, v10

    .line 196
    move-wide/from16 v26, v11

    .line 197
    float-to-double v10, v15

    .line 199
    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    .line 200
    move-result-wide v7

    .line 203
    sub-double v7, v7, v16

    .line 204
    double-to-float v5, v7

    .line 206
    float-to-double v7, v5

    .line 207
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    .line 208
    move-result-wide v10

    .line 211
    double-to-float v5, v10

    .line 212
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    .line 213
    move-result-wide v7

    .line 216
    double-to-float v7, v7

    .line 217
    mul-float v8, v14, v13

    .line 218
    const/high16 v10, 0x3e800000    # 0.25f

    .line 220
    mul-float/2addr v8, v10

    .line 222
    mul-float/2addr v2, v8

    .line 223
    mul-float/2addr v0, v8

    .line 224
    mul-float/2addr v5, v8

    .line 225
    mul-float/2addr v8, v7

    .line 226
    sub-float/2addr v3, v2

    .line 227
    sub-float/2addr v4, v0

    .line 228
    add-float/2addr v5, v15

    .line 229
    add-float v0, v8, v6

    .line 230
    move-object v2, v9

    .line 232
    move-wide/from16 v10, v21

    .line 233
    move v12, v6

    .line 235
    move v6, v0

    .line 236
    move-wide/from16 v21, v23

    .line 237
    move v7, v15

    .line 239
    move v8, v12

    .line 240
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 241
    goto :goto_2

    .line 244
    :cond_4
    move/from16 v25, v1

    .line 245
    move-object v1, v10

    .line 247
    move-wide/from16 v26, v11

    .line 248
    move-wide/from16 v10, v21

    .line 250
    move v12, v6

    .line 252
    move-wide/from16 v21, v7

    .line 253
    invoke-virtual {v9, v15, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 255
    :goto_2
    add-double v2, v26, v10

    .line 258
    add-int/lit8 v0, v25, 0x1

    .line 260
    move v4, v12

    .line 262
    move-wide/from16 v7, v21

    .line 263
    move-wide/from16 v21, v10

    .line 265
    move-object v10, v1

    .line 267
    move-wide v11, v2

    .line 268
    move v3, v15

    .line 269
    move v1, v0

    .line 270
    move-object/from16 v0, p0

    .line 271
    goto :goto_1

    .line 273
    :cond_5
    move-object v1, v10

    .line 274
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 275
    move-result-object v0

    .line 278
    check-cast v0, Landroid/graphics/PointF;

    .line 279
    iget v1, v0, Landroid/graphics/PointF;->x:F

    .line 281
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 283
    invoke-virtual {v9, v1, v0}, Landroid/graphics/Path;->offset(FF)V

    .line 285
    invoke-virtual {v9}, Landroid/graphics/Path;->close()V

    .line 288
    :goto_3
    move-object v2, v9

    .line 291
    goto/16 :goto_12

    .line 292
    :cond_6
    move-object v1, v10

    .line 294
    invoke-virtual {v15}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 295
    move-result-object v0

    .line 298
    check-cast v0, Ljava/lang/Float;

    .line 299
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 301
    move-result v0

    .line 304
    if-nez v8, :cond_7

    .line 305
    goto :goto_4

    .line 307
    :cond_7
    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 308
    move-result-object v2

    .line 311
    check-cast v2, Ljava/lang/Float;

    .line 312
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 314
    move-result v2

    .line 317
    float-to-double v13, v2

    .line 318
    :goto_4
    sub-double/2addr v13, v11

    .line 319
    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    .line 320
    move-result-wide v10

    .line 323
    float-to-double v12, v0

    .line 324
    div-double/2addr v6, v12

    .line 325
    double-to-float v2, v6

    .line 326
    move-object/from16 v14, p0

    .line 327
    iget-boolean v6, v14, Lcom/airbnb/lottie/animation/content/PolystarContent;->isReversed:Z

    .line 329
    if-eqz v6, :cond_8

    .line 331
    const/high16 v6, -0x40800000    # -1.0f

    .line 333
    mul-float/2addr v2, v6

    .line 335
    :cond_8
    move v15, v2

    .line 336
    const/high16 v2, 0x40000000    # 2.0f

    .line 337
    div-float v8, v15, v2

    .line 339
    float-to-int v6, v0

    .line 341
    int-to-float v6, v6

    .line 342
    sub-float/2addr v0, v6

    .line 343
    cmpl-float v19, v0, v18

    .line 344
    if-eqz v19, :cond_9

    .line 346
    const/high16 v6, 0x3f800000    # 1.0f

    .line 348
    sub-float/2addr v6, v0

    .line 350
    mul-float/2addr v6, v8

    .line 351
    float-to-double v6, v6

    .line 352
    add-double/2addr v10, v6

    .line 353
    :cond_9
    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 354
    move-result-object v5

    .line 357
    check-cast v5, Ljava/lang/Float;

    .line 358
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 360
    move-result v7

    .line 363
    iget-object v5, v14, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 364
    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 366
    move-result-object v5

    .line 369
    check-cast v5, Ljava/lang/Float;

    .line 370
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 372
    move-result v6

    .line 375
    iget-object v5, v14, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 376
    if-eqz v5, :cond_a

    .line 378
    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 380
    move-result-object v5

    .line 383
    check-cast v5, Ljava/lang/Float;

    .line 384
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 386
    move-result v5

    .line 389
    div-float/2addr v5, v4

    .line 390
    move/from16 v20, v5

    .line 391
    goto :goto_5

    .line 393
    :cond_a
    move/from16 v20, v18

    .line 394
    :goto_5
    if-eqz v3, :cond_b

    .line 396
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 398
    move-result-object v3

    .line 401
    check-cast v3, Ljava/lang/Float;

    .line 402
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 404
    move-result v3

    .line 407
    div-float/2addr v3, v4

    .line 408
    move/from16 v21, v3

    .line 409
    goto :goto_6

    .line 411
    :cond_b
    move/from16 v21, v18

    .line 412
    :goto_6
    if-eqz v19, :cond_c

    .line 414
    invoke-static {v7, v6, v0, v6}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 416
    move-result v3

    .line 419
    float-to-double v4, v3

    .line 420
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    .line 421
    move-result-wide v22

    .line 424
    move/from16 v25, v3

    .line 425
    mul-double v2, v22, v4

    .line 427
    double-to-float v2, v2

    .line 429
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    .line 430
    move-result-wide v22

    .line 433
    mul-double v3, v22, v4

    .line 434
    double-to-float v3, v3

    .line 436
    invoke-virtual {v9, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 437
    mul-float v4, v15, v0

    .line 440
    const/high16 v5, 0x40000000    # 2.0f

    .line 442
    div-float/2addr v4, v5

    .line 444
    float-to-double v4, v4

    .line 445
    add-double/2addr v10, v4

    .line 446
    goto :goto_7

    .line 447
    :cond_c
    float-to-double v2, v7

    .line 448
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    .line 449
    move-result-wide v4

    .line 452
    mul-double/2addr v4, v2

    .line 453
    double-to-float v4, v4

    .line 454
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    .line 455
    move-result-wide v22

    .line 458
    mul-double v2, v2, v22

    .line 459
    double-to-float v3, v2

    .line 461
    invoke-virtual {v9, v4, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 462
    move v5, v3

    .line 465
    float-to-double v2, v8

    .line 466
    add-double/2addr v10, v2

    .line 467
    move v2, v4

    .line 468
    move v3, v5

    .line 469
    move/from16 v25, v18

    .line 470
    :goto_7
    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    .line 472
    move-result-wide v4

    .line 475
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    .line 476
    mul-double v22, v4, v12

    .line 478
    const/4 v4, 0x0

    .line 480
    const/4 v5, 0x0

    .line 481
    move-wide/from16 v26, v10

    .line 482
    move v10, v4

    .line 484
    move v11, v5

    .line 485
    :goto_8
    int-to-double v4, v10

    .line 486
    cmpg-double v24, v4, v22

    .line 487
    if-gez v24, :cond_17

    .line 489
    if-eqz v11, :cond_d

    .line 491
    move/from16 v24, v7

    .line 493
    goto :goto_9

    .line 495
    :cond_d
    move/from16 v24, v6

    .line 496
    :goto_9
    cmpl-float v28, v25, v18

    .line 498
    if-eqz v28, :cond_e

    .line 500
    sub-double v29, v22, v12

    .line 502
    cmpl-double v29, v4, v29

    .line 504
    if-nez v29, :cond_e

    .line 506
    mul-float v29, v15, v0

    .line 508
    const/high16 v30, 0x40000000    # 2.0f

    .line 510
    div-float v29, v29, v30

    .line 512
    move/from16 v12, v29

    .line 514
    goto :goto_a

    .line 516
    :cond_e
    move v12, v8

    .line 517
    :goto_a
    const-wide/high16 v31, 0x3ff0000000000000L    # 1.0

    .line 518
    if-eqz v28, :cond_f

    .line 520
    sub-double v33, v22, v31

    .line 522
    cmpl-double v13, v4, v33

    .line 524
    if-nez v13, :cond_f

    .line 526
    move/from16 v28, v6

    .line 528
    move/from16 v24, v7

    .line 530
    move/from16 v13, v25

    .line 532
    goto :goto_b

    .line 534
    :cond_f
    move/from16 v28, v6

    .line 535
    move/from16 v13, v24

    .line 537
    move/from16 v24, v7

    .line 539
    :goto_b
    float-to-double v6, v13

    .line 541
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    .line 542
    move-result-wide v33

    .line 545
    mul-double v13, v33, v6

    .line 546
    double-to-float v13, v13

    .line 548
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    .line 549
    move-result-wide v33

    .line 552
    mul-double v6, v6, v33

    .line 553
    double-to-float v14, v6

    .line 555
    cmpl-float v6, v20, v18

    .line 556
    if-nez v6, :cond_10

    .line 558
    cmpl-float v6, v21, v18

    .line 560
    if-nez v6, :cond_10

    .line 562
    invoke-virtual {v9, v13, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 564
    move-object/from16 v33, v9

    .line 567
    move/from16 v36, v14

    .line 569
    move/from16 v35, v15

    .line 571
    move/from16 v14, v24

    .line 573
    move-object v9, v1

    .line 575
    move v15, v8

    .line 576
    move/from16 v1, v28

    .line 577
    goto/16 :goto_11

    .line 579
    :cond_10
    float-to-double v6, v3

    .line 581
    move/from16 v34, v8

    .line 582
    move-object/from16 v33, v9

    .line 584
    float-to-double v8, v2

    .line 586
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    .line 587
    move-result-wide v6

    .line 590
    sub-double v6, v6, v16

    .line 591
    double-to-float v6, v6

    .line 593
    float-to-double v6, v6

    .line 594
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    .line 595
    move-result-wide v8

    .line 598
    double-to-float v8, v8

    .line 599
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    .line 600
    move-result-wide v6

    .line 603
    double-to-float v6, v6

    .line 604
    move-object v9, v1

    .line 605
    move v7, v2

    .line 606
    float-to-double v1, v14

    .line 607
    move/from16 v36, v14

    .line 608
    move/from16 v35, v15

    .line 610
    float-to-double v14, v13

    .line 612
    invoke-static {v1, v2, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    .line 613
    move-result-wide v1

    .line 616
    sub-double v1, v1, v16

    .line 617
    double-to-float v1, v1

    .line 619
    float-to-double v1, v1

    .line 620
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    .line 621
    move-result-wide v14

    .line 624
    double-to-float v14, v14

    .line 625
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 626
    move-result-wide v1

    .line 629
    double-to-float v1, v1

    .line 630
    if-eqz v11, :cond_11

    .line 631
    move/from16 v2, v20

    .line 633
    goto :goto_c

    .line 635
    :cond_11
    move/from16 v2, v21

    .line 636
    :goto_c
    if-eqz v11, :cond_12

    .line 638
    move/from16 v15, v21

    .line 640
    goto :goto_d

    .line 642
    :cond_12
    move/from16 v15, v20

    .line 643
    :goto_d
    if-eqz v11, :cond_13

    .line 645
    move/from16 v37, v28

    .line 647
    goto :goto_e

    .line 649
    :cond_13
    move/from16 v37, v24

    .line 650
    :goto_e
    if-eqz v11, :cond_14

    .line 652
    move/from16 v38, v24

    .line 654
    goto :goto_f

    .line 656
    :cond_14
    move/from16 v38, v28

    .line 657
    :goto_f
    mul-float v37, v37, v2

    .line 659
    const v2, 0x3ef4e26d    # 0.47829f

    .line 661
    mul-float v37, v37, v2

    .line 664
    mul-float v8, v8, v37

    .line 666
    mul-float v37, v37, v6

    .line 668
    mul-float v38, v38, v15

    .line 670
    mul-float v38, v38, v2

    .line 672
    mul-float v14, v14, v38

    .line 674
    mul-float v38, v38, v1

    .line 676
    if-eqz v19, :cond_16

    .line 678
    if-nez v10, :cond_15

    .line 680
    mul-float/2addr v8, v0

    .line 682
    mul-float v37, v37, v0

    .line 683
    goto :goto_10

    .line 685
    :cond_15
    sub-double v1, v22, v31

    .line 686
    cmpl-double v1, v4, v1

    .line 688
    if-nez v1, :cond_16

    .line 690
    mul-float/2addr v14, v0

    .line 692
    mul-float v38, v38, v0

    .line 693
    :cond_16
    :goto_10
    sub-float v1, v7, v8

    .line 695
    sub-float v4, v3, v37

    .line 697
    add-float v5, v13, v14

    .line 699
    add-float v6, v36, v38

    .line 701
    move-object/from16 v2, v33

    .line 703
    move v3, v1

    .line 705
    move/from16 v1, v28

    .line 706
    move/from16 v14, v24

    .line 708
    move v7, v13

    .line 710
    move/from16 v15, v34

    .line 711
    move/from16 v8, v36

    .line 713
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 715
    :goto_11
    float-to-double v2, v12

    .line 718
    add-double v26, v26, v2

    .line 719
    xor-int/lit8 v11, v11, 0x1

    .line 721
    add-int/lit8 v10, v10, 0x1

    .line 723
    move v6, v1

    .line 725
    move-object v1, v9

    .line 726
    move v2, v13

    .line 727
    move v7, v14

    .line 728
    move v8, v15

    .line 729
    move-object/from16 v9, v33

    .line 730
    move/from16 v15, v35

    .line 732
    move/from16 v3, v36

    .line 734
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    .line 736
    move-object/from16 v14, p0

    .line 738
    goto/16 :goto_8

    .line 740
    :cond_17
    move-object/from16 v33, v9

    .line 742
    move-object v9, v1

    .line 744
    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 745
    move-result-object v0

    .line 748
    check-cast v0, Landroid/graphics/PointF;

    .line 749
    iget v1, v0, Landroid/graphics/PointF;->x:F

    .line 751
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 753
    move-object/from16 v2, v33

    .line 755
    invoke-virtual {v2, v1, v0}, Landroid/graphics/Path;->offset(FF)V

    .line 757
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 760
    :goto_12
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 763
    move-object/from16 v0, p0

    .line 766
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 768
    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;->apply(Landroid/graphics/Path;)V

    .line 770
    const/4 v1, 0x1

    .line 773
    iput-boolean v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->isPathValid:Z

    .line 774
    return-object v2
    .line 776
.end method

.method public final onValueChanged()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->isPathValid:Z

    .line 3
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 5
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 7
    return-void
    .line 10
.end method

.method public final resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4, p0}, Lcom/airbnb/lottie/utils/MiscUtils;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;Lcom/airbnb/lottie/animation/content/KeyPathElementContent;)V

    .line 2
    return-void
    .line 5
.end method

.method public final setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 3

    .line 1
    const/4 p2, 0x0

    .line 2
    :goto_0
    move-object v0, p1

    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v1

    .line 9
    if-ge p2, v1, :cond_1

    .line 10
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 15
    check-cast v0, Lcom/airbnb/lottie/animation/content/Content;

    .line 16
    instance-of v1, v0, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 18
    if-eqz v1, :cond_0

    .line 20
    check-cast v0, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 22
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/TrimPathContent;->type:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 24
    sget-object v2, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->SIMULTANEOUSLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 26
    if-ne v1, v2, :cond_0

    .line 28
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 30
    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;->contents:Ljava/util/List;

    .line 32
    check-cast v1, Ljava/util/ArrayList;

    .line 34
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 39
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 42
    goto :goto_0

    .line 44
    :cond_1
    return-void
    .line 45
.end method
