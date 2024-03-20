.class public final synthetic Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 10
    check-cast p0, Ljava/util/List;

    .line 12
    iget-object v1, v0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mLock:Ljava/lang/Object;

    .line 14
    monitor-enter v1

    .line 16
    :try_start_0
    invoke-virtual {v0}, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->isActive()Z

    .line 17
    move-result v2

    .line 20
    iget-object v3, v0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mPendingRegions:Ljava/util/List;

    .line 21
    check-cast v3, Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 25
    if-nez v2, :cond_0

    .line 28
    invoke-virtual {v0}, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->isActive()Z

    .line 30
    move-result p0

    .line 33
    if-eqz p0, :cond_0

    .line 34
    iget-object p0, v0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mWallpaperLocalColorExtractorCallback:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$1;

    .line 36
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$1;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    .line 38
    const/4 v2, 0x1

    .line 40
    invoke-virtual {p0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->setOffsetNotificationsEnabled(Z)V

    .line 41
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->processColorsInternal()V

    .line 44
    monitor-exit v1

    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p0

    .line 51
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;

    .line 52
    iget-object p0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 54
    check-cast p0, Ljava/util/List;

    .line 56
    iget-object v1, v0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mLock:Ljava/lang/Object;

    .line 58
    monitor-enter v1

    .line 60
    :try_start_1
    invoke-virtual {v0}, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->isActive()Z

    .line 61
    move-result v2

    .line 64
    iget-object v3, v0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mPendingRegions:Ljava/util/List;

    .line 65
    check-cast v3, Ljava/util/ArrayList;

    .line 67
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 69
    iget-object v3, v0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mProcessedRegions:Ljava/util/Set;

    .line 72
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v4, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda4;

    .line 77
    invoke-direct {v4, v3}, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda4;-><init>(Ljava/util/Set;)V

    .line 79
    invoke-interface {p0, v4}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 82
    if-eqz v2, :cond_1

    .line 85
    invoke-virtual {v0}, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->isActive()Z

    .line 87
    move-result p0

    .line 90
    if-nez p0, :cond_1

    .line 91
    iget-object p0, v0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mWallpaperLocalColorExtractorCallback:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$1;

    .line 93
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$1;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    .line 95
    const/4 v0, 0x0

    .line 97
    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->setOffsetNotificationsEnabled(Z)V

    .line 98
    :cond_1
    monitor-exit v1

    .line 101
    return-void

    .line 102
    :catchall_1
    move-exception p0

    .line 103
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 104
    throw p0

    .line 105
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;

    .line 106
    iget-object p0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 108
    check-cast p0, Landroid/graphics/Bitmap;

    .line 110
    iget-object v1, v0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mLock:Ljava/lang/Object;

    .line 112
    monitor-enter v1

    .line 114
    :try_start_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 115
    move-result v2

    .line 118
    if-lez v2, :cond_3

    .line 119
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 121
    move-result v2

    .line 124
    if-gtz v2, :cond_2

    .line 125
    goto :goto_1

    .line 127
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 128
    move-result v2

    .line 131
    iput v2, v0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mBitmapWidth:I

    .line 132
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 134
    move-result v2

    .line 137
    iput v2, v0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mBitmapHeight:I

    .line 138
    const-string v2, "WallpaperLocalColorExtractor#createMiniBitmap"

    .line 140
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 145
    move-result v2

    .line 148
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 149
    move-result v3

    .line 152
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 153
    move-result v2

    .line 156
    const/high16 v3, 0x43000000    # 128.0f

    .line 157
    int-to-float v2, v2

    .line 159
    div-float/2addr v3, v2

    .line 160
    const/high16 v2, 0x3f800000    # 1.0f

    .line 161
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 163
    move-result v2

    .line 166
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 167
    move-result v3

    .line 170
    int-to-float v3, v3

    .line 171
    mul-float/2addr v3, v2

    .line 172
    float-to-int v3, v3

    .line 173
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 174
    move-result v4

    .line 177
    int-to-float v4, v4

    .line 178
    mul-float/2addr v2, v4

    .line 179
    float-to-int v2, v2

    .line 180
    invoke-virtual {v0, p0, v3, v2}, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->createMiniBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    .line 181
    move-result-object p0

    .line 184
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 185
    iput-object p0, v0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mMiniBitmap:Landroid/graphics/Bitmap;

    .line 188
    iget-object p0, v0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mWallpaperLocalColorExtractorCallback:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$1;

    .line 190
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$1;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    .line 192
    invoke-virtual {p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->onMiniBitmapUpdated()V

    .line 194
    iget-object p0, v0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mPendingRegions:Ljava/util/List;

    .line 197
    iget-object v2, v0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mProcessedRegions:Ljava/util/Set;

    .line 199
    check-cast p0, Ljava/util/ArrayList;

    .line 201
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 203
    check-cast v2, Landroid/util/ArraySet;

    .line 206
    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 208
    invoke-virtual {v0}, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->processColorsInternal()V

    .line 211
    monitor-exit v1

    .line 214
    goto :goto_2

    .line 215
    :cond_3
    :goto_1
    const-string p0, "WallpaperLocalColorExtractor"

    .line 216
    const-string v0, "Attempt to extract colors from an invalid bitmap"

    .line 218
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    monitor-exit v1

    .line 223
    :goto_2
    return-void

    .line 224
    :catchall_2
    move-exception p0

    .line 225
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 226
    throw p0

    .line 227
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 228
.end method
