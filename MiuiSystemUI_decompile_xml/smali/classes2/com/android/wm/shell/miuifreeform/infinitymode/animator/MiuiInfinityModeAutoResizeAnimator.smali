.class public Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;
.super Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final STATE_PREPARED:I = 0x1

.field private static final STATE_REPREPARED:I = 0x2

.field private static final STATE_START:I = 0x3

.field private static final STATE_UNSPECIFIED:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "MiuiInfinityModeAutoResizeAnimator"


# instance fields
.field private mAnimationState:I

.field private mEndBounds:Landroid/graphics/Rect;

.field private mEndRadius:F

.field private mEndScale:F

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private mStartBounds:Landroid/graphics/Rect;

.field private mStartRadius:F

.field private mStartScale:F

.field private final mTaskOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

.field private final mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

.field private mVeilBounds:Landroid/graphics/Rect;

.field private mVeilLeash:Landroid/view/SurfaceControl;

.field private mVeilScale:F

.field private mWindowSuturer:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$PendingResizingWindowSuturer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$AnimationFinishedCallback;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 7

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p2

    .line 4
    move-object v3, p3

    .line 5
    move-object v4, p5

    .line 6
    move-object v5, p6

    .line 7
    move-object v6, p7

    .line 8
    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;-><init>(Ljava/lang/String;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$AnimationFinishedCallback;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 9
    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mAnimationState:I

    .line 13
    new-instance p1, Landroid/graphics/Rect;

    .line 15
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mVeilBounds:Landroid/graphics/Rect;

    .line 20
    const/high16 p1, 0x3f800000    # 1.0f

    .line 22
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mVeilScale:F

    .line 24
    new-instance p1, Landroid/graphics/Rect;

    .line 26
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mStartBounds:Landroid/graphics/Rect;

    .line 31
    new-instance p1, Landroid/graphics/Rect;

    .line 33
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mEndBounds:Landroid/graphics/Rect;

    .line 38
    iput-object p3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 40
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->getDisplayAreaOrganizer()Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 42
    move-result-object p1

    .line 45
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mTaskOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 46
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->getMainExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    .line 48
    move-result-object p1

    .line 51
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 52
    new-instance p1, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$PendingResizingWindowSuturer;

    .line 54
    invoke-direct {p1, p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$PendingResizingWindowSuturer;-><init>(Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;)V

    .line 56
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mWindowSuturer:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$PendingResizingWindowSuturer;

    .line 59
    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    .line 61
    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->attach(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    .line 66
    move-result-object p1

    .line 69
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mVeilLeash:Landroid/view/SurfaceControl;

    .line 70
    return-void
    .line 72
.end method

.method private createSnapshotBuffer(Landroid/graphics/Rect;F)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 9
    const/4 p1, 0x0

    .line 12
    invoke-virtual {v0, p1, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 13
    :cond_0
    new-instance p1, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 16
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 18
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskSurface()Landroid/view/SurfaceControl;

    .line 20
    move-result-object p0

    .line 23
    invoke-direct {p1, p0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 24
    invoke-virtual {p1, v0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 27
    move-result-object p0

    .line 30
    check-cast p0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 31
    invoke-virtual {p0, p2}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setFrameScale(F)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 33
    move-result-object p0

    .line 36
    check-cast p0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 37
    const/4 p1, 0x1

    .line 39
    invoke-virtual {p0, p1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setPixelFormat(I)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 40
    move-result-object p0

    .line 43
    check-cast p0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 44
    invoke-virtual {p0, p1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setChildrenOnly(Z)Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 46
    move-result-object p0

    .line 49
    invoke-virtual {p0, p1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 50
    move-result-object p0

    .line 53
    check-cast p0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 54
    invoke-virtual {p0, p1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setAllowProtected(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 56
    move-result-object p0

    .line 59
    check-cast p0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 60
    invoke-virtual {p0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$LayerCaptureArgs;

    .line 62
    move-result-object p0

    .line 65
    invoke-static {p0}, Landroid/window/ScreenCapture;->captureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 66
    move-result-object p0

    .line 69
    return-object p0
    .line 70
.end method

.method private showSnapShotOverlay()V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "continueAnimation showSnapShotOverlay :"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mAnimationState:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 17
    const-string v1, "MiuiInfinityModeAutoResizeAnimator"

    .line 18
    invoke-static {v1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 23
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mContext:Landroid/content/Context;

    .line 25
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getCornerRadius(Landroid/content/Context;)F

    .line 27
    move-result v0

    .line 30
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 31
    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 36
    check-cast v2, Landroid/view/SurfaceControl$Transaction;

    .line 37
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mVeilBounds:Landroid/graphics/Rect;

    .line 39
    const/high16 v4, 0x3f800000    # 1.0f

    .line 41
    invoke-direct {p0, v3, v4}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->createSnapshotBuffer(Landroid/graphics/Rect;F)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 43
    move-result-object v3

    .line 46
    if-eqz v3, :cond_2

    .line 47
    invoke-virtual {v3}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 49
    move-result-object v5

    .line 52
    if-nez v5, :cond_0

    .line 53
    goto :goto_0

    .line 55
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    .line 56
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mVeilBounds:Landroid/graphics/Rect;

    .line 58
    invoke-direct {v1, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 60
    const/4 v5, 0x0

    .line 63
    invoke-virtual {v1, v5, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 64
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mVeilLeash:Landroid/view/SurfaceControl;

    .line 67
    if-eqz v5, :cond_1

    .line 69
    invoke-virtual {v5}, Landroid/view/SurfaceControl;->isValid()Z

    .line 71
    move-result v5

    .line 74
    if-eqz v5, :cond_1

    .line 75
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mVeilLeash:Landroid/view/SurfaceControl;

    .line 77
    invoke-virtual {v2, v5}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 79
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mVeilLeash:Landroid/view/SurfaceControl;

    .line 82
    invoke-virtual {v2, v5, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 84
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mVeilLeash:Landroid/view/SurfaceControl;

    .line 87
    invoke-virtual {v3}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 89
    move-result-object v3

    .line 92
    invoke-virtual {v2, v4, v3}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;)Landroid/view/SurfaceControl$Transaction;

    .line 93
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mVeilLeash:Landroid/view/SurfaceControl;

    .line 96
    invoke-virtual {v2, v3, v1}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 98
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mVeilLeash:Landroid/view/SurfaceControl;

    .line 101
    iget v3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mVeilScale:F

    .line 103
    invoke-virtual {v2, v1, v3, v3}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 105
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mVeilLeash:Landroid/view/SurfaceControl;

    .line 108
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mVeilScale:F

    .line 110
    div-float/2addr v0, p0

    .line 112
    invoke-virtual {v2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 113
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 116
    :cond_1
    return-void

    .line 119
    :cond_2
    :goto_0
    const-string p0, "attachSnapshotToSurface error"

    .line 120
    invoke-static {v1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
    .line 125
.end method


# virtual methods
.method public attach(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mVeilLeash:Landroid/view/SurfaceControl;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->makeBBQSurfaceBuilder()Landroid/view/SurfaceControl$Builder;

    .line 12
    move-result-object v0

    .line 15
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mDisplayWidth:I

    .line 16
    iget v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mDisplayHeight:I

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    .line 20
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mTaskOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 24
    const/4 v2, 0x0

    .line 26
    invoke-virtual {v1, v2, v0}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->attachToDisplayArea(ILandroid/view/SurfaceControl$Builder;)V

    .line 27
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 30
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mVeilLeash:Landroid/view/SurfaceControl;

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mVeilBounds:Landroid/graphics/Rect;

    .line 36
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 38
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getBaseBounds()Landroid/graphics/Rect;

    .line 40
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 44
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 47
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskScale()F

    .line 49
    move-result v0

    .line 52
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mVeilScale:F

    .line 53
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mVeilLeash:Landroid/view/SurfaceControl;

    .line 55
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mVeilBounds:Landroid/graphics/Rect;

    .line 57
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 59
    int-to-float v2, v2

    .line 61
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 62
    int-to-float v1, v1

    .line 64
    invoke-virtual {p1, v0, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 65
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mVeilLeash:Landroid/view/SurfaceControl;

    .line 68
    const/high16 v1, 0x3f800000    # 1.0f

    .line 70
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 72
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mVeilLeash:Landroid/view/SurfaceControl;

    .line 75
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 77
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskSurface()Landroid/view/SurfaceControl;

    .line 79
    move-result-object v1

    .line 82
    const/16 v2, 0x4e21

    .line 83
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 85
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mVeilLeash:Landroid/view/SurfaceControl;

    .line 88
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 90
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 93
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mVeilLeash:Landroid/view/SurfaceControl;

    .line 96
    return-object p0
    .line 98
.end method

.method public destroySurface()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 2
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 8
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mVeilLeash:Landroid/view/SurfaceControl;

    .line 10
    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    .line 14
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mVeilLeash:Landroid/view/SurfaceControl;

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 22
    const/4 v1, 0x0

    .line 25
    iput-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mVeilLeash:Landroid/view/SurfaceControl;

    .line 26
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 28
    :cond_0
    return-void
    .line 31
.end method

.method public getTaskID()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskId()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public interceptAppTransition(Landroid/window/TransitionInfo;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->isAnimationFinished()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->toString()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 14
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 16
    move-result-object v0

    .line 19
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->mTopActivityRecordName:Ljava/lang/String;

    .line 20
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 22
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getPreActivityRecordName()Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 30
    move-result v0

    .line 33
    if-nez v0, :cond_2

    .line 34
    :cond_1
    if-eqz p0, :cond_3

    .line 36
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 38
    move-result p0

    .line 41
    if-eqz p0, :cond_3

    .line 42
    :cond_2
    const/4 v1, 0x1

    .line 44
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 45
    const-string v0, "interceptAppTransition :"

    .line 47
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    const-string v0, ", "

    .line 55
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p0

    .line 66
    const-string p1, "MiuiInfinityModeAutoResizeAnimator"

    .line 67
    invoke-static {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return v1
    .line 72
.end method

.method public isAnimationFinished()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mAnimationState:I

    .line 2
    if-nez p0, :cond_0

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

.method public mergeWithBoundsChange(ILandroid/graphics/Rect;FLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$GeometryBuilder;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    const-string p3, "continueAnimation mergeWithBoundsChange :"

    .line 4
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget p3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mAnimationState:I

    .line 9
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    const-string p3, ",taskBounds :"

    .line 14
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 25
    const-string p3, "MiuiInfinityModeAutoResizeAnimator"

    .line 26
    invoke-static {p3, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mWindowSuturer:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$PendingResizingWindowSuturer;

    .line 31
    invoke-virtual {p1, p2, p4}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$PendingResizingWindowSuturer;->addPendingSizeChange(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)Z

    .line 33
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->startAnimation()V

    .line 36
    return-void
    .line 39
.end method

.method public onAnimationFinished(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;)V
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mAnimationState:I

    .line 3
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mWindowSuturer:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$PendingResizingWindowSuturer;

    .line 5
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$PendingResizingWindowSuturer;->applyResizingDirectly()V

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 10
    const-string v0, "continueAnimation onAnimationFinished :"

    .line 12
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mAnimationState:I

    .line 17
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 25
    const-string p1, "MiuiInfinityModeAutoResizeAnimator"

    .line 26
    invoke-static {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
    .line 31
.end method

.method public onAnimationUpdate(Ljava/lang/Object;Ljava/util/Collection;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;)V
    .locals 11

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 2
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 7
    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    .line 8
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 10
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskSurface()Landroid/view/SurfaceControl;

    .line 12
    move-result-object p2

    .line 15
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mWindowSuturer:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$PendingResizingWindowSuturer;

    .line 16
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mTaskBounds:Landroid/graphics/Rect;

    .line 18
    invoke-virtual {v0, v1, p2, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$PendingResizingWindowSuturer;->resizingMergeNextFrame(Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)Z

    .line 20
    new-instance v0, Landroid/graphics/Rect;

    .line 23
    invoke-virtual {p3}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;->getLeft()F

    .line 25
    move-result v1

    .line 28
    float-to-int v1, v1

    .line 29
    invoke-virtual {p3}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;->getTop()F

    .line 30
    move-result v2

    .line 33
    float-to-int v2, v2

    .line 34
    invoke-virtual {p3}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;->getRight()F

    .line 35
    move-result v3

    .line 38
    float-to-int v3, v3

    .line 39
    invoke-virtual {p3}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;->getBottom()F

    .line 40
    move-result v4

    .line 43
    float-to-int v4, v4

    .line 44
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 45
    invoke-virtual {p3}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;->getRadius()F

    .line 48
    move-result v1

    .line 51
    invoke-virtual {p3}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;->getOverlayAlpha()F

    .line 52
    move-result p3

    .line 55
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mWindowSuturer:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$PendingResizingWindowSuturer;

    .line 56
    invoke-virtual {v2, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$PendingResizingWindowSuturer;->updateFinalBounds(Landroid/graphics/Rect;)V

    .line 58
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mWindowSuturer:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$PendingResizingWindowSuturer;

    .line 61
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$PendingResizingWindowSuturer;->updateFinalRadius(F)V

    .line 63
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 66
    int-to-float v2, v2

    .line 68
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 69
    int-to-float v3, v3

    .line 71
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 72
    move-result v4

    .line 75
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 76
    move-result v0

    .line 79
    int-to-float v4, v4

    .line 80
    const/high16 v5, 0x3f800000    # 1.0f

    .line 81
    mul-float/2addr v4, v5

    .line 83
    iget-object v6, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mTaskBounds:Landroid/graphics/Rect;

    .line 84
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 86
    move-result v6

    .line 89
    int-to-float v6, v6

    .line 90
    div-float v6, v4, v6

    .line 91
    int-to-float v0, v0

    .line 93
    mul-float/2addr v0, v5

    .line 94
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mTaskBounds:Landroid/graphics/Rect;

    .line 95
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 97
    move-result v5

    .line 100
    int-to-float v5, v5

    .line 101
    div-float v5, v0, v5

    .line 102
    div-float v7, v1, v6

    .line 104
    div-float v8, v1, v5

    .line 106
    iget-object v9, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mVeilLeash:Landroid/view/SurfaceControl;

    .line 108
    if-eqz v9, :cond_0

    .line 110
    invoke-virtual {v9}, Landroid/view/SurfaceControl;->isValid()Z

    .line 112
    move-result v9

    .line 115
    if-eqz v9, :cond_0

    .line 116
    iget-object v9, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mVeilBounds:Landroid/graphics/Rect;

    .line 118
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 120
    move-result v9

    .line 123
    int-to-float v9, v9

    .line 124
    div-float/2addr v4, v9

    .line 125
    iget-object v9, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mVeilBounds:Landroid/graphics/Rect;

    .line 126
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 128
    move-result v9

    .line 131
    int-to-float v9, v9

    .line 132
    div-float/2addr v0, v9

    .line 133
    div-float v9, v1, v4

    .line 134
    div-float/2addr v1, v0

    .line 136
    iget-object v10, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mVeilLeash:Landroid/view/SurfaceControl;

    .line 137
    invoke-virtual {p1, v10, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 139
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mVeilLeash:Landroid/view/SurfaceControl;

    .line 142
    invoke-virtual {p1, p3, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 144
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mVeilLeash:Landroid/view/SurfaceControl;

    .line 147
    invoke-virtual {p1, p3, v9, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 149
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mVeilLeash:Landroid/view/SurfaceControl;

    .line 152
    invoke-virtual {p1, p0, v4, v0}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 154
    :cond_0
    invoke-virtual {p1, p2, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 157
    invoke-virtual {p1, p2, v7, v8}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 160
    invoke-virtual {p1, p2, v6, v5}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 163
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 166
    return-void
    .line 169
.end method

.method public setAnimation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mStartBounds:Landroid/graphics/Rect;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 4
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getBaseVisualBounds()Landroid/graphics/Rect;

    .line 6
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 10
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 13
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mContext:Landroid/content/Context;

    .line 15
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getCornerRadius(Landroid/content/Context;)F

    .line 17
    move-result v0

    .line 20
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mStartRadius:F

    .line 21
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 23
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getBaseScale()F

    .line 25
    move-result v0

    .line 28
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mStartScale:F

    .line 29
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mEndBounds:Landroid/graphics/Rect;

    .line 31
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 33
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationVisualBounds()Landroid/graphics/Rect;

    .line 35
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 39
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 42
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mContext:Landroid/content/Context;

    .line 44
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getCornerRadius(Landroid/content/Context;)F

    .line 46
    move-result v0

    .line 49
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mEndRadius:F

    .line 50
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 52
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->isFreeformMode()Z

    .line 54
    move-result v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 60
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationNormalScale()F

    .line 62
    move-result v0

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 67
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationMiniScale()F

    .line 69
    move-result v0

    .line 72
    :goto_0
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mEndScale:F

    .line 73
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mAnimationState:I

    .line 75
    if-eqz v0, :cond_1

    .line 77
    const/4 v0, 0x2

    .line 79
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mAnimationState:I

    .line 80
    goto :goto_1

    .line 82
    :cond_1
    const/4 v0, 0x1

    .line 83
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mAnimationState:I

    .line 84
    :goto_1
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->showSnapShotOverlay()V

    .line 86
    return-void
    .line 89
.end method

.method public startAnimation()V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string/jumbo v1, "startAnimation state:"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mAnimationState:I

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ",mStartBounds:"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mStartBounds:Landroid/graphics/Rect;

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ", mEndBounds: "

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mEndBounds:Landroid/graphics/Rect;

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 38
    const-string v1, "MiuiInfinityModeAutoResizeAnimator"

    .line 39
    invoke-static {v1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mSpringAnim:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 44
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mStartBounds:Landroid/graphics/Rect;

    .line 46
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 48
    int-to-float v1, v1

    .line 50
    const-string v2, "left"

    .line 51
    invoke-virtual {v0, v2, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->from(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 53
    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mStartBounds:Landroid/graphics/Rect;

    .line 57
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 59
    int-to-float v1, v1

    .line 61
    const-string/jumbo v3, "top"

    .line 62
    invoke-virtual {v0, v3, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->from(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 65
    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mStartBounds:Landroid/graphics/Rect;

    .line 69
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 71
    int-to-float v1, v1

    .line 73
    const-string v4, "right"

    .line 74
    invoke-virtual {v0, v4, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->from(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 76
    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mStartBounds:Landroid/graphics/Rect;

    .line 80
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 82
    int-to-float v1, v1

    .line 84
    const-string v5, "bottom"

    .line 85
    invoke-virtual {v0, v5, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->from(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 87
    move-result-object v0

    .line 90
    const-string v1, "overlayAlpha"

    .line 91
    const/high16 v6, 0x3f800000    # 1.0f

    .line 93
    invoke-virtual {v0, v1, v6}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->from(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 95
    move-result-object v0

    .line 98
    iget v7, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mStartRadius:F

    .line 99
    const-string v8, "radius"

    .line 101
    invoke-virtual {v0, v8, v7}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->from(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 103
    move-result-object v0

    .line 106
    const/4 v7, 0x0

    .line 107
    new-array v7, v7, [Ljava/lang/String;

    .line 108
    const v9, 0x3ecccccd    # 0.4f

    .line 110
    invoke-virtual {v0, v6, v9, v7}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->setSpecial(FF[Ljava/lang/String;)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 113
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mSpringAnim:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 116
    iget-object v6, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mEndBounds:Landroid/graphics/Rect;

    .line 118
    iget v6, v6, Landroid/graphics/Rect;->left:I

    .line 120
    int-to-float v6, v6

    .line 122
    invoke-virtual {v0, v2, v6}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->to(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 123
    move-result-object v0

    .line 126
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mEndBounds:Landroid/graphics/Rect;

    .line 127
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 129
    int-to-float v2, v2

    .line 131
    invoke-virtual {v0, v3, v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->to(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 132
    move-result-object v0

    .line 135
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mEndBounds:Landroid/graphics/Rect;

    .line 136
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 138
    int-to-float v2, v2

    .line 140
    invoke-virtual {v0, v4, v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->to(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 141
    move-result-object v0

    .line 144
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mEndBounds:Landroid/graphics/Rect;

    .line 145
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 147
    int-to-float v2, v2

    .line 149
    invoke-virtual {v0, v5, v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->to(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 150
    move-result-object v0

    .line 153
    const/4 v2, 0x0

    .line 154
    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->to(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 155
    move-result-object v0

    .line 158
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mStartRadius:F

    .line 159
    invoke-virtual {v0, v8, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->to(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 161
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mSpringAnim:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;

    .line 164
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->completeFromTo()V

    .line 166
    const/4 v0, 0x3

    .line 169
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mAnimationState:I

    .line 170
    return-void
    .line 172
.end method
