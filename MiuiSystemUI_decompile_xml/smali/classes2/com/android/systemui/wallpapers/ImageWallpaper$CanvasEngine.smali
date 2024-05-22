.class public final Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# static fields
.field static final MIN_SURFACE_HEIGHT:I = 0x80

.field static final MIN_SURFACE_WIDTH:I = 0x80


# instance fields
.field public mBitmap:Landroid/graphics/Bitmap;

.field public mBitmapUsages:I

.field public mIsLockscreenLiveWallpaperEnabled:Z

.field public final mLock:Ljava/lang/Object;

.field public mSurfaceHolder:Landroid/view/SurfaceHolder;

.field public final mWallpaperLocalColorExtractor:Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;

.field public mWallpaperManager:Landroid/app/WallpaperManager;

.field public mWideColorGamut:Z

.field public final synthetic this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpapers/ImageWallpaper;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 2
    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    .line 4
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWideColorGamut:Z

    .line 8
    iput v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mBitmapUsages:I

    .line 10
    new-instance v0, Ljava/lang/Object;

    .line 12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mLock:Ljava/lang/Object;

    .line 17
    const/4 v0, 0x1

    .line 19
    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->setFixedSizeAllowed(Z)V

    .line 20
    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->setShowForAllUsers(Z)V

    .line 23
    new-instance v0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;

    .line 26
    iget-object v1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLongExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 28
    new-instance v2, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$1;

    .line 30
    invoke-direct {v2, p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$1;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;)V

    .line 32
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;-><init>(Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$1;)V

    .line 35
    iput-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWallpaperLocalColorExtractor:Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;

    .line 38
    iget-boolean p0, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPagesComputed:Z

    .line 40
    if-eqz p0, :cond_0

    .line 42
    iget p0, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPages:I

    .line 44
    new-instance p1, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda3;

    .line 46
    invoke-direct {p1, v0, p0}, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;I)V

    .line 48
    iget-object p0, v0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mLongExecutor:Ljava/util/concurrent/Executor;

    .line 51
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 53
    :cond_0
    return-void
    .line 56
.end method


# virtual methods
.method public final addLocalColorsAreas(Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWallpaperLocalColorExtractor:Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 7
    move-result v0

    .line 10
    if-lez v0, :cond_0

    .line 11
    new-instance v0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda0;

    .line 13
    const/4 v1, 0x1

    .line 15
    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;Ljava/lang/Object;I)V

    .line 16
    iget-object p0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mLongExecutor:Ljava/util/concurrent/Executor;

    .line 19
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 21
    goto :goto_0

    .line 24
    :cond_0
    const-string p0, "WallpaperLocalColorExtractor"

    .line 25
    const-string p1, "Attempt to add colors with an empty list"

    .line 27
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :goto_0
    return-void
.end method

