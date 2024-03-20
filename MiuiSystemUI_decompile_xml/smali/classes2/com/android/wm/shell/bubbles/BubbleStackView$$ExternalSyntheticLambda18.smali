.class public final synthetic Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleStackView;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda18;->f$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 5
    iput p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda18;->f$1:F

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda18;->f$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 2
    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda18;->f$1:F

    .line 4
    sget-boolean v1, Lcom/android/wm/shell/bubbles/BubbleStackView;->ENABLE_FLING_TO_DISMISS_BUBBLE:Z

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/Float;

    .line 15
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 17
    move-result p1

    .line 20
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/bubbles/DismissView;

    .line 21
    if-eqz v1, :cond_0

    .line 23
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getRight()I

    .line 25
    move-result v2

    .line 28
    iget-object v3, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/bubbles/DismissView;

    .line 29
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLeft()I

    .line 31
    move-result v3

    .line 34
    sub-int/2addr v2, v3

    .line 35
    int-to-float v2, v2

    .line 36
    const/high16 v3, 0x40000000    # 2.0f

    .line 37
    div-float/2addr v2, v3

    .line 39
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 40
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/bubbles/DismissView;

    .line 43
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getBottom()I

    .line 45
    move-result v2

    .line 48
    iget-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/bubbles/DismissView;

    .line 49
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTop()I

    .line 51
    move-result v4

    .line 54
    sub-int/2addr v2, v4

    .line 55
    int-to-float v2, v2

    .line 56
    div-float/2addr v2, v3

    .line 57
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 58
    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    .line 61
    move-result p0

    .line 64
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/bubbles/DismissView;

    .line 65
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/DismissView;->getCircle()Lcom/android/wm/shell/common/DismissCircleView;

    .line 67
    move-result-object v1

    .line 70
    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 71
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/bubbles/DismissView;

    .line 74
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/DismissView;->getCircle()Lcom/android/wm/shell/common/DismissCircleView;

    .line 76
    move-result-object v1

    .line 79
    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 80
    :cond_0
    iget-object p0, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mViewBeingDismissed:Landroid/view/View;

    .line 83
    if-eqz p0, :cond_1

    .line 85
    const v0, 0x3f333333    # 0.7f

    .line 87
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    .line 90
    move-result p1

    .line 93
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 94
    :cond_1
    return-void
    .line 97
.end method
