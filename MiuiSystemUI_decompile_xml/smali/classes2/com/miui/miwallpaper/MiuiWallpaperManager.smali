.class public final Lcom/miui/miwallpaper/MiuiWallpaperManager;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final IS_FOLD_DEVICE:Z

.field public static final MI_WALLPAPER_WHICH_ALL:I

.field public static final WALLPAPER_INIT_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static volatile sInstance:Lcom/miui/miwallpaper/MiuiWallpaperManager;


# instance fields
.field public final mBroadcastReceiver:Lcom/miui/miwallpaper/MiuiWallpaperManager$2;

.field public final mContext:Landroid/content/Context;

.field public mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public final mInitCallbacks:Ljava/util/HashSet;

.field public final mInitSync:Z

.field public volatile mService:Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;

.field public final mServiceConnection:Lcom/miui/miwallpaper/MiuiWallpaperManager$1;

.field public final mWallpaperChangeCallbacks:Ljava/util/HashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    .line 2
    const-string v1, "com.miui.miwallpaper.wallpaperservice.ImageWallpaper"

    .line 4
    const-string v2, "com.miui.miwallpaper"

    .line 6
    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v0, Landroid/content/ComponentName;

    .line 11
    const-string v1, "com.miui.miwallpaper.MiWallpaper"

    .line 13
    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    const/4 v0, 0x1

    .line 18
    const/4 v1, 0x0

    .line 19
    :try_start_0
    const-string v2, "android.os.SystemProperties"

    .line 20
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 22
    move-result-object v2

    .line 25
    const-string v3, "getInt"

    .line 26
    const/4 v4, 0x2

    .line 28
    new-array v5, v4, [Ljava/lang/Class;

    .line 29
    const-class v6, Ljava/lang/String;

    .line 31
    aput-object v6, v5, v1

    .line 33
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 35
    aput-object v6, v5, v0

    .line 37
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 39
    move-result-object v3

    .line 42
    new-array v5, v4, [Ljava/lang/Object;

    .line 43
    const-string v6, "persist.sys.muiltdisplay_type"

    .line 45
    aput-object v6, v5, v1

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v6

    .line 52
    aput-object v6, v5, v0

    .line 53
    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    move-result-object v2

    .line 58
    check-cast v2, Ljava/lang/Integer;

    .line 59
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 61
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    if-ne v2, v4, :cond_0

    .line 65
    move v1, v0

    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception v2

    .line 69
    const-string v3, "MiuiWallpaperManager"

    .line 70
    const-string v4, "isFoldDevices fail : "

    .line 72
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    :cond_0
    :goto_0
    sput-boolean v1, Lcom/miui/miwallpaper/MiuiWallpaperManager;->IS_FOLD_DEVICE:Z

    .line 77
    if-eqz v1, :cond_1

    .line 79
    const/16 v1, 0xf

    .line 81
    goto :goto_1

    .line 83
    :cond_1
    const/4 v1, 0x3

    .line 84
    :goto_1
    sput v1, Lcom/miui/miwallpaper/MiuiWallpaperManager;->MI_WALLPAPER_WHICH_ALL:I

    .line 85
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 87
    move-result-object v1

    .line 90
    sput-object v1, Lcom/miui/miwallpaper/MiuiWallpaperManager;->WALLPAPER_INIT_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 91
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    .line 93
    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 95
    return-void
    .line 98
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mInitSync:Z

    .line 6
    new-instance v1, Lcom/miui/miwallpaper/MiuiWallpaperManager$1;

    .line 8
    invoke-direct {v1, p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager$1;-><init>(Lcom/miui/miwallpaper/MiuiWallpaperManager;)V

    .line 10
    iput-object v1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mServiceConnection:Lcom/miui/miwallpaper/MiuiWallpaperManager$1;

    .line 13
    new-instance v1, Lcom/miui/miwallpaper/MiuiWallpaperManager$2;

    .line 15
    invoke-direct {v1, p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager$2;-><init>(Lcom/miui/miwallpaper/MiuiWallpaperManager;)V

    .line 17
    iput-object v1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mBroadcastReceiver:Lcom/miui/miwallpaper/MiuiWallpaperManager$2;

    .line 20
    new-instance v1, Ljava/util/HashSet;

    .line 22
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 24
    iput-object v1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mInitCallbacks:Ljava/util/HashSet;

    .line 27
    new-instance v1, Ljava/util/HashMap;

    .line 29
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 31
    iput-object v1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mWallpaperChangeCallbacks:Ljava/util/HashMap;

    .line 34
    iput-object p1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mContext:Landroid/content/Context;

    .line 36
    iput-boolean v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mInitSync:Z

    .line 38
    return-void
    .line 40
.end method

.method public static access$000(Lcom/miui/miwallpaper/MiuiWallpaperManager;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v0, Landroid/content/Intent;

    .line 5
    const-string v1, "android.service.wallpaper.WallPaperControllerService"

    .line 7
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9
    const-string v1, "com.miui.miwallpaper"

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    iget-object v1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mServiceConnection:Lcom/miui/miwallpaper/MiuiWallpaperManager$1;

    .line 17
    iget-boolean v2, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mInitSync:Z

    .line 19
    const/4 v3, 0x1

    .line 21
    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mContext:Landroid/content/Context;

    .line 22
    if-nez v2, :cond_0

    .line 24
    invoke-virtual {p0, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 26
    goto :goto_0

    .line 29
    :cond_0
    sget-object v2, Lcom/miui/miwallpaper/MiuiWallpaperManager;->WALLPAPER_INIT_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 30
    invoke-virtual {p0, v0, v3, v2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    .line 32
    :goto_0
    return-void
    .line 35
.end method

.method public static getFastBlurColor(Landroid/graphics/Bitmap;)I
    .locals 5

    .line 1
    const/4 v0, -0x1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 3
    move-result v1

    .line 6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 7
    move-result v2

    .line 10
    const/4 v3, 0x0

    .line 11
    :goto_0
    const/4 v4, 0x1

    .line 12
    if-le v1, v4, :cond_1

    .line 13
    div-int/lit8 v1, v1, 0x2

    .line 15
    if-nez v3, :cond_0

    .line 17
    move-object v3, p0

    .line 19
    :cond_0
    invoke-static {v3, v1, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 20
    move-result-object v3

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    :goto_1
    if-le v2, v4, :cond_3

    .line 25
    div-int/lit8 v2, v2, 0x2

    .line 27
    if-nez v3, :cond_2

    .line 29
    move-object v3, p0

    .line 31
    :cond_2
    invoke-static {v3, v1, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 32
    move-result-object v3

    .line 35
    goto :goto_1

    .line 36
    :cond_3
    if-nez v3, :cond_4

    .line 37
    move p0, v0

    .line 39
    goto :goto_2

    .line 40
    :cond_4
    const/4 p0, 0x0

    .line 41
    invoke-virtual {v3, p0, p0}, Landroid/graphics/Bitmap;->getPixel(II)I

    .line 42
    move-result p0

    .line 45
    :goto_2
    invoke-static {v3}, Lcom/miui/miwallpaper/util/BitmapUtils;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 46
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    return p0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    const-string v1, "MiuiWallpaperManager"

    .line 54
    const-string v2, "getFastBlurColor fail : "

    .line 56
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    return v0
    .line 61
.end method


# virtual methods
.method public final bindSystemUIProxy(Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$4;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->isServiceReady()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mService:Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;

    .line 8
    check-cast p0, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub$Proxy;

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 15
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    :try_start_1
    const-string v1, "com.miui.miwallpaper.IMiuiWallpaperManagerService"

    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 21
    const/4 v1, 0x0

    .line 24
    if-eqz p1, :cond_0

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    move-object p1, v1

    .line 28
    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 29
    iget-object p0, p0, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 32
    const/16 p1, 0x10

    .line 34
    const/4 v2, 0x1

    .line 36
    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :try_start_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 40
    goto :goto_1

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 45
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 48
    :catchall_1
    move-exception p0

    .line 49
    const-string p1, "MiuiWallpaperManager"

    .line 50
    const-string v0, "bindSystemUIProxy fail"

    .line 52
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    :cond_1
    :goto_1
    return-void
    .line 57
.end method

.method public final getFitScreenWallpaperPreview(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->getMiuiWallpaperPreview()Landroid/graphics/Bitmap;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p0, :cond_5

    .line 6
    const-class v0, Landroid/view/WindowManager;

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 13
    check-cast p1, Landroid/view/WindowManager;

    .line 14
    invoke-interface {p1}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    .line 16
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 20
    move-result-object p1

    .line 23
    sget-boolean v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->IS_FOLD_DEVICE:Z

    .line 24
    if-nez v0, :cond_1

    .line 26
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    .line 28
    if-eqz v0, :cond_0

    .line 30
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 33
    move-result v0

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 37
    move-result p1

    .line 40
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 41
    move-result v1

    .line 44
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 45
    move-result p1

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 50
    move-result v1

    .line 53
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 54
    move-result p1

    .line 57
    :goto_1
    move v7, v1

    .line 58
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 59
    move-result v3

    .line 62
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 63
    move-result v4

    .line 66
    int-to-float v0, v7

    .line 67
    int-to-float v1, v3

    .line 68
    div-float/2addr v0, v1

    .line 69
    int-to-float v1, p1

    .line 70
    int-to-float v2, v4

    .line 71
    div-float/2addr v1, v2

    .line 72
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 73
    move-result v0

    .line 76
    new-instance v5, Landroid/graphics/Matrix;

    .line 77
    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 79
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 82
    const/4 v1, 0x0

    .line 85
    const/4 v2, 0x0

    .line 86
    const/4 v6, 0x1

    .line 87
    move-object v0, p0

    .line 88
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 89
    move-result-object v0

    .line 92
    if-eq p0, v0, :cond_2

    .line 93
    invoke-static {p0}, Lcom/miui/miwallpaper/util/BitmapUtils;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 95
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 98
    move-result v1

    .line 101
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 102
    move-result v2

    .line 105
    const/4 v3, 0x0

    .line 106
    if-le v1, v7, :cond_3

    .line 107
    sub-int/2addr v1, v7

    .line 109
    div-int/lit8 v1, v1, 0x2

    .line 110
    goto :goto_2

    .line 112
    :cond_3
    move v1, v3

    .line 113
    :goto_2
    if-le v2, p1, :cond_4

    .line 114
    sub-int/2addr v2, p1

    .line 116
    div-int/lit8 v3, v2, 0x2

    .line 117
    :cond_4
    invoke-static {v0, v1, v3, v7, p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 119
    move-result-object p0

    .line 122
    if-eq p0, v0, :cond_5

    .line 123
    invoke-static {v0}, Lcom/miui/miwallpaper/util/BitmapUtils;->recycleBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    goto :goto_3

    .line 128
    :catchall_0
    move-exception p1

    .line 129
    const-string v0, "MiuiWallpaperManager"

    .line 130
    const-string v1, "getScreenCenterCropWallpaperPreview fail"

    .line 132
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    :cond_5
    :goto_3
    return-object p0
    .line 137
.end method

.method public final getMiuiWallpaperColors()Landroid/app/WallpaperColors;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->isServiceReady()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mService:Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;

    .line 8
    check-cast p0, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub$Proxy;

    .line 10
    invoke-virtual {p0}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub$Proxy;->getMiuiWallpaperColors()Landroid/app/WallpaperColors;

    .line 12
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    return-object p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    const-string v0, "MiuiWallpaperManager"

    .line 18
    const-string v1, "getMiuiWallpaperColors fail : "

    .line 20
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 25
    return-object p0
    .line 26
.end method

.method public final getMiuiWallpaperPreview()Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->isServiceReady()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mService:Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;

    .line 9
    check-cast v0, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub$Proxy;

    .line 11
    invoke-virtual {v0}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub$Proxy;->getMiuiWallpaperPreview()Landroid/os/ParcelFileDescriptor;

    .line 13
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 16
    if-nez v0, :cond_0

    .line 17
    :try_start_1
    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mContext:Landroid/content/Context;

    .line 19
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 21
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 25
    move-result-object p0

    .line 28
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 29
    if-eqz p0, :cond_1

    .line 31
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 33
    move-result-object p0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-static {v0}, Lcom/miui/miwallpaper/MiuiWallpaperFileUtils;->readFromFile(Landroid/os/ParcelFileDescriptor;)Landroid/graphics/Bitmap;

    .line 38
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :goto_0
    move-object v1, p0

    .line 42
    :cond_1
    if-eqz v0, :cond_3

    .line 43
    :try_start_2
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 45
    goto :goto_2

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    :try_start_3
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 52
    goto :goto_1

    .line 55
    :catchall_1
    move-exception v0

    .line 56
    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 57
    :cond_2
    :goto_1
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 60
    :catchall_2
    move-exception p0

    .line 61
    const-string v0, "MiuiWallpaperManager"

    .line 62
    const-string v2, "getMiuiWallpaperPath fail : "

    .line 64
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    :cond_3
    :goto_2
    return-object v1
    .line 69
.end method

.method public final isServiceReady()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mService:Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;

    .line 2
    if-nez p0, :cond_0

    .line 4
    const-string p0, "MiuiWallpaperManager"

    .line 6
    const-string v0, "mService is null."

    .line 8
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x1

    .line 15
    return p0
    .line 16
.end method

.method public final registerWallpaperChangeListener(Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->isServiceReady()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    if-lez p2, :cond_0

    .line 8
    sget v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->MI_WALLPAPER_WHICH_ALL:I

    .line 10
    if-gt p2, v0, :cond_0

    .line 12
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    if-nez v0, :cond_1

    .line 17
    const-string v1, "isValidWhich: which = "

    .line 19
    const-string v2, "MiuiWallpaperManager"

    .line 21
    invoke-static {v1, p2, v2}, Lcom/android/keyguard/widget/PasswordTextViewForPIN$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    :cond_1
    if-eqz v0, :cond_2

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mWallpaperChangeCallbacks:Ljava/util/HashMap;

    .line 28
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 30
    :try_start_1
    iget-object v1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mWallpaperChangeCallbacks:Ljava/util/HashMap;

    .line 31
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v2

    .line 36
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :try_start_2
    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mService:Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;

    .line 41
    check-cast p0, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub$Proxy;

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub$Proxy;->registerWallpaperChangeListener(Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 45
    goto :goto_1

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 50
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 51
    :catchall_1
    move-exception p0

    .line 52
    const-string p1, "MiuiWallpaperManager"

    .line 53
    const-string p2, "registerWallpaperChangeListener fail : "

    .line 55
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    :cond_2
    :goto_1
    return-void
    .line 60
.end method
