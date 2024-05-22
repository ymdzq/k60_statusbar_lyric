.class public abstract Lcom/airbnb/lottie/animation/content/BaseStrokeContent;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/airbnb/lottie/animation/content/KeyPathElementContent;
.implements Lcom/airbnb/lottie/animation/content/DrawingContent;


# instance fields
.field public blurAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

.field public blurMaskFilterRadius:F

.field public colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

.field public final dashPatternAnimations:Ljava/util/List;

.field public final dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

.field public final dashPatternValues:[F

.field public final dropShadowAnimation:Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;

.field public final layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

.field public final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field public final opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/IntegerKeyframeAnimation;

.field public final paint:Lcom/airbnb/lottie/animation/LPaint;

.field public final path:Landroid/graphics/Path;

.field public final pathGroups:Ljava/util/List;

.field public final pm:Landroid/graphics/PathMeasure;

.field public final rect:Landroid/graphics/RectF;

.field public final trimPathPath:Landroid/graphics/Path;

.field public final widthAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/PathMeasure;

    .line 5
    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    .line 10
    new-instance v0, Landroid/graphics/Path;

    .line 12
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    .line 17
    new-instance v0, Landroid/graphics/Path;

    .line 19
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    .line 24
    new-instance v0, Landroid/graphics/RectF;

    .line 26
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    .line 38
    new-instance v0, Lcom/airbnb/lottie/animation/LPaint;

    .line 40
    const/4 v1, 0x1

    .line 42
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/animation/LPaint;-><init>(I)V

    .line 43
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Lcom/airbnb/lottie/animation/LPaint;

    .line 46
    const/4 v1, 0x0

    .line 48
    iput v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->blurMaskFilterRadius:F

    .line 49
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 51
    iput-object p2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 53
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 55
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 60
    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 63
    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 66
    invoke-virtual {p6}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 69
    move-result-object p1

    .line 72
    check-cast p1, Lcom/airbnb/lottie/animation/keyframe/IntegerKeyframeAnimation;

    .line 73
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/IntegerKeyframeAnimation;

    .line 75
    invoke-virtual {p7}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 77
    move-result-object p1

    .line 80
    check-cast p1, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 81
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 83
    if-nez p9, :cond_0

    .line 85
    const/4 p1, 0x0

    .line 87
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 88
    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p9}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 91
    move-result-object p1

    .line 94
    check-cast p1, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 95
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 97
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    .line 99
    invoke-interface {p8}, Ljava/util/List;->size()I

    .line 101
    move-result p3

    .line 104
    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 105
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    .line 108
    invoke-interface {p8}, Ljava/util/List;->size()I

    .line 110
    move-result p1

    .line 113
    new-array p1, p1, [F

    .line 114
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternValues:[F

    .line 116
    const/4 p1, 0x0

    .line 118
    move p3, p1

    .line 119
    :goto_1
    invoke-interface {p8}, Ljava/util/List;->size()I

    .line 120
    move-result p4

    .line 123
    if-ge p3, p4, :cond_1

    .line 124
    iget-object p4, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    .line 126
    invoke-interface {p8, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 128
    move-result-object p5

    .line 131
    check-cast p5, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 132
    invoke-virtual {p5}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 134
    move-result-object p5

    .line 137
    check-cast p4, Ljava/util/ArrayList;

    .line 138
    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    add-int/lit8 p3, p3, 0x1

    .line 143
    goto :goto_1

    .line 145
    :cond_1
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/IntegerKeyframeAnimation;

    .line 146
    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 148
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 151
    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 153
    move p3, p1

    .line 156
    :goto_2
    iget-object p4, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    .line 157
    check-cast p4, Ljava/util/ArrayList;

    .line 159
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    .line 161
    move-result p4

    .line 164
    if-ge p3, p4, :cond_2

    .line 165
    iget-object p4, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    .line 167
    check-cast p4, Ljava/util/ArrayList;

    .line 169
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 171
    move-result-object p4

    .line 174
    check-cast p4, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 175
    invoke-virtual {p2, p4}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 177
    add-int/lit8 p3, p3, 0x1

    .line 180
    goto :goto_2

    .line 182
    :cond_2
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 183
    if-eqz p3, :cond_3

    .line 185
    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 187
    :cond_3
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/IntegerKeyframeAnimation;

    .line 190
    invoke-virtual {p3, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 192
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 195
    invoke-virtual {p3, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 197
    :goto_3
    invoke-interface {p8}, Ljava/util/List;->size()I

    .line 200
    move-result p3

    .line 203
    if-ge p1, p3, :cond_4

    .line 204
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    .line 206
    check-cast p3, Ljava/util/ArrayList;

    .line 208
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 210
    move-result-object p3

    .line 213
    check-cast p3, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 214
    invoke-virtual {p3, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 216
    add-int/lit8 p1, p1, 0x1

    .line 219
    goto :goto_3

    .line 221
    :cond_4
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 222
    if-eqz p1, :cond_5

    .line 224
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 226
    :cond_5
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBlurEffect()Lcom/airbnb/lottie/model/content/BlurEffect;

    .line 229
    move-result-object p1

    .line 232
    if-eqz p1, :cond_6

    .line 233
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBlurEffect()Lcom/airbnb/lottie/model/content/BlurEffect;

    .line 235
    move-result-object p1

    .line 238
    iget-object p1, p1, Lcom/airbnb/lottie/model/content/BlurEffect;->blurriness:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 239
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 241
    move-result-object p1

    .line 244
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->blurAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 245
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 247
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->blurAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 250
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 252
    :cond_6
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getDropShadowEffect()Lcom/airbnb/lottie/parser/DropShadowEffect;

    .line 255
    move-result-object p1

    .line 258
    if-eqz p1, :cond_7

    .line 259
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;

    .line 261
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getDropShadowEffect()Lcom/airbnb/lottie/parser/DropShadowEffect;

    .line 263
    move-result-object p3

    .line 266
    invoke-direct {p1, p0, p2, p3}, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;-><init>(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/parser/DropShadowEffect;)V

    .line 267
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dropShadowAnimation:Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;

    .line 270
    :cond_7
    return-void
    .line 272
.end method


# virtual methods
.method public addValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->OPACITY:Ljava/lang/Integer;

    .line 2
    if-ne p2, v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/IntegerKeyframeAnimation;

    .line 6
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 8
    goto/16 :goto_0

    .line 11
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->STROKE_WIDTH:Ljava/lang/Float;

    .line 13
    if-ne p2, v0, :cond_1

    .line 15
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 17
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 19
    goto/16 :goto_0

    .line 22
    :cond_1
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    .line 24
    const/4 v1, 0x0

    .line 26
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 27
    if-ne p2, v0, :cond_4

    .line 29
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 31
    if-eqz p2, :cond_2

    .line 33
    invoke-virtual {v2, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 35
    :cond_2
    if-nez p1, :cond_3

    .line 38
    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 40
    goto/16 :goto_0

    .line 42
    :cond_3
    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 44
    invoke-direct {p2, p1, v1}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V

    .line 46
    iput-object p2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 49
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 51
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 54
    invoke-virtual {v2, p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 56
    goto :goto_0

    .line 59
    :cond_4
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->BLUR_RADIUS:Ljava/lang/Float;

    .line 60
    if-ne p2, v0, :cond_6

    .line 62
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->blurAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 64
    if-eqz p2, :cond_5

    .line 66
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 68
    goto :goto_0

    .line 71
    :cond_5
    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 72
    invoke-direct {p2, p1, v1}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V

    .line 74
    iput-object p2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->blurAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 77
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 79
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->blurAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 82
    invoke-virtual {v2, p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 84
    goto :goto_0

    .line 87
    :cond_6
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->DROP_SHADOW_COLOR:Ljava/lang/Integer;

    .line 88
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dropShadowAnimation:Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;

    .line 90
    if-ne p2, v0, :cond_7

    .line 92
    if-eqz p0, :cond_7

    .line 94
    iget-object p0, p0, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->color:Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;

    .line 96
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 98
    goto :goto_0

    .line 101
    :cond_7
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->DROP_SHADOW_OPACITY:Ljava/lang/Float;

    .line 102
    if-ne p2, v0, :cond_8

    .line 104
    if-eqz p0, :cond_8

    .line 106
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->setOpacityCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 108
    goto :goto_0

    .line 111
    :cond_8
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->DROP_SHADOW_DIRECTION:Ljava/lang/Float;

    .line 112
    if-ne p2, v0, :cond_9

    .line 114
    if-eqz p0, :cond_9

    .line 116
    iget-object p0, p0, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->direction:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 118
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 120
    goto :goto_0

    .line 123
    :cond_9
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->DROP_SHADOW_DISTANCE:Ljava/lang/Float;

    .line 124
    if-ne p2, v0, :cond_a

    .line 126
    if-eqz p0, :cond_a

    .line 128
    iget-object p0, p0, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->distance:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 130
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 132
    goto :goto_0

    .line 135
    :cond_a
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->DROP_SHADOW_RADIUS:Ljava/lang/Float;

    .line 136
    if-ne p2, v0, :cond_b

    .line 138
    if-eqz p0, :cond_b

    .line 140
    iget-object p0, p0, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->radius:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 142
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 144
    :cond_b
    :goto_0
    return-void
    .line 147
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v2, p2

    .line 6
    sget-object v3, Lcom/airbnb/lottie/utils/Utils;->threadLocalPoints:Lcom/airbnb/lottie/utils/Utils$1;

    .line 8
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 10
    move-result-object v3

    .line 13
    check-cast v3, [F

    .line 14
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    aput v5, v3, v4

    .line 18
    const/4 v6, 0x1

    .line 20
    aput v5, v3, v6

    .line 21
    const/4 v7, 0x2

    .line 23
    const v8, 0x471212bb

    .line 24
    aput v8, v3, v7

    .line 27
    const v8, 0x471a973c

    .line 29
    const/4 v9, 0x3

    .line 32
    aput v8, v3, v9

    .line 33
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 35
    aget v8, v3, v4

    .line 38
    aget v7, v3, v7

    .line 40
    cmpl-float v7, v8, v7

    .line 42
    if-eqz v7, :cond_1

    .line 44
    aget v7, v3, v6

    .line 46
    aget v3, v3, v9

    .line 48
    cmpl-float v3, v7, v3

    .line 50
    if-nez v3, :cond_0

    .line 52
    goto :goto_0

    .line 54
    :cond_0
    move v3, v4

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    :goto_0
    move v3, v6

    .line 57
    :goto_1
    if-eqz v3, :cond_2

    .line 58
    invoke-static {}, Lcom/airbnb/lottie/L;->endSection()V

    .line 60
    return-void

    .line 63
    :cond_2
    move/from16 v3, p3

    .line 64
    int-to-float v3, v3

    .line 66
    const/high16 v7, 0x437f0000    # 255.0f

    .line 67
    div-float/2addr v3, v7

    .line 69
    iget-object v8, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/IntegerKeyframeAnimation;

    .line 70
    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getCurrentKeyframe()Lcom/airbnb/lottie/value/Keyframe;

    .line 72
    move-result-object v9

    .line 75
    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getInterpolatedCurrentKeyframeProgress()F

    .line 76
    move-result v10

    .line 79
    invoke-virtual {v8, v9, v10}, Lcom/airbnb/lottie/animation/keyframe/IntegerKeyframeAnimation;->getIntValue(Lcom/airbnb/lottie/value/Keyframe;F)I

    .line 80
    move-result v8

    .line 83
    int-to-float v8, v8

    .line 84
    mul-float/2addr v3, v8

    .line 85
    const/high16 v8, 0x42c80000    # 100.0f

    .line 86
    div-float/2addr v3, v8

    .line 88
    mul-float/2addr v3, v7

    .line 89
    float-to-int v3, v3

    .line 90
    sget-object v7, Lcom/airbnb/lottie/utils/MiscUtils;->pathFromDataCurrentPoint:Landroid/graphics/PointF;

    .line 91
    const/16 v7, 0xff

    .line 93
    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    .line 95
    move-result v3

    .line 98
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 99
    move-result v3

    .line 102
    iget-object v7, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Lcom/airbnb/lottie/animation/LPaint;

    .line 103
    invoke-virtual {v7, v3}, Lcom/airbnb/lottie/animation/LPaint;->setAlpha(I)V

    .line 105
    iget-object v3, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 108
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    .line 110
    move-result v3

    .line 113
    invoke-static/range {p2 .. p2}, Lcom/airbnb/lottie/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    .line 114
    move-result v9

    .line 117
    mul-float/2addr v9, v3

    .line 118
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 119
    invoke-virtual {v7}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 122
    move-result v3

    .line 125
    cmpg-float v3, v3, v5

    .line 126
    if-gtz v3, :cond_3

    .line 128
    invoke-static {}, Lcom/airbnb/lottie/L;->endSection()V

    .line 130
    return-void

    .line 133
    :cond_3
    iget-object v3, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    .line 134
    check-cast v3, Ljava/util/ArrayList;

    .line 136
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 138
    move-result v9

    .line 141
    const/high16 v10, 0x3f800000    # 1.0f

    .line 142
    if-eqz v9, :cond_4

    .line 144
    invoke-static {}, Lcom/airbnb/lottie/L;->endSection()V

    .line 146
    goto :goto_5

    .line 149
    :cond_4
    invoke-static/range {p2 .. p2}, Lcom/airbnb/lottie/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    .line 150
    move-result v9

    .line 153
    move v11, v4

    .line 154
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 155
    move-result v12

    .line 158
    iget-object v13, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternValues:[F

    .line 159
    if-ge v11, v12, :cond_7

    .line 161
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 163
    move-result-object v12

    .line 166
    check-cast v12, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 167
    invoke-virtual {v12}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 169
    move-result-object v12

    .line 172
    check-cast v12, Ljava/lang/Float;

    .line 173
    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    .line 175
    move-result v12

    .line 178
    aput v12, v13, v11

    .line 179
    rem-int/lit8 v14, v11, 0x2

    .line 181
    if-nez v14, :cond_5

    .line 183
    cmpg-float v12, v12, v10

    .line 185
    if-gez v12, :cond_6

    .line 187
    aput v10, v13, v11

    .line 189
    goto :goto_3

    .line 191
    :cond_5
    const v14, 0x3dcccccd    # 0.1f

    .line 192
    cmpg-float v12, v12, v14

    .line 195
    if-gez v12, :cond_6

    .line 197
    aput v14, v13, v11

    .line 199
    :cond_6
    :goto_3
    aget v12, v13, v11

    .line 201
    mul-float/2addr v12, v9

    .line 203
    aput v12, v13, v11

    .line 204
    add-int/lit8 v11, v11, 0x1

    .line 206
    goto :goto_2

    .line 208
    :cond_7
    iget-object v3, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 209
    if-nez v3, :cond_8

    .line 211
    move v3, v5

    .line 213
    goto :goto_4

    .line 214
    :cond_8
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 215
    move-result-object v3

    .line 218
    check-cast v3, Ljava/lang/Float;

    .line 219
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 221
    move-result v3

    .line 224
    mul-float/2addr v3, v9

    .line 225
    :goto_4
    new-instance v9, Landroid/graphics/DashPathEffect;

    .line 226
    invoke-direct {v9, v13, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 228
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 231
    invoke-static {}, Lcom/airbnb/lottie/L;->endSection()V

    .line 234
    :goto_5
    iget-object v3, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 237
    if-eqz v3, :cond_9

    .line 239
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 241
    move-result-object v3

    .line 244
    check-cast v3, Landroid/graphics/ColorFilter;

    .line 245
    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 247
    :cond_9
    iget-object v3, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->blurAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 250
    if-eqz v3, :cond_d

    .line 252
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 254
    move-result-object v3

    .line 257
    check-cast v3, Ljava/lang/Float;

    .line 258
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 260
    move-result v3

    .line 263
    cmpl-float v9, v3, v5

    .line 264
    if-nez v9, :cond_a

    .line 266
    const/4 v9, 0x0

    .line 268
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 269
    goto :goto_7

    .line 272
    :cond_a
    iget v9, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->blurMaskFilterRadius:F

    .line 273
    cmpl-float v9, v3, v9

    .line 275
    if-eqz v9, :cond_c

    .line 277
    iget-object v9, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 279
    iget v11, v9, Lcom/airbnb/lottie/model/layer/BaseLayer;->blurMaskFilterRadius:F

    .line 281
    cmpl-float v11, v11, v3

    .line 283
    if-nez v11, :cond_b

    .line 285
    iget-object v9, v9, Lcom/airbnb/lottie/model/layer/BaseLayer;->blurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 287
    goto :goto_6

    .line 289
    :cond_b
    new-instance v11, Landroid/graphics/BlurMaskFilter;

    .line 290
    const/high16 v12, 0x40000000    # 2.0f

    .line 292
    div-float v12, v3, v12

    .line 294
    sget-object v13, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    .line 296
    invoke-direct {v11, v12, v13}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 298
    iput-object v11, v9, Lcom/airbnb/lottie/model/layer/BaseLayer;->blurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 301
    iput v3, v9, Lcom/airbnb/lottie/model/layer/BaseLayer;->blurMaskFilterRadius:F

    .line 303
    move-object v9, v11

    .line 305
    :goto_6
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 306
    :cond_c
    :goto_7
    iput v3, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->blurMaskFilterRadius:F

    .line 309
    :cond_d
    iget-object v3, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dropShadowAnimation:Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;

    .line 311
    if-eqz v3, :cond_e

    .line 313
    invoke-virtual {v3, v7}, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->applyTo(Lcom/airbnb/lottie/animation/LPaint;)V

    .line 315
    :cond_e
    move v3, v4

    .line 318
    :goto_8
    iget-object v9, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    .line 319
    check-cast v9, Ljava/util/ArrayList;

    .line 321
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 323
    move-result v11

    .line 326
    if-ge v3, v11, :cond_1c

    .line 327
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 329
    move-result-object v9

    .line 332
    check-cast v9, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;

    .line 333
    iget-object v11, v9, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->trimPath:Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 335
    iget-object v12, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    .line 337
    iget-object v13, v9, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->paths:Ljava/util/List;

    .line 339
    if-eqz v11, :cond_1a

    .line 341
    invoke-virtual {v12}, Landroid/graphics/Path;->reset()V

    .line 343
    check-cast v13, Ljava/util/ArrayList;

    .line 346
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 348
    move-result v11

    .line 351
    :goto_9
    add-int/lit8 v11, v11, -0x1

    .line 352
    if-ltz v11, :cond_f

    .line 354
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 356
    move-result-object v14

    .line 359
    check-cast v14, Lcom/airbnb/lottie/animation/content/PathContent;

    .line 360
    invoke-interface {v14}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    .line 362
    move-result-object v14

    .line 365
    invoke-virtual {v12, v14, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 366
    goto :goto_9

    .line 369
    :cond_f
    iget-object v9, v9, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->trimPath:Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 370
    iget-object v11, v9, Lcom/airbnb/lottie/animation/content/TrimPathContent;->startAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 372
    invoke-virtual {v11}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 374
    move-result-object v11

    .line 377
    check-cast v11, Ljava/lang/Float;

    .line 378
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    .line 380
    move-result v11

    .line 383
    div-float/2addr v11, v8

    .line 384
    iget-object v14, v9, Lcom/airbnb/lottie/animation/content/TrimPathContent;->endAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 385
    invoke-virtual {v14}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 387
    move-result-object v14

    .line 390
    check-cast v14, Ljava/lang/Float;

    .line 391
    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    .line 393
    move-result v14

    .line 396
    div-float/2addr v14, v8

    .line 397
    iget-object v9, v9, Lcom/airbnb/lottie/animation/content/TrimPathContent;->offsetAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 398
    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 400
    move-result-object v9

    .line 403
    check-cast v9, Ljava/lang/Float;

    .line 404
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    .line 406
    move-result v9

    .line 409
    const/high16 v15, 0x43b40000    # 360.0f

    .line 410
    div-float/2addr v9, v15

    .line 412
    const v15, 0x3c23d70a    # 0.01f

    .line 413
    cmpg-float v15, v11, v15

    .line 416
    if-gez v15, :cond_10

    .line 418
    const v15, 0x3f7d70a4    # 0.99f

    .line 420
    cmpl-float v15, v14, v15

    .line 423
    if-lez v15, :cond_10

    .line 425
    invoke-virtual {v1, v12, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 427
    invoke-static {}, Lcom/airbnb/lottie/L;->endSection()V

    .line 430
    goto/16 :goto_10

    .line 433
    :cond_10
    iget-object v15, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    .line 435
    invoke-virtual {v15, v12, v4}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 437
    invoke-virtual {v15}, Landroid/graphics/PathMeasure;->getLength()F

    .line 440
    move-result v12

    .line 443
    :goto_a
    invoke-virtual {v15}, Landroid/graphics/PathMeasure;->nextContour()Z

    .line 444
    move-result v16

    .line 447
    if-eqz v16, :cond_11

    .line 448
    invoke-virtual {v15}, Landroid/graphics/PathMeasure;->getLength()F

    .line 450
    move-result v16

    .line 453
    add-float v12, v16, v12

    .line 454
    goto :goto_a

    .line 456
    :cond_11
    mul-float/2addr v9, v12

    .line 457
    mul-float/2addr v11, v12

    .line 458
    add-float/2addr v11, v9

    .line 459
    mul-float/2addr v14, v12

    .line 460
    add-float/2addr v14, v9

    .line 461
    add-float v9, v11, v12

    .line 462
    sub-float/2addr v9, v10

    .line 464
    invoke-static {v14, v9}, Ljava/lang/Math;->min(FF)F

    .line 465
    move-result v9

    .line 468
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 469
    move-result v14

    .line 472
    add-int/lit8 v14, v14, -0x1

    .line 473
    move/from16 v16, v5

    .line 475
    :goto_b
    if-ltz v14, :cond_19

    .line 477
    iget-object v8, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    .line 479
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 481
    move-result-object v17

    .line 484
    check-cast v17, Lcom/airbnb/lottie/animation/content/PathContent;

    .line 485
    invoke-interface/range {v17 .. v17}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    .line 487
    move-result-object v6

    .line 490
    invoke-virtual {v8, v6}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 491
    invoke-virtual {v8, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 494
    invoke-virtual {v15, v8, v4}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 497
    invoke-virtual {v15}, Landroid/graphics/PathMeasure;->getLength()F

    .line 500
    move-result v6

    .line 503
    cmpl-float v17, v9, v12

    .line 504
    if-lez v17, :cond_13

    .line 506
    sub-float v17, v9, v12

    .line 508
    add-float v18, v16, v6

    .line 510
    cmpg-float v18, v17, v18

    .line 512
    if-gez v18, :cond_13

    .line 514
    cmpg-float v18, v16, v17

    .line 516
    if-gez v18, :cond_13

    .line 518
    cmpl-float v18, v11, v12

    .line 520
    if-lez v18, :cond_12

    .line 522
    sub-float v18, v11, v12

    .line 524
    div-float v18, v18, v6

    .line 526
    move/from16 v4, v18

    .line 528
    goto :goto_c

    .line 530
    :cond_12
    move v4, v5

    .line 531
    :goto_c
    div-float v0, v17, v6

    .line 532
    invoke-static {v0, v10}, Ljava/lang/Math;->min(FF)F

    .line 534
    move-result v0

    .line 537
    invoke-static {v8, v4, v0, v5}, Lcom/airbnb/lottie/utils/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V

    .line 538
    invoke-virtual {v1, v8, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 541
    goto :goto_f

    .line 544
    :cond_13
    add-float v0, v16, v6

    .line 545
    cmpg-float v4, v0, v11

    .line 547
    if-ltz v4, :cond_18

    .line 549
    cmpl-float v4, v16, v9

    .line 551
    if-lez v4, :cond_14

    .line 553
    goto :goto_f

    .line 555
    :cond_14
    cmpg-float v4, v0, v9

    .line 556
    if-gtz v4, :cond_15

    .line 558
    cmpg-float v4, v11, v16

    .line 560
    if-gez v4, :cond_15

    .line 562
    invoke-virtual {v1, v8, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 564
    goto :goto_f

    .line 567
    :cond_15
    cmpg-float v4, v11, v16

    .line 568
    if-gez v4, :cond_16

    .line 570
    move v4, v5

    .line 572
    goto :goto_d

    .line 573
    :cond_16
    sub-float v4, v11, v16

    .line 574
    div-float/2addr v4, v6

    .line 576
    :goto_d
    cmpl-float v0, v9, v0

    .line 577
    if-lez v0, :cond_17

    .line 579
    move v0, v10

    .line 581
    goto :goto_e

    .line 582
    :cond_17
    sub-float v0, v9, v16

    .line 583
    div-float/2addr v0, v6

    .line 585
    :goto_e
    invoke-static {v8, v4, v0, v5}, Lcom/airbnb/lottie/utils/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V

    .line 586
    invoke-virtual {v1, v8, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 589
    :cond_18
    :goto_f
    add-float v16, v16, v6

    .line 592
    add-int/lit8 v14, v14, -0x1

    .line 594
    move-object/from16 v0, p0

    .line 596
    const/4 v4, 0x0

    .line 598
    const/4 v6, 0x1

    .line 599
    const/high16 v8, 0x42c80000    # 100.0f

    .line 600
    goto :goto_b

    .line 602
    :cond_19
    invoke-static {}, Lcom/airbnb/lottie/L;->endSection()V

    .line 603
    :goto_10
    const/4 v4, 0x1

    .line 606
    goto :goto_12

    .line 607
    :cond_1a
    invoke-virtual {v12}, Landroid/graphics/Path;->reset()V

    .line 608
    check-cast v13, Ljava/util/ArrayList;

    .line 611
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 613
    move-result v0

    .line 616
    const/4 v4, 0x1

    .line 617
    sub-int/2addr v0, v4

    .line 618
    :goto_11
    if-ltz v0, :cond_1b

    .line 619
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 621
    move-result-object v6

    .line 624
    check-cast v6, Lcom/airbnb/lottie/animation/content/PathContent;

    .line 625
    invoke-interface {v6}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    .line 627
    move-result-object v6

    .line 630
    invoke-virtual {v12, v6, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 631
    add-int/lit8 v0, v0, -0x1

    .line 634
    goto :goto_11

    .line 636
    :cond_1b
    invoke-static {}, Lcom/airbnb/lottie/L;->endSection()V

    .line 637
    invoke-virtual {v1, v12, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 640
    invoke-static {}, Lcom/airbnb/lottie/L;->endSection()V

    .line 643
    :goto_12
    add-int/lit8 v3, v3, 0x1

    .line 646
    move-object/from16 v0, p0

    .line 648
    move v6, v4

    .line 650
    const/4 v4, 0x0

    .line 651
    const/high16 v8, 0x42c80000    # 100.0f

    .line 652
    goto/16 :goto_8

    .line 654
    :cond_1c
    invoke-static {}, Lcom/airbnb/lottie/L;->endSection()V

    .line 656
    return-void
    .line 659
.end method

.method public final getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 5

    .line 1
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    .line 2
    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 4
    const/4 v0, 0x0

    .line 7
    move v1, v0

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    .line 9
    check-cast v2, Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v3

    .line 16
    if-ge v1, v3, :cond_1

    .line 17
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 22
    check-cast v2, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;

    .line 23
    move v3, v0

    .line 25
    :goto_1
    iget-object v4, v2, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->paths:Ljava/util/List;

    .line 26
    check-cast v4, Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 30
    move-result v4

    .line 33
    if-ge v3, v4, :cond_0

    .line 34
    iget-object v4, v2, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->paths:Ljava/util/List;

    .line 36
    check-cast v4, Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object v4

    .line 43
    check-cast v4, Lcom/airbnb/lottie/animation/content/PathContent;

    .line 44
    invoke-interface {v4}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    .line 46
    move-result-object v4

    .line 49
    invoke-virtual {p3, v4, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 50
    add-int/lit8 v3, v3, 0x1

    .line 53
    goto :goto_1

    .line 55
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 56
    goto :goto_0

    .line 58
    :cond_1
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    .line 59
    invoke-virtual {p3, p2, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 61
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 64
    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    .line 66
    move-result p0

    .line 69
    iget p3, p2, Landroid/graphics/RectF;->left:F

    .line 70
    const/high16 v0, 0x40000000    # 2.0f

    .line 72
    div-float/2addr p0, v0

    .line 74
    sub-float/2addr p3, p0

    .line 75
    iget v0, p2, Landroid/graphics/RectF;->top:F

    .line 76
    sub-float/2addr v0, p0

    .line 78
    iget v1, p2, Landroid/graphics/RectF;->right:F

    .line 79
    add-float/2addr v1, p0

    .line 81
    iget v2, p2, Landroid/graphics/RectF;->bottom:F

    .line 82
    add-float/2addr v2, p0

    .line 84
    invoke-virtual {p2, p3, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 85
    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 88
    iget p0, p1, Landroid/graphics/RectF;->left:F

    .line 91
    const/high16 p2, 0x3f800000    # 1.0f

    .line 93
    sub-float/2addr p0, p2

    .line 95
    iget p3, p1, Landroid/graphics/RectF;->top:F

    .line 96
    sub-float/2addr p3, p2

    .line 98
    iget v0, p1, Landroid/graphics/RectF;->right:F

    .line 99
    add-float/2addr v0, p2

    .line 101
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 102
    add-float/2addr v1, p2

    .line 104
    invoke-virtual {p1, p0, p3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 105
    invoke-static {}, Lcom/airbnb/lottie/L;->endSection()V

    .line 108
    return-void
    .line 111
.end method

.method public final onValueChanged()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 4
    return-void
    .line 7
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
    .locals 7

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    const/4 v1, 0x0

    .line 10
    move-object v2, v1

    .line 11
    :goto_0
    sget-object v3, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->INDIVIDUALLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 12
    if-ltz v0, :cond_1

    .line 14
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v4

    .line 19
    check-cast v4, Lcom/airbnb/lottie/animation/content/Content;

    .line 20
    instance-of v5, v4, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 22
    if-eqz v5, :cond_0

    .line 24
    check-cast v4, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 26
    iget-object v5, v4, Lcom/airbnb/lottie/animation/content/TrimPathContent;->type:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 28
    if-ne v5, v3, :cond_0

    .line 30
    move-object v2, v4

    .line 32
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 33
    goto :goto_0

    .line 35
    :cond_1
    if-eqz v2, :cond_2

    .line 36
    invoke-virtual {v2, p0}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 38
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 41
    move-result p1

    .line 44
    :goto_1
    add-int/lit8 p1, p1, -0x1

    .line 45
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    .line 47
    if-ltz p1, :cond_7

    .line 49
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    move-result-object v4

    .line 54
    check-cast v4, Lcom/airbnb/lottie/animation/content/Content;

    .line 55
    instance-of v5, v4, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 57
    if-eqz v5, :cond_4

    .line 59
    move-object v5, v4

    .line 61
    check-cast v5, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 62
    iget-object v6, v5, Lcom/airbnb/lottie/animation/content/TrimPathContent;->type:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 64
    if-ne v6, v3, :cond_4

    .line 66
    if-eqz v1, :cond_3

    .line 68
    check-cast v0, Ljava/util/ArrayList;

    .line 70
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_3
    new-instance v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;

    .line 75
    invoke-direct {v0, v5}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;-><init>(Lcom/airbnb/lottie/animation/content/TrimPathContent;)V

    .line 77
    invoke-virtual {v5, p0}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 80
    move-object v1, v0

    .line 83
    goto :goto_2

    .line 84
    :cond_4
    instance-of v0, v4, Lcom/airbnb/lottie/animation/content/PathContent;

    .line 85
    if-eqz v0, :cond_6

    .line 87
    if-nez v1, :cond_5

    .line 89
    new-instance v1, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;

    .line 91
    invoke-direct {v1, v2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;-><init>(Lcom/airbnb/lottie/animation/content/TrimPathContent;)V

    .line 93
    :cond_5
    iget-object v0, v1, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->paths:Ljava/util/List;

    .line 96
    check-cast v4, Lcom/airbnb/lottie/animation/content/PathContent;

    .line 98
    check-cast v0, Ljava/util/ArrayList;

    .line 100
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_6
    :goto_2
    goto :goto_1

    .line 105
    :cond_7
    if-eqz v1, :cond_8

    .line 106
    check-cast v0, Ljava/util/ArrayList;

    .line 108
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_8
    return-void
    .line 113
.end method
