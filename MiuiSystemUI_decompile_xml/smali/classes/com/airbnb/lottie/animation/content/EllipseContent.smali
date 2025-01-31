.class public final Lcom/airbnb/lottie/animation/content/EllipseContent;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/PathContent;
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/airbnb/lottie/animation/content/KeyPathElementContent;


# instance fields
.field public final circleShape:Lcom/airbnb/lottie/model/content/CircleShape;

.field public isPathValid:Z

.field public final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field public final name:Ljava/lang/String;

.field public final path:Landroid/graphics/Path;

.field public final positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

.field public final sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;

.field public final trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/CircleShape;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Path;

    .line 5
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    .line 10
    new-instance v0, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 12
    invoke-direct {v0}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 17
    iget-object v0, p3, Lcom/airbnb/lottie/model/content/CircleShape;->name:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->name:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 23
    iget-object p1, p3, Lcom/airbnb/lottie/model/content/CircleShape;->size:Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    .line 25
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 27
    move-result-object p1

    .line 30
    move-object v0, p1

    .line 31
    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;

    .line 32
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;

    .line 34
    iget-object v0, p3, Lcom/airbnb/lottie/model/content/CircleShape;->position:Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    .line 36
    invoke-interface {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 38
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 42
    iput-object p3, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->circleShape:Lcom/airbnb/lottie/model/content/CircleShape;

    .line 44
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 46
    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 49
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 52
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 55
    return-void
    .line 58
.end method


# virtual methods
.method public final addValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->ELLIPSE_SIZE:Landroid/graphics/PointF;

    .line 2
    if-ne p2, v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;

    .line 6
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 8
    goto :goto_0

    .line 11
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POSITION:Landroid/graphics/PointF;

    .line 12
    if-ne p2, v0, :cond_1

    .line 14
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 16
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 18
    :cond_1
    :goto_0
    return-void
    .line 21
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->name:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getPath()Landroid/graphics/Path;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-boolean v1, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->isPathValid:Z

    .line 4
    iget-object v9, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    return-object v9

    .line 10
    :cond_0
    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    .line 11
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->circleShape:Lcom/airbnb/lottie/model/content/CircleShape;

    .line 14
    iget-boolean v2, v1, Lcom/airbnb/lottie/model/content/CircleShape;->hidden:Z

    .line 16
    const/4 v10, 0x1

    .line 18
    if-eqz v2, :cond_1

    .line 19
    iput-boolean v10, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->isPathValid:Z

    .line 21
    return-object v9

    .line 23
    :cond_1
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;

    .line 24
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 29
    check-cast v2, Landroid/graphics/PointF;

    .line 30
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 32
    const/high16 v4, 0x40000000    # 2.0f

    .line 34
    div-float v11, v3, v4

    .line 36
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 38
    div-float v12, v2, v4

    .line 40
    const v2, 0x3f0d6239    # 0.55228f

    .line 42
    mul-float v13, v11, v2

    .line 45
    mul-float v14, v12, v2

    .line 47
    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    .line 49
    iget-boolean v1, v1, Lcom/airbnb/lottie/model/content/CircleShape;->isReversed:Z

    .line 52
    const/4 v15, 0x0

    .line 54
    if-eqz v1, :cond_2

    .line 55
    neg-float v1, v12

    .line 57
    invoke-virtual {v9, v15, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 58
    sub-float v16, v15, v13

    .line 61
    neg-float v8, v11

    .line 63
    sub-float v17, v15, v14

    .line 64
    const/16 v18, 0x0

    .line 66
    move-object v2, v9

    .line 68
    move/from16 v3, v16

    .line 69
    move v4, v1

    .line 71
    move v5, v8

    .line 72
    move/from16 v6, v17

    .line 73
    move v7, v8

    .line 75
    move/from16 v19, v8

    .line 76
    move/from16 v8, v18

    .line 78
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 80
    add-float/2addr v14, v15

    .line 83
    const/4 v7, 0x0

    .line 84
    move/from16 v3, v19

    .line 85
    move v4, v14

    .line 87
    move/from16 v5, v16

    .line 88
    move v6, v12

    .line 90
    move v8, v12

    .line 91
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 92
    add-float/2addr v13, v15

    .line 95
    const/4 v8, 0x0

    .line 96
    move v3, v13

    .line 97
    move v4, v12

    .line 98
    move v5, v11

    .line 99
    move v6, v14

    .line 100
    move v7, v11

    .line 101
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 102
    const/4 v7, 0x0

    .line 105
    move v3, v11

    .line 106
    move/from16 v4, v17

    .line 107
    move v5, v13

    .line 109
    move v6, v1

    .line 110
    move v8, v1

    .line 111
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 112
    goto :goto_0

    .line 115
    :cond_2
    neg-float v1, v12

    .line 116
    invoke-virtual {v9, v15, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 117
    add-float v16, v13, v15

    .line 120
    sub-float v17, v15, v14

    .line 122
    const/4 v8, 0x0

    .line 124
    move-object v2, v9

    .line 125
    move/from16 v3, v16

    .line 126
    move v4, v1

    .line 128
    move v5, v11

    .line 129
    move/from16 v6, v17

    .line 130
    move v7, v11

    .line 132
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 133
    add-float/2addr v14, v15

    .line 136
    const/4 v7, 0x0

    .line 137
    move v3, v11

    .line 138
    move v4, v14

    .line 139
    move/from16 v5, v16

    .line 140
    move v6, v12

    .line 142
    move v8, v12

    .line 143
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 144
    sub-float v13, v15, v13

    .line 147
    neg-float v11, v11

    .line 149
    const/4 v8, 0x0

    .line 150
    move v3, v13

    .line 151
    move v4, v12

    .line 152
    move v5, v11

    .line 153
    move v6, v14

    .line 154
    move v7, v11

    .line 155
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 156
    const/4 v7, 0x0

    .line 159
    move v3, v11

    .line 160
    move/from16 v4, v17

    .line 161
    move v5, v13

    .line 163
    move v6, v1

    .line 164
    move v8, v1

    .line 165
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 166
    :goto_0
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 169
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 171
    move-result-object v1

    .line 174
    check-cast v1, Landroid/graphics/PointF;

    .line 175
    iget v2, v1, Landroid/graphics/PointF;->x:F

    .line 177
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 179
    invoke-virtual {v9, v2, v1}, Landroid/graphics/Path;->offset(FF)V

    .line 181
    invoke-virtual {v9}, Landroid/graphics/Path;->close()V

    .line 184
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 187
    invoke-virtual {v1, v9}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;->apply(Landroid/graphics/Path;)V

    .line 189
    iput-boolean v10, v0, Lcom/airbnb/lottie/animation/content/EllipseContent;->isPathValid:Z

    .line 192
    return-object v9
    .line 194
.end method

.method public final onValueChanged()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->isPathValid:Z

    .line 3
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

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
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

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
