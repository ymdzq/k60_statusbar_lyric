.class public final Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil$SnapshotOverlay;
.super Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private screenshotBuffer:Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;


# direct methods
.method public static synthetic $r8$lambda$aqHrIqher_C5ckat9WntgHA0Jyo(Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil$SnapshotOverlay;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil$SnapshotOverlay;->lambda$surfaceCreated$1()V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$lX-Z2zqjyS2cOQn5tVUHfRhQK60(Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil$SnapshotOverlay;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil$SnapshotOverlay;->lambda$attach$0()V

    .line 2
    return-void
    .line 5
.end method

.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->getBGExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    .line 2
    move-result-object v0

    .line 5
    invoke-direct {p0, p1, v0, p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 6
    iput-object p3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil$SnapshotOverlay;->mLock:Ljava/lang/Object;

    .line 9
    return-void
    .line 11
.end method

.method private synthetic lambda$attach$0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil$SnapshotOverlay;->mLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mTaskBounds:Landroid/graphics/Rect;

    .line 5
    const v2, 0x3e99999a    # 0.3f

    .line 7
    invoke-virtual {p0, v1, v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil$SnapshotOverlay;->attachSnapshotToSurface(Landroid/graphics/Rect;F)V

    .line 10
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
    .line 17
.end method

.method private synthetic lambda$surfaceCreated$1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil$SnapshotOverlay;->mLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mTaskBounds:Landroid/graphics/Rect;

    .line 5
    const v2, 0x3e99999a    # 0.3f

    .line 7
    invoke-virtual {p0, v1, v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil$SnapshotOverlay;->attachSnapshotToSurface(Landroid/graphics/Rect;F)V

    .line 10
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
    .line 17
.end method


# virtual methods
.method public attach(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil$IconOverlay$$ExternalSyntheticLambda0;

    .line 2
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil$IconOverlay$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;I)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->execute(Ljava/lang/Runnable;)V

    .line 8
    invoke-super {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->attach(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    .line 11
    move-result-object p0

    .line 14
    return-object p0
    .line 15
.end method

.method public attachSnapshotToSurface(Landroid/graphics/Rect;F)V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 9
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 13
    :cond_0
    new-instance v1, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 16
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 18
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskSurface()Landroid/view/SurfaceControl;

    .line 20
    move-result-object v2

    .line 23
    invoke-direct {v1, v2}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 24
    invoke-virtual {v1, v0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 27
    move-result-object v0

    .line 30
    check-cast v0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 31
    invoke-virtual {v0, p2}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setFrameScale(F)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 33
    move-result-object p2

    .line 36
    check-cast p2, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 37
    const/4 v0, 0x1

    .line 39
    invoke-virtual {p2, v0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setPixelFormat(I)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 40
    move-result-object p2

    .line 43
    check-cast p2, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 44
    invoke-virtual {p2, v0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setChildrenOnly(Z)Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 46
    move-result-object p2

    .line 49
    invoke-virtual {p2, v0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 50
    move-result-object p2

    .line 53
    check-cast p2, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 54
    invoke-virtual {p2, v0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setAllowProtected(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 56
    move-result-object p2

    .line 59
    check-cast p2, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 60
    invoke-virtual {p2}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$LayerCaptureArgs;

    .line 62
    move-result-object p2

    .line 65
    invoke-static {p2}, Landroid/window/ScreenCapture;->captureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 66
    move-result-object p2

    .line 69
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil$SnapshotOverlay;->screenshotBuffer:Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 70
    if-nez p2, :cond_1

    .line 72
    const-string p0, "MiuiInfinityModeStaticVeil"

    .line 74
    const-string p1, "attachSnapshotToSurface error"

    .line 76
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->isValid()Z

    .line 82
    move-result p2

    .line 85
    if-eqz p2, :cond_2

    .line 86
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil$SnapshotOverlay;->screenshotBuffer:Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 88
    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->attachOverlay(Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;Landroid/graphics/Rect;)V

    .line 90
    :cond_2
    :goto_0
    return-void
    .line 93
.end method

.method public createSurface(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->createSurface(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public surfaceCreated(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil$IconOverlay$$ExternalSyntheticLambda0;

    .line 2
    const/4 v0, 0x1

    .line 4
    invoke-direct {p1, p0, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil$IconOverlay$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;I)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->execute(Ljava/lang/Runnable;)V

    .line 8
    return-void
    .line 11
.end method
