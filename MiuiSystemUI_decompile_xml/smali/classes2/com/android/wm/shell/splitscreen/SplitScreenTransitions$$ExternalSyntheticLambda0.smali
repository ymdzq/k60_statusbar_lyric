.class public final synthetic Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda0;
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
    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda0;->f$0:Landroid/view/SurfaceControl;

    .line 5
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda0;->f$1:Landroid/view/SurfaceControl$Transaction;

    .line 7
    iput p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda0;->f$2:F

    .line 9
    iput p4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda0;->f$3:F

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda0;->f$0:Landroid/view/SurfaceControl;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda0;->f$1:Landroid/view/SurfaceControl$Transaction;

    .line 4
    iget v2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda0;->f$2:F

    .line 6
    iget p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda0;->f$3:F

    .line 8
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 10
    move-result p1

    .line 13
    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 16
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    const/high16 v3, 0x3f800000    # 1.0f

    .line 22
    sub-float/2addr v3, p1

    .line 24
    mul-float/2addr v3, v2

    .line 25
    mul-float/2addr p0, p1

    .line 26
    add-float/2addr p0, v3

    .line 27
    invoke-virtual {v1, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 28
    goto :goto_0

    .line 31
    :cond_0
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 32
    if-eqz p0, :cond_1

    .line 34
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 39
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 40
    const-string v0, "SplitScreenTransitions"

    .line 42
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 44
    move-result-object p0

    .line 47
    const-string v0, "%s: Invalid leash on startFadeAnimation: %s"

    .line 48
    const v2, -0x59f9241e

    .line 50
    const/4 v3, 0x0

    .line 53
    invoke-static {p1, v2, v3, v0, p0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 54
    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 57
    return-void
    .line 60
.end method
