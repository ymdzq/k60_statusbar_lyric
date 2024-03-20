.class Lcom/android/settings/display/HandyModeGuideView$1$1;
.super Ljava/lang/Object;
.source "HandyModeGuideView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/HandyModeGuideView$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/display/HandyModeGuideView$1;


# direct methods
.method constructor <init>(Lcom/android/settings/display/HandyModeGuideView$1;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/android/settings/display/HandyModeGuideView$1$1;->this$1:Lcom/android/settings/display/HandyModeGuideView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/android/settings/display/HandyModeGuideView$1$1;->this$1:Lcom/android/settings/display/HandyModeGuideView$1;

    iget-object v0, v0, Lcom/android/settings/display/HandyModeGuideView$1;->this$0:Lcom/android/settings/display/HandyModeGuideView;

    iget v1, v0, Lcom/android/settings/display/HandyModeGuideView;->mState:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/settings/display/HandyModeGuideView;->mState:I

    const/4 v3, 0x4

    if-le v1, v3, :cond_0

    const/4 v1, 0x0

    .line 71
    iput v1, v0, Lcom/android/settings/display/HandyModeGuideView;->mState:I

    .line 72
    iget-boolean v1, v0, Lcom/android/settings/display/HandyModeGuideView;->mReversing:Z

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/android/settings/display/HandyModeGuideView;->mReversing:Z

    if-nez v1, :cond_0

    .line 73
    iget-boolean v1, v0, Lcom/android/settings/display/HandyModeGuideView;->mIsLeft:Z

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/android/settings/display/HandyModeGuideView;->mIsLeft:Z

    .line 75
    :cond_0
    iget v1, v0, Lcom/android/settings/display/HandyModeGuideView;->mState:I

    if-eqz v1, :cond_5

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    if-eq v1, v3, :cond_1

    goto/16 :goto_0

    .line 92
    :cond_1
    iget-object v1, v0, Lcom/android/settings/display/HandyModeGuideView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$integer;->handy_mode_guide_animate_duration_circle_hided:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 88
    :cond_2
    iget-object v1, v0, Lcom/android/settings/display/HandyModeGuideView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$integer;->handy_mode_guide_animate_duration_circle_hiding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 89
    iget-object v0, p0, Lcom/android/settings/display/HandyModeGuideView$1$1;->this$1:Lcom/android/settings/display/HandyModeGuideView$1;

    iget-object v0, v0, Lcom/android/settings/display/HandyModeGuideView$1;->this$0:Lcom/android/settings/display/HandyModeGuideView;

    iget-object v0, v0, Lcom/android/settings/display/HandyModeGuideView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 84
    :cond_3
    iget-object v1, v0, Lcom/android/settings/display/HandyModeGuideView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$integer;->handy_mode_guide_animate_duration_circle_moving:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 85
    iget-object v0, p0, Lcom/android/settings/display/HandyModeGuideView$1$1;->this$1:Lcom/android/settings/display/HandyModeGuideView$1;

    iget-object v0, v0, Lcom/android/settings/display/HandyModeGuideView$1;->this$0:Lcom/android/settings/display/HandyModeGuideView;

    iget-object v0, v0, Lcom/android/settings/display/HandyModeGuideView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 80
    :cond_4
    iget-object v1, v0, Lcom/android/settings/display/HandyModeGuideView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$integer;->handy_mode_guide_animate_duration_circle_showing:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 81
    iget-object v0, p0, Lcom/android/settings/display/HandyModeGuideView$1$1;->this$1:Lcom/android/settings/display/HandyModeGuideView$1;

    iget-object v0, v0, Lcom/android/settings/display/HandyModeGuideView$1;->this$0:Lcom/android/settings/display/HandyModeGuideView;

    iget-object v0, v0, Lcom/android/settings/display/HandyModeGuideView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 77
    :cond_5
    iget-object v1, v0, Lcom/android/settings/display/HandyModeGuideView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$integer;->handy_mode_guide_animate_duration_idle:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 95
    :goto_0
    iget-object p0, p0, Lcom/android/settings/display/HandyModeGuideView$1$1;->this$1:Lcom/android/settings/display/HandyModeGuideView$1;

    iget-object p0, p0, Lcom/android/settings/display/HandyModeGuideView$1;->this$0:Lcom/android/settings/display/HandyModeGuideView;

    iget-object p0, p0, Lcom/android/settings/display/HandyModeGuideView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
