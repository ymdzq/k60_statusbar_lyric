.class public final Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil$IconOverlay;
.super Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiInfinityModeStaticVeil$IconOverlay"


# instance fields
.field private mAppIconSizePx:I

.field private mIcon:Landroid/graphics/Bitmap;

.field private mIconProvider:Lcom/android/launcher3/icons/IconProvider;


# direct methods
.method public static synthetic $r8$lambda$efggoFgDFR70hOvv5P_Hos_kfw4(Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil$IconOverlay;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil$IconOverlay;->lambda$loadAndAttachOverlay$0()V

    .line 2
    return-void
    .line 5
.end method

.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Lcom/android/launcher3/icons/IconProvider;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->getBGExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    .line 2
    move-result-object p4

    .line 5
    invoke-direct {p0, p1, p4, p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 6
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mContext:Landroid/content/Context;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 15
    move-result-object p1

    .line 18
    const/4 p2, 0x1

    .line 19
    const/high16 p4, 0x428a0000    # 69.0f

    .line 20
    invoke-static {p2, p4, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 22
    move-result p1

    .line 25
    float-to-int p1, p1

    .line 26
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil$IconOverlay;->mAppIconSizePx:I

    .line 27
    iput-object p3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil$IconOverlay;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    .line 29
    return-void
    .line 31
.end method

.method private synthetic lambda$loadAndAttachOverlay$0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4
    move-result-object v0

    .line 7
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 8
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil$IconOverlay;->mAppIconSizePx:I

    .line 10
    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil$IconOverlay;->loadIconOverlay(Landroid/content/pm/ActivityInfo;I)V

    .line 12
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil$IconOverlay;->mIcon:Landroid/graphics/Bitmap;

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->attachOverlay(Landroid/graphics/Bitmap;)V

    .line 17
    return-void
    .line 20
.end method

.method private loadAndAttachOverlay()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil$IconOverlay$$ExternalSyntheticLambda0;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil$IconOverlay$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;I)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->execute(Ljava/lang/Runnable;)V

    .line 8
    return-void
    .line 11
.end method

.method private loadIconOverlay(Landroid/content/pm/ActivityInfo;I)V
    .locals 3

    .line 1
    const/4 p2, 0x0

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil$IconOverlay;->mIcon:Landroid/graphics/Bitmap;

    .line 3
    if-eqz p1, :cond_0

    .line 5
    :try_start_0
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mContext:Landroid/content/Context;

    .line 7
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 9
    move-result-object p2

    .line 12
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 13
    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 15
    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p2

    .line 20
    sget-object v0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil$IconOverlay;->TAG:Ljava/lang/String;

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    const-string v2, "loadIconOverlay fail, error :"

    .line 25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p2

    .line 36
    invoke-static {v0, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil$IconOverlay;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    .line 40
    invoke-virtual {p2, p1}, Lcom/android/launcher3/icons/IconProvider;->getIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    .line 42
    move-result-object p1

    .line 45
    :goto_0
    iget p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil$IconOverlay;->mAppIconSizePx:I

    .line 46
    invoke-static {p1, p2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->zoomDrawableIfNeed(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    .line 48
    move-result-object p1

    .line 51
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil$IconOverlay;->mIcon:Landroid/graphics/Bitmap;

    .line 52
    :cond_0
    return-void
    .line 54
.end method


# virtual methods
.method public attach(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil$IconOverlay;->loadAndAttachOverlay()V

    .line 2
    invoke-super {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil;->attach(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    .line 5
    move-result-object p0

    .line 8
    return-object p0
    .line 9
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
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil$IconOverlay;->loadAndAttachOverlay()V

    .line 2
    return-void
    .line 5
.end method
