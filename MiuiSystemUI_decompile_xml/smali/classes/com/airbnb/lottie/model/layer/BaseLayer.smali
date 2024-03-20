.class public abstract Lcom/airbnb/lottie/model/layer/BaseLayer;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/DrawingContent;
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/airbnb/lottie/model/KeyPathElement;


# instance fields
.field public final animations:Ljava/util/List;

.field public blurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field public blurMaskFilterRadius:F

.field public final boundsMatrix:Landroid/graphics/Matrix;

.field public final canvasBounds:Landroid/graphics/RectF;

.field public final canvasMatrix:Landroid/graphics/Matrix;

.field public final clearPaint:Lcom/airbnb/lottie/animation/LPaint;

.field public final contentPaint:Lcom/airbnb/lottie/animation/LPaint;

.field public final drawTraceName:Ljava/lang/String;

.field public final dstInPaint:Lcom/airbnb/lottie/animation/LPaint;

.field public final dstOutPaint:Lcom/airbnb/lottie/animation/LPaint;

.field public inOutAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

.field public final layerModel:Lcom/airbnb/lottie/model/layer/Layer;

.field public final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field public final mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

.field public final maskBoundsRect:Landroid/graphics/RectF;

.field public final matrix:Landroid/graphics/Matrix;

.field public final matteBoundsRect:Landroid/graphics/RectF;

.field public matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

.field public final mattePaint:Lcom/airbnb/lottie/animation/LPaint;

.field public outlineMasksAndMattes:Z

.field public outlineMasksAndMattesPaint:Lcom/airbnb/lottie/animation/LPaint;

.field public parentLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

.field public parentLayers:Ljava/util/List;

.field public final path:Landroid/graphics/Path;

.field public final rect:Landroid/graphics/RectF;

.field public final tempMaskBoundsRect:Landroid/graphics/RectF;

.field public final transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

