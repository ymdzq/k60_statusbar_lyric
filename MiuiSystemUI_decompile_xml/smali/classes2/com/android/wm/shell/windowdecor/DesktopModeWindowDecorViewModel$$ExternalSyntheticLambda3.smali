.class public final synthetic Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:F

.field public final synthetic f$1:F

.field public final synthetic f$2:Landroid/view/MotionEvent;

.field public final synthetic f$3:F

.field public final synthetic f$4:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic f$5:Landroid/view/SurfaceControl;


# direct methods
.method public synthetic constructor <init>(FFLandroid/view/MotionEvent;FLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda3;->f$0:F

    .line 5
    iput p2, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda3;->f$1:F

    .line 7
    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda3;->f$2:Landroid/view/MotionEvent;

    .line 9
    iput p4, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda3;->f$3:F

    .line 11
    iput-object p5, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda3;->f$4:Landroid/view/SurfaceControl$Transaction;

    .line 13
    iput-object p6, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda3;->f$5:Landroid/view/SurfaceControl;

    .line 15
    return-void
    .line 17
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda3;->f$0:F

    .line 2
    iget v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda3;->f$1:F

    .line 4
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda3;->f$2:Landroid/view/MotionEvent;

    .line 6
    iget v3, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda3;->f$3:F

    .line 8
    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda3;->f$4:Landroid/view/SurfaceControl$Transaction;

    .line 10
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda3;->f$5:Landroid/view/SurfaceControl;

    .line 12
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/Float;

    .line 18
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 20
    move-result p1

    .line 23
    mul-float/2addr v1, p1

    .line 24
    add-float/2addr v1, v0

    .line 25
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    .line 26
    move-result v0

    .line 29
    mul-float/2addr v3, p1

    .line 30
    add-float/2addr v3, v0

    .line 31
    invoke-virtual {v4, p0, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 32
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 35
    return-void
    .line 38
.end method
