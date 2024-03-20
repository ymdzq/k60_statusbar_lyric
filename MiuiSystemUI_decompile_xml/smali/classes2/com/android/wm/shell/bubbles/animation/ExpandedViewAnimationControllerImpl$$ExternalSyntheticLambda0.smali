.class public final synthetic Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:[Z

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>([ZLcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$$ExternalSyntheticLambda0;->f$0:[Z

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$$ExternalSyntheticLambda0;->f$0:[Z

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    .line 4
    const/4 v1, 0x0

    .line 6
    aget-boolean v2, v0, v1

    .line 7
    if-nez v2, :cond_0

    .line 9
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 11
    move-result p1

    .line 14
    const/high16 v2, 0x3f000000    # 0.5f

    .line 15
    cmpl-float p1, p1, v2

    .line 17
    if-lez p1, :cond_0

    .line 19
    const/4 p1, 0x1

    .line 21
    aput-boolean p1, v0, v1

    .line 22
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 24
    :cond_0
    return-void
    .line 27
.end method