.field public visible:Z


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Path;

    .line 5
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 10
    new-instance v0, Landroid/graphics/Matrix;

    .line 12
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    .line 17
    new-instance v0, Landroid/graphics/Matrix;

    .line 19
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->canvasMatrix:Landroid/graphics/Matrix;

    .line 24
    new-instance v0, Lcom/airbnb/lottie/animation/LPaint;

    .line 26
    const/4 v1, 0x1

    .line 28
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/animation/LPaint;-><init>(I)V

    .line 29
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 32
    new-instance v0, Lcom/airbnb/lottie/animation/LPaint;

    .line 34
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    .line 36
    const/4 v3, 0x0

    .line 38
    invoke-direct {v0, v2, v3}, Lcom/airbnb/lottie/animation/LPaint;-><init>(Landroid/graphics/PorterDuff$Mode;I)V

    .line 39
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstInPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 42
    new-instance v0, Lcom/airbnb/lottie/animation/LPaint;

    .line 44
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 46
    invoke-direct {v0, v2, v3}, Lcom/airbnb/lottie/animation/LPaint;-><init>(Landroid/graphics/PorterDuff$Mode;I)V

    .line 48
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstOutPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 51
    new-instance v0, Lcom/airbnb/lottie/animation/LPaint;

    .line 53
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/animation/LPaint;-><init>(I)V

    .line 55
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mattePaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 58
    new-instance v2, Lcom/airbnb/lottie/animation/LPaint;

    .line 60
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 62
    invoke-direct {v2, v4}, Lcom/airbnb/lottie/animation/LPaint;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 64
    iput-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->clearPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 67
    new-instance v2, Landroid/graphics/RectF;

    .line 69
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 71
    iput-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 74
    new-instance v2, Landroid/graphics/RectF;

    .line 76
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 78
    iput-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->canvasBounds:Landroid/graphics/RectF;

    .line 81
    new-instance v2, Landroid/graphics/RectF;

    .line 83
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 85
    iput-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    .line 88
    new-instance v2, Landroid/graphics/RectF;

    .line 90
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 92
    iput-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    .line 95
    new-instance v2, Landroid/graphics/RectF;

    .line 97
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 99
    iput-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    .line 102
    new-instance v2, Landroid/graphics/Matrix;

    .line 104
    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 106
    iput-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    .line 109
    new-instance v2, Ljava/util/ArrayList;

    .line 111
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 113
    iput-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->animations:Ljava/util/List;

    .line 116
    iput-boolean v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->visible:Z

    .line 118
    const/4 v2, 0x0

    .line 120
    iput v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->blurMaskFilterRadius:F

    .line 121
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 123
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 125
    new-instance p1, Ljava/lang/StringBuilder;

    .line 127
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    iget-object v2, p2, Lcom/airbnb/lottie/model/layer/Layer;->layerName:Ljava/lang/String;

    .line 132
    const-string v4, "#draw"

    .line 134
    invoke-static {p1, v2, v4}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    move-result-object p1

    .line 139
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->drawTraceName:Ljava/lang/String;

    .line 140
    sget-object p1, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->INVERT:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 142
    iget-object v2, p2, Lcom/airbnb/lottie/model/layer/Layer;->matteType:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 144
    if-ne v2, p1, :cond_0

    .line 146
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    .line 148
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 150
    invoke-direct {p1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 152
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 155
    goto :goto_0

    .line 158
    :cond_0
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    .line 159
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    .line 161
    invoke-direct {p1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 163
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 166
    :goto_0
    iget-object p1, p2, Lcom/airbnb/lottie/model/layer/Layer;->transform:Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    .line 169
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 174
    invoke-direct {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatableTransform;)V

    .line 176
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 179
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 181
    iget-object p1, p2, Lcom/airbnb/lottie/model/layer/Layer;->masks:Ljava/util/List;

    .line 184
    if-eqz p1, :cond_2

    .line 186
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 188
    move-result p2

    .line 191
    if-nez p2, :cond_2

    .line 192
    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    .line 194
    invoke-direct {p2, p1}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 196
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    .line 199
    iget-object p1, p2, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->maskAnimations:Ljava/util/List;

    .line 201
    check-cast p1, Ljava/util/ArrayList;

    .line 203
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 205
    move-result-object p1

    .line 208
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 209
    move-result p2

    .line 212
    if-eqz p2, :cond_1

    .line 213
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 215
    move-result-object p2

    .line 218
    check-cast p2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 219
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 221
    goto :goto_1

    .line 224
    :cond_1
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    .line 225
    iget-object p1, p1, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->opacityAnimations:Ljava/util/List;

    .line 227
    check-cast p1, Ljava/util/ArrayList;

    .line 229
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 231
    move-result-object p1

    .line 234
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 235
    move-result p2

    .line 238
    if-eqz p2, :cond_2

    .line 239
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 241
    move-result-object p2

    .line 244
    check-cast p2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 245
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 247
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 250
    goto :goto_2

    .line 253
    :cond_2
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 254
    iget-object p2, p1, Lcom/airbnb/lottie/model/layer/Layer;->inOutKeyframes:Ljava/util/List;

    .line 256
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 258
    move-result p2

    .line 261
    if-nez p2, :cond_5

    .line 262
    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 264
    iget-object p1, p1, Lcom/airbnb/lottie/model/layer/Layer;->inOutKeyframes:Ljava/util/List;

    .line 266
    invoke-direct {p2, p1}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 268
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->inOutAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 271
    iput-boolean v1, p2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->isDiscrete:Z

    .line 273
    new-instance p1, Lcom/airbnb/lottie/model/layer/BaseLayer$$ExternalSyntheticLambda0;

    .line 275
    invoke-direct {p1, p0}, Lcom/airbnb/lottie/model/layer/BaseLayer$$ExternalSyntheticLambda0;-><init>(Lcom/airbnb/lottie/model/layer/BaseLayer;)V

    .line 277
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 280
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->inOutAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 283
    invoke-virtual {p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 285
    move-result-object p1

    .line 288
    check-cast p1, Ljava/lang/Float;

    .line 289
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 291
    move-result p1

    .line 294
    const/high16 p2, 0x3f800000    # 1.0f

    .line 295
    cmpl-float p1, p1, p2

    .line 297
    if-nez p1, :cond_3

    .line 299
    goto :goto_3

    .line 301
    :cond_3
    move v1, v3

    .line 302
    :goto_3
    iget-boolean p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->visible:Z

    .line 303
    if-eq v1, p1, :cond_4

    .line 305
    iput-boolean v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->visible:Z

    .line 307
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 309
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 311
    :cond_4
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->inOutAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 314
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 316
    goto :goto_4

    .line 319
    :cond_5
    iget-boolean p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->visible:Z

    .line 320
    if-eq v1, p1, :cond_6

    .line 322
    iput-boolean v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->visible:Z

    .line 324
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 326
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 328
    :cond_6
    :goto_4
    return-void
    .line 331
.end method


# virtual methods
.method public final addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->animations:Ljava/util/List;

    .line 5
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    return-void
    .line 10
.end method

.method public addValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->applyValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)Z

    .line 4
    return-void
    .line 7
.end method

.method public final buildParentLayerListIfNeeded()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 7
    if-nez v0, :cond_1

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 11
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    .line 15
    return-void

    .line 17
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    .line 23
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 25
    :goto_0
    if-eqz v0, :cond_2

    .line 27
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    .line 29
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 34
    goto :goto_0

    .line 36
    :cond_2
    return-void
    .line 37
.end method

.method public final clearCanvas(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 2
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 4
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    sub-float v4, v1, v2

    .line 8
    iget v1, v0, Landroid/graphics/RectF;->top:F

    .line 10
    sub-float v5, v1, v2

    .line 12
    iget v1, v0, Landroid/graphics/RectF;->right:F

    .line 14
    add-float v6, v1, v2

    .line 16
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 18
    add-float v7, v0, v2

    .line 20
    iget-object v8, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->clearPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 22
    move-object v3, p1

    .line 24
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 25
    invoke-static {}, Lcom/airbnb/lottie/L;->endSection()V

    .line 28
    return-void
    .line 31
.end method

.method public final draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v2, p2

    .line 6
    iget-boolean v3, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->visible:Z

    .line 8
    if-eqz v3, :cond_24

    .line 10
    iget-object v3, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 12
    iget-boolean v4, v3, Lcom/airbnb/lottie/model/layer/Layer;->hidden:Z

    .line 14
    if-eqz v4, :cond_0

    .line 16
    goto/16 :goto_13

    .line 18
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->buildParentLayerListIfNeeded()V

    .line 20
    iget-object v4, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    .line 23
    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 25
    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 28
    iget-object v5, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    .line 31
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 33
    move-result v5

    .line 36
    const/4 v6, 0x1

    .line 37
    sub-int/2addr v5, v6

    .line 38
    :goto_0
    if-ltz v5, :cond_1

    .line 39
    iget-object v7, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    .line 41
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object v7

    .line 46
    check-cast v7, Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 47
    iget-object v7, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 49
    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    .line 51
    move-result-object v7

    .line 54
    invoke-virtual {v4, v7}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 55
    add-int/lit8 v5, v5, -0x1

    .line 58
    goto :goto_0

    .line 60
    :cond_1
    invoke-static {}, Lcom/airbnb/lottie/L;->endSection()V

    .line 61
    iget-object v5, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 64
    iget-object v7, v5, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->opacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 66
    if-nez v7, :cond_2

    .line 68
    const/16 v7, 0x64

    .line 70
    goto :goto_1

    .line 72
    :cond_2
    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 73
    move-result-object v7

    .line 76
    check-cast v7, Ljava/lang/Integer;

    .line 77
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 79
    move-result v7

    .line 82
    :goto_1
    move/from16 v8, p3

    .line 83
    int-to-float v8, v8

    .line 85
    const/high16 v9, 0x437f0000    # 255.0f

    .line 86
    div-float/2addr v8, v9

    .line 88
    int-to-float v7, v7

    .line 89
    mul-float/2addr v8, v7

    .line 90
    const/high16 v7, 0x42c80000    # 100.0f

    .line 91
    div-float/2addr v8, v7

    .line 93
    mul-float/2addr v8, v9

    .line 94
    float-to-int v7, v8

    .line 95
    iget-object v8, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 96
    const/4 v9, 0x0

    .line 98
    if-eqz v8, :cond_3

    .line 99
    move v8, v6

    .line 101
    goto :goto_2

    .line 102
    :cond_3
    move v8, v9

    .line 103
    :goto_2
    if-nez v8, :cond_4

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->hasMasksOnThisLayer()Z

    .line 106
    move-result v8

    .line 109
    if-nez v8, :cond_4

    .line 110
    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    .line 112
    move-result-object v2

    .line 115
    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 116
    invoke-virtual {v0, v1, v4, v7}, Lcom/airbnb/lottie/model/layer/BaseLayer;->drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 119
    invoke-static {}, Lcom/airbnb/lottie/L;->endSection()V

    .line 122
    invoke-static {}, Lcom/airbnb/lottie/L;->endSection()V

    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->recordRenderTime()V

    .line 128
    return-void

    .line 131
    :cond_4
    iget-object v8, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 132
    invoke-virtual {v0, v8, v4, v9}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 134
    iget-object v10, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 137
    if-eqz v10, :cond_5

    .line 139
    move v10, v6

    .line 141
    goto :goto_3

    .line 142
    :cond_5
    move v10, v9

    .line 143
    :goto_3
    const/4 v11, 0x0

    .line 144
    if-nez v10, :cond_6

    .line 145
    goto :goto_4

    .line 147
    :cond_6
    sget-object v10, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->INVERT:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 148
    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/Layer;->matteType:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 150
    if-ne v3, v10, :cond_7

    .line 152
    goto :goto_4

    .line 154
    :cond_7
    iget-object v3, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    .line 155
    invoke-virtual {v3, v11, v11, v11, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 157
    iget-object v10, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 160
    invoke-virtual {v10, v3, v2, v6}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 162
    invoke-virtual {v8, v3}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 165
    move-result v3

    .line 168
    if-nez v3, :cond_8

    .line 169
    invoke-virtual {v8, v11, v11, v11, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 171
    :cond_8
    :goto_4
    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    .line 174
    move-result-object v3

    .line 177
    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 178
    iget-object v3, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    .line 181
    invoke-virtual {v3, v11, v11, v11, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->hasMasksOnThisLayer()Z

    .line 186
    move-result v5

    .line 189
    iget-object v10, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 190
    const/4 v12, 0x3

    .line 192
    const/4 v13, 0x2

    .line 193
    iget-object v14, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    .line 194
    if-nez v5, :cond_9

    .line 196
    goto :goto_6

    .line 198
    :cond_9
    iget-object v5, v14, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->masks:Ljava/util/List;

    .line 199
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 201
    move-result v5

    .line 204
    move v15, v9

    .line 205
    :goto_5
    if-ge v15, v5, :cond_f

    .line 206
    iget-object v11, v14, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->masks:Ljava/util/List;

    .line 208
    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 210
    move-result-object v11

    .line 213
    check-cast v11, Lcom/airbnb/lottie/model/content/Mask;

    .line 214
    iget-object v9, v14, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->maskAnimations:Ljava/util/List;

    .line 216
    check-cast v9, Ljava/util/ArrayList;

    .line 218
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 220
    move-result-object v9

    .line 223
    check-cast v9, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 224
    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 226
    move-result-object v9

    .line 229
    check-cast v9, Landroid/graphics/Path;

    .line 230
    if-nez v9, :cond_a

    .line 232
    const/4 v11, 0x0

    .line 234
    goto :goto_8

    .line 235
    :cond_a
    invoke-virtual {v10, v9}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 236
    invoke-virtual {v10, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 239
    iget-object v9, v11, Lcom/airbnb/lottie/model/content/Mask;->maskMode:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 242
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 244
    move-result v9

    .line 247
    if-eqz v9, :cond_b

    .line 248
    if-eq v9, v6, :cond_c

    .line 250
    if-eq v9, v13, :cond_b

    .line 252
    if-eq v9, v12, :cond_c

    .line 254
    goto :goto_7

    .line 256
    :cond_b
    iget-boolean v9, v11, Lcom/airbnb/lottie/model/content/Mask;->inverted:Z

    .line 257
    if-eqz v9, :cond_d

    .line 259
    :cond_c
    :goto_6
    const/4 v3, 0x0

    .line 261
    goto :goto_9

    .line 262
    :cond_d
    :goto_7
    iget-object v9, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    .line 263
    const/4 v11, 0x0

    .line 265
    invoke-virtual {v10, v9, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 266
    if-nez v15, :cond_e

    .line 269
    invoke-virtual {v3, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 271
    goto :goto_8

    .line 274
    :cond_e
    iget v11, v3, Landroid/graphics/RectF;->left:F

    .line 275
    iget v12, v9, Landroid/graphics/RectF;->left:F

    .line 277
    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    .line 279
    move-result v11

    .line 282
    iget v12, v3, Landroid/graphics/RectF;->top:F

    .line 283
    iget v13, v9, Landroid/graphics/RectF;->top:F

    .line 285
    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    .line 287
    move-result v12

    .line 290
    iget v13, v3, Landroid/graphics/RectF;->right:F

    .line 291
    iget v6, v9, Landroid/graphics/RectF;->right:F

    .line 293
    invoke-static {v13, v6}, Ljava/lang/Math;->max(FF)F

    .line 295
    move-result v6

    .line 298
    iget v13, v3, Landroid/graphics/RectF;->bottom:F

    .line 299
    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    .line 301
    invoke-static {v13, v9}, Ljava/lang/Math;->max(FF)F

    .line 303
    move-result v9

    .line 306
    invoke-virtual {v3, v11, v12, v6, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 307
    :goto_8
    add-int/lit8 v15, v15, 0x1

    .line 310
    const/4 v6, 0x1

    .line 312
    const/4 v9, 0x0

    .line 313
    const/4 v11, 0x0

    .line 314
    const/4 v12, 0x3

    .line 315
    const/4 v13, 0x2

    .line 316
    goto :goto_5

    .line 317
    :cond_f
    invoke-virtual {v8, v3}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 318
    move-result v3

    .line 321
    if-nez v3, :cond_c

    .line 322
    const/4 v3, 0x0

    .line 324
    invoke-virtual {v8, v3, v3, v3, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 325
    :goto_9
    iget-object v5, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->canvasBounds:Landroid/graphics/RectF;

    .line 328
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    .line 330
    move-result v6

    .line 333
    int-to-float v6, v6

    .line 334
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    .line 335
    move-result v9

    .line 338
    int-to-float v9, v9

    .line 339
    invoke-virtual {v5, v3, v3, v6, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 340
    iget-object v6, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->canvasMatrix:Landroid/graphics/Matrix;

    .line 343
    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 345
    invoke-virtual {v6}, Landroid/graphics/Matrix;->isIdentity()Z

    .line 348
    move-result v9

    .line 351
    if-nez v9, :cond_10

    .line 352
    invoke-virtual {v6, v6}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 354
    invoke-virtual {v6, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 357
    :cond_10
    invoke-virtual {v8, v5}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 360
    move-result v5

    .line 363
    if-nez v5, :cond_11

    .line 364
    invoke-virtual {v8, v3, v3, v3, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 366
    :cond_11
    invoke-static {}, Lcom/airbnb/lottie/L;->endSection()V

    .line 369
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    .line 372
    move-result v3

    .line 375
    const/high16 v5, 0x3f800000    # 1.0f

    .line 376
    cmpl-float v3, v3, v5

    .line 378
    if-ltz v3, :cond_22

    .line 380
    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    .line 382
    move-result v3

    .line 385
    cmpl-float v3, v3, v5

    .line 386
    if-ltz v3, :cond_22

    .line 388
    iget-object v3, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 390
    const/16 v5, 0xff

    .line 392
    invoke-virtual {v3, v5}, Lcom/airbnb/lottie/animation/LPaint;->setAlpha(I)V

    .line 394
    sget-object v6, Lcom/airbnb/lottie/utils/Utils;->threadLocalPathMeasure:Lcom/airbnb/lottie/utils/Utils$1;

    .line 397
    invoke-virtual {v1, v8, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 399
    invoke-static {}, Lcom/airbnb/lottie/L;->endSection()V

    .line 402
    invoke-static {}, Lcom/airbnb/lottie/L;->endSection()V

    .line 405
    invoke-virtual/range {p0 .. p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->clearCanvas(Landroid/graphics/Canvas;)V

    .line 408
    invoke-virtual {v0, v1, v4, v7}, Lcom/airbnb/lottie/model/layer/BaseLayer;->drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 411
    invoke-static {}, Lcom/airbnb/lottie/L;->endSection()V

    .line 414
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->hasMasksOnThisLayer()Z

    .line 417
    move-result v6

    .line 420
    if-eqz v6, :cond_1f

    .line 421
    iget-object v6, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstInPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 423
    invoke-virtual {v1, v8, v6}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 425
    invoke-static {}, Lcom/airbnb/lottie/L;->endSection()V

    .line 428
    invoke-static {}, Lcom/airbnb/lottie/L;->endSection()V

    .line 431
    const/4 v9, 0x0

    .line 434
    :goto_a
    iget-object v11, v14, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->masks:Ljava/util/List;

    .line 435
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 437
    move-result v11

    .line 440
    if-ge v9, v11, :cond_1e

    .line 441
    iget-object v11, v14, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->masks:Ljava/util/List;

    .line 443
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 445
    move-result-object v12

    .line 448
    check-cast v12, Lcom/airbnb/lottie/model/content/Mask;

    .line 449
    iget-object v13, v14, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->maskAnimations:Ljava/util/List;

    .line 451
    move-object v15, v13

    .line 453
    check-cast v15, Ljava/util/ArrayList;

    .line 454
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 456
    move-result-object v15

    .line 459
    check-cast v15, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 460
    iget-object v5, v14, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->opacityAnimations:Ljava/util/List;

    .line 462
    check-cast v5, Ljava/util/ArrayList;

    .line 464
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 466
    move-result-object v5

    .line 469
    check-cast v5, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 470
    move-object/from16 v16, v14

    .line 472
    iget-object v14, v12, Lcom/airbnb/lottie/model/content/Mask;->maskMode:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 474
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    .line 476
    move-result v14

    .line 479
    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstOutPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 480
    const v17, 0x40233333    # 2.55f

    .line 482
    iget-boolean v12, v12, Lcom/airbnb/lottie/model/content/Mask;->inverted:Z

    .line 485
    if-eqz v14, :cond_1c

    .line 487
    move/from16 v18, v7

    .line 489
    const/4 v7, 0x1

    .line 491
    if-eq v14, v7, :cond_19

    .line 492
    const/4 v7, 0x2

    .line 494
    if-eq v14, v7, :cond_16

    .line 495
    const/4 v7, 0x3

    .line 497
    if-eq v14, v7, :cond_12

    .line 498
    goto/16 :goto_e

    .line 500
    :cond_12
    check-cast v13, Ljava/util/ArrayList;

    .line 502
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    .line 504
    move-result v2

    .line 507
    if-eqz v2, :cond_13

    .line 508
    goto :goto_c

    .line 510
    :cond_13
    const/4 v2, 0x0

    .line 511
    :goto_b
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 512
    move-result v5

    .line 515
    if-ge v2, v5, :cond_15

    .line 516
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 518
    move-result-object v5

    .line 521
    check-cast v5, Lcom/airbnb/lottie/model/content/Mask;

    .line 522
    iget-object v5, v5, Lcom/airbnb/lottie/model/content/Mask;->maskMode:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 524
    sget-object v12, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_NONE:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 526
    if-eq v5, v12, :cond_14

    .line 528
    :goto_c
    const/4 v2, 0x0

    .line 530
    goto :goto_d

    .line 531
    :cond_14
    add-int/lit8 v2, v2, 0x1

    .line 532
    goto :goto_b

    .line 534
    :cond_15
    const/4 v2, 0x1

    .line 535
    :goto_d
    if-eqz v2, :cond_18

    .line 536
    const/16 v2, 0xff

    .line 538
    invoke-virtual {v3, v2}, Lcom/airbnb/lottie/animation/LPaint;->setAlpha(I)V

    .line 540
    invoke-virtual {v1, v8, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 543
    goto :goto_e

    .line 546
    :cond_16
    const/4 v7, 0x3

    .line 547
    if-eqz v12, :cond_17

    .line 548
    sget-object v11, Lcom/airbnb/lottie/utils/Utils;->threadLocalPathMeasure:Lcom/airbnb/lottie/utils/Utils$1;

    .line 550
    invoke-virtual {v1, v8, v6}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 552
    invoke-static {}, Lcom/airbnb/lottie/L;->endSection()V

    .line 555
    invoke-virtual {v1, v8, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 558
    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 561
    move-result-object v5

    .line 564
    check-cast v5, Ljava/lang/Integer;

    .line 565
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 567
    move-result v5

    .line 570
    int-to-float v5, v5

    .line 571
    mul-float v5, v5, v17

    .line 572
    float-to-int v5, v5

    .line 574
    invoke-virtual {v2, v5}, Lcom/airbnb/lottie/animation/LPaint;->setAlpha(I)V

    .line 575
    invoke-virtual {v15}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 578
    move-result-object v5

    .line 581
    check-cast v5, Landroid/graphics/Path;

    .line 582
    invoke-virtual {v10, v5}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 584
    invoke-virtual {v10, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 587
    invoke-virtual {v1, v10, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 590
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 593
    goto :goto_e

    .line 596
    :cond_17
    sget-object v2, Lcom/airbnb/lottie/utils/Utils;->threadLocalPathMeasure:Lcom/airbnb/lottie/utils/Utils$1;

    .line 597
    invoke-virtual {v1, v8, v6}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 599
    invoke-static {}, Lcom/airbnb/lottie/L;->endSection()V

    .line 602
    invoke-virtual {v15}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 605
    move-result-object v2

    .line 608
    check-cast v2, Landroid/graphics/Path;

    .line 609
    invoke-virtual {v10, v2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 611
    invoke-virtual {v10, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 614
    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 617
    move-result-object v2

    .line 620
    check-cast v2, Ljava/lang/Integer;

    .line 621
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 623
    move-result v2

    .line 626
    int-to-float v2, v2

    .line 627
    mul-float v2, v2, v17

    .line 628
    float-to-int v2, v2

    .line 630
    invoke-virtual {v3, v2}, Lcom/airbnb/lottie/animation/LPaint;->setAlpha(I)V

    .line 631
    invoke-virtual {v1, v10, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 634
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 637
    :cond_18
    :goto_e
    const/16 v11, 0xff

    .line 640
    goto/16 :goto_10

    .line 642
    :cond_19
    const/4 v7, 0x3

    .line 644
    if-nez v9, :cond_1a

    .line 645
    const/high16 v11, -0x1000000

    .line 647
    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 649
    const/16 v11, 0xff

    .line 652
    invoke-virtual {v3, v11}, Lcom/airbnb/lottie/animation/LPaint;->setAlpha(I)V

    .line 654
    invoke-virtual {v1, v8, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 657
    goto :goto_f

    .line 660
    :cond_1a
    const/16 v11, 0xff

    .line 661
    :goto_f
    if-eqz v12, :cond_1b

    .line 663
    sget-object v12, Lcom/airbnb/lottie/utils/Utils;->threadLocalPathMeasure:Lcom/airbnb/lottie/utils/Utils$1;

    .line 665
    invoke-virtual {v1, v8, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 667
    invoke-static {}, Lcom/airbnb/lottie/L;->endSection()V

    .line 670
    invoke-virtual {v1, v8, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 673
    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 676
    move-result-object v5

    .line 679
    check-cast v5, Ljava/lang/Integer;

    .line 680
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 682
    move-result v5

    .line 685
    int-to-float v5, v5

    .line 686
    mul-float v5, v5, v17

    .line 687
    float-to-int v5, v5

    .line 689
    invoke-virtual {v2, v5}, Lcom/airbnb/lottie/animation/LPaint;->setAlpha(I)V

    .line 690
    invoke-virtual {v15}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 693
    move-result-object v5

    .line 696
    check-cast v5, Landroid/graphics/Path;

    .line 697
    invoke-virtual {v10, v5}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 699
    invoke-virtual {v10, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 702
    invoke-virtual {v1, v10, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 705
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 708
    goto :goto_10

    .line 711
    :cond_1b
    invoke-virtual {v15}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 712
    move-result-object v5

    .line 715
    check-cast v5, Landroid/graphics/Path;

    .line 716
    invoke-virtual {v10, v5}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 718
    invoke-virtual {v10, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 721
    invoke-virtual {v1, v10, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 724
    goto :goto_10

    .line 727
    :cond_1c
    move/from16 v18, v7

    .line 728
    const/4 v7, 0x3

    .line 730
    const/16 v11, 0xff

    .line 731
    if-eqz v12, :cond_1d

    .line 733
    sget-object v12, Lcom/airbnb/lottie/utils/Utils;->threadLocalPathMeasure:Lcom/airbnb/lottie/utils/Utils$1;

    .line 735
    invoke-virtual {v1, v8, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 737
    invoke-static {}, Lcom/airbnb/lottie/L;->endSection()V

    .line 740
    invoke-virtual {v1, v8, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 743
    invoke-virtual {v15}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 746
    move-result-object v12

    .line 749
    check-cast v12, Landroid/graphics/Path;

    .line 750
    invoke-virtual {v10, v12}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 752
    invoke-virtual {v10, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 755
    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 758
    move-result-object v5

    .line 761
    check-cast v5, Ljava/lang/Integer;

    .line 762
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 764
    move-result v5

    .line 767
    int-to-float v5, v5

    .line 768
    mul-float v5, v5, v17

    .line 769
    float-to-int v5, v5

    .line 771
    invoke-virtual {v3, v5}, Lcom/airbnb/lottie/animation/LPaint;->setAlpha(I)V

    .line 772
    invoke-virtual {v1, v10, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 775
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 778
    goto :goto_10

    .line 781
    :cond_1d
    invoke-virtual {v15}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 782
    move-result-object v2

    .line 785
    check-cast v2, Landroid/graphics/Path;

    .line 786
    invoke-virtual {v10, v2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 788
    invoke-virtual {v10, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 791
    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 794
    move-result-object v2

    .line 797
    check-cast v2, Ljava/lang/Integer;

    .line 798
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 800
    move-result v2

    .line 803
    int-to-float v2, v2

    .line 804
    mul-float v2, v2, v17

    .line 805
    float-to-int v2, v2

    .line 807
    invoke-virtual {v3, v2}, Lcom/airbnb/lottie/animation/LPaint;->setAlpha(I)V

    .line 808
    invoke-virtual {v1, v10, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 811
    :goto_10
    add-int/lit8 v9, v9, 0x1

    .line 814
    move-object/from16 v2, p2

    .line 816
    move v5, v11

    .line 818
    move-object/from16 v14, v16

    .line 819
    move/from16 v7, v18

    .line 821
    goto/16 :goto_a

    .line 823
    :cond_1e
    move/from16 v18, v7

    .line 825
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 827
    invoke-static {}, Lcom/airbnb/lottie/L;->endSection()V

    .line 830
    goto :goto_11

    .line 833
    :cond_1f
    move/from16 v18, v7

    .line 834
    :goto_11
    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 836
    if-eqz v2, :cond_20

    .line 838
    const/4 v6, 0x1

    .line 840
    goto :goto_12

    .line 841
    :cond_20
    const/4 v6, 0x0

    .line 842
    :goto_12
    if-eqz v6, :cond_21

    .line 843
    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mattePaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 845
    invoke-virtual {v1, v8, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 847
    invoke-static {}, Lcom/airbnb/lottie/L;->endSection()V

    .line 850
    invoke-static {}, Lcom/airbnb/lottie/L;->endSection()V

    .line 853
    invoke-virtual/range {p0 .. p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->clearCanvas(Landroid/graphics/Canvas;)V

    .line 856
    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 859
    move-object/from16 v3, p2

    .line 861
    move/from16 v4, v18

    .line 863
    invoke-virtual {v2, v1, v3, v4}, Lcom/airbnb/lottie/model/layer/BaseLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 865
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 868
    invoke-static {}, Lcom/airbnb/lottie/L;->endSection()V

    .line 871
    invoke-static {}, Lcom/airbnb/lottie/L;->endSection()V

    .line 874
    :cond_21
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 877
    invoke-static {}, Lcom/airbnb/lottie/L;->endSection()V

    .line 880
    :cond_22
    iget-boolean v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->outlineMasksAndMattes:Z

    .line 883
    if-eqz v2, :cond_23

    .line 885
    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->outlineMasksAndMattesPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 887
    if-eqz v2, :cond_23

    .line 889
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 891
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 893
    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->outlineMasksAndMattesPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 896
    const v3, -0x3d7fd

    .line 898
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 901
    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->outlineMasksAndMattesPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 904
    const/high16 v3, 0x40800000    # 4.0f

    .line 906
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 908
    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->outlineMasksAndMattesPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 911
    invoke-virtual {v1, v8, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 913
    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->outlineMasksAndMattesPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 916
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 918
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 920
    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->outlineMasksAndMattesPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 923
    const v3, 0x50ebebeb

    .line 925
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 928
    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->outlineMasksAndMattesPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 931
    invoke-virtual {v1, v8, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 933
    :cond_23
    invoke-static {}, Lcom/airbnb/lottie/L;->endSection()V

    .line 936
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->recordRenderTime()V

    .line 939
    return-void

    .line 942
    :cond_24
    :goto_13
    invoke-static {}, Lcom/airbnb/lottie/L;->endSection()V

    .line 943
    return-void
    .line 946
.end method

.method public abstract drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
.end method

.method public getBlurEffect()Lcom/airbnb/lottie/model/content/BlurEffect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 2
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/Layer;->blurEffect:Lcom/airbnb/lottie/model/content/BlurEffect;

    .line 4
    return-object p0
    .line 6
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 5
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->buildParentLayerListIfNeeded()V

    .line 8
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    .line 11
    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 13
    if-eqz p3, :cond_1

    .line 16
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    .line 18
    if-eqz p2, :cond_0

    .line 20
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 22
    move-result p2

    .line 25
    :goto_0
    add-int/lit8 p2, p2, -0x1

    .line 26
    if-ltz p2, :cond_1

    .line 28
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    .line 30
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object p3

    .line 35
    check-cast p3, Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 36
    iget-object p3, p3, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 38
    invoke-virtual {p3}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    .line 40
    move-result-object p3

    .line 43
    invoke-virtual {p1, p3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 44
    goto :goto_0

    .line 47
    :cond_0
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 48
    if-eqz p2, :cond_1

    .line 50
    iget-object p2, p2, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 52
    invoke-virtual {p2}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    .line 54
    move-result-object p2

    .line 57
    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 58
    :cond_1
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 61
    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    .line 63
    move-result-object p0

    .line 66
    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 67
    return-void
    .line 70
.end method

.method public getDropShadowEffect()Lcom/airbnb/lottie/parser/DropShadowEffect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 2
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/Layer;->dropShadowEffect:Lcom/airbnb/lottie/parser/DropShadowEffect;

    .line 4
    return-object p0
    .line 6
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 2
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/Layer;->layerName:Ljava/lang/String;

    .line 4
    return-object p0
    .line 6
.end method

.method public final hasMasksOnThisLayer()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->maskAnimations:Ljava/util/List;

    .line 6
    check-cast p0, Ljava/util/ArrayList;

    .line 8
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 10
    move-result p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
    .line 19
.end method

.method public final onValueChanged()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 4
    return-void
    .line 7
.end method

.method public final recordRenderTime()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    iget-object v0, v0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 4
    iget-object v0, v0, Lcom/airbnb/lottie/LottieComposition;->performanceTracker:Lcom/airbnb/lottie/PerformanceTracker;

    .line 6
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 8
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/Layer;->layerName:Ljava/lang/String;

    .line 10
    iget-boolean v1, v0, Lcom/airbnb/lottie/PerformanceTracker;->enabled:Z

    .line 12
    if-nez v1, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    iget-object v1, v0, Lcom/airbnb/lottie/PerformanceTracker;->layerRenderTimes:Ljava/util/Map;

    .line 17
    check-cast v1, Ljava/util/HashMap;

    .line 19
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 24
    check-cast v2, Lcom/airbnb/lottie/utils/MeanCalculator;

    .line 25
    if-nez v2, :cond_1

    .line 27
    new-instance v2, Lcom/airbnb/lottie/utils/MeanCalculator;

    .line 29
    invoke-direct {v2}, Lcom/airbnb/lottie/utils/MeanCalculator;-><init>()V

    .line 31
    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_1
    iget v1, v2, Lcom/airbnb/lottie/utils/MeanCalculator;->n:I

    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 39
    iput v1, v2, Lcom/airbnb/lottie/utils/MeanCalculator;->n:I

    .line 41
    const v3, 0x7fffffff

    .line 43
    if-ne v1, v3, :cond_2

    .line 46
    div-int/lit8 v1, v1, 0x2

    .line 48
    iput v1, v2, Lcom/airbnb/lottie/utils/MeanCalculator;->n:I

    .line 50
    :cond_2
    const-string v1, "__container"

    .line 52
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result p0

    .line 57
    if-eqz p0, :cond_4

    .line 58
    iget-object p0, v0, Lcom/airbnb/lottie/PerformanceTracker;->frameListeners:Landroidx/collection/ArraySet;

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    new-instance v0, Landroidx/collection/ArraySet$ElementIterator;

    .line 65
    invoke-direct {v0, p0}, Landroidx/collection/ArraySet$ElementIterator;-><init>(Landroidx/collection/ArraySet;)V

    .line 67
    invoke-virtual {v0}, Landroidx/collection/IndexBasedArrayIterator;->hasNext()Z

    .line 70
    move-result p0

    .line 73
    if-nez p0, :cond_3

    .line 74
    goto :goto_0

    .line 76
    :cond_3
    invoke-virtual {v0}, Landroidx/collection/IndexBasedArrayIterator;->next()Ljava/lang/Object;

    .line 77
    move-result-object p0

    .line 80
    invoke-static {p0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 81
    const/4 p0, 0x0

    .line 84
    throw p0

    .line 85
    :cond_4
    :goto_0
    return-void
    .line 86
.end method

.method public final removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->animations:Ljava/util/List;

    .line 2
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
    .line 9
.end method

.method public resolveChildKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 2
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 4
    if-eqz v0, :cond_1

    .line 6
    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 8
    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/Layer;->layerName:Ljava/lang/String;

    .line 10
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    new-instance v2, Lcom/airbnb/lottie/model/KeyPath;

    .line 15
    invoke-direct {v2, p4}, Lcom/airbnb/lottie/model/KeyPath;-><init>(Lcom/airbnb/lottie/model/KeyPath;)V

    .line 17
    iget-object v3, v2, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    .line 20
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 25
    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 27
    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/Layer;->layerName:Ljava/lang/String;

    .line 29
    invoke-virtual {p1, p2, v0}, Lcom/airbnb/lottie/model/KeyPath;->fullyResolvesTo(ILjava/lang/String;)Z

    .line 31
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 37
    new-instance v3, Lcom/airbnb/lottie/model/KeyPath;

    .line 39
    invoke-direct {v3, v2}, Lcom/airbnb/lottie/model/KeyPath;-><init>(Lcom/airbnb/lottie/model/KeyPath;)V

    .line 41
    iput-object v0, v3, Lcom/airbnb/lottie/model/KeyPath;->resolvedElement:Lcom/airbnb/lottie/model/KeyPathElement;

    .line 44
    move-object v0, p3

    .line 46
    check-cast v0, Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_0
    iget-object v0, v1, Lcom/airbnb/lottie/model/layer/Layer;->layerName:Ljava/lang/String;

    .line 52
    invoke-virtual {p1, p2, v0}, Lcom/airbnb/lottie/model/KeyPath;->propagateToChildren(ILjava/lang/String;)Z

    .line 54
    move-result v0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 60
    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 62
    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/Layer;->layerName:Ljava/lang/String;

    .line 64
    invoke-virtual {p1, p2, v0}, Lcom/airbnb/lottie/model/KeyPath;->incrementDepthBy(ILjava/lang/String;)I

    .line 66
    move-result v0

    .line 69
    add-int/2addr v0, p2

    .line 70
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 71
    invoke-virtual {v3, p1, v0, p3, v2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->resolveChildKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V

    .line 73
    :cond_1
    iget-object v0, v1, Lcom/airbnb/lottie/model/layer/Layer;->layerName:Ljava/lang/String;

    .line 76
    invoke-virtual {p1, p2, v0}, Lcom/airbnb/lottie/model/KeyPath;->matches(ILjava/lang/String;)Z

    .line 78
    move-result v0

    .line 81
    if-nez v0, :cond_2

    .line 82
    return-void

    .line 84
    :cond_2
    const-string v0, "__container"

    .line 85
    iget-object v1, v1, Lcom/airbnb/lottie/model/layer/Layer;->layerName:Ljava/lang/String;

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    move-result v0

    .line 92
    if-nez v0, :cond_4

    .line 93
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    new-instance v0, Lcom/airbnb/lottie/model/KeyPath;

    .line 98
    invoke-direct {v0, p4}, Lcom/airbnb/lottie/model/KeyPath;-><init>(Lcom/airbnb/lottie/model/KeyPath;)V

    .line 100
    iget-object p4, v0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    .line 103
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-virtual {p1, p2, v1}, Lcom/airbnb/lottie/model/KeyPath;->fullyResolvesTo(ILjava/lang/String;)Z

    .line 108
    move-result p4

    .line 111
    if-eqz p4, :cond_3

    .line 112
    new-instance p4, Lcom/airbnb/lottie/model/KeyPath;

    .line 114
    invoke-direct {p4, v0}, Lcom/airbnb/lottie/model/KeyPath;-><init>(Lcom/airbnb/lottie/model/KeyPath;)V

    .line 116
    iput-object p0, p4, Lcom/airbnb/lottie/model/KeyPath;->resolvedElement:Lcom/airbnb/lottie/model/KeyPathElement;

    .line 119
    move-object v2, p3

    .line 121
    check-cast v2, Ljava/util/ArrayList;

    .line 122
    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_3
    move-object p4, v0

    .line 127
    :cond_4
    invoke-virtual {p1, p2, v1}, Lcom/airbnb/lottie/model/KeyPath;->propagateToChildren(ILjava/lang/String;)Z

    .line 128
    move-result v0

    .line 131
    if-eqz v0, :cond_5

    .line 132
    invoke-virtual {p1, p2, v1}, Lcom/airbnb/lottie/model/KeyPath;->incrementDepthBy(ILjava/lang/String;)I

    .line 134
    move-result v0

    .line 137
    add-int/2addr v0, p2

    .line 138
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/airbnb/lottie/model/layer/BaseLayer;->resolveChildKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V

    .line 139
    :cond_5
    return-void
    .line 142
.end method

.method public final setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setOutlineMasksAndMattes(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->outlineMasksAndMattesPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 4
    if-nez v0, :cond_0

    .line 6
    new-instance v0, Lcom/airbnb/lottie/animation/LPaint;

    .line 8
    invoke-direct {v0}, Lcom/airbnb/lottie/animation/LPaint;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->outlineMasksAndMattesPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 13
    :cond_0
    iput-boolean p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->outlineMasksAndMattes:Z

    .line 15
    return-void
    .line 17
.end method

.method public setProgress(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 2
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->opacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 4
    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->startOpacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 11
    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 15
    :cond_1
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->endOpacity:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 18
    if-eqz v1, :cond_2

    .line 20
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 22
    :cond_2
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 25
    if-eqz v1, :cond_3

    .line 27
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 29
    :cond_3
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 32
    if-eqz v1, :cond_4

    .line 34
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 36
    :cond_4
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 39
    if-eqz v1, :cond_5

    .line 41
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 43
    :cond_5
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 46
    if-eqz v1, :cond_6

    .line 48
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 50
    :cond_6
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 53
    if-eqz v1, :cond_7

    .line 55
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 57
    :cond_7
    iget-object v0, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 60
    if-eqz v0, :cond_8

    .line 62
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 64
    :cond_8
    const/4 v0, 0x0

    .line 67
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    .line 68
    if-eqz v1, :cond_9

    .line 70
    move v2, v0

    .line 72
    :goto_0
    iget-object v3, v1, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->maskAnimations:Ljava/util/List;

    .line 73
    check-cast v3, Ljava/util/ArrayList;

    .line 75
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 77
    move-result v3

    .line 80
    if-ge v2, v3, :cond_9

    .line 81
    iget-object v3, v1, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->maskAnimations:Ljava/util/List;

    .line 83
    check-cast v3, Ljava/util/ArrayList;

    .line 85
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 87
    move-result-object v3

    .line 90
    check-cast v3, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 91
    invoke-virtual {v3, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 93
    add-int/lit8 v2, v2, 0x1

    .line 96
    goto :goto_0

    .line 98
    :cond_9
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->inOutAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 99
    if-eqz v1, :cond_a

    .line 101
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 103
    :cond_a
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 106
    if-eqz v1, :cond_b

    .line 108
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->setProgress(F)V

    .line 110
    :cond_b
    :goto_1
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->animations:Ljava/util/List;

    .line 113
    move-object v2, v1

    .line 115
    check-cast v2, Ljava/util/ArrayList;

    .line 116
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 118
    move-result v2

    .line 121
    if-ge v0, v2, :cond_c

    .line 122
    check-cast v1, Ljava/util/ArrayList;

    .line 124
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 126
    move-result-object v1

    .line 129
    check-cast v1, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 130
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 132
    add-int/lit8 v0, v0, 0x1

    .line 135
    goto :goto_1

    .line 137
    :cond_c
    return-void
    .line 138
.end method
