.class public final Lcom/android/systemui/screenshot/TiledImageDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mNode:Landroid/graphics/RenderNode;

.field public final mTiles:Lcom/android/systemui/screenshot/ImageTileSet;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/ImageTileSet;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/screenshot/TiledImageDrawable;->mTiles:Lcom/android/systemui/screenshot/ImageTileSet;

    .line 5
    new-instance v0, Lcom/android/systemui/screenshot/TiledImageDrawable$$ExternalSyntheticLambda0;

    .line 7
    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/TiledImageDrawable$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenshot/TiledImageDrawable;)V

    .line 9
    iget-object p0, p1, Lcom/android/systemui/screenshot/ImageTileSet;->mContentListeners:Lcom/android/internal/util/CallbackRegistry;

    .line 12
    if-nez p0, :cond_0

    .line 14
    new-instance p0, Lcom/android/internal/util/CallbackRegistry;

    .line 16
    new-instance v1, Lcom/android/systemui/screenshot/ImageTileSet$1;

    .line 18
    invoke-direct {v1}, Lcom/android/systemui/screenshot/ImageTileSet$1;-><init>()V

    .line 20
    invoke-direct {p0, v1}, Lcom/android/internal/util/CallbackRegistry;-><init>(Lcom/android/internal/util/CallbackRegistry$NotifierCallback;)V

    .line 23
    iput-object p0, p1, Lcom/android/systemui/screenshot/ImageTileSet;->mContentListeners:Lcom/android/internal/util/CallbackRegistry;

    .line 26
    :cond_0
    iget-object p0, p1, Lcom/android/systemui/screenshot/ImageTileSet;->mContentListeners:Lcom/android/internal/util/CallbackRegistry;

    .line 28
    invoke-virtual {p0, v0}, Lcom/android/internal/util/CallbackRegistry;->add(Ljava/lang/Object;)V

    .line 30
    return-void
    .line 33
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/screenshot/TiledImageDrawable;->mNode:Landroid/graphics/RenderNode;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/RenderNode;->hasDisplayList()Z

    .line 7
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    goto/16 :goto_2

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/TiledImageDrawable;->mNode:Landroid/graphics/RenderNode;

    .line 15
    if-nez v0, :cond_1

    .line 17
    new-instance v0, Landroid/graphics/RenderNode;

    .line 19
    const-string v2, "TiledImageDrawable"

    .line 21
    invoke-direct {v0, v2}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    .line 23
    iput-object v0, p0, Lcom/android/systemui/screenshot/TiledImageDrawable;->mNode:Landroid/graphics/RenderNode;

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/screenshot/TiledImageDrawable;->mNode:Landroid/graphics/RenderNode;

    .line 28
    iget-object v2, p0, Lcom/android/systemui/screenshot/TiledImageDrawable;->mTiles:Lcom/android/systemui/screenshot/ImageTileSet;

    .line 30
    invoke-virtual {v2}, Lcom/android/systemui/screenshot/ImageTileSet;->getWidth()I

    .line 32
    move-result v2

    .line 35
    iget-object v3, p0, Lcom/android/systemui/screenshot/TiledImageDrawable;->mTiles:Lcom/android/systemui/screenshot/ImageTileSet;

    .line 36
    invoke-virtual {v3}, Lcom/android/systemui/screenshot/ImageTileSet;->getHeight()I

    .line 38
    move-result v3

    .line 41
    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    .line 42
    iget-object v0, p0, Lcom/android/systemui/screenshot/TiledImageDrawable;->mNode:Landroid/graphics/RenderNode;

    .line 45
    invoke-virtual {v0}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    .line 47
    move-result-object v0

    .line 50
    iget-object v2, p0, Lcom/android/systemui/screenshot/TiledImageDrawable;->mTiles:Lcom/android/systemui/screenshot/ImageTileSet;

    .line 51
    iget-object v2, v2, Lcom/android/systemui/screenshot/ImageTileSet;->mRegion:Landroid/graphics/Region;

    .line 53
    invoke-virtual {v2}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    .line 55
    move-result-object v2

    .line 58
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 59
    neg-int v2, v2

    .line 61
    int-to-float v2, v2

    .line 62
    iget-object v3, p0, Lcom/android/systemui/screenshot/TiledImageDrawable;->mTiles:Lcom/android/systemui/screenshot/ImageTileSet;

    .line 63
    iget-object v3, v3, Lcom/android/systemui/screenshot/ImageTileSet;->mRegion:Landroid/graphics/Region;

    .line 65
    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    .line 67
    move-result-object v3

    .line 70
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 71
    neg-int v3, v3

    .line 73
    int-to-float v3, v3

    .line 74
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 75
    move v2, v1

    .line 78
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/screenshot/TiledImageDrawable;->mTiles:Lcom/android/systemui/screenshot/ImageTileSet;

    .line 79
    iget-object v3, v3, Lcom/android/systemui/screenshot/ImageTileSet;->mTiles:Ljava/util/List;

    .line 81
    check-cast v3, Ljava/util/ArrayList;

    .line 83
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 85
    move-result v3

    .line 88
    if-ge v2, v3, :cond_4

    .line 89
    iget-object v3, p0, Lcom/android/systemui/screenshot/TiledImageDrawable;->mTiles:Lcom/android/systemui/screenshot/ImageTileSet;

    .line 91
    iget-object v3, v3, Lcom/android/systemui/screenshot/ImageTileSet;->mTiles:Ljava/util/List;

    .line 93
    check-cast v3, Ljava/util/ArrayList;

    .line 95
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 97
    move-result-object v3

    .line 100
    check-cast v3, Lcom/android/systemui/screenshot/ImageTile;

    .line 101
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 103
    iget-object v4, v3, Lcom/android/systemui/screenshot/ImageTile;->mLocation:Landroid/graphics/Rect;

    .line 106
    iget v5, v4, Landroid/graphics/Rect;->left:I

    .line 108
    int-to-float v5, v5

    .line 110
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 111
    int-to-float v4, v4

    .line 113
    invoke-virtual {v0, v5, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 114
    const-string v4, "Tile{"

    .line 117
    monitor-enter v3

    .line 119
    :try_start_0
    iget-object v5, v3, Lcom/android/systemui/screenshot/ImageTile;->mNode:Landroid/graphics/RenderNode;

    .line 120
    if-nez v5, :cond_2

    .line 122
    new-instance v5, Landroid/graphics/RenderNode;

    .line 124
    new-instance v6, Ljava/lang/StringBuilder;

    .line 126
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    iget-object v4, v3, Lcom/android/systemui/screenshot/ImageTile;->mImage:Landroid/media/Image;

    .line 131
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 133
    move-result v4

    .line 136
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 137
    move-result-object v4

    .line 140
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string/jumbo v4, "}"

    .line 144
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    move-result-object v4

    .line 153
    invoke-direct {v5, v4}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    .line 154
    iput-object v5, v3, Lcom/android/systemui/screenshot/ImageTile;->mNode:Landroid/graphics/RenderNode;

    .line 157
    :cond_2
    iget-object v4, v3, Lcom/android/systemui/screenshot/ImageTile;->mNode:Landroid/graphics/RenderNode;

    .line 159
    invoke-virtual {v4}, Landroid/graphics/RenderNode;->hasDisplayList()Z

    .line 161
    move-result v4

    .line 164
    if-eqz v4, :cond_3

    .line 165
    iget-object v4, v3, Lcom/android/systemui/screenshot/ImageTile;->mNode:Landroid/graphics/RenderNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    monitor-exit v3

    .line 169
    goto :goto_1

    .line 170
    :cond_3
    :try_start_1
    iget-object v4, v3, Lcom/android/systemui/screenshot/ImageTile;->mImage:Landroid/media/Image;

    .line 171
    invoke-virtual {v4}, Landroid/media/Image;->getWidth()I

    .line 173
    move-result v4

    .line 176
    iget-object v5, v3, Lcom/android/systemui/screenshot/ImageTile;->mLocation:Landroid/graphics/Rect;

    .line 177
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 179
    move-result v5

    .line 182
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 183
    move-result v4

    .line 186
    iget-object v5, v3, Lcom/android/systemui/screenshot/ImageTile;->mImage:Landroid/media/Image;

    .line 187
    invoke-virtual {v5}, Landroid/media/Image;->getHeight()I

    .line 189
    move-result v5

    .line 192
    iget-object v6, v3, Lcom/android/systemui/screenshot/ImageTile;->mLocation:Landroid/graphics/Rect;

    .line 193
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 195
    move-result v6

    .line 198
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    .line 199
    move-result v5

    .line 202
    iget-object v6, v3, Lcom/android/systemui/screenshot/ImageTile;->mNode:Landroid/graphics/RenderNode;

    .line 203
    invoke-virtual {v6, v1, v1, v4, v5}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    .line 205
    iget-object v6, v3, Lcom/android/systemui/screenshot/ImageTile;->mNode:Landroid/graphics/RenderNode;

    .line 208
    invoke-virtual {v6, v4, v5}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    .line 210
    move-result-object v4

    .line 213
    invoke-virtual {v4}, Landroid/graphics/RecordingCanvas;->save()I

    .line 214
    iget-object v5, v3, Lcom/android/systemui/screenshot/ImageTile;->mLocation:Landroid/graphics/Rect;

    .line 217
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 219
    move-result v5

    .line 222
    iget-object v6, v3, Lcom/android/systemui/screenshot/ImageTile;->mLocation:Landroid/graphics/Rect;

    .line 223
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 225
    move-result v6

    .line 228
    invoke-virtual {v4, v1, v1, v5, v6}, Landroid/graphics/RecordingCanvas;->clipRect(IIII)Z

    .line 229
    iget-object v5, v3, Lcom/android/systemui/screenshot/ImageTile;->mImage:Landroid/media/Image;

    .line 232
    invoke-virtual {v5}, Landroid/media/Image;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 234
    move-result-object v5

    .line 237
    sget-object v6, Lcom/android/systemui/screenshot/ImageTile;->COLOR_SPACE:Landroid/graphics/ColorSpace;

    .line 238
    invoke-static {v5, v6}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    .line 240
    move-result-object v5

    .line 243
    const/4 v6, 0x0

    .line 244
    const/4 v7, 0x0

    .line 245
    invoke-virtual {v4, v5, v7, v7, v6}, Landroid/graphics/RecordingCanvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 246
    invoke-virtual {v4}, Landroid/graphics/RecordingCanvas;->restore()V

    .line 249
    iget-object v4, v3, Lcom/android/systemui/screenshot/ImageTile;->mNode:Landroid/graphics/RenderNode;

    .line 252
    invoke-virtual {v4}, Landroid/graphics/RenderNode;->endRecording()V

    .line 254
    iget-object v4, v3, Lcom/android/systemui/screenshot/ImageTile;->mNode:Landroid/graphics/RenderNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    monitor-exit v3

    .line 259
    :goto_1
    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 260
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 263
    add-int/lit8 v2, v2, 0x1

    .line 266
    goto/16 :goto_0

    .line 268
    :catchall_0
    move-exception p0

    .line 270
    monitor-exit v3

    .line 271
    throw p0

    .line 272
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/screenshot/TiledImageDrawable;->mNode:Landroid/graphics/RenderNode;

    .line 273
    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    .line 275
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    .line 278
    move-result v0

    .line 281
    if-eqz v0, :cond_5

    .line 282
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 284
    move-result-object v0

    .line 287
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 288
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 291
    move-result v2

    .line 294
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 295
    move-result v3

    .line 298
    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 299
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 302
    neg-int v1, v1

    .line 304
    int-to-float v1, v1

    .line 305
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 306
    neg-int v0, v0

    .line 308
    int-to-float v0, v0

    .line 309
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 310
    iget-object p0, p0, Lcom/android/systemui/screenshot/TiledImageDrawable;->mNode:Landroid/graphics/RenderNode;

    .line 313
    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 315
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 318
    goto :goto_3

    .line 321
    :cond_5
    const-string p0, "TiledImageDrawable"

    .line 322
    const-string p1, "Canvas is not hardware accelerated. Skipping draw!"

    .line 324
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :goto_3
    return-void
    .line 329
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/screenshot/TiledImageDrawable;->mTiles:Lcom/android/systemui/screenshot/ImageTileSet;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ImageTileSet;->getHeight()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final getIntrinsicWidth()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/screenshot/TiledImageDrawable;->mTiles:Lcom/android/systemui/screenshot/ImageTileSet;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ImageTileSet;->getWidth()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final getOpacity()I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
    .line 3
.end method

.method public final setAlpha(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/screenshot/TiledImageDrawable;->mNode:Landroid/graphics/RenderNode;

    .line 2
    int-to-float p1, p1

    .line 4
    const/high16 v1, 0x437f0000    # 255.0f

    .line 5
    div-float/2addr p1, v1

    .line 7
    invoke-virtual {v0, p1}, Landroid/graphics/RenderNode;->setAlpha(F)Z

    .line 8
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 14
    :cond_0
    return-void
    .line 17
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 2
    const-string p1, "not implemented"

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 6
    throw p0
    .line 9
.end method
