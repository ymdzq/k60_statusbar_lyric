.class public Lcom/android/settings/HandyModeGuideView;
.super Landroid/widget/FrameLayout;
.source "HandyModeGuideView.java"


# instance fields
.field private mHandymodeGuideView:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0}, Lcom/android/settings/HandyModeGuideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/HandyModeGuideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    .line 35
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 36
    sget v0, Lcom/android/settings/R$id;->handymode_guide_lottie_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/settings/HandyModeGuideView;->mHandymodeGuideView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 37
    new-instance v1, Lcom/android/settings/HandyModeGuideView$1;

    invoke-direct {v1, p0}, Lcom/android/settings/HandyModeGuideView$1;-><init>(Lcom/android/settings/HandyModeGuideView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 45
    iget-object v0, p0, Lcom/android/settings/HandyModeGuideView;->mHandymodeGuideView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 46
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "force_fsg_nav_bar"

    invoke-static {v0, v2}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/settings/HandyModeGuideView;->mHandymodeGuideView:Lcom/airbnb/lottie/LottieAnimationView;

    sget v2, Lcom/android/settings/R$raw;->handymode_fullscreen_guide:I

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/settings/HandyModeGuideView;->mHandymodeGuideView:Lcom/airbnb/lottie/LottieAnimationView;

    sget v2, Lcom/android/settings/R$raw;->handymode_navigationbar_guide:I

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 53
    :goto_0
    iget-object v0, p0, Lcom/android/settings/HandyModeGuideView;->mHandymodeGuideView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 54
    iget-object v0, p0, Lcom/android/settings/HandyModeGuideView;->mHandymodeGuideView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 55
    new-instance v0, Lcom/android/settings/HandyModeGuideView$2;

    invoke-direct {v0, p0}, Lcom/android/settings/HandyModeGuideView$2;-><init>(Lcom/android/settings/HandyModeGuideView;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method