.method public final drawFrameInternal()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 2
    const-string v1, "ImageWallpaper"

    .line 4
    if-nez v0, :cond_0

    .line 6
    sget p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->$r8$clinit:I

    .line 8
    const-string p0, "attempt to draw a frame without a valid surface"

    .line 10
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    return-void

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->isBitmapLoaded()Z

    .line 16
    move-result v0

    .line 19
    const/4 v2, 0x1

    .line 20
    const/4 v3, 0x0

    .line 21
    if-nez v0, :cond_f

    .line 22
    const-string v0, "ImageWallpaper.CanvasEngine#loadWallpaper"

    .line 24
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 26
    const/4 v0, 0x2

    .line 29
    :try_start_0
    iget-boolean v4, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mIsLockscreenLiveWallpaperEnabled:Z

    .line 30
    if-eqz v4, :cond_2

    .line 32
    iget-object v4, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 34
    iget-object v5, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 36
    iget-object v5, v5, Lcom/android/systemui/wallpapers/ImageWallpaper;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 38
    check-cast v5, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 40
    invoke-virtual {v5}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 42
    move-result v5

    .line 45
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getWallpaperFlags()I

    .line 46
    move-result v6

    .line 49
    if-ne v6, v0, :cond_1

    .line 50
    move v6, v0

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    move v6, v2

    .line 54
    :goto_0
    invoke-virtual {v4, v5, v3, v6, v2}, Landroid/app/WallpaperManager;->getBitmapAsUser(IZIZ)Landroid/graphics/Bitmap;

    .line 55
    move-result-object v4

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 60
    iget-object v5, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 62
    iget-object v5, v5, Lcom/android/systemui/wallpapers/ImageWallpaper;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 64
    check-cast v5, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 66
    invoke-virtual {v5}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 68
    move-result v5

    .line 71
    invoke-virtual {v4, v5, v3}, Landroid/app/WallpaperManager;->getBitmapAsUser(IZ)Landroid/graphics/Bitmap;

    .line 72
    move-result-object v4

    .line 75
    :goto_1
    if-eqz v4, :cond_7

    .line 76
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getByteCount()I

    .line 78
    move-result v5

    .line 81
    sget v6, Landroid/graphics/RecordingCanvas;->MAX_BITMAP_SIZE:I

    .line 82
    if-gt v5, v6, :cond_3

    .line 84
    goto/16 :goto_4

    .line 86
    :cond_3
    new-instance v4, Ljava/lang/RuntimeException;

    .line 88
    const-string v5, "Wallpaper is too large to draw!"

    .line 90
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 92
    throw v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :catch_0
    move-exception v4

    .line 96
    sget v5, Lcom/android/systemui/wallpapers/ImageWallpaper;->$r8$clinit:I

    .line 97
    const-string v5, "Unable to load wallpaper!"

    .line 99
    invoke-static {v1, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    iget-boolean v4, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mIsLockscreenLiveWallpaperEnabled:Z

    .line 104
    if-eqz v4, :cond_4

    .line 106
    iget-object v4, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 108
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getWallpaperFlags()I

    .line 110
    move-result v5

    .line 113
    iget-object v6, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 114
    iget-object v6, v6, Lcom/android/systemui/wallpapers/ImageWallpaper;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 116
    check-cast v6, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 118
    invoke-virtual {v6}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 120
    move-result v6

    .line 123
    invoke-virtual {v4, v5, v6}, Landroid/app/WallpaperManager;->clearWallpaper(II)V

    .line 124
    goto :goto_2

    .line 127
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 128
    iget-object v5, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 130
    iget-object v5, v5, Lcom/android/systemui/wallpapers/ImageWallpaper;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 132
    check-cast v5, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 134
    invoke-virtual {v5}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 136
    move-result v5

    .line 139
    invoke-virtual {v4, v2, v5}, Landroid/app/WallpaperManager;->clearWallpaper(II)V

    .line 140
    :goto_2
    :try_start_1
    iget-boolean v4, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mIsLockscreenLiveWallpaperEnabled:Z

    .line 143
    if-eqz v4, :cond_6

    .line 145
    iget-object v4, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 147
    iget-object v5, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 149
    iget-object v5, v5, Lcom/android/systemui/wallpapers/ImageWallpaper;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 151
    check-cast v5, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 153
    invoke-virtual {v5}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 155
    move-result v5

    .line 158
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getWallpaperFlags()I

    .line 159
    move-result v6

    .line 162
    if-ne v6, v0, :cond_5

    .line 163
    move v6, v0

    .line 165
    goto :goto_3

    .line 166
    :cond_5
    move v6, v2

    .line 167
    :goto_3
    invoke-virtual {v4, v5, v3, v6, v2}, Landroid/app/WallpaperManager;->getBitmapAsUser(IZIZ)Landroid/graphics/Bitmap;

    .line 168
    move-result-object v4

    .line 171
    goto :goto_4

    .line 172
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 173
    iget-object v5, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 175
    iget-object v5, v5, Lcom/android/systemui/wallpapers/ImageWallpaper;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 177
    check-cast v5, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 179
    invoke-virtual {v5}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 181
    move-result v5

    .line 184
    invoke-virtual {v4, v5, v3}, Landroid/app/WallpaperManager;->getBitmapAsUser(IZ)Landroid/graphics/Bitmap;

    .line 185
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 188
    goto :goto_4

    .line 189
    :catch_1
    move-exception v4

    .line 190
    sget v5, Lcom/android/systemui/wallpapers/ImageWallpaper;->$r8$clinit:I

    .line 191
    const-string v5, "Unable to load default wallpaper!"

    .line 193
    invoke-static {v1, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    const/4 v4, 0x0

    .line 198
    :cond_7
    :goto_4
    if-nez v4, :cond_8

    .line 199
    sget v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->$r8$clinit:I

    .line 201
    const-string v0, "Could not load bitmap"

    .line 203
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    goto :goto_5

    .line 208
    :cond_8
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 209
    move-result v5

    .line 212
    if-eqz v5, :cond_9

    .line 213
    sget v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->$r8$clinit:I

    .line 215
    const-string v0, "Attempt to load a recycled bitmap"

    .line 217
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    goto :goto_5

    .line 222
    :cond_9
    iget-object v5, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mBitmap:Landroid/graphics/Bitmap;

    .line 223
    if-ne v5, v4, :cond_a

    .line 225
    sget v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->$r8$clinit:I

    .line 227
    const-string v0, "Loaded a bitmap that was already loaded"

    .line 229
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :goto_5
    move v2, v3

    .line 234
    goto :goto_8

    .line 235
    :cond_a
    if-eqz v5, :cond_b

    .line 236
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 238
    :cond_b
    iput-object v4, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mBitmap:Landroid/graphics/Bitmap;

    .line 241
    iget-boolean v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mIsLockscreenLiveWallpaperEnabled:Z

    .line 243
    if-eqz v1, :cond_d

    .line 245
    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 247
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getWallpaperFlags()I

    .line 249
    move-result v4

    .line 252
    if-ne v4, v0, :cond_c

    .line 253
    move v4, v0

    .line 255
    goto :goto_6

    .line 256
    :cond_c
    move v4, v2

    .line 257
    :goto_6
    invoke-virtual {v1, v4}, Landroid/app/WallpaperManager;->wallpaperSupportsWcg(I)Z

    .line 258
    move-result v1

    .line 261
    goto :goto_7

    .line 262
    :cond_d
    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 263
    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->wallpaperSupportsWcg(I)Z

    .line 265
    move-result v1

    .line 268
    :goto_7
    iput-boolean v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWideColorGamut:Z

    .line 269
    iget v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mBitmapUsages:I

    .line 271
    add-int/2addr v1, v0

    .line 273
    iput v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mBitmapUsages:I

    .line 274
    invoke-virtual {p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->recomputeColorExtractorMiniBitmap()V

    .line 276
    invoke-virtual {p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->drawFrameInternal()V

    .line 279
    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 282
    iget-object v1, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLongExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 284
    new-instance v4, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda0;

    .line 286
    invoke-direct {v4, p0, v0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;I)V

    .line 288
    const-wide/16 v5, 0x7d0

    .line 291
    invoke-interface {v1, v4, v5, v6}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 293
    :goto_8
    if-nez v2, :cond_e

    .line 296
    invoke-virtual {p0, v3}, Landroid/service/wallpaper/WallpaperService$Engine;->reportEngineShown(Z)V

    .line 298
    :cond_e
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 301
    goto :goto_9

    .line 304
    :cond_f
    iget v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mBitmapUsages:I

    .line 305
    add-int/2addr v0, v2

    .line 307
    iput v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mBitmapUsages:I

    .line 308
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mBitmap:Landroid/graphics/Bitmap;

    .line 310
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->drawFrameOnCanvas(Landroid/graphics/Bitmap;)V

    .line 312
    invoke-virtual {p0, v3}, Landroid/service/wallpaper/WallpaperService$Engine;->reportEngineShown(Z)V

    .line 315
    invoke-virtual {p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->unloadBitmapIfNotUsedInternal()V

    .line 318
    :goto_9
    return-void
    .line 321
.end method

.method public drawFrameOnCanvas(Landroid/graphics/Bitmap;)V
    .locals 5

    .line 1
    const-string v0, "ImageWallpaper.CanvasEngine#drawFrame"

    .line 2
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 7
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 9
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    :try_start_0
    iget-boolean v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWideColorGamut:Z

    .line 14
    if-eqz v2, :cond_0

    .line 16
    invoke-virtual {v0}, Landroid/view/Surface;->lockHardwareWideColorGamutCanvas()Landroid/graphics/Canvas;

    .line 18
    move-result-object v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Landroid/view/Surface;->lockHardwareCanvas()Landroid/graphics/Canvas;

    .line 23
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v2

    .line 28
    sget v3, Lcom/android/systemui/wallpapers/ImageWallpaper;->$r8$clinit:I

    .line 29
    const-string v3, "ImageWallpaper"

    .line 31
    const-string v4, "Unable to lock canvas"

    .line 33
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    move-object v2, v1

    .line 38
    :goto_0
    if-eqz v2, :cond_1

    .line 39
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 41
    invoke-interface {p0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    .line 43
    move-result-object p0

    .line 46
    :try_start_1
    invoke-virtual {v2, p1, v1, p0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    invoke-virtual {v0, v2}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 50
    goto :goto_1

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    invoke-virtual {v0, v2}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 55
    throw p0

    .line 58
    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 59
    return-void
    .line 62
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5
    const-string p2, "Engine="

    .line 8
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 16
    const-string/jumbo p2, "valid surface="

    .line 19
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    .line 25
    move-result-object p2

    .line 28
    const-string p4, "null"

    .line 29
    if-eqz p2, :cond_0

    .line 31
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    .line 33
    move-result-object p2

    .line 36
    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 37
    move-result-object p2

    .line 40
    if-eqz p2, :cond_0

    .line 41
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    .line 43
    move-result-object p2

    .line 46
    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 47
    move-result-object p2

    .line 50
    invoke-virtual {p2}, Landroid/view/Surface;->isValid()Z

    .line 51
    move-result p2

    .line 54
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 55
    move-result-object p2

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    move-object p2, p4

    .line 60
    :goto_0
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 61
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 64
    const-string/jumbo p2, "surface frame="

    .line 67
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    .line 73
    move-result-object p2

    .line 76
    if-eqz p2, :cond_1

    .line 77
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    .line 79
    move-result-object p2

    .line 82
    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    .line 83
    move-result-object p2

    .line 86
    goto :goto_1

    .line 87
    :cond_1
    move-object p2, p4

    .line 88
    :goto_1
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 89
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 92
    const-string p2, "bitmap="

    .line 95
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mBitmap:Landroid/graphics/Bitmap;

    .line 100
    const-string v1, "recycled"

    .line 102
    const-string/jumbo v2, "x"

    .line 104
    if-nez v0, :cond_2

    .line 107
    move-object v0, p4

    .line 109
    goto :goto_2

    .line 110
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 111
    move-result v0

    .line 114
    if-eqz v0, :cond_3

    .line 115
    move-object v0, v1

    .line 117
    goto :goto_2

    .line 118
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 119
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    iget-object v3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mBitmap:Landroid/graphics/Bitmap;

    .line 124
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 126
    move-result v3

    .line 129
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget-object v3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mBitmap:Landroid/graphics/Bitmap;

    .line 136
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 138
    move-result v3

    .line 141
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    move-result-object v0

    .line 148
    :goto_2
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 149
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWallpaperLocalColorExtractor:Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;

    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 157
    const-string v0, "display="

    .line 160
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    .line 165
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    iget v3, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mDisplayWidth:I

    .line 170
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    iget v3, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mDisplayHeight:I

    .line 178
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    move-result-object v0

    .line 186
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 190
    const-string v0, "mPages="

    .line 193
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 195
    iget v0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mPages:I

    .line 198
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 200
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 203
    const-string v0, "bitmap dimensions="

    .line 206
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    .line 211
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    iget v3, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mBitmapWidth:I

    .line 216
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    iget v3, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mBitmapHeight:I

    .line 224
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    move-result-object v0

    .line 232
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 239
    iget-object p2, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mMiniBitmap:Landroid/graphics/Bitmap;

    .line 242
    if-nez p2, :cond_4

    .line 244
    goto :goto_3

    .line 246
    :cond_4
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 247
    move-result p2

    .line 250
    if-eqz p2, :cond_5

    .line 251
    move-object p4, v1

    .line 253
    goto :goto_3

    .line 254
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    .line 255
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    iget-object p4, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mMiniBitmap:Landroid/graphics/Bitmap;

    .line 260
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 262
    move-result p4

    .line 265
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    iget-object p4, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mMiniBitmap:Landroid/graphics/Bitmap;

    .line 272
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 274
    move-result p4

    .line 277
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    move-result-object p4

    .line 284
    :goto_3
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 288
    const-string p2, "PendingRegions size="

    .line 291
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 293
    iget-object p2, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mPendingRegions:Ljava/util/List;

    .line 296
    check-cast p2, Ljava/util/ArrayList;

    .line 298
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 300
    move-result p2

    .line 303
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 304
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 307
    const-string p1, "ProcessedRegions size="

    .line 310
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 312
    iget-object p0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mProcessedRegions:Ljava/util/Set;

    .line 315
    check-cast p0, Landroid/util/ArraySet;

    .line 317
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    .line 319
    move-result p0

    .line 322
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(I)V

    .line 323
    return-void
    .line 326
.end method

.method public final getDisplaySizeAndUpdateColorExtractor()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    const-class v1, Landroid/view/WindowManager;

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/WindowManager;

    .line 12
    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    .line 14
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 18
    move-result-object v0

    .line 21
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWallpaperLocalColorExtractor:Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;

    .line 22
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 24
    move-result v1

    .line 27
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 28
    move-result v0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    new-instance v2, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda1;

    .line 35
    invoke-direct {v2, p0, v1, v0}, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;II)V

    .line 37
    iget-object p0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mLongExecutor:Ljava/util/concurrent/Executor;

    .line 40
    invoke-interface {p0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 42
    return-void
    .line 45
.end method

.method public isBitmapLoaded()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mBitmap:Landroid/graphics/Bitmap;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 6
    move-result p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
    .line 15
.end method

.method public final onCreate(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 1
    const-string v0, "ImageWallpaper.CanvasEngine#onCreate"

    .line 2
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 10
    const-class v1, Landroid/app/WallpaperManager;

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 16
    check-cast v0, Landroid/app/WallpaperManager;

    .line 17
    iput-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 19
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->isLockscreenLiveWallpaperEnabled()Z

    .line 21
    move-result v0

    .line 24
    iput-boolean v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mIsLockscreenLiveWallpaperEnabled:Z

    .line 25
    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 27
    if-eqz v0, :cond_1

    .line 29
    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 31
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getWallpaperFlags()I

    .line 33
    move-result v0

    .line 36
    const/4 v1, 0x1

    .line 37
    const/4 v2, 0x2

    .line 38
    if-ne v0, v2, :cond_0

    .line 39
    goto :goto_0

    .line 41
    :cond_0
    move v2, v1

    .line 42
    :goto_0
    invoke-virtual {p1, v2, v1}, Landroid/app/WallpaperManager;->peekBitmapDimensions(IZ)Landroid/graphics/Rect;

    .line 43
    move-result-object p1

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 48
    invoke-virtual {p1}, Landroid/app/WallpaperManager;->peekBitmapDimensions()Landroid/graphics/Rect;

    .line 50
    move-result-object p1

    .line 53
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 54
    move-result v0

    .line 57
    const/16 v1, 0x80

    .line 58
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 60
    move-result v0

    .line 63
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 64
    move-result p1

    .line 67
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 68
    move-result p1

    .line 71
    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 72
    invoke-interface {v1, v0, p1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 74
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayContext()Landroid/content/Context;

    .line 77
    move-result-object p1

    .line 80
    const-class v0, Landroid/hardware/display/DisplayManager;

    .line 81
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 83
    move-result-object p1

    .line 86
    check-cast p1, Landroid/hardware/display/DisplayManager;

    .line 87
    const/4 v0, 0x0

    .line 89
    invoke-virtual {p1, p0, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->getDisplaySizeAndUpdateColorExtractor()V

    .line 93
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 96
    return-void
    .line 99
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    const-class v1, Landroid/hardware/display/DisplayManager;

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 12
    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 14
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWallpaperLocalColorExtractor:Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    new-instance v0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda2;

    .line 22
    invoke-direct {v0, p0}, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;)V

    .line 24
    iget-object p0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mLongExecutor:Ljava/util/concurrent/Executor;

    .line 27
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 29
    return-void
.end method

.method public final onDisplayAdded(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onDisplayChanged(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    .line 6
    move-result v0

    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->getDisplaySizeAndUpdateColorExtractor()V

    .line 12
    :cond_0
    return-void
    .line 15
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onMiniBitmapUpdated()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLongExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 4
    new-instance v1, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda0;

    .line 6
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;I)V

    .line 9
    check-cast v0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 12
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 14
    return-void
    .line 17
.end method

.method public final onOffsetsChanged(FFFFII)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    cmpl-float p1, p3, p1

    .line 3
    const/4 p2, 0x1

    .line 5
    if-lez p1, :cond_0

    .line 6
    const/high16 p1, 0x3f800000    # 1.0f

    .line 8
    cmpg-float p4, p3, p1

    .line 10
    if-gtz p4, :cond_0

    .line 12
    div-float/2addr p1, p3

    .line 14
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 15
    move-result p1

    .line 18
    add-int/2addr p1, p2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move p1, p2

    .line 21
    :goto_0
    iget-object p3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 22
    iget p3, p3, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPages:I

    .line 24
    if-ne p1, p3, :cond_1

    .line 26
    iget-object p3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 28
    iget-boolean p3, p3, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPagesComputed:Z

    .line 30
    if-nez p3, :cond_2

    .line 32
    :cond_1
    iget-object p3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 34
    iput p1, p3, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPages:I

    .line 36
    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 38
    iput-boolean p2, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPagesComputed:Z

    .line 40
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWallpaperLocalColorExtractor:Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;

    .line 42
    iget p1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPages:I

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    new-instance p2, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda3;

    .line 49
    invoke-direct {p2, p0, p1}, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;I)V

    .line 51
    iget-object p0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mLongExecutor:Ljava/util/concurrent/Executor;

    .line 54
    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 56
    :cond_2
    return-void
    .line 59
.end method

.method public final onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 3
    return-void
    .line 5
.end method

.method public final onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 2
    iget-object p1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLongExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 4
    new-instance v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda0;

    .line 6
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;I)V

    .line 9
    check-cast p1, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 12
    invoke-virtual {p1, v0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 14
    return-void
    .line 17
.end method

.method public recomputeColorExtractorMiniBitmap()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWallpaperLocalColorExtractor:Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mBitmap:Landroid/graphics/Bitmap;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v1, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda0;

    .line 9
    const/4 v2, 0x2

    .line 11
    invoke-direct {v1, v0, p0, v2}, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;Ljava/lang/Object;I)V

    .line 12
    iget-object p0, v0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mLongExecutor:Ljava/util/concurrent/Executor;

    .line 15
    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 17
    return-void
    .line 20
.end method

.method public final removeLocalColorsAreas(Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWallpaperLocalColorExtractor:Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda0;

    .line 7
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;Ljava/lang/Object;I)V

    .line 10
    iget-object p0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mLongExecutor:Ljava/util/concurrent/Executor;

    .line 13
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 15
    return-void
    .line 18
.end method

.method public final shouldWaitForEngineShown()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final shouldZoomOutWallpaper()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final supportsLocalColorExtraction()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final unloadBitmapIfNotUsedInternal()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mBitmapUsages:I

    .line 2
    add-int/lit8 v0, v0, -0x1

    .line 4
    iput v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mBitmapUsages:I

    .line 6
    if-gtz v0, :cond_1

    .line 8
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mBitmapUsages:I

    .line 11
    const-string v0, "ImageWallpaper.CanvasEngine#unloadBitmap"

    .line 13
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mBitmap:Landroid/graphics/Bitmap;

    .line 18
    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mBitmap:Landroid/graphics/Bitmap;

    .line 26
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    .line 28
    move-result-object v0

    .line 31
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 32
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/view/Surface;->hwuiDestroy()V

    .line 36
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 39
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    .line 41
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 44
    :cond_1
    return-void
    .line 47
.end method
