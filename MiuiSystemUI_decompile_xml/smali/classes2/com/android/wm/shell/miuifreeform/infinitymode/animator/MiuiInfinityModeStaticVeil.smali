.class public abstract Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;
.super Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final APP_MASK_BLUR_ABS_VALUE:I = 0x78

.field private static final APP_MASK_COLOR:I = -0x7f000001

.field private static final APP_MASK_COLOR_DARK:I = -0x7fe6e6e7

.field private static final APP_MASK_HIDE_TIMEOUT:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "MiuiInfinityModeStaticVeil"


# instance fields
.field protected mAnimIsStopping:Z

.field private mBgExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field protected mDestOverlayAlpha:F

.field private mFreeformStartUp:Z

.field private mHideTimeout:Ljava/lang/Runnable;

.field private mLastResizingBounds:Landroid/graphics/Rect;

.field private mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field protected mOverlayAlpha:F

.field private mResizedBounds:Landroid/graphics/Rect;


# direct methods
.method public static synthetic $r8$lambda$AFBR-CeLzhCUjdpWeQSQsbf9Cco(Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->lambda$stopAnimation$2()V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$OjoMG2dieOd4NZVr4IGNM5b1GBI(Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->lambda$mergeWithBoundsChange$0()V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$ewNLn1j0xQKYNwlb407VID0SmIU(Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->lambda$mergeWithModeChange$1()V

    .line 2
    return-void
    .line 5
.end method

.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;)V

    .line 2
    new-instance p3, Landroid/graphics/Rect;

    .line 5
    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 7
    iput-object p3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->mResizedBounds:Landroid/graphics/Rect;

    .line 10
    new-instance p3, Landroid/graphics/Rect;

    .line 12
    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 14
    iput-object p3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->mLastResizingBounds:Landroid/graphics/Rect;

    .line 17
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->mBgExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 19
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->getMainExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    .line 21
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 25
    return-void
    .line 27
.end method

.method private detectHiddenConditions()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->mAnimIsStopping:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->mFreeformStartUp:Z

    .line 6
    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->mLastResizingBounds:Landroid/graphics/Rect;

    .line 10
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->mResizedBounds:Landroid/graphics/Rect;

    .line 12
    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
    .line 23
.end method

.method private static isDarkTheme(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    move-result-object p0

    .line 9
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 10
    and-int/lit8 p0, p0, 0x30

    .line 12
    const/16 v0, 0x20

    .line 14
    if-ne p0, v0, :cond_0

    .line 16
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
    .line 21
.end method

.method private synthetic lambda$mergeWithBoundsChange$0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->hideOverlay()V

    .line 2
    return-void
    .line 5
.end method

.method private synthetic lambda$mergeWithModeChange$1()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->hideOverlay()V

    .line 2
    return-void
    .line 5
.end method

.method private synthetic lambda$stopAnimation$2()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->hideOverlay()V

    .line 2
    return-void
    .line 5
.end method

.method private showOverlay()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->mDestOverlayAlpha:F

    .line 2
    const/4 v1, 0x0

    .line 4
    cmpl-float v0, v0, v1

    .line 5
    if-nez v0, :cond_0

    .line 7
    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->mDestOverlayAlpha:F

    .line 11
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mSpringAnim:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 13
    const/4 v1, 0x0

    .line 15
    new-array v1, v1, [Ljava/lang/String;

    .line 16
    const v2, 0x3f333333    # 0.7f

    .line 18
    const/high16 v3, 0x3e800000    # 0.25f

    .line 21
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->setSpecial(FF[Ljava/lang/String;)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 23
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mSpringAnim:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 26
    const-string v1, "overlayAlpha"

    .line 28
    iget v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->mDestOverlayAlpha:F

    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->to(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 32
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mSpringAnim:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 35
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->completeTo()V

    .line 37
    :cond_0
    return-void
    .line 40
.end method

.method private tryToHideOverlay()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->detectHiddenConditions()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->hideOverlay()V

    .line 8
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
    .line 14
.end method


# virtual methods
.method public attach(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 2
    move-result-object v6

    .line 5
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 6
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 8
    move-result-object v7

    .line 11
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 12
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationVisualBounds()Landroid/graphics/Rect;

    .line 14
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 18
    move-result v0

    .line 21
    int-to-float v0, v0

    .line 22
    const/high16 v1, 0x3f800000    # 1.0f

    .line 23
    mul-float/2addr v0, v1

    .line 25
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 26
    move-result v1

    .line 29
    int-to-float v1, v1

    .line 30
    div-float v5, v0, v1

    .line 31
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 33
    move-result v0

    .line 36
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 37
    move-result v1

    .line 40
    invoke-virtual {p1, v6, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setBufferSize(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 41
    invoke-virtual {p1, v6}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 44
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 47
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskSurface()Landroid/view/SurfaceControl;

    .line 49
    move-result-object p0

    .line 52
    const/16 v0, 0x4e21

    .line 53
    invoke-virtual {p1, v6, p0, v0}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 55
    const/4 p0, 0x0

    .line 58
    invoke-virtual {p1, v6, p0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 59
    const/4 v3, 0x0

    .line 62
    const/4 v4, 0x0

    .line 63
    move-object v0, p1

    .line 64
    move-object v1, v6

    .line 65
    move v2, v5

    .line 66
    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 67
    new-instance p0, Landroid/graphics/Rect;

    .line 70
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 72
    move-result v0

    .line 75
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 76
    move-result v1

    .line 79
    const/4 v2, 0x0

    .line 80
    invoke-direct {p0, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 81
    invoke-virtual {p1, v6, p0}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 84
    return-object v6
    .line 87
.end method

.method public attachOverlay(Landroid/graphics/Bitmap;)V
    .locals 7

    .line 3
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/high16 v5, 0x437f0000    # 255.0f

    if-eqz p1, :cond_1

    .line 4
    iget-object v6, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->isDarkTheme(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "neutral12"

    goto :goto_0

    :cond_0
    const-string v6, "neutral97"

    :goto_0
    invoke-static {p1, v6}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getBitmapDominantColor(Landroid/graphics/Bitmap;Ljava/lang/String;)I

    move-result p1

    .line 5
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    aput v6, v1, v3

    .line 6
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    aput v3, v1, v4

    .line 7
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v5

    aput p1, v1, v2

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    .line 8
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    aput v6, v1, v3

    .line 9
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    aput v3, v1, v4

    .line 10
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v5

    aput p1, v1, v2

    .line 11
    :goto_1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    .line 12
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    .line 13
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p1, p0, v4}, Landroid/view/SurfaceControl$Transaction;->setTrustedOverlay(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    .line 14
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public attachOverlay(Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->asBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->attachOverlay(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public createSurface(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->makeBBQSurfaceBuilder()Landroid/view/SurfaceControl$Builder;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->getParentSurface()Landroid/view/SurfaceControl;

    .line 6
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 10
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setEffectLayer()Landroid/view/SurfaceControl$Builder;

    .line 14
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 18
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationMaxBounds()Landroid/graphics/Rect;

    .line 20
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 24
    move-result v1

    .line 27
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 28
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationMaxBounds()Landroid/graphics/Rect;

    .line 30
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 34
    move-result v2

    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    .line 38
    move-result-object v0

    .line 41
    const/4 v1, 0x4

    .line 42
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setFlags(I)Landroid/view/SurfaceControl$Builder;

    .line 43
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 47
    move-result-object v0

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 51
    const/16 v1, 0x4e21

    .line 54
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 56
    const/4 v2, 0x0

    .line 59
    invoke-virtual {p1, v0, v2, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 60
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 63
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskSurface()Landroid/view/SurfaceControl;

    .line 65
    move-result-object v3

    .line 68
    invoke-virtual {p1, v0, v3, v1}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 69
    invoke-virtual {p1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 72
    new-instance v1, Landroid/graphics/Rect;

    .line 75
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 77
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 79
    move-result-object v2

    .line 82
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 83
    move-result v2

    .line 86
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 87
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 89
    move-result-object p0

    .line 92
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 93
    move-result p0

    .line 96
    const/4 v3, 0x0

    .line 97
    invoke-direct {v1, v3, v3, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 98
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 101
    return-object v0
    .line 104
.end method

.method public detach(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->mBgExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    check-cast p0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 8
    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 12
    :goto_0
    return-void
    .line 15
.end method

.method public forAllAnimators(Ljava/util/function/Consumer;Z)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2
    return-void
    .line 5
.end method

.method public hideOverlay()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->mDestOverlayAlpha:F

    .line 2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    cmpl-float v0, v0, v1

    .line 6
    if-nez v0, :cond_0

    .line 8
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->mDestOverlayAlpha:F

    .line 11
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 13
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->mHideTimeout:Ljava/lang/Runnable;

    .line 15
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 17
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 19
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mSpringAnim:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 22
    const-string v1, "overlayAlpha"

    .line 24
    iget v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->mDestOverlayAlpha:F

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->to(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 28
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mSpringAnim:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 31
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->completeTo()V

    .line 33
    :cond_0
    return-void
    .line 36
.end method

.method public isAnimating()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->mOverlayAlpha:F

    .line 2
    const/4 v0, 0x0

    .line 4
    cmpl-float p0, p0, v0

    .line 5
    if-eqz p0, :cond_0

    .line 7
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
    .line 12
.end method

.method public mergeWithBoundsChange(ILandroid/graphics/Rect;FLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$GeometryBuilder;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->mResizedBounds:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->detectHiddenConditions()Z

    .line 7
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 13
    new-instance p2, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil$$ExternalSyntheticLambda0;

    .line 15
    const/4 p3, 0x2

    .line 17
    invoke-direct {p2, p0, p3}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;I)V

    .line 18
    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 21
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 26
    const-string p2, "mergeWithBoundsChange mLastResizingBounds:"

    .line 28
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->mLastResizingBounds:Landroid/graphics/Rect;

    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    const-string p2, ", mTaskBounds:"

    .line 38
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mTaskBounds:Landroid/graphics/Rect;

    .line 43
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 51
    const-string p1, "MiuiInfinityModeStaticVeil"

    .line 52
    invoke-static {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
    .line 57
.end method

.method public mergeWithModeChange(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$GeometryBuilder;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->mResizedBounds:Landroid/graphics/Rect;

    .line 2
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 4
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 6
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 8
    move-result-object p1

    .line 11
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 12
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->detectHiddenConditions()Z

    .line 15
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 21
    new-instance p2, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil$$ExternalSyntheticLambda0;

    .line 23
    const/4 p3, 0x1

    .line 25
    invoke-direct {p2, p0, p3}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;I)V

    .line 26
    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 29
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 34
    const-string p2, "mergeWithModeChange mLastResizingBounds:"

    .line 36
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->mLastResizingBounds:Landroid/graphics/Rect;

    .line 41
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    const-string p2, ", mTaskBounds:"

    .line 46
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mTaskBounds:Landroid/graphics/Rect;

    .line 51
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p0

    .line 59
    const-string p1, "MiuiInfinityModeStaticVeil"

    .line 60
    invoke-static {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
    .line 65
.end method

.method public onAnimationFinished(Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onAnimationUpdate(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$GeometryBuilder;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;->getOverlayAlpha()F

    .line 2
    move-result p1

    .line 5
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->mOverlayAlpha:F

    .line 6
    invoke-virtual {p3, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$GeometryBuilder;->withAlpha(F)Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$GeometryBuilder;

    .line 8
    return-void
    .line 11
.end method

.method public onFreeformStartUp()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->mFreeformStartUp:Z

    .line 3
    return-void
    .line 5
.end method

.method public onFreeformTaskAppeared(I)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->mFreeformStartUp:Z

    .line 3
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->tryToHideOverlay()Z

    .line 5
    return-void
    .line 8
.end method

.method public onRootAnimationUpdate(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$GeometryBuilder;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->isValid()Z

    .line 2
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    if-eqz p1, :cond_0

    .line 8
    new-instance p2, Landroid/graphics/Rect;

    .line 10
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;->getLeft()F

    .line 12
    move-result v0

    .line 15
    float-to-int v0, v0

    .line 16
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;->getTop()F

    .line 17
    move-result v1

    .line 20
    float-to-int v1, v1

    .line 21
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;->getRight()F

    .line 22
    move-result v2

    .line 25
    float-to-int v2, v2

    .line 26
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;->getBottom()F

    .line 27
    move-result v3

    .line 30
    float-to-int v3, v3

    .line 31
    invoke-direct {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 32
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 35
    move-result v0

    .line 38
    int-to-float v0, v0

    .line 39
    const/high16 v1, 0x3f800000    # 1.0f

    .line 40
    mul-float/2addr v0, v1

    .line 42
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mTaskBounds:Landroid/graphics/Rect;

    .line 43
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 45
    move-result v2

    .line 48
    int-to-float v2, v2

    .line 49
    div-float/2addr v0, v2

    .line 50
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 51
    move-result v2

    .line 54
    int-to-float v2, v2

    .line 55
    mul-float/2addr v2, v1

    .line 56
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mTaskBounds:Landroid/graphics/Rect;

    .line 57
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 59
    move-result v1

    .line 62
    int-to-float v1, v1

    .line 63
    div-float/2addr v2, v1

    .line 64
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;->getRadius()F

    .line 65
    move-result v1

    .line 68
    div-float/2addr v1, v0

    .line 69
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;->getRadius()F

    .line 70
    move-result p1

    .line 73
    div-float/2addr p1, v2

    .line 74
    new-instance v3, Landroid/graphics/Rect;

    .line 75
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mTaskBounds:Landroid/graphics/Rect;

    .line 77
    invoke-direct {v3, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 79
    const/4 p0, 0x0

    .line 82
    invoke-virtual {v3, p0, p0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 83
    iget p0, p2, Landroid/graphics/Rect;->left:I

    .line 86
    iget p2, p2, Landroid/graphics/Rect;->top:I

    .line 88
    invoke-virtual {p3, p0, p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$GeometryBuilder;->withPosition(II)Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$GeometryBuilder;

    .line 90
    invoke-virtual {p3, v0, v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$GeometryBuilder;->withMatrix(FF)Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$GeometryBuilder;

    .line 93
    invoke-virtual {p3, v3}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$GeometryBuilder;->withWindowCrop(Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$GeometryBuilder;

    .line 96
    invoke-virtual {p3, v1, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$GeometryBuilder;->withCornerRadius(FF)Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$GeometryBuilder;

    .line 99
    :cond_0
    return-void
    .line 102
.end method

.method public setAnimation(ILcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->mAnimIsStopping:Z

    .line 3
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->mOverlayAlpha:F

    .line 6
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->mDestOverlayAlpha:F

    .line 8
    const-string p0, "overlayAlpha"

    .line 10
    invoke-virtual {p2, p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->from(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 12
    return-void
    .line 15
.end method

.method public startAnimation(ILcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->mAnimIsStopping:Z

    .line 3
    iput-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->mFreeformStartUp:Z

    .line 5
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->mLastResizingBounds:Landroid/graphics/Rect;

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 9
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->mResizedBounds:Landroid/graphics/Rect;

    .line 12
    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    .line 14
    return-void
    .line 17
.end method

.method public stopAnimation(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "stopAnimation animatorType:"

    .line 2
    const-string v1, ", mFreeformStartUp :"

    .line 5
    invoke-static {v0, p1, v1}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    move-result-object p1

    .line 10
    iget-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->mFreeformStartUp:Z

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    const-string v0, ", mLastResizingBounds :"

    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->mLastResizingBounds:Landroid/graphics/Rect;

    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 29
    const-string v0, "MiuiInfinityModeStaticVeil"

    .line 30
    invoke-static {v0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->mAnimIsStopping:Z

    .line 36
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->tryToHideOverlay()Z

    .line 38
    move-result p1

    .line 41
    if-nez p1, :cond_0

    .line 42
    new-instance p1, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil$$ExternalSyntheticLambda0;

    .line 44
    const/4 v0, 0x0

    .line 46
    invoke-direct {p1, p0, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;I)V

    .line 47
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->mHideTimeout:Ljava/lang/Runnable;

    .line 50
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 52
    const-wide/16 v0, 0x3e8

    .line 54
    check-cast p0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 56
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    .line 58
    :cond_0
    return-void
    .line 61
.end method

.method public useCachedLayer()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->isValid()Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public windowModeChange(I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "windowRadioChange windowMode:"

    .line 2
    const-string v1, ", mOverlayAlpha :"

    .line 5
    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    move-result-object p1

    .line 10
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->mOverlayAlpha:F

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 19
    const-string v0, "MiuiInfinityModeStaticVeil"

    .line 20
    invoke-static {v0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->showOverlay()V

    .line 25
    return-void
    .line 28
.end method

.method public windowRadioChange(Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string/jumbo v1, "windowRadioChange bounds:"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    const-string p1, ", mOverlayAlpha :"

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->mOverlayAlpha:F

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 26
    const-string v0, "MiuiInfinityModeStaticVeil"

    .line 27
    invoke-static {v0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->showOverlay()V

    .line 32
    return-void
    .line 35
.end method

.method public windowSizeChange(Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->mLastResizingBounds:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->showOverlay()V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    const-string/jumbo v1, "windowSizeChange bounds:"

    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    const-string p1, ", mOverlayAlpha :"

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->mOverlayAlpha:F

    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 34
    const-string p1, "MiuiInfinityModeStaticVeil"

    .line 35
    invoke-static {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
    .line 40
.end method
