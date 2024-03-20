.class public Lcom/android/settings/freeform/FreeformVedioView;
.super Landroid/widget/LinearLayout;
.source "FreeformVedioView.java"


# static fields
.field private static PAD_RADIUS:F = 36.0f

.field private static PAD_RADIUS_PIN:F = 14.89f

.field private static RADIUS:F = 52.0f


# instance fields
.field private mFreeformGuideLottieView:Lcom/airbnb/lottie/LottieAnimationView;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$sfgetPAD_RADIUS()F
    .locals 1

    .line 0
    sget v0, Lcom/android/settings/freeform/FreeformVedioView;->PAD_RADIUS:F

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetPAD_RADIUS_PIN()F
    .locals 1

    .line 0
    sget v0, Lcom/android/settings/freeform/FreeformVedioView;->PAD_RADIUS_PIN:F

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetRADIUS()F
    .locals 1

    .line 0
    sget v0, Lcom/android/settings/freeform/FreeformVedioView;->RADIUS:F

    return v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/android/settings/freeform/FreeformVedioView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/freeform/FreeformVedioView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static getScreenType(Landroid/content/Context;)I
    .locals 8

    .line 132
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getDisplayRealMetricsSize(Landroid/util/DisplayMetrics;)V

    .line 134
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 135
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 136
    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 137
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float v1, v2

    .line 139
    iget v2, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float v2, v1, v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    int-to-float p0, p0

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float v0, p0, v0

    float-to-double v6, v0

    .line 140
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 139
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-float/2addr v1, p0

    const p0, 0x3eaaaaab

    cmpg-float p0, v1, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    cmpg-double p0, v2, v0

    if-gez p0, :cond_1

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    cmpl-double p0, v2, v4

    if-ltz p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    cmpl-double p0, v2, v0

    if-ltz p0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static isLargeScreen(Landroid/content/Context;)Z
    .locals 1

    .line 157
    invoke-static {p0}, Lcom/android/settings/freeform/FreeformVedioView;->getScreenType(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setLottieInfo(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/settings/freeform/FreeformVedioView;->mFreeformGuideLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 127
    iget-object p0, p0, Lcom/android/settings/freeform/FreeformVedioView;->mFreeformGuideLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 6

    .line 57
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 58
    sget v0, Lcom/android/settings/R$id;->video_view_freeform:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/settings/freeform/FreeformVedioView;->mFreeformGuideLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 59
    sget v0, Lcom/android/settings/R$id;->freeform_vedio_text_description:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/freeform/FreeformVedioView;->mTitleView:Landroid/widget/TextView;

    .line 60
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->freeform_text_margin_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 61
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->freeform_text_margin_right:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 62
    iget-object v2, p0, Lcom/android/settings/freeform/FreeformVedioView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 63
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isFoldDevice()Z

    move-result v3

    const/16 v4, 0x11

    if-eqz v3, :cond_2

    .line 64
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 65
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 66
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isSupportPin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/android/settings/freeform/FreeformVedioView;->mTitleView:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->freeform_vedio_description_open_freeform_and_splitscreen:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 68
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/freeform/FreeformVedioView;->isLargeScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    sget v0, Lcom/android/settings/R$raw;->freeform_guide_pin_fold_large:I

    invoke-direct {p0, v0}, Lcom/android/settings/freeform/FreeformVedioView;->setLottieInfo(I)V

    goto :goto_0

    .line 71
    :cond_0
    sget v0, Lcom/android/settings/R$raw;->freeform_guide_pin_fold_small:I

    invoke-direct {p0, v0}, Lcom/android/settings/freeform/FreeformVedioView;->setLottieInfo(I)V

    goto :goto_0

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/android/settings/freeform/FreeformVedioView;->mTitleView:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->freeform_guide_vedio_description:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 75
    iget-object v0, p0, Lcom/android/settings/freeform/FreeformVedioView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 77
    :goto_0
    iget-object v0, p0, Lcom/android/settings/freeform/FreeformVedioView;->mFreeformGuideLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Lcom/android/settings/freeform/FreeformVedioView$1;

    invoke-direct {v1, p0}, Lcom/android/settings/freeform/FreeformVedioView$1;-><init>(Lcom/android/settings/freeform/FreeformVedioView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    goto :goto_1

    .line 83
    :cond_2
    sget-boolean v3, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v3, :cond_5

    .line 84
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 85
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 86
    iget-object v0, p0, Lcom/android/settings/freeform/FreeformVedioView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 87
    invoke-static {}, Lcom/android/settings/freeform/FreeformGuideSettings;->getCvw()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    sget v0, Lcom/android/settings/R$raw;->freeform_guide_cvw:I

    invoke-direct {p0, v0}, Lcom/android/settings/freeform/FreeformVedioView;->setLottieInfo(I)V

    .line 90
    :cond_3
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isSupportPin()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 91
    sget v0, Lcom/android/settings/R$raw;->freeform_guide_pin_pad:I

    invoke-direct {p0, v0}, Lcom/android/settings/freeform/FreeformVedioView;->setLottieInfo(I)V

    .line 92
    iget-object v0, p0, Lcom/android/settings/freeform/FreeformVedioView;->mTitleView:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->freeform_vedio_description_open_freeform_and_splitscreen_pad:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 93
    iget-object v0, p0, Lcom/android/settings/freeform/FreeformVedioView;->mFreeformGuideLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Lcom/android/settings/freeform/FreeformVedioView$2;

    invoke-direct {v1, p0}, Lcom/android/settings/freeform/FreeformVedioView$2;-><init>(Lcom/android/settings/freeform/FreeformVedioView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    goto :goto_1

    .line 100
    :cond_4
    iget-object v0, p0, Lcom/android/settings/freeform/FreeformVedioView;->mTitleView:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->freeform_vedio_description_pad:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 101
    iget-object v0, p0, Lcom/android/settings/freeform/FreeformVedioView;->mFreeformGuideLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Lcom/android/settings/freeform/FreeformVedioView$3;

    invoke-direct {v1, p0}, Lcom/android/settings/freeform/FreeformVedioView$3;-><init>(Lcom/android/settings/freeform/FreeformVedioView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    goto :goto_1

    .line 109
    :cond_5
    iget-object v3, p0, Lcom/android/settings/freeform/FreeformVedioView;->mTitleView:Landroid/widget/TextView;

    sget v5, Lcom/android/settings/R$string;->freeform_guide_vedio_description:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 110
    iget-object v3, p0, Lcom/android/settings/freeform/FreeformVedioView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 111
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 112
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 113
    sget v0, Lcom/android/settings/R$raw;->freeform_guide:I

    invoke-direct {p0, v0}, Lcom/android/settings/freeform/FreeformVedioView;->setLottieInfo(I)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/freeform/FreeformVedioView;->mFreeformGuideLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Lcom/android/settings/freeform/FreeformVedioView$4;

    invoke-direct {v1, p0}, Lcom/android/settings/freeform/FreeformVedioView$4;-><init>(Lcom/android/settings/freeform/FreeformVedioView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 121
    :goto_1
    iget-object p0, p0, Lcom/android/settings/freeform/FreeformVedioView;->mFreeformGuideLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    return-void
.end method
