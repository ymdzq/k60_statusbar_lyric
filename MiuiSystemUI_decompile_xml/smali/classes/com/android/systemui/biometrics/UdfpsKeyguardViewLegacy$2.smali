.class public final Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy$2;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onInflateFinished(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy$2;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;

    .line 2
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mFullyInflated:Z

    .line 5
    const v2, 0x7f0a0a1d    # @id/udfps_aod_fp

    .line 7
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v2

    .line 13
    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    .line 14
    iput-object v2, v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mAodFp:Lcom/airbnb/lottie/LottieAnimationView;

    .line 16
    const v2, 0x7f0a0a22    # @id/udfps_lockscreen_fp

    .line 18
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v2

    .line 24
    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    .line 25
    iput-object v2, v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mLockScreenFp:Lcom/airbnb/lottie/LottieAnimationView;

    .line 27
    const v2, 0x7f0a0a21    # @id/udfps_keyguard_fp_bg

    .line 29
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v2

    .line 35
    check-cast v2, Landroid/widget/ImageView;

    .line 36
    iput-object v2, v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mBgProtection:Landroid/widget/ImageView;

    .line 38
    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->updatePadding()V

    .line 40
    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->updateColor()V

    .line 43
    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->updateAlpha()I

    .line 46
    iget-boolean v2, v0, Lcom/android/systemui/biometrics/UdfpsAnimationView;->mUseExpandedOverlay:Z

    .line 49
    if-eqz v2, :cond_0

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 53
    move-result-object v2

    .line 56
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 57
    iget-object v3, v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mSensorBounds:Landroid/graphics/Rect;

    .line 59
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 61
    move-result v3

    .line 64
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 65
    iget-object v3, v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mSensorBounds:Landroid/graphics/Rect;

    .line 67
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 69
    move-result v3

    .line 72
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 73
    new-instance v3, Landroid/graphics/RectF;

    .line 75
    iget-object v4, v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mSensorBounds:Landroid/graphics/Rect;

    .line 77
    invoke-direct {v3, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 79
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLocationOnScreen()[I

    .line 82
    move-result-object v4

    .line 85
    new-instance v5, Landroid/graphics/RectF;

    .line 86
    iget v6, v3, Landroid/graphics/RectF;->left:F

    .line 88
    const/4 v7, 0x0

    .line 90
    aget v7, v4, v7

    .line 91
    int-to-float v7, v7

    .line 93
    sub-float/2addr v6, v7

    .line 94
    iget v8, v3, Landroid/graphics/RectF;->top:F

    .line 95
    aget v1, v4, v1

    .line 97
    int-to-float v1, v1

    .line 99
    sub-float/2addr v8, v1

    .line 100
    iget v4, v3, Landroid/graphics/RectF;->right:F

    .line 101
    sub-float/2addr v4, v7

    .line 103
    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    .line 104
    sub-float/2addr v3, v1

    .line 106
    invoke-direct {v5, v6, v8, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 107
    iget v1, v5, Landroid/graphics/RectF;->left:F

    .line 110
    float-to-int v1, v1

    .line 112
    iget v3, v5, Landroid/graphics/RectF;->top:F

    .line 113
    float-to-int v3, v3

    .line 115
    iget v4, v5, Landroid/graphics/RectF;->right:F

    .line 116
    float-to-int v4, v4

    .line 118
    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    .line 119
    float-to-int v5, v5

    .line 121
    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMarginsRelative(IIII)V

    .line 122
    invoke-virtual {p2, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 129
    :goto_0
    iget-object p1, v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mLockScreenFp:Lcom/airbnb/lottie/LottieAnimationView;

    .line 132
    new-instance p2, Lcom/airbnb/lottie/model/KeyPath;

    .line 134
    const-string v0, "**"

    .line 136
    filled-new-array {v0}, [Ljava/lang/String;

    .line 138
    move-result-object v0

    .line 141
    invoke-direct {p2, v0}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    .line 142
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    .line 145
    new-instance v1, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy$2$$ExternalSyntheticLambda0;

    .line 147
    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy$2;)V

    .line 149
    invoke-virtual {p1, p2, v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    .line 152
    return-void
    .line 155
.end method
