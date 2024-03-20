.class public final Lcom/android/wm/shell/back/CrossTaskBackAnimation;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mBackAnimationRunner:Lcom/android/wm/shell/back/BackAnimationRunner;

.field public mBackInProgress:Z

.field public final mBackground:Lcom/android/wm/shell/back/BackAnimationBackground;

.field public final mClosingCurrentRect:Landroid/graphics/RectF;

.field public mClosingTarget:Landroid/view/RemoteAnimationTarget;

.field public final mCornerRadius:F

.field public final mEnteringCurrentRect:Landroid/graphics/RectF;

.field public final mEnteringStartRect:Landroid/graphics/Rect;

.field public mEnteringTarget:Landroid/view/RemoteAnimationTarget;

.field public mFinishCallback:Landroid/view/IRemoteAnimationFinishedCallback;

.field public final mInitialTouchPos:Landroid/graphics/PointF;

.field public final mInterpolator:Landroid/view/animation/Interpolator;

.field public mProgress:F

.field public final mProgressAnimator:Landroid/window/BackProgressAnimator;

.field public final mStartTaskRect:Landroid/graphics/Rect;

.field public final mTmpFloat9:[F

.field public final mTmpTranslate:[F

.field public final mTouchPos:Landroid/graphics/PointF;

.field public final mTransaction:Landroid/view/SurfaceControl$Transaction;

.field public final mTransformMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/back/BackAnimationBackground;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    .line 10
    new-instance v0, Landroid/graphics/RectF;

    .line 12
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mClosingCurrentRect:Landroid/graphics/RectF;

    .line 17
    new-instance v0, Landroid/graphics/Rect;

    .line 19
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mEnteringStartRect:Landroid/graphics/Rect;

    .line 24
    new-instance v0, Landroid/graphics/RectF;

    .line 26
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mEnteringCurrentRect:Landroid/graphics/RectF;

    .line 31
    new-instance v0, Landroid/graphics/PointF;

    .line 33
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mInitialTouchPos:Landroid/graphics/PointF;

    .line 38
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 40
    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 45
    new-instance v0, Landroid/graphics/Matrix;

    .line 47
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTransformMatrix:Landroid/graphics/Matrix;

    .line 52
    const/16 v0, 0x9

    .line 54
    new-array v0, v0, [F

    .line 56
    iput-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTmpFloat9:[F

    .line 58
    const/4 v0, 0x3

    .line 60
    new-array v0, v0, [F

    .line 61
    fill-array-data v0, :array_0

    .line 63
    iput-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTmpTranslate:[F

    .line 66
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    .line 68
    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 70
    iput-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 73
    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mBackInProgress:Z

    .line 76
    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mProgress:F

    .line 79
    new-instance v0, Landroid/graphics/PointF;

    .line 81
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 83
    iput-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTouchPos:Landroid/graphics/PointF;

    .line 86
    new-instance v0, Landroid/window/BackProgressAnimator;

    .line 88
    invoke-direct {v0}, Landroid/window/BackProgressAnimator;-><init>()V

    .line 90
    iput-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    .line 93
    invoke-static {p1}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/Context;)F

    .line 95
    move-result p1

    .line 98
    iput p1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mCornerRadius:F

    .line 99
    new-instance p1, Lcom/android/wm/shell/back/BackAnimationRunner;

    .line 101
    new-instance v0, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback;

    .line 103
    invoke-direct {v0, p0}, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback;-><init>(Lcom/android/wm/shell/back/CrossTaskBackAnimation;)V

    .line 105
    new-instance v1, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Runner;

    .line 108
    invoke-direct {v1, p0}, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Runner;-><init>(Lcom/android/wm/shell/back/CrossTaskBackAnimation;)V

    .line 110
    invoke-direct {p1, v0, v1}, Lcom/android/wm/shell/back/BackAnimationRunner;-><init>(Landroid/window/IOnBackInvokedCallback;Landroid/view/IRemoteAnimationRunner;)V

    .line 113
    iput-object p1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mBackAnimationRunner:Lcom/android/wm/shell/back/BackAnimationRunner;

    .line 116
    iput-object p2, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mBackground:Lcom/android/wm/shell/back/BackAnimationBackground;

    .line 118
    return-void

    .line 120
    nop

    .line 121
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
    .line 122
.end method


# virtual methods
.method public final applyTransform(Landroid/view/SurfaceControl;Landroid/graphics/RectF;F)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    .line 5
    move-result v0

    .line 8
    iget-object v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    .line 9
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 11
    move-result v2

    .line 14
    int-to-float v2, v2

    .line 15
    div-float/2addr v0, v2

    .line 16
    iget-object v2, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTransformMatrix:Landroid/graphics/Matrix;

    .line 17
    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 19
    invoke-virtual {v2, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 22
    iget v0, p2, Landroid/graphics/RectF;->left:F

    .line 25
    iget p2, p2, Landroid/graphics/RectF;->top:F

    .line 27
    invoke-virtual {v2, v0, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 29
    iget-object p2, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 32
    iget-object p0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTmpFloat9:[F

    .line 34
    invoke-virtual {p2, p1, v2, p0}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 36
    move-result-object p0

    .line 39
    invoke-virtual {p0, p1, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 40
    move-result-object p0

    .line 43
    invoke-virtual {p0, p1, p3}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 44
    return-void
    .line 47
.end method

.method public final finishAnimation()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 7
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    .line 9
    iput-object v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    .line 14
    if-eqz v0, :cond_1

    .line 16
    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 18
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    .line 20
    iput-object v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 25
    iget-object v2, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mBackground:Lcom/android/wm/shell/back/BackAnimationBackground;

    .line 27
    if-eqz v2, :cond_2

    .line 29
    invoke-virtual {v2, v0}, Lcom/android/wm/shell/back/BackAnimationBackground;->removeBackground(Landroid/view/SurfaceControl$Transaction;)V

    .line 31
    :cond_2
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 34
    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mBackInProgress:Z

    .line 38
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTransformMatrix:Landroid/graphics/Matrix;

    .line 40
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 42
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mClosingCurrentRect:Landroid/graphics/RectF;

    .line 45
    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 47
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mInitialTouchPos:Landroid/graphics/PointF;

    .line 50
    const/4 v2, 0x0

    .line 52
    invoke-virtual {v0, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 53
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mFinishCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    .line 56
    if-eqz v0, :cond_3

    .line 58
    :try_start_0
    invoke-interface {v0}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 65
    :goto_0
    iput-object v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mFinishCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    .line 68
    :cond_3
    return-void
    .line 70
.end method
