.class public Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final FLAG_ALL:I = -0x1

.field public static final FLAG_ALPHA:I = 0x1

.field public static final FLAG_CORNER_RADIUS:I = 0x10

.field public static final FLAG_LEFT_BOTTOM_CORNER_TIP:I = 0x200

.field public static final FLAG_MATRIX:I = 0x2

.field public static final FLAG_RIGHT_BOTTOM_CORNER_TIP:I = 0x400

.field public static final FLAG_STROKE:I = 0x100

.field public static final FLAG_TRANSACTION:I = 0x80

.field public static final FLAG_VISIBILITY:I = 0x40

.field public static final FLAG_WINDOW_CROP:I = 0x4

.field public static final FLAG_WINDOW_POSITION:I = 0x8

.field private static final FRAME_COUNT:I = 0x6

.field private static final TAG:Ljava/lang/String; = "MiuiInfinityModeSurfaceSyncer"


# instance fields
.field private mBBQ:Landroid/graphics/BLASTBufferQueue;

.field private final mCommittedListener:Landroid/util/ArraySet;

.field private final mFrameQ:Ljava/util/concurrent/ArrayBlockingQueue;

.field private mInitiator:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private final mMergeLock:Ljava/lang/Object;

.field private mPendingFrameBundle:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceFrameBundle;

.field private mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

.field private final mShellExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceApplyer:Ljava/util/function/Consumer;

.field private mTransactionFactory:Ljava/util/function/Supplier;


# direct methods
.method public static synthetic $r8$lambda$8SQYd1R02LbWkfyzNgafmJ0Qe_Y(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;->mergeWithRenderFrame(J)V

    .line 2
    return-void
    .line 5
.end method

.method public static bridge synthetic -$$Nest$fgetmTransactionFactory(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;)Ljava/util/function/Supplier;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 2
    return-object p0
    .line 4
.end method

.method public constructor <init>(Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 5
    const/4 v1, 0x6

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 8
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;->mFrameQ:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 11
    new-instance v0, Landroid/util/ArraySet;

    .line 13
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;->mCommittedListener:Landroid/util/ArraySet;

    .line 18
    new-instance v0, Ljava/lang/Object;

    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;->mLock:Ljava/lang/Object;

    .line 25
    new-instance v0, Ljava/lang/Object;

    .line 27
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;->mMergeLock:Ljava/lang/Object;

    .line 32
    new-instance v0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$$ExternalSyntheticLambda0;

    .line 34
    invoke-direct {v0, p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;)V

    .line 36
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;->mSurfaceApplyer:Ljava/util/function/Consumer;

    .line 39
    new-instance v0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$$ExternalSyntheticLambda2;

    .line 41
    invoke-direct {v0}, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$$ExternalSyntheticLambda2;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 46
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;->mShellExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 48
    return-void
    .line 50
.end method

.method private mergeWithRenderFrame(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;->mSurface:Landroid/view/Surface;

    .line 2
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;->applyFrameEarly()V

    .line 10
    return-void

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;->collectTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 14
    move-result-object v0

    .line 17
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;->mBBQ:Landroid/graphics/BLASTBufferQueue;

    .line 18
    invoke-virtual {p0, v0, p1, p2}, Landroid/graphics/BLASTBufferQueue;->mergeWithNextTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    .line 20
    return-void
    .line 23
.end method


# virtual methods
.method public addToSync(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;->mPendingFrameBundle:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceFrameBundle;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceFrameBundle;->add(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    goto :goto_0

    .line 7
    :catch_0
    sget-object p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;->TAG:Ljava/lang/String;

    .line 8
    const-string p1, "frameSyncStart() needs to be executed before adding elements"

    .line 10
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :goto_0
    return-void
    .line 15
.end method

.method public addTransactionCommittedListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;->mCommittedListener:Landroid/util/ArraySet;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4
    return-void
    .line 7
.end method

.method public applyAndSync()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;->applyFrameEarly()V

    .line 2
    return-void
    .line 5
.end method

.method public applyFrameEarly()V
    .locals 3

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;->mFrameQ:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceFrameBundle;

    .line 8
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceFrameBundle;->collectFrameChange()Landroid/view/SurfaceControl$Transaction;

    .line 10
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    goto :goto_0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    sget-object v0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;->TAG:Ljava/lang/String;

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "collect error e:"

    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 31
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 38
    invoke-static {v0, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :goto_0
    return-void
    .line 42
.end method

.method public callingFunc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;->mInitiator:Ljava/lang/String;

    .line 2
    return-void
    .line 4
.end method

.method public clearRenderingKit()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;->mBBQ:Landroid/graphics/BLASTBufferQueue;

    .line 3
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    .line 5
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;->mSurface:Landroid/view/Surface;

    .line 7
    return-void
    .line 9
.end method

.method public collectTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 4

    .line 1
    const-string v0, "collect mFrameQ:"

    .line 2
    :try_start_0
    sget-object v1, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;->TAG:Ljava/lang/String;

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;->mFrameQ:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    .line 13
    move-result v0

    .line 16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 23
    invoke-static {v1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;->mFrameQ:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 27
    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 32
    check-cast v0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceFrameBundle;

    .line 33
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceFrameBundle;->collectFrameChange()Landroid/view/SurfaceControl$Transaction;

    .line 35
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    return-object p0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    sget-object v1, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;->TAG:Ljava/lang/String;

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    const-string v3, "collect error e:"

    .line 45
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 53
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 60
    invoke-static {v1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 64
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 66
    move-result-object p0

    .line 69
    check-cast p0, Landroid/view/SurfaceControl$Transaction;

    .line 70
    return-object p0
    .line 72
.end method

.method public frameSyncEnd()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;->TAG:Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    const-string v2, "frameSyncEnd mFrameQ:"

    .line 6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;->mFrameQ:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 11
    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    .line 13
    move-result v2

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;->mFrameQ:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 27
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;->mPendingFrameBundle:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceFrameBundle;

    .line 29
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 34
    :catch_0
    move-exception p0

    .line 35
    sget-object v0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;->TAG:Ljava/lang/String;

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    const-string v2, "frameSyncEnd error :"

    .line 40
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 51
    invoke-static {v0, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :goto_0
    return-void
    .line 55
.end method

.method public frameSyncStart()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;->TAG:Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    const-string v2, "frameSyncStart mFrameQ:"

    .line 6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;->mFrameQ:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 11
    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    .line 13
    move-result v2

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance v0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceFrameBundle;

    .line 27
    invoke-direct {v0, p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceFrameBundle;-><init>(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;)V

    .line 29
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;->mPendingFrameBundle:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceFrameBundle;

    .line 32
    return-void
    .line 34
.end method

.method public getCallingFunc()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;->mInitiator:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public getLock()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;->mLock:Ljava/lang/Object;

    .line 2
    return-object p0
    .line 4
.end method

.method public getMergeLock()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;->mMergeLock:Ljava/lang/Object;

    .line 2
    return-object p0
    .line 4
.end method

.method public setRenderingKit(Landroid/view/Surface;Landroid/graphics/BLASTBufferQueue;Landroid/view/ThreadedRenderer$SimpleRenderer;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;->mBBQ:Landroid/graphics/BLASTBufferQueue;

    .line 2
    iput-object p3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;->mSurface:Landroid/view/Surface;

    .line 6
    return-void
    .line 8
.end method
