.class public final Lcom/airbnb/lottie/model/layer/TextLayer;
.super Lcom/airbnb/lottie/model/layer/BaseLayer;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final codePointCache:Landroidx/collection/LongSparseArray;

.field public final colorAnimation:Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;

.field public colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

.field public final composition:Lcom/airbnb/lottie/LottieComposition;

.field public final contentsForCharacter:Ljava/util/Map;

.field public final fillPaint:Lcom/airbnb/lottie/model/layer/TextLayer$1;

.field public final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field public final matrix:Landroid/graphics/Matrix;

.field public final rectF:Landroid/graphics/RectF;

.field public final stringBuilder:Ljava/lang/StringBuilder;

.field public final strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;

.field public strokeColorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

.field public final strokePaint:Lcom/airbnb/lottie/model/layer/TextLayer$1;

.field public final strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

.field public strokeWidthCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

.field public final textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

.field public textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

.field public final trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

.field public trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

.field public typefaceCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->stringBuilder:Ljava/lang/StringBuilder;

    .line 11
    new-instance v0, Landroid/graphics/RectF;

    .line 13
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->rectF:Landroid/graphics/RectF;

    .line 18
    new-instance v0, Landroid/graphics/Matrix;

    .line 20
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    .line 25
    new-instance v0, Lcom/airbnb/lottie/model/layer/TextLayer$1;

    .line 27
    const/4 v1, 0x0

    .line 29
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/model/layer/TextLayer$1;-><init>(I)V

    .line 30
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Lcom/airbnb/lottie/model/layer/TextLayer$1;

    .line 33
    new-instance v0, Lcom/airbnb/lottie/model/layer/TextLayer$1;

    .line 35
    const/4 v1, 0x1

    .line 37
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/model/layer/TextLayer$1;-><init>(I)V

    .line 38
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Lcom/airbnb/lottie/model/layer/TextLayer$1;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    .line 43
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->contentsForCharacter:Ljava/util/Map;

    .line 48
    new-instance v0, Landroidx/collection/LongSparseArray;

    .line 50
    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->codePointCache:Landroidx/collection/LongSparseArray;

    .line 55
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 57
    iget-object p1, p2, Lcom/airbnb/lottie/model/layer/Layer;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 59
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 61
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 63
    iget-object v0, p2, Lcom/airbnb/lottie/model/layer/Layer;->text:Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 65
    iget-object v0, v0, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/util/List;

    .line 67
    invoke-direct {p1, v0}, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 69
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 72
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 74
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 77
    iget-object p1, p2, Lcom/airbnb/lottie/model/layer/Layer;->textProperties:Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;

    .line 80
    if-eqz p1, :cond_0

    .line 82
    iget-object p2, p1, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->color:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    .line 84
    if-eqz p2, :cond_0

    .line 86
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 88
    move-result-object p2

    .line 91
    move-object v0, p2

    .line 92
    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;

    .line 93
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;

    .line 95
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 97
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 100
    :cond_0
    if-eqz p1, :cond_1

    .line 103
    iget-object p2, p1, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->stroke:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    .line 105
    if-eqz p2, :cond_1

    .line 107
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 109
    move-result-object p2

    .line 112
    move-object v0, p2

    .line 113
    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;

    .line 114
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;

    .line 116
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 118
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 121
    :cond_1
    if-eqz p1, :cond_2

    .line 124
    iget-object p2, p1, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->strokeWidth:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 126
    if-eqz p2, :cond_2

    .line 128
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 130
    move-result-object p2

    .line 133
    move-object v0, p2

    .line 134
    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 135
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 137
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 139
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 142
    :cond_2
    if-eqz p1, :cond_3

    .line 145
    iget-object p1, p1, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->tracking:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 147
    if-eqz p1, :cond_3

    .line 149
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 151
    move-result-object p1

    .line 154
    move-object p2, p1

    .line 155
    check-cast p2, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 156
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 158
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 160
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 163
    :cond_3
    return-void
    .line 166
.end method

