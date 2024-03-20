.class Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator$1;
.super Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field private final mTmpRect:Landroid/graphics/Rect;

.field final synthetic val$displayBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;FFLandroid/graphics/Rect;)V
    .locals 6

    .line 1
    iput-object p5, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator$1;->val$displayBounds:Landroid/graphics/Rect;

    .line 2
    const/4 v5, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p2

    .line 7
    move v3, p3

    .line 8
    move v4, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;-><init>(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;FFI)V

    .line 10
    new-instance p1, Landroid/graphics/Rect;

    .line 13
    invoke-direct {p1, p5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 15
    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator$1;->mTmpRect:Landroid/graphics/Rect;

    .line 18
    return-void
    .line 20
.end method

.method private getCastedFractionValue(FFF)F
    .locals 0

    .line 1
    const/high16 p0, 0x3f800000    # 1.0f

    .line 2
    sub-float/2addr p0, p3

    .line 4
    mul-float/2addr p0, p1

    .line 5
    mul-float/2addr p2, p3

    .line 6
    add-float/2addr p2, p0

    .line 7
    const/high16 p0, 0x3f000000    # 0.5f

    .line 8
    add-float/2addr p2, p0

    .line 10
    return p2
    .line 11
.end method


# virtual methods
.method public applySurfaceControlTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;F)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->getStartValue()F

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->getEndValue()F

    .line 6
    move-result v1

    .line 9
    invoke-direct {p0, v0, v1, p3}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator$1;->getCastedFractionValue(FFF)F

    .line 10
    move-result p3

    .line 13
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator$1;->mTmpRect:Landroid/graphics/Rect;

    .line 14
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 16
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 18
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    .line 20
    move-result v3

    .line 23
    add-int/2addr v3, v2

    .line 24
    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator$1;->mTmpRect:Landroid/graphics/Rect;

    .line 25
    iget v4, v2, Landroid/graphics/Rect;->right:I

    .line 27
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 29
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    .line 31
    move-result v5

    .line 34
    add-int/2addr v5, v2

    .line 35
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 36
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->setCurrentValue(F)V

    .line 39
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->getSurfaceTransactionHelper()Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;

    .line 42
    move-result-object v0

    .line 45
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator$1;->mTmpRect:Landroid/graphics/Rect;

    .line 46
    invoke-virtual {v0, p2, p1, p0}, Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;->crop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;

    .line 48
    move-result-object p0

    .line 51
    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;->round(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;

    .line 52
    move-result-object p0

    .line 55
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;->translate(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;

    .line 56
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 59
    return-void
    .line 62
.end method

.method public onStartTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->getSurfaceTransactionHelper()Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator$1;->mTmpRect:Landroid/graphics/Rect;

    .line 6
    invoke-virtual {v0, p2, p1, v1}, Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;->crop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {v0, p2, p1}, Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;->round(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;

    .line 12
    move-result-object v0

    .line 15
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->getStartValue()F

    .line 16
    move-result p0

    .line 19
    invoke-virtual {v0, p2, p1, p0}, Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;->translate(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;

    .line 20
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 23
    return-void
    .line 26
.end method
