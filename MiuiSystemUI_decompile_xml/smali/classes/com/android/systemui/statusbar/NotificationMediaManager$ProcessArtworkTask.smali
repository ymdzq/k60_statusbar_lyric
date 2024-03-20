.class public final Lcom/android/systemui/statusbar/NotificationMediaManager$ProcessArtworkTask;
.super Landroid/os/AsyncTask;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mAllowEnterAnimation:Z

.field public final mManagerRef:Ljava/lang/ref/WeakReference;

.field public final mMetaDataChanged:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/NotificationMediaManager;ZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$ProcessArtworkTask;->mManagerRef:Ljava/lang/ref/WeakReference;

    .line 10
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$ProcessArtworkTask;->mMetaDataChanged:Z

    .line 12
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$ProcessArtworkTask;->mAllowEnterAnimation:Z

    .line 14
    return-void
    .line 16
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, [Landroid/graphics/Bitmap;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$ProcessArtworkTask;->mManagerRef:Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 10
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_9

    .line 13
    array-length v2, p1

    .line 15
    if-eqz v2, :cond_9

    .line 16
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    .line 18
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    goto/16 :goto_7

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 26
    aget-object p1, p1, p0

    .line 27
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaArtworkProcessor:Lcom/android/systemui/statusbar/MediaArtworkProcessor;

    .line 29
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mContext:Landroid/content/Context;

    .line 34
    invoke-static {v0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    .line 36
    move-result-object v3

    .line 39
    invoke-static {v3}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 40
    move-result-object v4

    .line 43
    invoke-static {v3, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    .line 44
    move-result-object v4

    .line 47
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 48
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 51
    iget-object v2, v2, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->mTmpSize:Landroid/graphics/Point;

    .line 52
    if-eqz v0, :cond_1

    .line 54
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 56
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    .line 59
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 61
    move-result v5

    .line 64
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 65
    move-result v6

    .line 68
    invoke-direct {v0, p0, p0, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 69
    iget v5, v2, Landroid/graphics/Point;->x:I

    .line 72
    div-int/lit8 v5, v5, 0x6

    .line 74
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 76
    div-int/lit8 v2, v2, 0x6

    .line 78
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    .line 80
    move-result v2

    .line 83
    invoke-static {v0, v2}, Landroid/util/MathUtils;->fitRect(Landroid/graphics/Rect;I)V

    .line 84
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 87
    move-result v2

    .line 90
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 91
    move-result v0

    .line 94
    const/4 v5, 0x1

    .line 95
    invoke-static {p1, v2, v0, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 96
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 99
    :try_start_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 100
    move-result-object v2

    .line 103
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 104
    if-eq v2, v5, :cond_2

    .line 106
    invoke-virtual {v0, v5, p0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    .line 108
    move-result-object p0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 111
    :try_start_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 112
    move-object v0, p0

    .line 115
    goto :goto_0

    .line 116
    :catchall_0
    move-exception p1

    .line 117
    move-object v0, p0

    .line 118
    move-object p0, v1

    .line 119
    goto/16 :goto_6

    .line 120
    :catch_0
    move-exception p1

    .line 122
    goto/16 :goto_1

    .line 123
    :cond_2
    :goto_0
    :try_start_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 125
    move-result p0

    .line 128
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 129
    move-result v2

    .line 132
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 133
    invoke-static {p0, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 135
    move-result-object p0

    .line 138
    sget-object v2, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    .line 139
    const/4 v5, 0x2

    .line 141
    invoke-static {v3, v0, v2, v5}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    .line 142
    move-result-object v2
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 145
    :try_start_5
    invoke-static {v3, p0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    .line 146
    move-result-object v3
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 149
    const/high16 v5, 0x41c80000    # 25.0f

    .line 150
    :try_start_6
    invoke-virtual {v4, v5}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 152
    invoke-virtual {v4, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 155
    invoke-virtual {v4, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 158
    invoke-virtual {v3, p0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 161
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->findBackgroundSwatch(Landroid/graphics/Bitmap;)Landroidx/palette/graphics/Palette$Swatch;

    .line 164
    move-result-object p1

    .line 167
    new-instance v5, Landroid/graphics/Canvas;

    .line 168
    invoke-direct {v5, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 170
    iget p1, p1, Landroidx/palette/graphics/Palette$Swatch;->mRgb:I

    .line 173
    const/16 v6, 0xb2

    .line 175
    invoke-static {p1, v6}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 177
    move-result p1

    .line 180
    invoke-virtual {v5, p1}, Landroid/graphics/Canvas;->drawColor(I)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 181
    if-eqz v2, :cond_3

    .line 184
    invoke-virtual {v2}, Landroid/renderscript/Allocation;->destroy()V

    .line 186
    :cond_3
    invoke-virtual {v3}, Landroid/renderscript/Allocation;->destroy()V

    .line 189
    invoke-virtual {v4}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 192
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 195
    move-object v1, p0

    .line 198
    goto/16 :goto_7

    .line 199
    :catch_1
    move-exception p0

    .line 201
    goto :goto_3

    .line 202
    :catchall_1
    move-exception p0

    .line 203
    goto :goto_4

    .line 204
    :catch_2
    move-exception p0

    .line 205
    move-object v3, v1

    .line 206
    goto :goto_3

    .line 207
    :catchall_2
    move-exception p0

    .line 208
    move-object p1, p0

    .line 209
    move-object p0, v1

    .line 210
    move-object v2, p0

    .line 211
    goto :goto_5

    .line 212
    :catch_3
    move-exception p0

    .line 213
    goto :goto_2

    .line 214
    :catchall_3
    move-exception p0

    .line 215
    move-object p1, p0

    .line 216
    move-object p0, v1

    .line 217
    move-object v0, p0

    .line 218
    goto :goto_6

    .line 219
    :catch_4
    move-exception p0

    .line 220
    move-object p1, p0

    .line 221
    move-object p0, v1

    .line 222
    :goto_1
    move-object v0, p0

    .line 223
    move-object p0, p1

    .line 224
    :goto_2
    move-object v2, v1

    .line 225
    move-object v3, v2

    .line 226
    :goto_3
    :try_start_7
    const-string p1, "MediaArtworkProcessor"

    .line 227
    const-string v5, "error while processing artwork"

    .line 229
    invoke-static {p1, v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 231
    if-eqz v2, :cond_4

    .line 234
    invoke-virtual {v2}, Landroid/renderscript/Allocation;->destroy()V

    .line 236
    :cond_4
    if-eqz v3, :cond_5

    .line 239
    invoke-virtual {v3}, Landroid/renderscript/Allocation;->destroy()V

    .line 241
    :cond_5
    invoke-virtual {v4}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 244
    if-eqz v0, :cond_9

    .line 247
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 249
    goto :goto_7

    .line 252
    :catchall_4
    move-exception p0

    .line 253
    move-object v1, v3

    .line 254
    :goto_4
    move-object p1, p0

    .line 255
    move-object p0, v1

    .line 256
    :goto_5
    move-object v1, v0

    .line 257
    move-object v0, v1

    .line 258
    move-object v1, v2

    .line 259
    :goto_6
    if-eqz v1, :cond_6

    .line 260
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 262
    :cond_6
    if-eqz p0, :cond_7

    .line 265
    invoke-virtual {p0}, Landroid/renderscript/Allocation;->destroy()V

    .line 267
    :cond_7
    invoke-virtual {v4}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 270
    if-eqz v0, :cond_8

    .line 273
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 275
    :cond_8
    throw p1

    .line 278
    :cond_9
    :goto_7
    return-object v1
    .line 279
.end method

.method public final onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2
    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$ProcessArtworkTask;->mManagerRef:Ljava/lang/ref/WeakReference;

    .line 9
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 14
    check-cast p1, Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 15
    if-eqz p1, :cond_1

    .line 17
    iget-object p1, p1, Lcom/android/systemui/statusbar/NotificationMediaManager;->mProcessArtworkTasks:Ljava/util/Set;

    .line 19
    check-cast p1, Landroid/util/ArraySet;

    .line 21
    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 23
    :cond_1
    return-void
    .line 26
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$ProcessArtworkTask;->mManagerRef:Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 10
    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    .line 14
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mProcessArtworkTasks:Ljava/util/Set;

    .line 20
    check-cast v1, Landroid/util/ArraySet;

    .line 22
    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 24
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->finishUpdateMediaMetaData(Landroid/graphics/Bitmap;)V

    .line 27
    :cond_0
    return-void
    .line 30
.end method