.method public static drawCharacter(Ljava/lang/String;Lcom/airbnb/lottie/model/layer/TextLayer$1;Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    .line 9
    move-result-object v0

    .line 12
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 13
    if-ne v0, v1, :cond_1

    .line 15
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 17
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    cmpl-float v0, v0, v1

    .line 22
    if-nez v0, :cond_1

    .line 24
    return-void

    .line 26
    :cond_1
    const/4 v3, 0x0

    .line 27
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 28
    move-result v4

    .line 31
    const/4 v5, 0x0

    .line 32
    const/4 v6, 0x0

    .line 33
    move-object v1, p2

    .line 34
    move-object v2, p0

    .line 35
    move-object v7, p1

    .line 36
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 37
    return-void
    .line 40
.end method

.method public static drawGlyph(Landroid/graphics/Path;Lcom/airbnb/lottie/model/layer/TextLayer$1;Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    .line 9
    move-result-object v0

    .line 12
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 13
    if-ne v0, v1, :cond_1

    .line 15
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 17
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    cmpl-float v0, v0, v1

    .line 22
    if-nez v0, :cond_1

    .line 24
    return-void

    .line 26
    :cond_1
    invoke-virtual {p2, p0, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 27
    return-void
    .line 30
.end method


# virtual methods
.method public final addValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->COLOR:Ljava/lang/Integer;

    .line 5
    const/4 v1, 0x0

    .line 7
    if-ne p2, v0, :cond_2

    .line 8
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 10
    if-eqz p2, :cond_0

    .line 12
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 14
    :cond_0
    if-nez p1, :cond_1

    .line 17
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 19
    goto/16 :goto_0

    .line 21
    :cond_1
    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 23
    invoke-direct {p2, p1, v1}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V

    .line 25
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 28
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 30
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 33
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 35
    goto/16 :goto_0

    .line 38
    :cond_2
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->STROKE_COLOR:Ljava/lang/Integer;

    .line 40
    if-ne p2, v0, :cond_5

    .line 42
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 44
    if-eqz p2, :cond_3

    .line 46
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 48
    :cond_3
    if-nez p1, :cond_4

    .line 51
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 53
    goto/16 :goto_0

    .line 55
    :cond_4
    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 57
    invoke-direct {p2, p1, v1}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V

    .line 59
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 62
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 64
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 67
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 69
    goto/16 :goto_0

    .line 72
    :cond_5
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->STROKE_WIDTH:Ljava/lang/Float;

    .line 74
    if-ne p2, v0, :cond_8

    .line 76
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 78
    if-eqz p2, :cond_6

    .line 80
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 82
    :cond_6
    if-nez p1, :cond_7

    .line 85
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 87
    goto/16 :goto_0

    .line 89
    :cond_7
    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 91
    invoke-direct {p2, p1, v1}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V

    .line 93
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 96
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 98
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 101
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 103
    goto/16 :goto_0

    .line 106
    :cond_8
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TEXT_TRACKING:Ljava/lang/Float;

    .line 108
    if-ne p2, v0, :cond_b

    .line 110
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 112
    if-eqz p2, :cond_9

    .line 114
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 116
    :cond_9
    if-nez p1, :cond_a

    .line 119
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 121
    goto :goto_0

    .line 123
    :cond_a
    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 124
    invoke-direct {p2, p1, v1}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V

    .line 126
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 129
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 131
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 134
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 136
    goto :goto_0

    .line 139
    :cond_b
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TEXT_SIZE:Ljava/lang/Float;

    .line 140
    if-ne p2, v0, :cond_e

    .line 142
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 144
    if-eqz p2, :cond_c

    .line 146
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 148
    :cond_c
    if-nez p1, :cond_d

    .line 151
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 153
    goto :goto_0

    .line 155
    :cond_d
    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 156
    invoke-direct {p2, p1, v1}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V

    .line 158
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 161
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 163
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 166
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 168
    goto :goto_0

    .line 171
    :cond_e
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TYPEFACE:Landroid/graphics/Typeface;

    .line 172
    if-ne p2, v0, :cond_11

    .line 174
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->typefaceCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 176
    if-eqz p2, :cond_f

    .line 178
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 180
    :cond_f
    if-nez p1, :cond_10

    .line 183
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->typefaceCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 185
    goto :goto_0

    .line 187
    :cond_10
    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 188
    invoke-direct {p2, p1, v1}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V

    .line 190
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->typefaceCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 193
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 195
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->typefaceCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 198
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 200
    goto :goto_0

    .line 203
    :cond_11
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TEXT:Ljava/lang/CharSequence;

    .line 204
    if-ne p2, v0, :cond_12

    .line 206
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 208
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    new-instance p2, Lcom/airbnb/lottie/value/LottieFrameInfo;

    .line 213
    invoke-direct {p2}, Lcom/airbnb/lottie/value/LottieFrameInfo;-><init>()V

    .line 215
    new-instance v0, Lcom/airbnb/lottie/model/DocumentData;

    .line 218
    invoke-direct {v0}, Lcom/airbnb/lottie/model/DocumentData;-><init>()V

    .line 220
    new-instance v1, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation$1;

    .line 223
    invoke-direct {v1, p2, p1, v0}, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation$1;-><init>(Lcom/airbnb/lottie/value/LottieFrameInfo;Lcom/airbnb/lottie/value/LottieValueCallback;Lcom/airbnb/lottie/model/DocumentData;)V

    .line 225
    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 228
    :cond_12
    :goto_0
    return-void
    .line 231
.end method

.method public final drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6
    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 9
    iget-object v3, v2, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 11
    iget-object v3, v3, Lcom/airbnb/lottie/LottieComposition;->characters:Landroidx/collection/SparseArrayCompat;

    .line 13
    iget v3, v3, Landroidx/collection/SparseArrayCompat;->size:I

    .line 15
    if-lez v3, :cond_0

    .line 17
    const/4 v3, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v3, 0x0

    .line 21
    :goto_0
    if-nez v3, :cond_1

    .line 22
    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 24
    :cond_1
    iget-object v3, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 27
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 32
    check-cast v3, Lcom/airbnb/lottie/model/DocumentData;

    .line 33
    iget-object v6, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 35
    iget-object v7, v6, Lcom/airbnb/lottie/LottieComposition;->fonts:Ljava/util/Map;

    .line 37
    iget-object v8, v3, Lcom/airbnb/lottie/model/DocumentData;->fontName:Ljava/lang/String;

    .line 39
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-result-object v7

    .line 44
    check-cast v7, Lcom/airbnb/lottie/model/Font;

    .line 45
    if-nez v7, :cond_2

    .line 47
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 49
    return-void

    .line 52
    :cond_2
    iget-object v8, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 53
    iget-object v9, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Lcom/airbnb/lottie/model/layer/TextLayer$1;

    .line 55
    if-eqz v8, :cond_3

    .line 57
    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 59
    move-result-object v8

    .line 62
    check-cast v8, Ljava/lang/Integer;

    .line 63
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 65
    move-result v8

    .line 68
    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    goto :goto_1

    .line 72
    :cond_3
    iget-object v8, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;

    .line 73
    if-eqz v8, :cond_4

    .line 75
    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 77
    move-result-object v8

    .line 80
    check-cast v8, Ljava/lang/Integer;

    .line 81
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 83
    move-result v8

    .line 86
    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    goto :goto_1

    .line 90
    :cond_4
    iget v8, v3, Lcom/airbnb/lottie/model/DocumentData;->color:I

    .line 91
    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    :goto_1
    iget-object v8, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 96
    iget-object v10, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Lcom/airbnb/lottie/model/layer/TextLayer$1;

    .line 98
    if-eqz v8, :cond_5

    .line 100
    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 102
    move-result-object v8

    .line 105
    check-cast v8, Ljava/lang/Integer;

    .line 106
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 108
    move-result v8

    .line 111
    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    goto :goto_2

    .line 115
    :cond_5
    iget-object v8, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;

    .line 116
    if-eqz v8, :cond_6

    .line 118
    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 120
    move-result-object v8

    .line 123
    check-cast v8, Ljava/lang/Integer;

    .line 124
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 126
    move-result v8

    .line 129
    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    goto :goto_2

    .line 133
    :cond_6
    iget v8, v3, Lcom/airbnb/lottie/model/DocumentData;->strokeColor:I

    .line 134
    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    :goto_2
    iget-object v8, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 139
    iget-object v8, v8, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->opacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 141
    const/16 v11, 0x64

    .line 143
    if-nez v8, :cond_7

    .line 145
    move v8, v11

    .line 147
    goto :goto_3

    .line 148
    :cond_7
    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 149
    move-result-object v8

    .line 152
    check-cast v8, Ljava/lang/Integer;

    .line 153
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 155
    move-result v8

    .line 158
    :goto_3
    mul-int/lit16 v8, v8, 0xff

    .line 159
    div-int/2addr v8, v11

    .line 161
    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 162
    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 165
    iget-object v8, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 168
    if-eqz v8, :cond_8

    .line 170
    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 172
    move-result-object v8

    .line 175
    check-cast v8, Ljava/lang/Float;

    .line 176
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    .line 178
    move-result v8

    .line 181
    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 182
    goto :goto_4

    .line 185
    :cond_8
    iget-object v8, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 186
    if-eqz v8, :cond_9

    .line 188
    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 190
    move-result-object v8

    .line 193
    check-cast v8, Ljava/lang/Float;

    .line 194
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    .line 196
    move-result v8

    .line 199
    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 200
    goto :goto_4

    .line 203
    :cond_9
    invoke-static/range {p2 .. p2}, Lcom/airbnb/lottie/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    .line 204
    move-result v8

    .line 207
    iget v11, v3, Lcom/airbnb/lottie/model/DocumentData;->strokeWidth:F

    .line 208
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 210
    move-result v12

    .line 213
    mul-float/2addr v12, v11

    .line 214
    mul-float/2addr v12, v8

    .line 215
    invoke-virtual {v10, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 216
    :goto_4
    iget-object v8, v2, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 219
    iget-object v8, v8, Lcom/airbnb/lottie/LottieComposition;->characters:Landroidx/collection/SparseArrayCompat;

    .line 221
    iget v8, v8, Landroidx/collection/SparseArrayCompat;->size:I

    .line 223
    if-lez v8, :cond_a

    .line 225
    const/4 v8, 0x1

    .line 227
    goto :goto_5

    .line 228
    :cond_a
    const/4 v8, 0x0

    .line 229
    :goto_5
    const-string v12, "\n"

    .line 230
    const-string v13, "\r"

    .line 232
    const-string v14, "\r\n"

    .line 234
    const/high16 v16, 0x40000000    # 2.0f

    .line 236
    const/high16 v17, 0x42c80000    # 100.0f

    .line 238
    iget-object v5, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 240
    iget-object v11, v7, Lcom/airbnb/lottie/model/Font;->style:Ljava/lang/String;

    .line 242
    iget-object v7, v7, Lcom/airbnb/lottie/model/Font;->family:Ljava/lang/String;

    .line 244
    if-eqz v8, :cond_18

    .line 246
    iget-object v8, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 248
    if-eqz v8, :cond_b

    .line 250
    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 252
    move-result-object v8

    .line 255
    check-cast v8, Ljava/lang/Float;

    .line 256
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    .line 258
    move-result v8

    .line 261
    goto :goto_6

    .line 262
    :cond_b
    iget v8, v3, Lcom/airbnb/lottie/model/DocumentData;->size:F

    .line 263
    :goto_6
    div-float v8, v8, v17

    .line 265
    invoke-static/range {p2 .. p2}, Lcom/airbnb/lottie/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    .line 267
    move-result v15

    .line 270
    iget-object v4, v3, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    .line 271
    move-object/from16 v18, v5

    .line 273
    iget v5, v3, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:F

    .line 275
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 277
    move-result v17

    .line 280
    mul-float v17, v17, v5

    .line 281
    invoke-virtual {v4, v14, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 283
    move-result-object v4

    .line 286
    invoke-virtual {v4, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 287
    move-result-object v4

    .line 290
    invoke-virtual {v4, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 291
    move-result-object v4

    .line 294
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 295
    move-result-object v4

    .line 298
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 299
    move-result v5

    .line 302
    const/4 v12, 0x0

    .line 303
    :goto_7
    if-ge v12, v5, :cond_33

    .line 304
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 306
    move-result-object v13

    .line 309
    check-cast v13, Ljava/lang/String;

    .line 310
    move-object/from16 v19, v4

    .line 312
    move-object/from16 v20, v10

    .line 314
    const/4 v4, 0x0

    .line 316
    const/4 v14, 0x0

    .line 317
    :goto_8
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 318
    move-result v10

    .line 321
    if-ge v14, v10, :cond_d

    .line 322
    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    .line 324
    move-result v10

    .line 327
    invoke-static {v10, v7, v11}, Lcom/airbnb/lottie/model/FontCharacter;->hashFor(CLjava/lang/String;Ljava/lang/String;)I

    .line 328
    move-result v10

    .line 331
    move-object/from16 v21, v9

    .line 332
    iget-object v9, v6, Lcom/airbnb/lottie/LottieComposition;->characters:Landroidx/collection/SparseArrayCompat;

    .line 334
    invoke-virtual {v9, v10}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    .line 336
    move-result-object v9

    .line 339
    check-cast v9, Lcom/airbnb/lottie/model/FontCharacter;

    .line 340
    if-nez v9, :cond_c

    .line 342
    move-object/from16 v24, v6

    .line 344
    move-object/from16 v22, v7

    .line 346
    move/from16 v25, v8

    .line 348
    move-object/from16 v23, v11

    .line 350
    goto :goto_9

    .line 352
    :cond_c
    move-object v10, v6

    .line 353
    move-object/from16 v22, v7

    .line 354
    float-to-double v6, v4

    .line 356
    move-object/from16 v24, v10

    .line 357
    move-object/from16 v23, v11

    .line 359
    float-to-double v10, v8

    .line 361
    move/from16 v25, v8

    .line 362
    iget-wide v8, v9, Lcom/airbnb/lottie/model/FontCharacter;->width:D

    .line 364
    mul-double/2addr v8, v10

    .line 366
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 367
    move-result v4

    .line 370
    float-to-double v10, v4

    .line 371
    mul-double/2addr v8, v10

    .line 372
    float-to-double v10, v15

    .line 373
    mul-double/2addr v8, v10

    .line 374
    add-double/2addr v8, v6

    .line 375
    double-to-float v4, v8

    .line 376
    :goto_9
    add-int/lit8 v14, v14, 0x1

    .line 377
    move-object/from16 v9, v21

    .line 379
    move-object/from16 v7, v22

    .line 381
    move-object/from16 v11, v23

    .line 383
    move-object/from16 v6, v24

    .line 385
    move/from16 v8, v25

    .line 387
    goto :goto_8

    .line 389
    :cond_d
    move-object/from16 v24, v6

    .line 390
    move-object/from16 v22, v7

    .line 392
    move/from16 v25, v8

    .line 394
    move-object/from16 v21, v9

    .line 396
    move-object/from16 v23, v11

    .line 398
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 400
    iget-object v6, v3, Lcom/airbnb/lottie/model/DocumentData;->justification:Lcom/airbnb/lottie/model/DocumentData$Justification;

    .line 403
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 405
    move-result v6

    .line 408
    const/4 v7, 0x1

    .line 409
    if-eq v6, v7, :cond_f

    .line 410
    const/4 v7, 0x2

    .line 412
    if-eq v6, v7, :cond_e

    .line 413
    goto :goto_a

    .line 415
    :cond_e
    neg-float v4, v4

    .line 416
    div-float v4, v4, v16

    .line 417
    const/4 v6, 0x0

    .line 419
    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 420
    goto :goto_a

    .line 423
    :cond_f
    const/4 v6, 0x0

    .line 424
    neg-float v4, v4

    .line 425
    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 426
    :goto_a
    add-int/lit8 v4, v5, -0x1

    .line 429
    int-to-float v4, v4

    .line 431
    mul-float v4, v4, v17

    .line 432
    div-float v4, v4, v16

    .line 434
    int-to-float v6, v12

    .line 436
    mul-float v6, v6, v17

    .line 437
    sub-float/2addr v6, v4

    .line 439
    const/4 v4, 0x0

    .line 440
    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 441
    const/4 v4, 0x0

    .line 444
    :goto_b
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 445
    move-result v6

    .line 448
    if-ge v4, v6, :cond_17

    .line 449
    invoke-virtual {v13, v4}, Ljava/lang/String;->charAt(I)C

    .line 451
    move-result v6

    .line 454
    move-object/from16 v8, v22

    .line 455
    move-object/from16 v7, v23

    .line 457
    invoke-static {v6, v8, v7}, Lcom/airbnb/lottie/model/FontCharacter;->hashFor(CLjava/lang/String;Ljava/lang/String;)I

    .line 459
    move-result v6

    .line 462
    move-object/from16 v9, v24

    .line 463
    iget-object v10, v9, Lcom/airbnb/lottie/LottieComposition;->characters:Landroidx/collection/SparseArrayCompat;

    .line 465
    invoke-virtual {v10, v6}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    .line 467
    move-result-object v6

    .line 470
    check-cast v6, Lcom/airbnb/lottie/model/FontCharacter;

    .line 471
    if-nez v6, :cond_10

    .line 473
    move/from16 v22, v5

    .line 475
    move-object/from16 v24, v9

    .line 477
    move-object/from16 v23, v13

    .line 479
    move-object/from16 v14, v20

    .line 481
    move-object/from16 v11, v21

    .line 483
    move/from16 v10, v25

    .line 485
    move-object/from16 v13, p2

    .line 487
    goto/16 :goto_11

    .line 489
    :cond_10
    iget-object v10, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->contentsForCharacter:Ljava/util/Map;

    .line 491
    check-cast v10, Ljava/util/HashMap;

    .line 493
    invoke-virtual {v10, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 495
    move-result v11

    .line 498
    if-eqz v11, :cond_11

    .line 499
    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    move-result-object v10

    .line 504
    check-cast v10, Ljava/util/List;

    .line 505
    move/from16 v22, v5

    .line 507
    move-object/from16 v24, v9

    .line 509
    move-object/from16 v23, v13

    .line 511
    goto :goto_d

    .line 513
    :cond_11
    iget-object v11, v6, Lcom/airbnb/lottie/model/FontCharacter;->shapes:Ljava/util/List;

    .line 514
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 516
    move-result v14

    .line 519
    move/from16 v22, v5

    .line 520
    new-instance v5, Ljava/util/ArrayList;

    .line 522
    invoke-direct {v5, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 524
    move-object/from16 v24, v9

    .line 527
    const/4 v9, 0x0

    .line 529
    :goto_c
    if-ge v9, v14, :cond_12

    .line 530
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 532
    move-result-object v23

    .line 535
    move-object/from16 v26, v11

    .line 536
    move-object/from16 v11, v23

    .line 538
    check-cast v11, Lcom/airbnb/lottie/model/content/ShapeGroup;

    .line 540
    move-object/from16 v23, v13

    .line 542
    new-instance v13, Lcom/airbnb/lottie/animation/content/ContentGroup;

    .line 544
    invoke-direct {v13, v2, v0, v11}, Lcom/airbnb/lottie/animation/content/ContentGroup;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/ShapeGroup;)V

    .line 546
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    add-int/lit8 v9, v9, 0x1

    .line 552
    move-object/from16 v13, v23

    .line 554
    move-object/from16 v11, v26

    .line 556
    goto :goto_c

    .line 558
    :cond_12
    move-object/from16 v23, v13

    .line 559
    invoke-virtual {v10, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    move-object v10, v5

    .line 564
    :goto_d
    const/4 v5, 0x0

    .line 565
    :goto_e
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 566
    move-result v9

    .line 569
    if-ge v5, v9, :cond_14

    .line 570
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 572
    move-result-object v9

    .line 575
    check-cast v9, Lcom/airbnb/lottie/animation/content/ContentGroup;

    .line 576
    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/content/ContentGroup;->getPath()Landroid/graphics/Path;

    .line 578
    move-result-object v9

    .line 581
    iget-object v11, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->rectF:Landroid/graphics/RectF;

    .line 582
    const/4 v13, 0x0

    .line 584
    invoke-virtual {v9, v11, v13}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 585
    iget-object v11, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    .line 588
    move-object/from16 v13, p2

    .line 590
    invoke-virtual {v11, v13}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 592
    iget v14, v3, Lcom/airbnb/lottie/model/DocumentData;->baselineShift:F

    .line 595
    neg-float v14, v14

    .line 597
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 598
    move-result v26

    .line 601
    mul-float v14, v14, v26

    .line 602
    move-object/from16 v26, v10

    .line 604
    const/4 v10, 0x0

    .line 606
    invoke-virtual {v11, v10, v14}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 607
    move/from16 v10, v25

    .line 610
    invoke-virtual {v11, v10, v10}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 612
    invoke-virtual {v9, v11}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 615
    iget-boolean v11, v3, Lcom/airbnb/lottie/model/DocumentData;->strokeOverFill:Z

    .line 618
    if-eqz v11, :cond_13

    .line 620
    move-object/from16 v11, v21

    .line 622
    invoke-static {v9, v11, v1}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Lcom/airbnb/lottie/model/layer/TextLayer$1;Landroid/graphics/Canvas;)V

    .line 624
    move-object/from16 v14, v20

    .line 627
    invoke-static {v9, v14, v1}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Lcom/airbnb/lottie/model/layer/TextLayer$1;Landroid/graphics/Canvas;)V

    .line 629
    goto :goto_f

    .line 632
    :cond_13
    move-object/from16 v14, v20

    .line 633
    move-object/from16 v11, v21

    .line 635
    invoke-static {v9, v14, v1}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Lcom/airbnb/lottie/model/layer/TextLayer$1;Landroid/graphics/Canvas;)V

    .line 637
    invoke-static {v9, v11, v1}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Lcom/airbnb/lottie/model/layer/TextLayer$1;Landroid/graphics/Canvas;)V

    .line 640
    :goto_f
    add-int/lit8 v5, v5, 0x1

    .line 643
    move/from16 v25, v10

    .line 645
    move-object/from16 v21, v11

    .line 647
    move-object/from16 v20, v14

    .line 649
    move-object/from16 v10, v26

    .line 651
    goto :goto_e

    .line 653
    :cond_14
    move-object/from16 v13, p2

    .line 654
    move-object/from16 v14, v20

    .line 656
    move-object/from16 v11, v21

    .line 658
    move/from16 v10, v25

    .line 660
    iget-wide v5, v6, Lcom/airbnb/lottie/model/FontCharacter;->width:D

    .line 662
    double-to-float v5, v5

    .line 664
    mul-float/2addr v5, v10

    .line 665
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 666
    move-result v6

    .line 669
    mul-float/2addr v6, v5

    .line 670
    mul-float/2addr v6, v15

    .line 671
    iget v5, v3, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    .line 672
    int-to-float v5, v5

    .line 674
    const/high16 v9, 0x41200000    # 10.0f

    .line 675
    div-float/2addr v5, v9

    .line 677
    iget-object v9, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 678
    if-eqz v9, :cond_15

    .line 680
    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 682
    move-result-object v9

    .line 685
    check-cast v9, Ljava/lang/Float;

    .line 686
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    .line 688
    move-result v9

    .line 691
    goto :goto_10

    .line 692
    :cond_15
    if-eqz v18, :cond_16

    .line 693
    invoke-virtual/range {v18 .. v18}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 695
    move-result-object v9

    .line 698
    check-cast v9, Ljava/lang/Float;

    .line 699
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    .line 701
    move-result v9

    .line 704
    :goto_10
    add-float/2addr v5, v9

    .line 705
    :cond_16
    mul-float/2addr v5, v15

    .line 706
    add-float/2addr v5, v6

    .line 707
    const/4 v6, 0x0

    .line 708
    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 709
    :goto_11
    add-int/lit8 v4, v4, 0x1

    .line 712
    move/from16 v25, v10

    .line 714
    move-object/from16 v21, v11

    .line 716
    move-object/from16 v20, v14

    .line 718
    move/from16 v5, v22

    .line 720
    move-object/from16 v13, v23

    .line 722
    move-object/from16 v23, v7

    .line 724
    move-object/from16 v22, v8

    .line 726
    goto/16 :goto_b

    .line 728
    :cond_17
    move-object/from16 v13, p2

    .line 730
    move-object/from16 v14, v20

    .line 732
    move-object/from16 v11, v21

    .line 734
    move-object/from16 v8, v22

    .line 736
    move-object/from16 v7, v23

    .line 738
    move/from16 v10, v25

    .line 740
    move/from16 v22, v5

    .line 742
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 744
    add-int/lit8 v12, v12, 0x1

    .line 747
    move-object v9, v11

    .line 749
    move-object/from16 v4, v19

    .line 750
    move-object/from16 v6, v24

    .line 752
    move-object v11, v7

    .line 754
    move-object v7, v8

    .line 755
    move v8, v10

    .line 756
    move-object v10, v14

    .line 757
    goto/16 :goto_7

    .line 758
    :cond_18
    move-object/from16 v18, v5

    .line 760
    move-object v8, v7

    .line 762
    move-object v4, v10

    .line 763
    move-object v7, v11

    .line 764
    move-object v11, v9

    .line 765
    iget-object v5, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->typefaceCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 766
    if-eqz v5, :cond_19

    .line 768
    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 770
    move-result-object v5

    .line 773
    check-cast v5, Landroid/graphics/Typeface;

    .line 774
    if-eqz v5, :cond_19

    .line 776
    goto/16 :goto_17

    .line 778
    :cond_19
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 780
    move-result-object v5

    .line 783
    if-nez v5, :cond_1a

    .line 784
    const/4 v2, 0x0

    .line 786
    goto :goto_12

    .line 787
    :cond_1a
    iget-object v5, v2, Lcom/airbnb/lottie/LottieDrawable;->fontAssetManager:Lcom/airbnb/lottie/manager/FontAssetManager;

    .line 788
    if-nez v5, :cond_1b

    .line 790
    new-instance v5, Lcom/airbnb/lottie/manager/FontAssetManager;

    .line 792
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 794
    move-result-object v9

    .line 797
    invoke-direct {v5, v9}, Lcom/airbnb/lottie/manager/FontAssetManager;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 798
    iput-object v5, v2, Lcom/airbnb/lottie/LottieDrawable;->fontAssetManager:Lcom/airbnb/lottie/manager/FontAssetManager;

    .line 801
    :cond_1b
    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->fontAssetManager:Lcom/airbnb/lottie/manager/FontAssetManager;

    .line 803
    :goto_12
    if-eqz v2, :cond_22

    .line 805
    iget-object v5, v2, Lcom/airbnb/lottie/manager/FontAssetManager;->tempPair:Lcom/airbnb/lottie/model/MutablePair;

    .line 807
    iput-object v8, v5, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    .line 809
    iput-object v7, v5, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    .line 811
    iget-object v9, v2, Lcom/airbnb/lottie/manager/FontAssetManager;->fontMap:Ljava/util/Map;

    .line 813
    check-cast v9, Ljava/util/HashMap;

    .line 815
    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    move-result-object v10

    .line 820
    check-cast v10, Landroid/graphics/Typeface;

    .line 821
    if-eqz v10, :cond_1c

    .line 823
    move-object v5, v10

    .line 825
    goto :goto_16

    .line 826
    :cond_1c
    iget-object v10, v2, Lcom/airbnb/lottie/manager/FontAssetManager;->fontFamilies:Ljava/util/Map;

    .line 827
    check-cast v10, Ljava/util/HashMap;

    .line 829
    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    move-result-object v15

    .line 834
    check-cast v15, Landroid/graphics/Typeface;

    .line 835
    if-eqz v15, :cond_1d

    .line 837
    goto :goto_13

    .line 839
    :cond_1d
    new-instance v15, Ljava/lang/StringBuilder;

    .line 840
    const-string v6, "fonts/"

    .line 842
    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 844
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    iget-object v6, v2, Lcom/airbnb/lottie/manager/FontAssetManager;->defaultFontFileExtension:Ljava/lang/String;

    .line 850
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 855
    move-result-object v6

    .line 858
    iget-object v2, v2, Lcom/airbnb/lottie/manager/FontAssetManager;->assetManager:Landroid/content/res/AssetManager;

    .line 859
    invoke-static {v2, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 861
    move-result-object v15

    .line 864
    invoke-virtual {v10, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    :goto_13
    const-string v2, "Italic"

    .line 868
    invoke-virtual {v7, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 870
    move-result v2

    .line 873
    const-string v6, "Bold"

    .line 874
    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 876
    move-result v6

    .line 879
    if-eqz v2, :cond_1e

    .line 880
    if-eqz v6, :cond_1e

    .line 882
    const/4 v7, 0x3

    .line 884
    goto :goto_14

    .line 885
    :cond_1e
    if-eqz v2, :cond_1f

    .line 886
    const/4 v7, 0x2

    .line 888
    goto :goto_14

    .line 889
    :cond_1f
    if-eqz v6, :cond_20

    .line 890
    const/4 v7, 0x1

    .line 892
    goto :goto_14

    .line 893
    :cond_20
    const/4 v7, 0x0

    .line 894
    :goto_14
    invoke-virtual {v15}, Landroid/graphics/Typeface;->getStyle()I

    .line 895
    move-result v2

    .line 898
    if-ne v2, v7, :cond_21

    .line 899
    goto :goto_15

    .line 901
    :cond_21
    invoke-static {v15, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 902
    move-result-object v15

    .line 905
    :goto_15
    invoke-virtual {v9, v5, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    move-object v5, v15

    .line 909
    goto :goto_16

    .line 910
    :cond_22
    const/4 v5, 0x0

    .line 911
    :goto_16
    if-eqz v5, :cond_23

    .line 912
    goto :goto_17

    .line 914
    :cond_23
    const/4 v5, 0x0

    .line 915
    :goto_17
    if-nez v5, :cond_24

    .line 916
    goto/16 :goto_25

    .line 918
    :cond_24
    iget-object v2, v3, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    .line 920
    invoke-virtual {v11, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 922
    iget-object v5, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 925
    if-eqz v5, :cond_25

    .line 927
    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 929
    move-result-object v5

    .line 932
    check-cast v5, Ljava/lang/Float;

    .line 933
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 935
    move-result v5

    .line 938
    goto :goto_18

    .line 939
    :cond_25
    iget v5, v3, Lcom/airbnb/lottie/model/DocumentData;->size:F

    .line 940
    :goto_18
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 942
    move-result v6

    .line 945
    mul-float/2addr v6, v5

    .line 946
    invoke-virtual {v11, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 947
    invoke-virtual {v11}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 950
    move-result-object v6

    .line 953
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 954
    invoke-virtual {v11}, Landroid/graphics/Paint;->getTextSize()F

    .line 957
    move-result v6

    .line 960
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 961
    iget v6, v3, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:F

    .line 964
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 966
    move-result v7

    .line 969
    mul-float/2addr v7, v6

    .line 970
    iget v6, v3, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    .line 971
    int-to-float v6, v6

    .line 973
    const/high16 v8, 0x41200000    # 10.0f

    .line 974
    div-float/2addr v6, v8

    .line 976
    iget-object v8, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 977
    if-eqz v8, :cond_26

    .line 979
    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 981
    move-result-object v8

    .line 984
    check-cast v8, Ljava/lang/Float;

    .line 985
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    .line 987
    move-result v8

    .line 990
    goto :goto_19

    .line 991
    :cond_26
    if-eqz v18, :cond_27

    .line 992
    invoke-virtual/range {v18 .. v18}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 994
    move-result-object v8

    .line 997
    check-cast v8, Ljava/lang/Float;

    .line 998
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    .line 1000
    move-result v8

    .line 1003
    :goto_19
    add-float/2addr v6, v8

    .line 1004
    :cond_27
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 1005
    move-result v8

    .line 1008
    mul-float/2addr v8, v6

    .line 1009
    mul-float/2addr v8, v5

    .line 1010
    div-float v8, v8, v17

    .line 1011
    invoke-virtual {v2, v14, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1013
    move-result-object v2

    .line 1016
    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1017
    move-result-object v2

    .line 1020
    invoke-virtual {v2, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1021
    move-result-object v2

    .line 1024
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1025
    move-result-object v2

    .line 1028
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 1029
    move-result v5

    .line 1032
    const/4 v13, 0x0

    .line 1033
    :goto_1a
    if-ge v13, v5, :cond_33

    .line 1034
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1036
    move-result-object v6

    .line 1039
    check-cast v6, Ljava/lang/String;

    .line 1040
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 1042
    move-result v9

    .line 1045
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 1046
    move-result v10

    .line 1049
    const/4 v12, 0x1

    .line 1050
    sub-int/2addr v10, v12

    .line 1051
    int-to-float v10, v10

    .line 1052
    mul-float/2addr v10, v8

    .line 1053
    add-float/2addr v10, v9

    .line 1054
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1055
    iget-object v9, v3, Lcom/airbnb/lottie/model/DocumentData;->justification:Lcom/airbnb/lottie/model/DocumentData$Justification;

    .line 1058
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 1060
    move-result v9

    .line 1063
    if-eq v9, v12, :cond_29

    .line 1064
    const/4 v14, 0x2

    .line 1066
    if-eq v9, v14, :cond_28

    .line 1067
    goto :goto_1b

    .line 1069
    :cond_28
    neg-float v9, v10

    .line 1070
    div-float v9, v9, v16

    .line 1071
    const/4 v15, 0x0

    .line 1073
    invoke-virtual {v1, v9, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1074
    goto :goto_1b

    .line 1077
    :cond_29
    const/4 v14, 0x2

    .line 1078
    const/4 v15, 0x0

    .line 1079
    neg-float v9, v10

    .line 1080
    invoke-virtual {v1, v9, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1081
    :goto_1b
    add-int/lit8 v9, v5, -0x1

    .line 1084
    int-to-float v9, v9

    .line 1086
    mul-float/2addr v9, v7

    .line 1087
    div-float v9, v9, v16

    .line 1088
    int-to-float v10, v13

    .line 1090
    mul-float/2addr v10, v7

    .line 1091
    sub-float/2addr v10, v9

    .line 1092
    const/4 v9, 0x0

    .line 1093
    invoke-virtual {v1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1094
    const/4 v9, 0x0

    .line 1097
    :goto_1c
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 1098
    move-result v10

    .line 1101
    if-ge v9, v10, :cond_32

    .line 1102
    invoke-virtual {v6, v9}, Ljava/lang/String;->codePointAt(I)I

    .line 1104
    move-result v10

    .line 1107
    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    .line 1108
    move-result v15

    .line 1111
    add-int/2addr v15, v9

    .line 1112
    :goto_1d
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 1113
    move-result v12

    .line 1116
    if-ge v15, v12, :cond_2d

    .line 1117
    invoke-virtual {v6, v15}, Ljava/lang/String;->codePointAt(I)I

    .line 1119
    move-result v12

    .line 1122
    invoke-static {v12}, Ljava/lang/Character;->getType(I)I

    .line 1123
    move-result v14

    .line 1126
    move-object/from16 p2, v2

    .line 1127
    const/16 v2, 0x10

    .line 1129
    if-eq v14, v2, :cond_2b

    .line 1131
    invoke-static {v12}, Ljava/lang/Character;->getType(I)I

    .line 1133
    move-result v2

    .line 1136
    const/16 v14, 0x1b

    .line 1137
    if-eq v2, v14, :cond_2b

    .line 1139
    invoke-static {v12}, Ljava/lang/Character;->getType(I)I

    .line 1141
    move-result v2

    .line 1144
    const/4 v14, 0x6

    .line 1145
    if-eq v2, v14, :cond_2b

    .line 1146
    invoke-static {v12}, Ljava/lang/Character;->getType(I)I

    .line 1148
    move-result v2

    .line 1151
    const/16 v14, 0x1c

    .line 1152
    if-eq v2, v14, :cond_2b

    .line 1154
    invoke-static {v12}, Ljava/lang/Character;->getType(I)I

    .line 1156
    move-result v2

    .line 1159
    const/16 v14, 0x8

    .line 1160
    if-eq v2, v14, :cond_2b

    .line 1162
    invoke-static {v12}, Ljava/lang/Character;->getType(I)I

    .line 1164
    move-result v2

    .line 1167
    const/16 v14, 0x13

    .line 1168
    if-ne v2, v14, :cond_2a

    .line 1170
    goto :goto_1e

    .line 1172
    :cond_2a
    const/4 v2, 0x0

    .line 1173
    goto :goto_1f

    .line 1174
    :cond_2b
    :goto_1e
    const/4 v2, 0x1

    .line 1175
    :goto_1f
    if-nez v2, :cond_2c

    .line 1176
    goto :goto_20

    .line 1178
    :cond_2c
    invoke-static {v12}, Ljava/lang/Character;->charCount(I)I

    .line 1179
    move-result v2

    .line 1182
    add-int/2addr v15, v2

    .line 1183
    mul-int/lit8 v10, v10, 0x1f

    .line 1184
    add-int/2addr v10, v12

    .line 1186
    move-object/from16 v2, p2

    .line 1187
    const/4 v14, 0x2

    .line 1189
    goto :goto_1d

    .line 1190
    :cond_2d
    move-object/from16 p2, v2

    .line 1191
    :goto_20
    move v2, v13

    .line 1193
    int-to-long v12, v10

    .line 1194
    iget-object v10, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->codePointCache:Landroidx/collection/LongSparseArray;

    .line 1195
    invoke-virtual {v10, v12, v13}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    .line 1197
    move-result v14

    .line 1200
    if-ltz v14, :cond_2e

    .line 1201
    const/4 v14, 0x1

    .line 1203
    goto :goto_21

    .line 1204
    :cond_2e
    const/4 v14, 0x0

    .line 1205
    :goto_21
    if-eqz v14, :cond_2f

    .line 1206
    invoke-virtual {v10, v12, v13}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 1208
    move-result-object v10

    .line 1211
    check-cast v10, Ljava/lang/String;

    .line 1212
    move/from16 p3, v5

    .line 1214
    goto :goto_23

    .line 1216
    :cond_2f
    iget-object v14, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->stringBuilder:Ljava/lang/StringBuilder;

    .line 1217
    const/4 v0, 0x0

    .line 1219
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1220
    move v0, v9

    .line 1223
    :goto_22
    if-ge v0, v15, :cond_30

    .line 1224
    move/from16 p3, v5

    .line 1226
    invoke-virtual {v6, v0}, Ljava/lang/String;->codePointAt(I)I

    .line 1228
    move-result v5

    .line 1231
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 1232
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    .line 1235
    move-result v5

    .line 1238
    add-int/2addr v0, v5

    .line 1239
    move/from16 v5, p3

    .line 1240
    goto :goto_22

    .line 1242
    :cond_30
    move/from16 p3, v5

    .line 1243
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1245
    move-result-object v0

    .line 1248
    invoke-virtual {v10, v0, v12, v13}, Landroidx/collection/LongSparseArray;->put(Ljava/lang/Object;J)V

    .line 1249
    move-object v10, v0

    .line 1252
    :goto_23
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 1253
    move-result v0

    .line 1256
    add-int/2addr v9, v0

    .line 1257
    iget-boolean v0, v3, Lcom/airbnb/lottie/model/DocumentData;->strokeOverFill:Z

    .line 1258
    if-eqz v0, :cond_31

    .line 1260
    invoke-static {v10, v11, v1}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacter(Ljava/lang/String;Lcom/airbnb/lottie/model/layer/TextLayer$1;Landroid/graphics/Canvas;)V

    .line 1262
    invoke-static {v10, v4, v1}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacter(Ljava/lang/String;Lcom/airbnb/lottie/model/layer/TextLayer$1;Landroid/graphics/Canvas;)V

    .line 1265
    goto :goto_24

    .line 1268
    :cond_31
    invoke-static {v10, v4, v1}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacter(Ljava/lang/String;Lcom/airbnb/lottie/model/layer/TextLayer$1;Landroid/graphics/Canvas;)V

    .line 1269
    invoke-static {v10, v11, v1}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacter(Ljava/lang/String;Lcom/airbnb/lottie/model/layer/TextLayer$1;Landroid/graphics/Canvas;)V

    .line 1272
    :goto_24
    invoke-virtual {v11, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 1275
    move-result v0

    .line 1278
    add-float/2addr v0, v8

    .line 1279
    const/4 v5, 0x0

    .line 1280
    invoke-virtual {v1, v0, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1281
    const/4 v12, 0x1

    .line 1284
    const/4 v14, 0x2

    .line 1285
    move-object/from16 v0, p0

    .line 1286
    move/from16 v5, p3

    .line 1288
    move v13, v2

    .line 1290
    move-object/from16 v2, p2

    .line 1291
    goto/16 :goto_1c

    .line 1293
    :cond_32
    move-object/from16 p2, v2

    .line 1295
    move/from16 p3, v5

    .line 1297
    move v2, v13

    .line 1299
    const/4 v5, 0x0

    .line 1300
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1301
    add-int/lit8 v13, v2, 0x1

    .line 1304
    move-object/from16 v0, p0

    .line 1306
    move-object/from16 v2, p2

    .line 1308
    move/from16 v5, p3

    .line 1310
    goto/16 :goto_1a

    .line 1312
    :cond_33
    :goto_25
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1314
    return-void
    .line 1317
.end method

.method public final getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 2
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 5
    iget-object p2, p0, Lcom/airbnb/lottie/LottieComposition;->bounds:Landroid/graphics/Rect;

    .line 7
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 9
    move-result p2

    .line 12
    int-to-float p2, p2

    .line 13
    iget-object p0, p0, Lcom/airbnb/lottie/LottieComposition;->bounds:Landroid/graphics/Rect;

    .line 14
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 16
    move-result p0

    .line 19
    int-to-float p0, p0

    .line 20
    const/4 p3, 0x0

    .line 21
    invoke-virtual {p1, p3, p3, p2, p0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 22
    return-void
    .line 25
.end method
