.class public final Lcom/android/keyguard/AwesomeLockScreenImp/WallpaperScreenElement;
.super Lcom/miui/maml/elements/ImageScreenElement;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static synthetic access$000(Lcom/android/keyguard/AwesomeLockScreenImp/WallpaperScreenElement;)Lcom/miui/maml/ScreenElementRoot;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$100(Lcom/android/keyguard/AwesomeLockScreenImp/WallpaperScreenElement;)Lcom/miui/maml/ScreenElementRoot;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    return-object p0
    .line 4
.end method


# virtual methods
.method public final init()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ImageScreenElement;->init()V

    .line 2
    const-class v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 5
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 11
    new-instance v1, Lcom/android/keyguard/AwesomeLockScreenImp/WallpaperScreenElement$1;

    .line 13
    invoke-direct {v1, p0, v0}, Lcom/android/keyguard/AwesomeLockScreenImp/WallpaperScreenElement$1;-><init>(Lcom/android/keyguard/AwesomeLockScreenImp/WallpaperScreenElement;Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;)V

    .line 15
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 18
    const/4 v0, 0x0

    .line 20
    new-array v0, v0, [Ljava/lang/Void;

    .line 21
    invoke-virtual {v1, p0, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 23
    return-void
    .line 26
.end method
