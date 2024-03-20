.class public final Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;
.super Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final APP_ICON_SIZE_DP:I = 0x45

.field private static final TAG:Ljava/lang/String; = "MiuiInfinityModeDynamicVeil"

.field private static final TYPE_ANIMATION:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;


# instance fields
.field private mAnimIsStopping:Z

.field private final mAppIconSizePx:I

.field private mBBQ:Landroid/graphics/BLASTBufferQueue;

.field private mBbqSurfaceControl:Landroid/view/SurfaceControl;

.field private final mBgExecutor:Ljava/util/concurrent/Executor;

.field private final mIconTitleView:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityIconTitleView;

.field private final mIconTitleViewHeight:I

.field private mIconTitleViewVisible:Z

.field private final mIconTitleViewWidth:I

.field private final mLock:Ljava/lang/Object;

.field private final mMainExecutor:Ljava/util/concurrent/Executor;

.field private mOverlayAlpha:F

.field private mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

.field private mRootNode:Landroid/graphics/RenderNode;

.field private mSurface:Landroid/view/Surface;

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private final mWindowBounds:Landroid/graphics/Rect;


# direct methods
.method public static synthetic $r8$lambda$8HPkPbcMj9UHNVYQi3buGAEFCFw(Ljava/util/function/Consumer;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->lambda$loadAppIcon$1(Ljava/util/function/Consumer;Landroid/graphics/Bitmap;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$UVcjGO_uFaPo-4EjCh-5Rk9c2Ac(Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->lambda$loadAppIcon$2(Ljava/util/function/Consumer;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$fB2ZUBEEAFqlqEK_GothqmAgV5E(Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->lambda$loadAppIcon$0(Landroid/graphics/Bitmap;)V

    .line 2
    return-void
    .line 5
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;

    .line 2
    invoke-direct {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;-><init>()V

    .line 4
    sput-object v0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->TYPE_ANIMATION:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;

    .line 7
    new-instance v1, Landroid/graphics/RectF;

    .line 9
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 11
    iput-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 14
    new-instance v1, Landroid/graphics/RectF;

    .line 16
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 18
    iput-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    .line 21
    const/16 v1, 0x8

    .line 23
    new-array v1, v1, [F

    .line 25
    iput-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 27
    new-instance v1, Landroid/graphics/RectF;

    .line 29
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 31
    iput-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppDesRect:Landroid/graphics/RectF;

    .line 34
    return-void
    .line 36
.end method

.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;Ljava/lang/Object;)V
    .locals 9

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;)V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mWindowBounds:Landroid/graphics/Rect;

    .line 10
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mTmpBounds:Landroid/graphics/Rect;

    .line 17
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mAnimIsStopping:Z

    .line 20
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mLock:Ljava/lang/Object;

    .line 22
    const-string p2, "overlay surface bbq wrapper"

    .line 24
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mName:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->getBGExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    .line 28
    move-result-object p2

    .line 31
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 32
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->getMainExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    .line 34
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 38
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mContext:Landroid/content/Context;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 46
    move-result-object p1

    .line 49
    const/4 p2, 0x1

    .line 50
    const/high16 v0, 0x428a0000    # 69.0f

    .line 51
    invoke-static {p2, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 53
    move-result p1

    .line 56
    float-to-int p1, p1

    .line 57
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mAppIconSizePx:I

    .line 58
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mContext:Landroid/content/Context;

    .line 60
    const/16 v0, 0x78

    .line 62
    invoke-static {p1, v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->dpToPx(Landroid/content/Context;I)I

    .line 64
    move-result v6

    .line 67
    iput v6, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mIconTitleViewWidth:I

    .line 68
    iget p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mDisplayHeight:I

    .line 70
    int-to-float p1, p1

    .line 72
    const/high16 v0, 0x40000000    # 2.0f

    .line 73
    div-float/2addr p1, v0

    .line 75
    float-to-int v7, p1

    .line 76
    iput v7, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mIconTitleViewHeight:I

    .line 77
    new-instance v1, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityIconTitleView;

    .line 79
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mContext:Landroid/content/Context;

    .line 81
    invoke-direct {v1, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityIconTitleView;-><init>(Landroid/content/Context;)V

    .line 83
    iput-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mIconTitleView:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityIconTitleView;

    .line 86
    const/4 v2, 0x0

    .line 88
    invoke-static {p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->getTypeByWindowMode(I)I

    .line 89
    move-result v3

    .line 92
    const/4 v4, 0x1

    .line 93
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mSurface:Landroid/view/Surface;

    .line 94
    const/4 v8, 0x0

    .line 96
    invoke-virtual/range {v1 .. v8}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->init(Landroid/graphics/Bitmap;IZLandroid/view/Surface;IIZ)V

    .line 97
    return-void
    .line 100
.end method

.method private calculateOverlayPosition(IIII)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mTmpBounds:Landroid/graphics/Rect;

    .line 2
    new-instance v1, Landroid/graphics/Rect;

    .line 4
    add-int v2, p1, p3

    .line 6
    add-int v3, p2, p4

    .line 8
    invoke-direct {v1, p1, p2, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mTmpBounds:Landroid/graphics/Rect;

    .line 19
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 21
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mTmpBounds:Landroid/graphics/Rect;

    .line 24
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    .line 26
    move-result p1

    .line 29
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mTmpBounds:Landroid/graphics/Rect;

    .line 30
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    .line 32
    move-result p2

    .line 35
    iget p3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mIconTitleViewHeight:I

    .line 36
    int-to-float p3, p3

    .line 38
    const/high16 p4, 0x40000000    # 2.0f

    .line 39
    div-float/2addr p3, p4

    .line 41
    const/high16 v0, 0x3f000000    # 0.5f

    .line 42
    add-float/2addr p3, v0

    .line 44
    float-to-int p3, p3

    .line 45
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mIconTitleViewWidth:I

    .line 46
    int-to-float v1, v1

    .line 48
    div-float/2addr v1, p4

    .line 49
    add-float/2addr v1, v0

    .line 50
    float-to-int p4, v1

    .line 51
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mWindowBounds:Landroid/graphics/Rect;

    .line 52
    sub-int v0, p1, p4

    .line 54
    sub-int v1, p2, p3

    .line 56
    add-int/2addr p1, p4

    .line 58
    add-int/2addr p2, p3

    .line 59
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 60
    const/4 p0, 0x1

    .line 63
    return p0

    .line 64
    :cond_0
    const/4 p0, 0x0

    .line 65
    return p0
    .line 66
.end method

.method private dispatchNodeLayout()V
    .locals 6

    .line 1
    const/4 v2, 0x0

    .line 2
    const/4 v3, 0x0

    .line 3
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mWindowBounds:Landroid/graphics/Rect;

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 6
    move-result v4

    .line 9
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mWindowBounds:Landroid/graphics/Rect;

    .line 10
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 12
    move-result v5

    .line 15
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mRootNode:Landroid/graphics/RenderNode;

    .line 16
    move-object v0, p0

    .line 18
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->updateRenderNodeLayout(Landroid/graphics/RenderNode;IIII)V

    .line 19
    return-void
    .line 22
.end method

.method private doDraw(Landroid/graphics/Canvas;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$GeometryBuilder;)V
    .locals 0

    .line 1
    iget-boolean p3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mIconTitleViewVisible:Z

    .line 2
    if-eqz p3, :cond_0

    .line 4
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mIconTitleView:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityIconTitleView;

    .line 6
    invoke-virtual {p3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->getTypeAnimInfo()Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;

    .line 8
    move-result-object p3

    .line 11
    invoke-static {p3, p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->setPropertiesToTypeAnimInfo(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;)V

    .line 12
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mIconTitleView:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityIconTitleView;

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityIconTitleView;->startDraw(Landroid/graphics/Canvas;)V

    .line 17
    :cond_0
    return-void
    .line 20
.end method

.method private earlySync(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;->applyFrameEarly()V

    .line 4
    :cond_0
    return-void
    .line 7
.end method

.method private static getTypeByWindowMode(I)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, v0, :cond_0

    .line 3
    const/4 p0, 0x5

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x2

    .line 7
    if-ne p0, v0, :cond_1

    .line 8
    const/4 p0, 0x6

    .line 10
    goto :goto_0

    .line 11
    :cond_1
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
    .line 13
.end method

.method private synthetic lambda$loadAppIcon$0(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mIconTitleView:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityIconTitleView;

    .line 4
    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->setAppBitmap(Landroid/graphics/Bitmap;)V

    .line 8
    goto :goto_0

    .line 11
    :cond_0
    sget-object p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->TAG:Ljava/lang/String;

    .line 12
    const-string p1, "loadAppIcon fail, bitmap is null!"

    .line 14
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :goto_0
    return-void
    .line 19
.end method

.method private static synthetic lambda$loadAppIcon$1(Ljava/util/function/Consumer;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2
    return-void
    .line 5
.end method

.method private synthetic lambda$loadAppIcon$2(Ljava/util/function/Consumer;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4
    move-result-object v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mContext:Landroid/content/Context;

    .line 8
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 10
    move-result-object v1

    .line 13
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 14
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 19
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 20
    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    sget-object v1, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->TAG:Ljava/lang/String;

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    const-string v3, "loadAppIcon fail, error :"

    .line 30
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 41
    invoke-static {v1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x0

    .line 45
    :goto_0
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mAppIconSizePx:I

    .line 46
    invoke-static {v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->zoomDrawableIfNeed(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    .line 48
    move-result-object v0

    .line 51
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 52
    new-instance v1, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil$$ExternalSyntheticLambda0;

    .line 54
    invoke-direct {v1, p1, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Landroid/graphics/Bitmap;)V

    .line 56
    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 59
    return-void
    .line 62
.end method

.method private loadAppIcon()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;)V

    invoke-direct {p0, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->loadAppIcon(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private loadAppIcon(Ljava/util/function/Consumer;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static setPropertiesToTypeAnimInfo(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;)V
    .locals 3

    .line 1
    if-eqz p0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;->getBottomBoardLeft()F

    .line 8
    move-result v1

    .line 11
    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 12
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 14
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;->getBottomBoardTop()F

    .line 16
    move-result v1

    .line 19
    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 20
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 22
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;->getBottomBoardRight()F

    .line 24
    move-result v1

    .line 27
    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 28
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 30
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;->getBottomBoardBottom()F

    .line 32
    move-result v1

    .line 35
    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    .line 38
    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;->getChangeLayerLeft()F

    .line 42
    move-result v1

    .line 45
    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 46
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    .line 48
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;->getChangeLayerTop()F

    .line 50
    move-result v1

    .line 53
    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 54
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    .line 56
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;->getChangeLayerRight()F

    .line 58
    move-result v1

    .line 61
    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 62
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    .line 64
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;->getChangeLayerBottom()F

    .line 66
    move-result v1

    .line 69
    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 72
    if-eqz v0, :cond_2

    .line 74
    array-length v1, v0

    .line 76
    const/16 v2, 0x8

    .line 77
    if-ne v1, v2, :cond_2

    .line 79
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;->getChangeLayerTopLeftXRadius()F

    .line 81
    move-result v1

    .line 84
    const/4 v2, 0x0

    .line 85
    aput v1, v0, v2

    .line 86
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 88
    const/4 v1, 0x1

    .line 90
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;->getChangeLayerTopLeftYRadius()F

    .line 91
    move-result v2

    .line 94
    aput v2, v0, v1

    .line 95
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 97
    const/4 v1, 0x2

    .line 99
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;->getChangeLayerTopRightXRadius()F

    .line 100
    move-result v2

    .line 103
    aput v2, v0, v1

    .line 104
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 106
    const/4 v1, 0x3

    .line 108
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;->getChangeLayerTopRightYRadius()F

    .line 109
    move-result v2

    .line 112
    aput v2, v0, v1

    .line 113
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 115
    const/4 v1, 0x4

    .line 117
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;->getChangeLayerBottomRightXRadius()F

    .line 118
    move-result v2

    .line 121
    aput v2, v0, v1

    .line 122
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 124
    const/4 v1, 0x5

    .line 126
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;->getChangeLayerBottomRightYRadius()F

    .line 127
    move-result v2

    .line 130
    aput v2, v0, v1

    .line 131
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 133
    const/4 v1, 0x6

    .line 135
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;->getChangeLayerBottomLeftXRadius()F

    .line 136
    move-result v2

    .line 139
    aput v2, v0, v1

    .line 140
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 142
    const/4 v1, 0x7

    .line 144
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;->getChangeLayerBottomLeftYRadius()F

    .line 145
    move-result v2

    .line 148
    aput v2, v0, v1

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppDesRect:Landroid/graphics/RectF;

    .line 151
    if-eqz v0, :cond_3

    .line 153
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;->getAppDesRectLeft()F

    .line 155
    move-result v1

    .line 158
    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 159
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppDesRect:Landroid/graphics/RectF;

    .line 161
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;->getAppDesRectTop()F

    .line 163
    move-result v1

    .line 166
    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 167
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppDesRect:Landroid/graphics/RectF;

    .line 169
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;->getAppDesRectRight()F

    .line 171
    move-result v1

    .line 174
    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 175
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppDesRect:Landroid/graphics/RectF;

    .line 177
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;->getAppDesRectBottom()F

    .line 179
    move-result v1

    .line 182
    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 183
    :cond_3
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;->getAppRadius()F

    .line 185
    move-result v0

    .line 188
    iput v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppRadius:F

    .line 189
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;->getTextHeight()F

    .line 191
    move-result v0

    .line 194
    iput v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mTextHeight:F

    .line 195
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;->getBottomBoardStrokeWidth()F

    .line 197
    move-result v0

    .line 200
    iput v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardStrokeWidth:F

    .line 201
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;->getBottomBoardRadius()F

    .line 203
    move-result v0

    .line 206
    iput v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardRadius:F

    .line 207
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;->getIconMarginBottom()F

    .line 209
    move-result v0

    .line 212
    iput v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mIconMarginBottom:F

    .line 213
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;->getShapeSize()F

    .line 215
    move-result v0

    .line 218
    iput v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mShapeSize:F

    .line 219
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;->getTextMaxWidth()F

    .line 221
    move-result p1

    .line 224
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mTextMaxWidth:F

    .line 225
    :cond_4
    return-void
    .line 227
.end method

.method private startWindowModeChangeAnimator(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mIconTitleView:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityIconTitleView;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->getTypeByWindowMode(I)I

    .line 7
    move-result v0

    .line 10
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mIconTitleView:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityIconTitleView;

    .line 11
    const/4 v2, 0x1

    .line 13
    invoke-virtual {v1, v0, v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityIconTitleView;->setType(IZ)V

    .line 14
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->setIconTitleViewVisible(Z)V

    .line 17
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mSpringAnim:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 20
    const/4 v1, 0x0

    .line 22
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->addTypeAnimInfoToAnimState(ILcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;Z)V

    .line 23
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mSpringAnim:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 26
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->completeTo()V

    .line 28
    return-void
    .line 31
.end method

.method private updateBufferSize()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mBBQ:Landroid/graphics/BLASTBufferQueue;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    .line 4
    iget v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mDisplayWidth:I

    .line 6
    iget v3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mDisplayHeight:I

    .line 8
    const/4 v4, -0x3

    .line 10
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    .line 11
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    .line 14
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mSurface:Landroid/view/Surface;

    .line 16
    invoke-virtual {v0, p0}, Landroid/view/ThreadedRenderer$SimpleRenderer;->setSurface(Landroid/view/Surface;)V

    .line 18
    return-void
    .line 21
.end method

.method private updateText()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->loadAppIcon()V

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mIconTitleView:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityIconTitleView;

    .line 5
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityIconTitleView;->createTextLayout()V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public addTypeAnimInfoToAnimState(ILcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;Z)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p2

    .line 4
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mIconTitleView:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityIconTitleView;

    .line 6
    if-nez v2, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->getTypeByWindowMode(I)I

    .line 11
    move-result v2

    .line 14
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mIconTitleView:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityIconTitleView;

    .line 15
    sget-object v3, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->TYPE_ANIMATION:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;

    .line 17
    const/4 v4, 0x1

    .line 19
    invoke-virtual {v0, v2, v4, v3}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityIconTitleView;->getTypeInfo(IZLcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;)V

    .line 20
    const-string v0, "changeLayerBottomLeftYRadius"

    .line 23
    const-string v5, "changeLayerBottomLeftXRadius"

    .line 25
    const-string v7, "changeLayerBottomRightYRadius"

    .line 27
    const-string v9, "changeLayerBottomRightXRadius"

    .line 29
    const-string v11, "changeLayerTopRightYRadius"

    .line 31
    const-string v13, "changeLayerTopRightXRadius"

    .line 33
    const-string v14, "changeLayerTopLeftYRadius"

    .line 35
    const-string v2, "changeLayerTopLeftXRadius"

    .line 37
    const-string v6, "changeLayerBottom"

    .line 39
    const-string v8, "changeLayerRight"

    .line 41
    const-string v10, "changeLayerTop"

    .line 43
    const-string v12, "changeLayerLeft"

    .line 45
    const-string v4, "bottomBoardBottom"

    .line 47
    const-string v15, "bottomBoardRight"

    .line 49
    move-object/from16 v16, v0

    .line 51
    const-string v0, "bottomBoardTop"

    .line 53
    if-eqz p3, :cond_1

    .line 55
    move-object/from16 v17, v5

    .line 57
    iget-object v5, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 59
    iget v5, v5, Landroid/graphics/RectF;->top:F

    .line 61
    invoke-virtual {v1, v0, v5}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->from(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 63
    move-result-object v0

    .line 66
    iget-object v1, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 67
    iget v1, v1, Landroid/graphics/RectF;->right:F

    .line 69
    invoke-virtual {v0, v15, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->from(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 71
    move-result-object v0

    .line 74
    iget-object v1, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 75
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 77
    invoke-virtual {v0, v4, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->from(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 79
    move-result-object v0

    .line 82
    iget-object v1, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    .line 83
    iget v1, v1, Landroid/graphics/RectF;->left:F

    .line 85
    invoke-virtual {v0, v12, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->from(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 87
    move-result-object v0

    .line 90
    iget-object v1, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    .line 91
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 93
    invoke-virtual {v0, v10, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->from(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 95
    move-result-object v0

    .line 98
    iget-object v1, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    .line 99
    iget v1, v1, Landroid/graphics/RectF;->right:F

    .line 101
    invoke-virtual {v0, v8, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->from(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 103
    move-result-object v0

    .line 106
    iget-object v1, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    .line 107
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 109
    invoke-virtual {v0, v6, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->from(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 111
    move-result-object v0

    .line 114
    iget-object v1, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 115
    const/4 v4, 0x0

    .line 117
    aget v1, v1, v4

    .line 118
    invoke-virtual {v0, v2, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->from(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 120
    move-result-object v0

    .line 123
    iget-object v1, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 124
    const/4 v2, 0x1

    .line 126
    aget v1, v1, v2

    .line 127
    invoke-virtual {v0, v14, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->from(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 129
    move-result-object v0

    .line 132
    iget-object v1, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 133
    const/4 v2, 0x2

    .line 135
    aget v1, v1, v2

    .line 136
    invoke-virtual {v0, v13, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->from(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 138
    move-result-object v0

    .line 141
    iget-object v1, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 142
    const/4 v2, 0x3

    .line 144
    aget v1, v1, v2

    .line 145
    invoke-virtual {v0, v11, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->from(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 147
    move-result-object v0

    .line 150
    iget-object v1, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 151
    const/4 v2, 0x4

    .line 153
    aget v1, v1, v2

    .line 154
    invoke-virtual {v0, v9, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->from(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 156
    move-result-object v0

    .line 159
    iget-object v1, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 160
    const/4 v2, 0x5

    .line 162
    aget v1, v1, v2

    .line 163
    invoke-virtual {v0, v7, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->from(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 165
    move-result-object v0

    .line 168
    iget-object v1, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 169
    const/4 v2, 0x6

    .line 171
    aget v1, v1, v2

    .line 172
    move-object/from16 v5, v17

    .line 174
    invoke-virtual {v0, v5, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->from(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 176
    move-result-object v0

    .line 179
    iget-object v1, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 180
    const/4 v2, 0x7

    .line 182
    aget v1, v1, v2

    .line 183
    move-object/from16 v2, v16

    .line 185
    invoke-virtual {v0, v2, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->from(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 187
    move-result-object v0

    .line 190
    iget-object v1, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppDesRect:Landroid/graphics/RectF;

    .line 191
    iget v1, v1, Landroid/graphics/RectF;->left:F

    .line 193
    const-string v2, "appDesRectLeft"

    .line 195
    invoke-virtual {v0, v2, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->from(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 197
    move-result-object v0

    .line 200
    iget-object v1, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppDesRect:Landroid/graphics/RectF;

    .line 201
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 203
    const-string v2, "appDesRectTop"

    .line 205
    invoke-virtual {v0, v2, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->from(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 207
    move-result-object v0

    .line 210
    iget-object v1, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppDesRect:Landroid/graphics/RectF;

    .line 211
    iget v1, v1, Landroid/graphics/RectF;->right:F

    .line 213
    const-string v2, "appDesRectRight"

    .line 215
    invoke-virtual {v0, v2, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->from(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 217
    move-result-object v0

    .line 220
    iget-object v1, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppDesRect:Landroid/graphics/RectF;

    .line 221
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 223
    const-string v2, "appDesRectBottom"

    .line 225
    invoke-virtual {v0, v2, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->from(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 227
    move-result-object v0

    .line 230
    const-string v1, "appRadius"

    .line 231
    iget v2, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppRadius:F

    .line 233
    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->from(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 235
    move-result-object v0

    .line 238
    const-string/jumbo v1, "textHeight"

    .line 239
    iget v2, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mTextHeight:F

    .line 242
    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->from(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 244
    move-result-object v0

    .line 247
    const-string v1, "bottomBoardRadius"

    .line 248
    iget v2, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardRadius:F

    .line 250
    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->from(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 252
    move-result-object v0

    .line 255
    const-string v1, "iconMarginBottom"

    .line 256
    iget v2, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mIconMarginBottom:F

    .line 258
    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->from(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 260
    move-result-object v0

    .line 263
    const-string/jumbo v1, "shapeSize"

    .line 264
    iget v2, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mShapeSize:F

    .line 267
    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->from(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 269
    move-result-object v0

    .line 272
    const-string/jumbo v1, "textMaxWidth"

    .line 273
    iget v2, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mTextMaxWidth:F

    .line 276
    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->from(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 278
    move-result-object v0

    .line 281
    iget-object v1, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 282
    iget v1, v1, Landroid/graphics/RectF;->left:F

    .line 284
    const-string v2, "bottomBoardLeft"

    .line 286
    invoke-virtual {v0, v2, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->from(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 288
    goto/16 :goto_0

    .line 291
    :cond_1
    move-object/from16 v17, v5

    .line 293
    move-object/from16 v18, v16

    .line 295
    iget-object v5, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 297
    iget v5, v5, Landroid/graphics/RectF;->top:F

    .line 299
    invoke-virtual {v1, v0, v5}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->to(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 301
    move-result-object v0

    .line 304
    iget-object v1, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 305
    iget v1, v1, Landroid/graphics/RectF;->right:F

    .line 307
    invoke-virtual {v0, v15, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->to(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 309
    move-result-object v0

    .line 312
    iget-object v1, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 313
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 315
    invoke-virtual {v0, v4, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->to(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 317
    move-result-object v0

    .line 320
    iget-object v1, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    .line 321
    iget v1, v1, Landroid/graphics/RectF;->left:F

    .line 323
    invoke-virtual {v0, v12, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->to(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 325
    move-result-object v0

    .line 328
    iget-object v1, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    .line 329
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 331
    invoke-virtual {v0, v10, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->to(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 333
    move-result-object v0

    .line 336
    iget-object v1, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    .line 337
    iget v1, v1, Landroid/graphics/RectF;->right:F

    .line 339
    invoke-virtual {v0, v8, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->to(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 341
    move-result-object v0

    .line 344
    iget-object v1, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    .line 345
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 347
    invoke-virtual {v0, v6, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->to(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 349
    move-result-object v0

    .line 352
    iget-object v1, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 353
    const/4 v4, 0x0

    .line 355
    aget v1, v1, v4

    .line 356
    invoke-virtual {v0, v2, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->to(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 358
    move-result-object v0

    .line 361
    iget-object v1, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 362
    const/4 v2, 0x1

    .line 364
    aget v1, v1, v2

    .line 365
    invoke-virtual {v0, v14, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->to(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 367
    move-result-object v0

    .line 370
    iget-object v1, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 371
    const/4 v2, 0x2

    .line 373
    aget v1, v1, v2

    .line 374
    invoke-virtual {v0, v13, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->to(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 376
    move-result-object v0

    .line 379
    iget-object v1, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 380
    const/4 v2, 0x3

    .line 382
    aget v1, v1, v2

    .line 383
    invoke-virtual {v0, v11, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->to(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 385
    move-result-object v0

    .line 388
    iget-object v1, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 389
    const/4 v2, 0x4

    .line 391
    aget v1, v1, v2

    .line 392
    invoke-virtual {v0, v9, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->to(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 394
    move-result-object v0

    .line 397
    iget-object v1, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 398
    const/4 v2, 0x5

    .line 400
    aget v1, v1, v2

    .line 401
    invoke-virtual {v0, v7, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->to(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 403
    move-result-object v0

    .line 406
    iget-object v1, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 407
    const/4 v2, 0x6

    .line 409
    aget v1, v1, v2

    .line 410
    move-object/from16 v2, v17

    .line 412
    invoke-virtual {v0, v2, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->to(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 414
    move-result-object v0

    .line 417
    iget-object v1, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 418
    const/4 v2, 0x7

    .line 420
    aget v1, v1, v2

    .line 421
    move-object/from16 v2, v18

    .line 423
    invoke-virtual {v0, v2, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->to(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 425
    move-result-object v0

    .line 428
    iget-object v1, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppDesRect:Landroid/graphics/RectF;

    .line 429
    iget v1, v1, Landroid/graphics/RectF;->left:F

    .line 431
    const-string v2, "appDesRectLeft"

    .line 433
    invoke-virtual {v0, v2, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->to(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 435
    move-result-object v0

    .line 438
    iget-object v1, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppDesRect:Landroid/graphics/RectF;

    .line 439
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 441
    const-string v2, "appDesRectTop"

    .line 443
    invoke-virtual {v0, v2, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->to(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 445
    move-result-object v0

    .line 448
    iget-object v1, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppDesRect:Landroid/graphics/RectF;

    .line 449
    iget v1, v1, Landroid/graphics/RectF;->right:F

    .line 451
    const-string v2, "appDesRectRight"

    .line 453
    invoke-virtual {v0, v2, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->to(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 455
    move-result-object v0

    .line 458
    iget-object v1, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppDesRect:Landroid/graphics/RectF;

    .line 459
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 461
    const-string v2, "appDesRectBottom"

    .line 463
    invoke-virtual {v0, v2, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->to(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 465
    move-result-object v0

    .line 468
    const-string v1, "appRadius"

    .line 469
    iget v2, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppRadius:F

    .line 471
    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->to(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 473
    move-result-object v0

    .line 476
    const-string/jumbo v1, "textHeight"

    .line 477
    iget v2, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mTextHeight:F

    .line 480
    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->to(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 482
    move-result-object v0

    .line 485
    const-string v1, "bottomBoardRadius"

    .line 486
    iget v2, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardRadius:F

    .line 488
    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->to(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 490
    move-result-object v0

    .line 493
    const-string v1, "iconMarginBottom"

    .line 494
    iget v2, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mIconMarginBottom:F

    .line 496
    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->to(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 498
    move-result-object v0

    .line 501
    const-string/jumbo v1, "shapeSize"

    .line 502
    iget v2, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mShapeSize:F

    .line 505
    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->to(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 507
    move-result-object v0

    .line 510
    const-string/jumbo v1, "textMaxWidth"

    .line 511
    iget v2, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mTextMaxWidth:F

    .line 514
    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->to(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 516
    move-result-object v0

    .line 519
    iget-object v1, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 520
    iget v1, v1, Landroid/graphics/RectF;->left:F

    .line 522
    const-string v2, "bottomBoardLeft"

    .line 524
    invoke-virtual {v0, v2, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->to(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 526
    :goto_0
    return-void
    .line 529
.end method

.method public alwaysRecSignal()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public attach(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->updateText()V

    .line 2
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->updateBufferSize()V

    .line 5
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 8
    move-result-object v0

    .line 11
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 12
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskSurface()Landroid/view/SurfaceControl;

    .line 14
    move-result-object p0

    .line 17
    const/16 v1, 0x4e22

    .line 18
    invoke-virtual {p1, v0, p0, v1}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 20
    const/4 p0, 0x0

    .line 23
    invoke-virtual {p1, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 27
    return-object v0
    .line 30
.end method

.method public bindSurfaceSyncer(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mSurface:Landroid/view/Surface;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mBBQ:Landroid/graphics/BLASTBufferQueue;

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    .line 6
    invoke-virtual {p1, v0, v1, p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;->setRenderingKit(Landroid/view/Surface;Landroid/graphics/BLASTBufferQueue;Landroid/view/ThreadedRenderer$SimpleRenderer;)V

    .line 8
    return-void
    .line 11
.end method

.method public createRenderNode(Ljava/lang/String;Landroid/graphics/Rect;)Landroid/graphics/RenderNode;
    .locals 2

    .line 1
    const/4 p0, 0x0

    .line 2
    invoke-static {p1, p0}, Landroid/graphics/RenderNode;->create(Ljava/lang/String;Landroid/graphics/RenderNode$AnimationHost;)Landroid/graphics/RenderNode;

    .line 3
    move-result-object p0

    .line 6
    if-eqz p2, :cond_0

    .line 7
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    .line 9
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    iget p1, p2, Landroid/graphics/Rect;->left:I

    .line 15
    iget v0, p2, Landroid/graphics/Rect;->top:I

    .line 17
    iget v1, p2, Landroid/graphics/Rect;->right:I

    .line 19
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 21
    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 23
    :cond_0
    return-object p0
    .line 26
.end method

.method public createSurface(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;
    .locals 9

    .line 1
    new-instance v0, Landroid/view/SurfaceSession;

    .line 2
    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    .line 4
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mSession:Landroid/view/SurfaceSession;

    .line 7
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->makeAnimatorLeash()Landroid/view/SurfaceControl$Builder;

    .line 9
    move-result-object v0

    .line 12
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->getParentSurface()Landroid/view/SurfaceControl;

    .line 13
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 17
    move-result-object v0

    .line 20
    const/4 v1, 0x4

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setFlags(I)Landroid/view/SurfaceControl$Builder;

    .line 22
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 26
    move-result-object v0

    .line 29
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->makeBBQSurfaceBuilder()Landroid/view/SurfaceControl$Builder;

    .line 30
    move-result-object v1

    .line 33
    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 34
    move-result-object v1

    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    .line 39
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 43
    move-result-object v1

    .line 46
    iput-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    .line 47
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 49
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskSurface()Landroid/view/SurfaceControl;

    .line 51
    move-result-object v1

    .line 54
    const/16 v2, 0x4e22

    .line 55
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 57
    const/4 v1, 0x0

    .line 60
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 61
    const/4 v1, 0x1

    .line 64
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setTrustedOverlay(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 65
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    .line 68
    invoke-virtual {p1, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setTrustedOverlay(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 70
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 73
    new-instance p1, Landroid/graphics/BLASTBufferQueue;

    .line 76
    const-string v4, "cvw overlay surface"

    .line 78
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    .line 80
    iget v6, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mDisplayWidth:I

    .line 82
    iget v7, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mDisplayHeight:I

    .line 84
    const/4 v8, -0x3

    .line 86
    move-object v3, p1

    .line 87
    invoke-direct/range {v3 .. v8}, Landroid/graphics/BLASTBufferQueue;-><init>(Ljava/lang/String;Landroid/view/SurfaceControl;III)V

    .line 88
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mBBQ:Landroid/graphics/BLASTBufferQueue;

    .line 91
    invoke-virtual {p1}, Landroid/graphics/BLASTBufferQueue;->createSurface()Landroid/view/Surface;

    .line 93
    move-result-object p1

    .line 96
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mSurface:Landroid/view/Surface;

    .line 97
    new-instance p1, Landroid/view/ThreadedRenderer$SimpleRenderer;

    .line 99
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mContext:Landroid/content/Context;

    .line 101
    const-string v2, "cvw renderer"

    .line 103
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mSurface:Landroid/view/Surface;

    .line 105
    invoke-direct {p1, v1, v2, v3}, Landroid/view/ThreadedRenderer$SimpleRenderer;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/Surface;)V

    .line 107
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    .line 110
    const-string p1, "cvw overlay"

    .line 112
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mWindowBounds:Landroid/graphics/Rect;

    .line 114
    invoke-virtual {p0, p1, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->createRenderNode(Ljava/lang/String;Landroid/graphics/Rect;)Landroid/graphics/RenderNode;

    .line 116
    move-result-object p1

    .line 119
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mRootNode:Landroid/graphics/RenderNode;

    .line 120
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    .line 122
    invoke-virtual {p0, p1}, Landroid/view/ThreadedRenderer$SimpleRenderer;->setContentRoot(Landroid/graphics/RenderNode;)V

    .line 124
    return-object v0
    .line 127
.end method

.method public detach(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mIconTitleViewVisible:Z

    .line 3
    return-void
    .line 5
.end method

.method public dispatchNodeDraw(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$GeometryBuilder;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mSurface:Landroid/view/Surface;

    .line 5
    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    .line 7
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mRootNode:Landroid/graphics/RenderNode;

    .line 15
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mWindowBounds:Landroid/graphics/Rect;

    .line 17
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 19
    move-result v2

    .line 22
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mWindowBounds:Landroid/graphics/Rect;

    .line 23
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 25
    move-result v3

    .line 28
    invoke-virtual {v1, v2, v3}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    .line 29
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 32
    const/4 v2, 0x0

    .line 33
    :try_start_1
    invoke-virtual {v1, v2}, Landroid/graphics/RecordingCanvas;->drawColor(I)V

    .line 34
    invoke-direct {p0, v1, p2, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->doDraw(Landroid/graphics/Canvas;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$GeometryBuilder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :try_start_2
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mRootNode:Landroid/graphics/RenderNode;

    .line 40
    invoke-virtual {p1}, Landroid/graphics/RenderNode;->endRecording()V

    .line 42
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    .line 45
    const/4 p1, 0x0

    .line 47
    invoke-virtual {p0, p1}, Landroid/view/ThreadedRenderer$SimpleRenderer;->draw(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    .line 48
    monitor-exit v0

    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mRootNode:Landroid/graphics/RenderNode;

    .line 54
    invoke-virtual {p0}, Landroid/graphics/RenderNode;->endRecording()V

    .line 56
    throw p1

    .line 59
    :catchall_1
    move-exception p0

    .line 60
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 61
    throw p0
    .line 62
.end method

.method public forAllAnimators(Ljava/util/function/Consumer;Z)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2
    return-void
    .line 5
.end method

.method public getBlastBufferQueue()Landroid/graphics/BLASTBufferQueue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mBBQ:Landroid/graphics/BLASTBufferQueue;

    .line 2
    return-object p0
    .line 4
.end method

.method public getSimpleRender()Landroid/view/ThreadedRenderer$SimpleRenderer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    .line 2
    return-object p0
    .line 4
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mSurface:Landroid/view/Surface;

    .line 2
    return-object p0
    .line 4
.end method

.method public maskPositionUpdate(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$GeometryBuilder;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mLock:Ljava/lang/Object;

    .line 2
    monitor-enter p1

    .line 4
    :try_start_0
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;->getLeft()F

    .line 5
    move-result v0

    .line 8
    float-to-int v0, v0

    .line 9
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;->getTop()F

    .line 10
    move-result v1

    .line 13
    float-to-int v1, v1

    .line 14
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;->getRight()F

    .line 15
    move-result v2

    .line 18
    float-to-int v2, v2

    .line 19
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;->getBottom()F

    .line 20
    move-result p2

    .line 23
    float-to-int p2, p2

    .line 24
    invoke-direct {p0, v0, v1, v2, p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->calculateOverlayPosition(IIII)Z

    .line 25
    move-result p2

    .line 28
    if-eqz p2, :cond_0

    .line 29
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mWindowBounds:Landroid/graphics/Rect;

    .line 31
    iget v0, p2, Landroid/graphics/Rect;->left:I

    .line 33
    iget p2, p2, Landroid/graphics/Rect;->top:I

    .line 35
    invoke-virtual {p3, v0, p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$GeometryBuilder;->withPosition(II)Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$GeometryBuilder;

    .line 37
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->dispatchNodeLayout()V

    .line 40
    :cond_0
    monitor-exit p1

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p0
    .line 47
.end method

.method public maskRenderUpdate(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$GeometryBuilder;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mOverlayAlpha:F

    .line 5
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;->getOverlayAlpha()F

    .line 7
    move-result v2

    .line 10
    cmpl-float v1, v1, v2

    .line 11
    if-eqz v1, :cond_0

    .line 13
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;->getOverlayAlpha()F

    .line 15
    move-result v1

    .line 18
    iput v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mOverlayAlpha:F

    .line 19
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;->getOverlayAlpha()F

    .line 21
    move-result v1

    .line 24
    invoke-virtual {p2, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$GeometryBuilder;->withAlpha(F)Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$GeometryBuilder;

    .line 25
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->dispatchNodeDraw(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$GeometryBuilder;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;)V

    .line 28
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
    .line 35
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
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 2
    move-result-object p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 8
    move-result-object p2

    .line 11
    invoke-virtual {p2}, Landroid/view/SurfaceControl;->isValid()Z

    .line 12
    move-result p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    invoke-virtual {p0, p1, p3}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->maskRenderUpdate(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$GeometryBuilder;)V

    .line 18
    :cond_0
    return-void
    .line 21
.end method

.method public onRootAnimationUpdate(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$GeometryBuilder;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 2
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    if-eqz p1, :cond_0

    .line 18
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->maskPositionUpdate(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$GeometryBuilder;)V

    .line 20
    :cond_0
    return-void
    .line 23
.end method

.method public setAnimation(ILcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mOverlayAlpha:F

    .line 3
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 5
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationWindowMode()I

    .line 7
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {p0, v0, p2, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->addTypeAnimInfoToAnimState(ILcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;Z)V

    .line 12
    const-string p0, "overlayAlpha"

    .line 15
    invoke-virtual {p2, p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->from(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 17
    return-void
    .line 20
.end method

.method public setIconTitleViewVisible(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->mIconTitleViewVisible:Z

    .line 2
    return-void
    .line 4
.end method

.method public startAnimation(ILcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public stopAnimation(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public surfaceCreated(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->loadAppIcon()V

    .line 2
    return-void
    .line 5
.end method

.method public updateRenderNodeLayout(Landroid/graphics/RenderNode;IIII)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    return-void
.end method

.method public updateRenderNodeLayout(Landroid/graphics/RenderNode;Landroid/graphics/Rect;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    .line 3
    iget p0, p2, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p0, v0, v1, p2}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    :cond_0
    return-void
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
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->startWindowModeChangeAnimator(I)V

    .line 2
    return-void
    .line 5
.end method

.method public windowRadioChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 2
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationWindowMode()I

    .line 4
    move-result p1

    .line 7
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->startWindowModeChangeAnimator(I)V

    .line 8
    return-void
    .line 11
.end method

.method public windowSizeChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 2
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationWindowMode()I

    .line 4
    move-result p1

    .line 7
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;->startWindowModeChangeAnimator(I)V

    .line 8
    return-void
    .line 11
.end method
