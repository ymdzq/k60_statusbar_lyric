.class public final Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public mCache:Landroid/graphics/Bitmap;

.field public mCached:Z

.field public mCurrentUserId:I

.field public final mH:Landroid/os/Handler;

.field public mLoader:Landroid/os/AsyncTask;

.field public final mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field public final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>(Landroid/app/WallpaperManager;Landroid/app/IWallpaperManager;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/NotificationMediaManager;Landroid/os/Handler;Lcom/android/systemui/settings/UserTracker;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    .line 2
    const-class v0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    .line 5
    const-string v0, "LockscreenWallpaper"

    .line 7
    invoke-virtual {p3, v0, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 9
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 12
    check-cast p6, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 14
    invoke-virtual {p6}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 16
    move-result p3

    .line 19
    iput p3, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mCurrentUserId:I

    .line 20
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 22
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mH:Landroid/os/Handler;

    .line 24
    if-eqz p2, :cond_0

    .line 26
    invoke-virtual {p1}, Landroid/app/WallpaperManager;->isLockscreenLiveWallpaperEnabled()Z

    .line 28
    move-result p1

    .line 31
    if-nez p1, :cond_0

    .line 32
    :try_start_0
    invoke-interface {p2, p0}, Landroid/app/IWallpaperManager;->setLockWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    .line 39
    const-string p2, "System dead?"

    .line 41
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 52
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    :goto_0
    return-void
    .line 56
.end method


# virtual methods
.method public final assertLockscreenLiveWallpaperNotEnabled()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 2
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->isLockscreenLiveWallpaperEnabled()Z

    .line 4
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 11
    const-string v0, "Methods from LockscreenWallpaper.java should not be called in this version. The lock screen wallpaper should be managed by the WallpaperManagerService and not by this class."

    .line 13
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    throw p0
    .line 18
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    const-class p2, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    .line 2
    const-string p2, "LockscreenWallpaper:"

    .line 4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6
    new-instance p2, Lcom/android/internal/util/IndentingPrintWriter;

    .line 9
    const-string v0, "  "

    .line 11
    invoke-direct {p2, p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 16
    move-result-object p1

    .line 19
    new-instance p2, Ljava/lang/StringBuilder;

    .line 20
    const-string v0, "mCached="

    .line 22
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mCached:Z

    .line 27
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p2

    .line 35
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 36
    new-instance p2, Ljava/lang/StringBuilder;

    .line 39
    const-string v0, "mCache="

    .line 41
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mCache:Landroid/graphics/Bitmap;

    .line 46
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p2

    .line 54
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    .line 58
    const-string v0, "mCurrentUserId="

    .line 60
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    iget p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mCurrentUserId:I

    .line 65
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object p0

    .line 73
    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 74
    const-string p0, "mSelectedUser=null"

    .line 77
    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 79
    return-void
    .line 82
.end method

.method public final onWallpaperChanged()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->assertLockscreenLiveWallpaperNotEnabled()V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->assertLockscreenLiveWallpaperNotEnabled()V

    .line 5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mH:Landroid/os/Handler;

    .line 8
    if-nez v0, :cond_0

    .line 10
    const-string p0, "LockscreenWallpaper"

    .line 12
    const-string v0, "Trying to use LockscreenWallpaper before initialization."

    .line 14
    invoke-static {p0, v0}, Landroid/util/Log;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 20
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mH:Landroid/os/Handler;

    .line 23
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    :goto_0
    return-void
    .line 28
.end method

.method public final onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->assertLockscreenLiveWallpaperNotEnabled()V

    .line 2
    return-void
    .line 5
.end method

.method public final run()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->assertLockscreenLiveWallpaperNotEnabled()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mLoader:Landroid/os/AsyncTask;

    .line 5
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 10
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mCurrentUserId:I

    .line 13
    new-instance v2, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;

    .line 15
    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;-><init>(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;I)V

    .line 17
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 20
    new-array v1, v1, [Ljava/lang/Void;

    .line 22
    invoke-virtual {v2, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 24
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mLoader:Landroid/os/AsyncTask;

    .line 28
    return-void
    .line 30
.end method
