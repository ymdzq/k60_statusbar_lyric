.class public Lcom/miui/maml/component/MamlSurface;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/miui/maml/RendererController$IRenderable;


# static fields
.field public static final MODE_ASSETS_FOLDER:I = 0x2

.field public static final MODE_FOLDER:I = 0x3

.field public static final MODE_ZIP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MamlSurface"


# instance fields
.field private final mCommandListener:Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

.field private mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

.field private mExternCommandListener:Ljava/lang/ref/WeakReference;

.field private volatile mFinished:Z

.field private mIsSuperWallpaper:Z

.field private mRoot:Lcom/miui/maml/ScreenElementRoot;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;Landroid/service/wallpaper/WallpaperService$Engine;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lcom/miui/maml/component/MamlSurface$1;

    invoke-direct {v0, p0}, Lcom/miui/maml/component/MamlSurface$1;-><init>(Lcom/miui/maml/component/MamlSurface;)V

    iput-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mCommandListener:Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/maml/component/MamlSurface;->load(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;Landroid/service/wallpaper/WallpaperService$Engine;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILandroid/service/wallpaper/WallpaperService$Engine;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/miui/maml/component/MamlSurface;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/service/wallpaper/WallpaperService$Engine;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILandroid/service/wallpaper/WallpaperService$Engine;Z)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/miui/maml/component/MamlSurface;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/service/wallpaper/WallpaperService$Engine;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/service/wallpaper/WallpaperService$Engine;Z)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/miui/maml/component/MamlSurface$1;

    invoke-direct {v0, p0}, Lcom/miui/maml/component/MamlSurface$1;-><init>(Lcom/miui/maml/component/MamlSurface;)V

    iput-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mCommandListener:Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/maml/component/MamlSurface;->getResourceLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/maml/ResourceLoader;

    move-result-object p2

    invoke-direct {p0, p1, p2, p5, p6}, Lcom/miui/maml/component/MamlSurface;->load(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;Landroid/service/wallpaper/WallpaperService$Engine;Z)V

    return-void
.end method

