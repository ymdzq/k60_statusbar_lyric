.class public final synthetic Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Landroid/view/SurfaceControl;

.field public final synthetic f$1:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic f$2:F

.field public final synthetic f$3:F


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$$ExternalSyntheticLambda3;->f$0:Landroid/view/SurfaceControl;

    .line 5
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$$ExternalSyntheticLambda3;->f$1:Landroid/view/SurfaceControl$Transaction;

    .line 7
    iput p3, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$$ExternalSyntheticLambda3;->f$2:F

    .line 9
    iput p4, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$$ExternalSyntheticLambda3;->f$3:F

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$$ExternalSyntheticLambda3;->f$0:Landroid/view/SurfaceControl;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$$ExternalSyntheticLambda3;->f$1:Landroid/view/SurfaceControl$Transaction;

    .line 4
    iget v2, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$$ExternalSyntheticLambda3;->f$2:F

    .line 6
    iget p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$$ExternalSyntheticLambda3;->f$3:F

    .line 8
    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->$r8$lambda$QcT1y4t5hECtH4OWZ1t15z1Foe0(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;FFLandroid/animation/ValueAnimator;)V

    .line 10
    return-void
    .line 13
.end method
