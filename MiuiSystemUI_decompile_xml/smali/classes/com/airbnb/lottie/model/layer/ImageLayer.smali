.class public final Lcom/airbnb/lottie/model/layer/ImageLayer;
.super Lcom/airbnb/lottie/model/layer/BaseLayer;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

.field public final dst:Landroid/graphics/Rect;

.field public imageAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

.field public final lottieImageAsset:Lcom/airbnb/lottie/LottieImageAsset;

.field public final paint:Lcom/airbnb/lottie/animation/LPaint;

.field public final src:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 2
    new-instance v0, Lcom/airbnb/lottie/animation/LPaint;

    .line 5
    const/4 v1, 0x3

    .line 7
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/animation/LPaint;-><init>(I)V

    .line 8
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->paint:Lcom/airbnb/lottie/animation/LPaint;

    .line 11
    new-instance v0, Landroid/graphics/Rect;

    .line 13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->src:Landroid/graphics/Rect;

    .line 18
    new-instance v0, Landroid/graphics/Rect;

    .line 20
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->dst:Landroid/graphics/Rect;

    .line 25
    iget-object p1, p1, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 27
    if-nez p1, :cond_0

    .line 29
    const/4 p1, 0x0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object p1, p1, Lcom/airbnb/lottie/LottieComposition;->images:Ljava/util/Map;

    .line 33
    iget-object p2, p2, Lcom/airbnb/lottie/model/layer/Layer;->refId:Ljava/lang/String;

    .line 35
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object p1

    .line 40
    check-cast p1, Lcom/airbnb/lottie/LottieImageAsset;

    .line 41
    :goto_0
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->lottieImageAsset:Lcom/airbnb/lottie/LottieImageAsset;

    .line 43
    return-void
    .line 45
.end method


# virtual methods
.method public final addValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    .line 5
    const/4 v1, 0x0

    .line 7
    if-ne p2, v0, :cond_1

    .line 8
    if-nez p1, :cond_0

    .line 10
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 15
    invoke-direct {p2, p1, v1}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V

    .line 17
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 20
    goto :goto_0

    .line 22
    :cond_1
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->IMAGE:Landroid/graphics/Bitmap;

    .line 23
    if-ne p2, v0, :cond_3

    .line 25
    if-nez p1, :cond_2

    .line 27
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->imageAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 29
    goto :goto_0

    .line 31
    :cond_2
    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 32
    invoke-direct {p2, p1, v1}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;Ljava/lang/Object;)V

    .line 34
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->imageAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 37
    :cond_3
    :goto_0
    return-void
    .line 39
.end method

