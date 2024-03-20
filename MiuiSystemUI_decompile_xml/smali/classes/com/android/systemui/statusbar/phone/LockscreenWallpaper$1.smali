.class public final Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;
.super Landroid/os/AsyncTask;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

.field public final synthetic val$currentUser:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    .line 2
    iput p2, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;->val$currentUser:I

    .line 4
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    .line 4
    iget p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;->val$currentUser:I

    .line 6
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->assertLockscreenLiveWallpaperNotEnabled()V

    .line 8
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 11
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->isWallpaperSupported()Z

    .line 13
    move-result v0

    .line 16
    const/4 v1, 0x1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez v0, :cond_0

    .line 19
    new-instance p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;

    .line 21
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 23
    goto :goto_2

    .line 26
    :cond_0
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 27
    const/4 v0, 0x2

    .line 29
    invoke-virtual {p1, v0, p0}, Landroid/app/WallpaperManager;->getWallpaperFile(II)Landroid/os/ParcelFileDescriptor;

    .line 30
    move-result-object p0

    .line 33
    if-eqz p0, :cond_1

    .line 34
    :try_start_0
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    .line 36
    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 38
    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    .line 41
    iput-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 43
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 45
    move-result-object v0

    .line 48
    invoke-static {v0, v2, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 49
    move-result-object p1

    .line 52
    new-instance v0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;

    .line 53
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;-><init>(Landroid/graphics/Bitmap;Z)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    move-object p1, v0

    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    goto :goto_1

    .line 61
    :catch_0
    move-exception p1

    .line 62
    :try_start_1
    const-string v0, "LockscreenWallpaper"

    .line 63
    const-string v1, "Can\'t decode file"

    .line 65
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    new-instance p1, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;

    .line 70
    const/4 v0, 0x0

    .line 72
    invoke-direct {p1, v2, v0}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;-><init>(Landroid/graphics/Bitmap;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    :goto_0
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 76
    move-object p0, p1

    .line 79
    goto :goto_2

    .line 80
    :goto_1
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 81
    throw p1

    .line 84
    :cond_1
    new-instance p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;

    .line 85
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 87
    :goto_2
    return-object p0
    .line 90
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    .line 7
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;->success:Z

    .line 14
    if-eqz v0, :cond_1

    .line 16
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    .line 18
    const/4 v1, 0x1

    .line 20
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mCached:Z

    .line 21
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;->bitmap:Landroid/graphics/Bitmap;

    .line 23
    iput-object p1, v0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mCache:Landroid/graphics/Bitmap;

    .line 25
    iget-object p1, v0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 27
    invoke-virtual {p1, v1, v1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->updateMediaMetaData(ZZ)V

    .line 29
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    .line 32
    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mLoader:Landroid/os/AsyncTask;

    .line 35
    :goto_0
    return-void
    .line 37
.end method
