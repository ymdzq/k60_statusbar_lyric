.class public final synthetic Lcom/android/wm/shell/back/CrossTaskBackAnimation$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/back/CrossTaskBackAnimation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/back/CrossTaskBackAnimation;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/back/CrossTaskBackAnimation;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/back/CrossTaskBackAnimation;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 7
    move-result p1

    .line 10
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mEnteringStartRect:Landroid/graphics/Rect;

    .line 11
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 13
    int-to-float v1, v1

    .line 15
    iget-object v2, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    .line 16
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 18
    int-to-float v3, v3

    .line 20
    invoke-static {v3, v1, p1, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 21
    move-result v1

    .line 24
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 25
    int-to-float v3, v3

    .line 27
    iget v4, v2, Landroid/graphics/Rect;->top:I

    .line 28
    int-to-float v4, v4

    .line 30
    invoke-static {v4, v3, p1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 31
    move-result v3

    .line 34
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 35
    move-result v4

    .line 38
    int-to-float v4, v4

    .line 39
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 40
    move-result v5

    .line 43
    int-to-float v5, v5

    .line 44
    invoke-static {v5, v4, p1, v4}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 45
    move-result v4

    .line 48
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 49
    move-result v0

    .line 52
    int-to-float v0, v0

    .line 53
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 54
    move-result v2

    .line 57
    int-to-float v2, v2

    .line 58
    invoke-static {v2, v0, p1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 59
    move-result v0

    .line 62
    iget-object v2, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mEnteringCurrentRect:Landroid/graphics/RectF;

    .line 63
    add-float/2addr v4, v1

    .line 65
    add-float/2addr v0, v3

    .line 66
    invoke-virtual {v2, v1, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 67
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    .line 70
    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 72
    iget v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mCornerRadius:F

    .line 74
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->applyTransform(Landroid/view/SurfaceControl;Landroid/graphics/RectF;F)V

    .line 76
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 79
    iget-object v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    .line 81
    iget-object v1, v1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 83
    const/4 v2, 0x0

    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 86
    const/high16 v1, -0x40800000    # -1.0f

    .line 89
    mul-float/2addr p1, v1

    .line 91
    const/high16 v1, 0x3f800000    # 1.0f

    .line 92
    add-float/2addr p1, v1

    .line 94
    iget-object p0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    .line 95
    iget-object p0, p0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 97
    invoke-virtual {v0, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 99
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 102
    return-void
    .line 105
.end method