.method public final drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 14

    .line 1
    move-object v1, p0

    .line 2
    iget-object v0, v1, Lcom/airbnb/lottie/model/layer/ImageLayer;->imageAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 3
    iget-object v2, v1, Lcom/airbnb/lottie/model/layer/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 5
    iget-object v3, v1, Lcom/airbnb/lottie/model/layer/ImageLayer;->lottieImageAsset:Lcom/airbnb/lottie/LottieImageAsset;

    .line 7
    const/4 v4, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 15
    check-cast v0, Landroid/graphics/Bitmap;

    .line 16
    if-eqz v0, :cond_0

    .line 18
    goto/16 :goto_4

    .line 20
    :cond_0
    iget-object v0, v1, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 22
    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/Layer;->refId:Ljava/lang/String;

    .line 24
    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieDrawable;->getImageAssetManager()Lcom/airbnb/lottie/manager/ImageAssetManager;

    .line 26
    move-result-object v5

    .line 29
    const/4 v6, 0x0

    .line 30
    if-eqz v5, :cond_6

    .line 31
    iget-object v7, v5, Lcom/airbnb/lottie/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    .line 33
    iget-object v8, v5, Lcom/airbnb/lottie/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    .line 35
    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object v8

    .line 40
    check-cast v8, Lcom/airbnb/lottie/LottieImageAsset;

    .line 41
    if-nez v8, :cond_1

    .line 43
    goto/16 :goto_2

    .line 45
    :cond_1
    iget-object v9, v8, Lcom/airbnb/lottie/LottieImageAsset;->bitmap:Landroid/graphics/Bitmap;

    .line 47
    if-eqz v9, :cond_2

    .line 49
    move-object v0, v9

    .line 51
    goto/16 :goto_3

    .line 52
    :cond_2
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    .line 54
    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 56
    const/4 v10, 0x1

    .line 59
    iput-boolean v10, v9, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 60
    const/16 v11, 0xa0

    .line 62
    iput v11, v9, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 64
    const-string v11, "data:"

    .line 66
    iget-object v12, v8, Lcom/airbnb/lottie/LottieImageAsset;->fileName:Ljava/lang/String;

    .line 68
    invoke-virtual {v12, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 70
    move-result v11

    .line 73
    if-eqz v11, :cond_3

    .line 74
    const-string v11, "base64,"

    .line 76
    invoke-virtual {v12, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 78
    move-result v11

    .line 81
    if-lez v11, :cond_3

    .line 82
    const/16 v7, 0x2c

    .line 84
    :try_start_0
    invoke-virtual {v12, v7}, Ljava/lang/String;->indexOf(I)I

    .line 86
    move-result v7

    .line 89
    add-int/2addr v7, v10

    .line 90
    invoke-virtual {v12, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 91
    move-result-object v7

    .line 94
    invoke-static {v7, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 95
    move-result-object v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    array-length v8, v7

    .line 99
    invoke-static {v7, v4, v8, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 100
    move-result-object v7

    .line 103
    invoke-virtual {v5, v0, v7}, Lcom/airbnb/lottie/manager/ImageAssetManager;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 104
    goto :goto_1

    .line 107
    :catch_0
    move-exception v0

    .line 108
    const-string v5, "data URL did not have correct base64 format."

    .line 109
    invoke-static {v5, v0}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    goto :goto_2

    .line 114
    :cond_3
    :try_start_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 115
    move-result v11

    .line 118
    if-nez v11, :cond_5

    .line 119
    iget-object v11, v5, Lcom/airbnb/lottie/manager/ImageAssetManager;->context:Landroid/content/Context;

    .line 121
    invoke-virtual {v11}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 123
    move-result-object v11

    .line 126
    new-instance v13, Ljava/lang/StringBuilder;

    .line 127
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    move-result-object v7

    .line 141
    invoke-virtual {v11, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 142
    move-result-object v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 145
    :try_start_2
    invoke-static {v7, v6, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 146
    move-result-object v7
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 149
    sget-object v9, Lcom/airbnb/lottie/utils/Utils;->threadLocalPathMeasure:Lcom/airbnb/lottie/utils/Utils$1;

    .line 150
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    .line 152
    move-result v9

    .line 155
    iget v11, v8, Lcom/airbnb/lottie/LottieImageAsset;->width:I

    .line 156
    iget v8, v8, Lcom/airbnb/lottie/LottieImageAsset;->height:I

    .line 158
    if-ne v9, v11, :cond_4

    .line 160
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    .line 162
    move-result v9

    .line 165
    if-ne v9, v8, :cond_4

    .line 166
    goto :goto_0

    .line 168
    :cond_4
    invoke-static {v7, v11, v8, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 169
    move-result-object v8

    .line 172
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 173
    move-object v7, v8

    .line 176
    :goto_0
    invoke-virtual {v5, v0, v7}, Lcom/airbnb/lottie/manager/ImageAssetManager;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 177
    :goto_1
    move-object v0, v7

    .line 180
    goto :goto_3

    .line 181
    :catch_1
    move-exception v0

    .line 182
    move-object v5, v0

    .line 183
    const-string v0, "Unable to decode image."

    .line 184
    invoke-static {v0, v5}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    goto :goto_2

    .line 189
    :cond_5
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 190
    const-string v5, "You must set an images folder before loading an image. Set it with LottieComposition#setImagesFolder or LottieDrawable#setImagesFolder"

    .line 192
    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 194
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 197
    :catch_2
    move-exception v0

    .line 198
    const-string v5, "Unable to open asset."

    .line 199
    invoke-static {v5, v0}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    :cond_6
    :goto_2
    move-object v0, v6

    .line 204
    :goto_3
    if-eqz v0, :cond_7

    .line 205
    goto :goto_4

    .line 207
    :cond_7
    if-eqz v3, :cond_8

    .line 208
    iget-object v0, v3, Lcom/airbnb/lottie/LottieImageAsset;->bitmap:Landroid/graphics/Bitmap;

    .line 210
    goto :goto_4

    .line 212
    :cond_8
    move-object v0, v6

    .line 213
    :goto_4
    if-eqz v0, :cond_c

    .line 214
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 216
    move-result v5

    .line 219
    if-nez v5, :cond_c

    .line 220
    if-nez v3, :cond_9

    .line 222
    goto :goto_6

    .line 224
    :cond_9
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 225
    move-result v5

    .line 228
    iget-object v6, v1, Lcom/airbnb/lottie/model/layer/ImageLayer;->paint:Lcom/airbnb/lottie/animation/LPaint;

    .line 229
    move/from16 v7, p3

    .line 231
    invoke-virtual {v6, v7}, Lcom/airbnb/lottie/animation/LPaint;->setAlpha(I)V

    .line 233
    iget-object v7, v1, Lcom/airbnb/lottie/model/layer/ImageLayer;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 236
    if-eqz v7, :cond_a

    .line 238
    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 240
    move-result-object v7

    .line 243
    check-cast v7, Landroid/graphics/ColorFilter;

    .line 244
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 246
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 249
    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 252
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 255
    move-result v7

    .line 258
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 259
    move-result v8

    .line 262
    iget-object v9, v1, Lcom/airbnb/lottie/model/layer/ImageLayer;->src:Landroid/graphics/Rect;

    .line 263
    invoke-virtual {v9, v4, v4, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 265
    iget-boolean v2, v2, Lcom/airbnb/lottie/LottieDrawable;->maintainOriginalImageBounds:Z

    .line 268
    iget-object v1, v1, Lcom/airbnb/lottie/model/layer/ImageLayer;->dst:Landroid/graphics/Rect;

    .line 270
    if-eqz v2, :cond_b

    .line 272
    iget v2, v3, Lcom/airbnb/lottie/LottieImageAsset;->width:I

    .line 274
    int-to-float v2, v2

    .line 276
    mul-float/2addr v2, v5

    .line 277
    float-to-int v2, v2

    .line 278
    iget v3, v3, Lcom/airbnb/lottie/LottieImageAsset;->height:I

    .line 279
    int-to-float v3, v3

    .line 281
    mul-float/2addr v3, v5

    .line 282
    float-to-int v3, v3

    .line 283
    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 284
    goto :goto_5

    .line 287
    :cond_b
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 288
    move-result v2

    .line 291
    int-to-float v2, v2

    .line 292
    mul-float/2addr v2, v5

    .line 293
    float-to-int v2, v2

    .line 294
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 295
    move-result v3

    .line 298
    int-to-float v3, v3

    .line 299
    mul-float/2addr v3, v5

    .line 300
    float-to-int v3, v3

    .line 301
    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 302
    :goto_5
    move-object v2, p1

    .line 305
    invoke-virtual {p1, v0, v9, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 306
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 309
    :cond_c
    :goto_6
    return-void
    .line 312
.end method

.method public final getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 2
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->lottieImageAsset:Lcom/airbnb/lottie/LottieImageAsset;

    .line 5
    if-eqz p2, :cond_0

    .line 7
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 9
    move-result p3

    .line 12
    iget v0, p2, Lcom/airbnb/lottie/LottieImageAsset;->width:I

    .line 13
    int-to-float v0, v0

    .line 15
    mul-float/2addr v0, p3

    .line 16
    iget p2, p2, Lcom/airbnb/lottie/LottieImageAsset;->height:I

    .line 17
    int-to-float p2, p2

    .line 19
    mul-float/2addr p2, p3

    .line 20
    const/4 p3, 0x0

    .line 21
    invoke-virtual {p1, p3, p3, v0, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 22
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    .line 25
    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 27
    :cond_0
    return-void
    .line 30
.end method
