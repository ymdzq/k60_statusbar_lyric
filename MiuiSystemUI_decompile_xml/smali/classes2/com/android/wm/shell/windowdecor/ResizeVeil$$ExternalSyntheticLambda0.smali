.class public final synthetic Lcom/android/wm/shell/windowdecor/ResizeVeil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/windowdecor/ResizeVeil;

.field public final synthetic f$1:Landroid/animation/ValueAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/ResizeVeil;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/windowdecor/ResizeVeil;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil$$ExternalSyntheticLambda0;->f$1:Landroid/animation/ValueAnimator;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/windowdecor/ResizeVeil;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil$$ExternalSyntheticLambda0;->f$1:Landroid/animation/ValueAnimator;

    .line 4
    iget-object v0, p1, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mSurfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    .line 6
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 12
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mVeilSurface:Landroid/view/SurfaceControl;

    .line 14
    const/high16 v1, 0x3f800000    # 1.0f

    .line 16
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 18
    move-result p0

    .line 21
    sub-float/2addr v1, p0

    .line 22
    invoke-virtual {v0, p1, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 23
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 26
    return-void
    .line 29
.end method
