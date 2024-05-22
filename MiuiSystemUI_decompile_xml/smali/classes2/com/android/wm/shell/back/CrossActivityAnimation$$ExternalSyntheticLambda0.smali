.class public final synthetic Lcom/android/wm/shell/back/CrossActivityAnimation$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/back/CrossActivityAnimation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/back/CrossActivityAnimation;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/back/CrossActivityAnimation$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/back/CrossActivityAnimation;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/back/CrossActivityAnimation;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 7
    move-result p1

    .line 10
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mEnteringStartRect:Landroid/graphics/Rect;

    .line 11
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 13
    int-to-float v1, v1

    .line 15
    iget-object v2, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mStartTaskRect:Landroid/graphics/Rect;

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
    iget v2, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mEnteringProgress:F

    .line 63
    const/high16 v5, 0x3f800000    # 1.0f

    .line 65
    invoke-static {v5, v2, p1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 67
    move-result p1

    .line 70
    iget-object v2, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mEnteringRect:Landroid/graphics/RectF;

    .line 71
    add-float/2addr v4, v1

    .line 73
    add-float/2addr v0, v3

    .line 74
    invoke-virtual {v2, v1, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 75
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    .line 78
    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 80
    invoke-virtual {p0, v0, v2, p1}, Lcom/android/wm/shell/back/CrossActivityAnimation;->applyTransform(Landroid/view/SurfaceControl;Landroid/graphics/RectF;F)V

    .line 82
    iget-object p0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 85
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 87
    return-void
    .line 90
.end method
