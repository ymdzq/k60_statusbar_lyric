.class public final synthetic Lcom/android/wm/shell/draganddrop/DragLayout$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic f$1:Landroid/view/SurfaceControl;


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragLayout$$ExternalSyntheticLambda0;->f$0:Landroid/view/SurfaceControl$Transaction;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DragLayout$$ExternalSyntheticLambda0;->f$1:Landroid/view/SurfaceControl;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayout$$ExternalSyntheticLambda0;->f$0:Landroid/view/SurfaceControl$Transaction;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragLayout$$ExternalSyntheticLambda0;->f$1:Landroid/view/SurfaceControl;

    .line 4
    sget v1, Lcom/android/wm/shell/draganddrop/DragLayout;->$r8$clinit:I

    .line 6
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 8
    move-result p1

    .line 11
    const/high16 v1, 0x3f800000    # 1.0f

    .line 12
    sub-float/2addr v1, p1

    .line 14
    invoke-virtual {v0, p0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 15
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 18
    return-void
    .line 21
.end method