.method public static synthetic access$000(Lcom/miui/maml/component/MamlSurface;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/component/MamlSurface;->mExternCommandListener:Ljava/lang/ref/WeakReference;

    .line 2
    return-object p0
    .line 4
.end method

.method private finish()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/component/MamlSurface;->mFinished:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/miui/maml/component/MamlSurface;->mFinished:Z

    .line 7
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    .line 10
    iget-object v1, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 12
    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->selfFinish()V

    .line 16
    iget-object v1, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 19
    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->detachFromVsync()V

    .line 21
    iget-object v1, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 24
    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 26
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lcom/miui/maml/data/Variables;->reset()V

    .line 30
    iget-object v1, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 33
    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 35
    move-result-object v1

    .line 38
    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 39
    invoke-static {}, Lcom/miui/maml/ResourceManager;->clear()V

    .line 41
    iput-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 44
    :cond_0
    return-void
    .line 46
.end method

.method private getResourceLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/maml/ResourceLoader;
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    if-eq p4, p0, :cond_2

    .line 3
    const/4 p0, 0x2

    .line 5
    if-eq p4, p0, :cond_1

    .line 6
    const/4 p0, 0x3

    .line 8
    if-eq p4, p0, :cond_0

    .line 9
    const/4 p0, 0x0

    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance p0, Lcom/miui/maml/util/FolderResourceLoader;

    .line 13
    invoke-direct {p0, p2}, Lcom/miui/maml/util/FolderResourceLoader;-><init>(Ljava/lang/String;)V

    .line 15
    return-object p0

    .line 18
    :cond_1
    new-instance p0, Lcom/miui/maml/util/AssetsResourceLoader;

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/util/AssetsResourceLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    return-object p0

    .line 24
    :cond_2
    new-instance p0, Lcom/miui/maml/util/ZipResourceLoader;

    .line 25
    invoke-direct {p0, p2, p3}, Lcom/miui/maml/util/ZipResourceLoader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-object p0
    .line 30
.end method

.method private load(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;Landroid/service/wallpaper/WallpaperService$Engine;Z)V
    .locals 1

    .line 1
    invoke-virtual {p3}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    .line 2
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 6
    iput-object p3, p0, Lcom/miui/maml/component/MamlSurface;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    .line 8
    iput-boolean p4, p0, Lcom/miui/maml/component/MamlSurface;->mIsSuperWallpaper:Z

    .line 10
    if-eqz p2, :cond_0

    .line 12
    new-instance p3, Lcom/miui/maml/ResourceManager;

    .line 14
    invoke-direct {p3, p2}, Lcom/miui/maml/ResourceManager;-><init>(Lcom/miui/maml/ResourceLoader;)V

    .line 16
    new-instance p2, Lcom/miui/maml/ScreenElementRoot;

    .line 19
    new-instance p4, Lcom/miui/maml/ScreenContext;

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 23
    move-result-object p1

    .line 26
    invoke-direct {p4, p1, p3}, Lcom/miui/maml/ScreenContext;-><init>(Landroid/content/Context;Lcom/miui/maml/ResourceManager;)V

    .line 27
    invoke-direct {p2, p4}, Lcom/miui/maml/ScreenElementRoot;-><init>(Lcom/miui/maml/ScreenContext;)V

    .line 30
    invoke-virtual {p2, p0}, Lcom/miui/maml/ScreenElementRoot;->setMamlSurface(Lcom/miui/maml/component/MamlSurface;)V

    .line 33
    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->load()Z

    .line 36
    move-result p1

    .line 39
    if-eqz p1, :cond_0

    .line 40
    iput-object p2, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 42
    iget-object p1, p0, Lcom/miui/maml/component/MamlSurface;->mCommandListener:Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

    .line 44
    invoke-virtual {p2, p1}, Lcom/miui/maml/ScreenElementRoot;->setMamlSurfaceOnExternCommandListener(Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;)V

    .line 46
    iget-object p1, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 49
    invoke-virtual {p1, p0}, Lcom/miui/maml/ScreenElementRoot;->setRenderControllerRenderable(Lcom/miui/maml/RendererController$IRenderable;)V

    .line 51
    iget-object p1, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 54
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->attachToVsync()V

    .line 56
    iget-object p1, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 59
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->selfInit()V

    .line 61
    iget-object p1, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 64
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->isTransparentSurface()Z

    .line 66
    move-result p1

    .line 69
    if-eqz p1, :cond_0

    .line 70
    iget-object p0, p0, Lcom/miui/maml/component/MamlSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 72
    if-eqz p0, :cond_0

    .line 74
    const/4 p1, -0x2

    .line 76
    invoke-interface {p0, p1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 77
    :cond_0
    return-void
    .line 80
.end method


# virtual methods
.method public doRender()V
    .locals 5

    .line 1
    const-string/jumbo v0, "unlockCanvasAndPost exception."

    .line 2
    const-string v1, "MamlSurface"

    .line 5
    iget-object v2, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 7
    if-eqz v2, :cond_5

    .line 9
    iget-object v3, p0, Lcom/miui/maml/component/MamlSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 11
    if-eqz v3, :cond_5

    .line 13
    const/4 v3, 0x0

    .line 15
    :try_start_0
    invoke-virtual {v2}, Lcom/miui/maml/ScreenElementRoot;->isUseHardwareCanvas()Z

    .line 16
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    iget-object v2, p0, Lcom/miui/maml/component/MamlSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 22
    invoke-interface {v2}, Landroid/view/SurfaceHolder;->lockHardwareCanvas()Landroid/graphics/Canvas;

    .line 24
    move-result-object v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v2, p0, Lcom/miui/maml/component/MamlSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 29
    invoke-interface {v2}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    .line 31
    move-result-object v2

    .line 34
    :goto_0
    move-object v3, v2

    .line 35
    if-nez v3, :cond_2

    .line 36
    const-string v2, ":( fail to lock canvas."

    .line 38
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    if-eqz v3, :cond_1

    .line 43
    :try_start_1
    iget-object p0, p0, Lcom/miui/maml/component/MamlSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 45
    invoke-interface {p0, v3}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 47
    goto :goto_1

    .line 50
    :catch_0
    move-exception p0

    .line 51
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    :cond_1
    :goto_1
    return-void

    .line 55
    :cond_2
    :try_start_2
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 56
    const/4 v4, 0x0

    .line 58
    invoke-virtual {v3, v4, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 59
    iget-object v2, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 62
    invoke-virtual {v2, v3}, Lcom/miui/maml/elements/ScreenElement;->render(Landroid/graphics/Canvas;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    :try_start_3
    iget-object v2, p0, Lcom/miui/maml/component/MamlSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 67
    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 69
    goto :goto_2

    .line 72
    :catchall_0
    move-exception v2

    .line 73
    goto :goto_3

    .line 74
    :catch_1
    move-exception v2

    .line 75
    :try_start_4
    const-string v4, "render oom error."

    .line 76
    invoke-static {v1, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 78
    if-eqz v3, :cond_3

    .line 81
    :try_start_5
    iget-object v2, p0, Lcom/miui/maml/component/MamlSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 83
    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 85
    goto :goto_2

    .line 88
    :catch_2
    move-exception v2

    .line 89
    :try_start_6
    const-string v4, "render exception."

    .line 90
    invoke-static {v1, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 92
    if-eqz v3, :cond_3

    .line 95
    :try_start_7
    iget-object v2, p0, Lcom/miui/maml/component/MamlSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 97
    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 99
    goto :goto_2

    .line 102
    :catch_3
    move-exception v2

    .line 103
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 107
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->doneRender()V

    .line 109
    goto :goto_5

    .line 112
    :goto_3
    if-eqz v3, :cond_4

    .line 113
    :try_start_8
    iget-object p0, p0, Lcom/miui/maml/component/MamlSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 115
    invoke-interface {p0, v3}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 117
    goto :goto_4

    .line 120
    :catch_4
    move-exception p0

    .line 121
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    :cond_4
    :goto_4
    throw v2

    .line 125
    :cond_5
    :goto_5
    return-void
.end method

.method public doneRender()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->doneRender()V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public finalize()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/component/MamlSurface;->finish()V

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 5
    return-void
    .line 8
.end method

.method public getParentSurfaceControl()Landroid/view/SurfaceControl;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public getRoot()Lcom/miui/maml/ScreenElementRoot;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    return-object p0
    .line 4
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/component/MamlSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 2
    return-object p0
    .line 4
.end method

.method public getVariables()Lcom/miui/maml/data/Variables;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 6
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return-object p0
    .line 12
.end method

.method public isIsSuperWallpaper()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/component/MamlSurface;->mIsSuperWallpaper:Z

    .line 2
    return p0
    .line 4
.end method

.method public isLoaded()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
    .line 9
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    const-string v0, "MamlSurface"

    .line 2
    const-string v1, "onDestroy"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-direct {p0}, Lcom/miui/maml/component/MamlSurface;->finish()V

    .line 9
    return-void
    .line 12
.end method

.method public onPause()V
    .locals 2

    .line 1
    const-string v0, "MamlSurface"

    .line 2
    const-string v1, "onPause"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p0, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 9
    if-eqz p0, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->selfPause()V

    .line 13
    :cond_0
    return-void
    .line 16
.end method

.method public onResume()V
    .locals 2

    .line 1
    const-string v0, "MamlSurface"

    .line 2
    const-string v1, "onResume"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p0, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 9
    if-eqz p0, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->selfResume()V

    .line 13
    :cond_0
    return-void
    .line 16
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->onTouch(Landroid/view/MotionEvent;)Z

    .line 6
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
    .line 12
.end method

.method public requestUpdate()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public sendCommand(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public setAutoDarkenWallpaper(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->setAutoDarkenWallpaper(Z)V

    .line 7
    :cond_0
    return-void
    .line 10
.end method

.method public setConfig(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->setConfig(Ljava/lang/String;)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public setOnExternCommandListener(Lcom/miui/maml/component/MamlSurface$OnExternCommandListener;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 8
    move-object p1, v0

    .line 11
    :goto_0
    iput-object p1, p0, Lcom/miui/maml/component/MamlSurface;->mExternCommandListener:Ljava/lang/ref/WeakReference;

    .line 12
    return-void
    .line 14
.end method

.method public setSaveConfigOnlyInPause(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->setSaveConfigViaProvider(Z)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public setSaveConfigViaProvider(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->setSaveConfigViaProvider(Z)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method
