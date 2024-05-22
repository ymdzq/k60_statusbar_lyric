.class public final Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$getButtonLayoutAnimate$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $tipsView:Landroid/widget/TextView;

.field public final synthetic this$0:Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$getButtonLayoutAnimate$1;->$tipsView:Landroid/widget/TextView;

    .line 2
    iput-object p2, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$getButtonLayoutAnimate$1;->this$0:Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;

    .line 4
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$getButtonLayoutAnimate$1;->this$0:Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->handleBottomButtonClickedAnimation(Z)V

    .line 5
    return-void
    .line 8
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$getButtonLayoutAnimate$1;->$tipsView:Landroid/widget/TextView;

    .line 2
    if-nez p1, :cond_0

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    const/16 v0, 0x8

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$getButtonLayoutAnimate$1;->this$0:Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;

    .line 12
    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->handleBottomButtonClickedAnimation(Z)V

    .line 15
    return-void
    .line 18
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$getButtonLayoutAnimate$1;->$tipsView:Landroid/widget/TextView;

    .line 2
    if-nez p1, :cond_0

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$getButtonLayoutAnimate$1;->$tipsView:Landroid/widget/TextView;

    .line 11
    if-eqz p1, :cond_2

    .line 13
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$getButtonLayoutAnimate$1;->this$0:Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;

    .line 15
    iget-boolean v1, v0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mBottomIconRectIsDeep:Z

    .line 17
    if-eqz v1, :cond_1

    .line 19
    const v1, 0x7f0603a1    # @color/miui_default_lock_screen_unlock_bottom_tips_text_color '#ccffffff'

    .line 21
    goto :goto_1

    .line 24
    :cond_1
    const v1, 0x7f06039a    # @color/miui_common_unlock_screen_common_dark_text_color '#b3000000'

    .line 25
    :goto_1
    iget-object v0, v0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mContext:Landroid/content/Context;

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    .line 30
    move-result v0

    .line 33
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 34
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$getButtonLayoutAnimate$1;->$tipsView:Landroid/widget/TextView;

    .line 37
    if-nez p1, :cond_3

    .line 39
    goto :goto_2

    .line 41
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    .line 42
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 44
    :goto_2
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$getButtonLayoutAnimate$1;->this$0:Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;

    .line 47
    const/4 p1, 0x1

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->handleBottomButtonClickedAnimation(Z)V

    .line 50
    return-void
    .line 53
.end method
