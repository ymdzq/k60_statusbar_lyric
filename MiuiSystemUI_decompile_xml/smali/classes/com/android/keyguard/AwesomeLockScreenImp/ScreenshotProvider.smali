.class public final Lcom/android/keyguard/AwesomeLockScreenImp/ScreenshotProvider;
.super Lcom/miui/maml/elements/BitmapProvider;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static synthetic access$000(Lcom/android/keyguard/AwesomeLockScreenImp/ScreenshotProvider;)Lcom/miui/maml/ScreenElementRoot;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/BitmapProvider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$100(Lcom/android/keyguard/AwesomeLockScreenImp/ScreenshotProvider;)Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 2
    return-object p0
    .line 4
.end method


# virtual methods
.method public final reset()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/BitmapProvider;->reset()V

    .line 2
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 5
    const-string v1, "__is_secure"

    .line 7
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->getRawAttr(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 12
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    const-class v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 19
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 24
    check-cast v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 25
    new-instance v1, Lcom/android/keyguard/AwesomeLockScreenImp/ScreenshotProvider$1;

    .line 27
    invoke-direct {v1, p0, v0}, Lcom/android/keyguard/AwesomeLockScreenImp/ScreenshotProvider$1;-><init>(Lcom/android/keyguard/AwesomeLockScreenImp/ScreenshotProvider;Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;)V

    .line 29
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 32
    const/4 v0, 0x0

    .line 34
    new-array v0, v0, [Ljava/lang/Void;

    .line 35
    invoke-virtual {v1, p0, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 37
    :cond_0
    return-void
    .line 40
.end method
