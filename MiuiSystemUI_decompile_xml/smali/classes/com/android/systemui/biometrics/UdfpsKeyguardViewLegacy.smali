.class public Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;
.super Lcom/android/systemui/biometrics/UdfpsAnimationView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mAlpha:I

.field public mAnimationType:I

.field public mAodFp:Lcom/airbnb/lottie/LottieAnimationView;

.field public mBackgroundInAnimator:Landroid/animation/AnimatorSet;

.field public mBgProtection:Landroid/widget/ImageView;

.field public mBurnInOffsetX:F

.field public mBurnInOffsetY:F

.field public mBurnInProgress:F

.field public final mFingerprintDrawable:Lcom/android/systemui/biometrics/UdfpsFpDrawable;

.field public mFullyInflated:Z

.field public mInterpolatedDarkAmount:F

.field public final mLayoutInflaterFinishListener:Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy$2;

.field public mLockScreenFp:Lcom/airbnb/lottie/LottieAnimationView;

.field public final mMaxBurnInOffsetX:I

.field public final mMaxBurnInOffsetY:I

.field public mScaleFactor:F

.field public final mSensorBounds:Landroid/graphics/Rect;

.field public mTextColorPrimary:I

.field public mUdfpsRequested:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/UdfpsAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p2, Landroid/animation/AnimatorSet;

    .line 5
    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 7
    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mBackgroundInAnimator:Landroid/animation/AnimatorSet;

    .line 10
    const/high16 p2, 0x3f800000    # 1.0f

    .line 12
    iput p2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mScaleFactor:F

    .line 14
    new-instance p2, Landroid/graphics/Rect;

    .line 16
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 18
    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mSensorBounds:Landroid/graphics/Rect;

    .line 21
    const/4 p2, 0x0

    .line 23
    iput p2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mAnimationType:I

    .line 24
    new-instance p2, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy$2;

    .line 26
    invoke-direct {p2, p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy$2;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;)V

    .line 28
    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mLayoutInflaterFinishListener:Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy$2;

    .line 31
    new-instance p2, Lcom/android/systemui/biometrics/UdfpsFpDrawable;

    .line 33
    invoke-direct {p2, p1}, Lcom/android/systemui/biometrics/UdfpsFpDrawable;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mFingerprintDrawable:Lcom/android/systemui/biometrics/UdfpsFpDrawable;

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    move-result-object p2

    .line 43
    const v0, 0x7f07121f    # @dimen/udfps_burn_in_offset_x '7.0px'

    .line 44
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 47
    move-result p2

    .line 50
    iput p2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mMaxBurnInOffsetX:I

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 53
    move-result-object p1

    .line 56
    const p2, 0x7f071220    # @dimen/udfps_burn_in_offset_y '20.0px'

    .line 57
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 60
    move-result p1

    .line 63
    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mMaxBurnInOffsetY:I

    .line 64
    return-void
    .line 66
.end method


# virtual methods
.method public final calculateAlpha()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationView;->mPauseAuth:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    iget p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mAlpha:I

    .line 8
    return p0
    .line 10
.end method

.method public final dozeTimeTick()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->updateBurnInOffsets()V

    .line 2
    const/4 p0, 0x1

    .line 5
    return p0
    .line 6
.end method

.method public getDrawable()Lcom/android/systemui/biometrics/UdfpsDrawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mFingerprintDrawable:Lcom/android/systemui/biometrics/UdfpsFpDrawable;

    .line 2
    return-object p0
    .line 4
.end method

.method public getUnpausedAlpha()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mAlpha:I

    .line 2
    return p0
    .line 4
.end method

.method public final onDisplayConfiguring()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onDisplayUnconfigured()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onSensorRectUpdated(Landroid/graphics/RectF;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/biometrics/UdfpsAnimationView;->onSensorRectUpdated(Landroid/graphics/RectF;)V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mSensorBounds:Landroid/graphics/Rect;

    .line 5
    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidate()V

    .line 10
    return-void
    .line 13
.end method

.method public final startIconAsyncInflate()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    .line 2
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 4
    invoke-direct {v0, v1}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;-><init>(Landroid/content/Context;)V

    .line 6
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mLayoutInflaterFinishListener:Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy$2;

    .line 9
    const v2, 0x7f0d03d6    # @layout/udfps_keyguard_view_internal 'res/layout/udfps_keyguard_view_internal.xml'

    .line 11
    invoke-virtual {v0, v2, p0, v1}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->inflate(ILandroid/view/ViewGroup;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;)V

    .line 14
    return-void
    .line 17
.end method

.method public final updateAlpha()I
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationView;->updateAlpha()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->updateBurnInOffsets()V

    .line 6
    return v0
    .line 9
.end method

.method public final updateBurnInOffsets()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mFullyInflated:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mAnimationType:I

    .line 7
    const/4 v1, 0x2

    .line 9
    const/high16 v2, 0x3f800000    # 1.0f

    .line 10
    if-ne v0, v1, :cond_1

    .line 12
    move v0, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mInterpolatedDarkAmount:F

    .line 16
    :goto_0
    iget v3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mMaxBurnInOffsetX:I

    .line 18
    mul-int/2addr v3, v1

    .line 20
    const/4 v4, 0x1

    .line 21
    invoke-static {v3, v4}, Lcom/android/systemui/doze/util/BurnInHelperKt;->getBurnInOffset(IZ)I

    .line 22
    move-result v3

    .line 25
    iget v5, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mMaxBurnInOffsetX:I

    .line 26
    sub-int/2addr v3, v5

    .line 28
    int-to-float v3, v3

    .line 29
    const/4 v5, 0x0

    .line 30
    invoke-static {v5, v3, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 31
    move-result v3

    .line 34
    iput v3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mBurnInOffsetX:F

    .line 35
    iget v3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mMaxBurnInOffsetY:I

    .line 37
    mul-int/2addr v3, v1

    .line 39
    const/4 v6, 0x0

    .line 40
    invoke-static {v3, v6}, Lcom/android/systemui/doze/util/BurnInHelperKt;->getBurnInOffset(IZ)I

    .line 41
    move-result v3

    .line 44
    iget v7, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mMaxBurnInOffsetY:I

    .line 45
    sub-int/2addr v3, v7

    .line 47
    int-to-float v3, v3

    .line 48
    invoke-static {v5, v3, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 49
    move-result v3

    .line 52
    iput v3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mBurnInOffsetY:F

    .line 53
    invoke-static {}, Lcom/android/systemui/doze/util/BurnInHelperKt;->getBurnInProgressOffset()F

    .line 55
    move-result v3

    .line 58
    invoke-static {v5, v3, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 59
    move-result v3

    .line 62
    iput v3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mBurnInProgress:F

    .line 63
    iget v3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mAnimationType:I

    .line 65
    if-ne v3, v4, :cond_2

    .line 67
    iget-boolean v3, p0, Lcom/android/systemui/biometrics/UdfpsAnimationView;->mPauseAuth:Z

    .line 69
    if-nez v3, :cond_2

    .line 71
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mLockScreenFp:Lcom/airbnb/lottie/LottieAnimationView;

    .line 73
    iget v3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mBurnInOffsetX:F

    .line 75
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 77
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mLockScreenFp:Lcom/airbnb/lottie/LottieAnimationView;

    .line 80
    iget v3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mBurnInOffsetY:F

    .line 82
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 84
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mBgProtection:Landroid/widget/ImageView;

    .line 87
    iget v3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mInterpolatedDarkAmount:F

    .line 89
    sub-float v3, v2, v3

    .line 91
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 93
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mLockScreenFp:Lcom/airbnb/lottie/LottieAnimationView;

    .line 96
    iget v3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mInterpolatedDarkAmount:F

    .line 98
    sub-float v3, v2, v3

    .line 100
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 102
    goto :goto_1

    .line 105
    :cond_2
    cmpl-float v0, v0, v5

    .line 106
    if-nez v0, :cond_3

    .line 108
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mLockScreenFp:Lcom/airbnb/lottie/LottieAnimationView;

    .line 110
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 112
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mLockScreenFp:Lcom/airbnb/lottie/LottieAnimationView;

    .line 115
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 117
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mBgProtection:Landroid/widget/ImageView;

    .line 120
    iget v3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mAlpha:I

    .line 122
    int-to-float v3, v3

    .line 124
    const/high16 v7, 0x437f0000    # 255.0f

    .line 125
    div-float/2addr v3, v7

    .line 127
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 128
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mLockScreenFp:Lcom/airbnb/lottie/LottieAnimationView;

    .line 131
    iget v3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mAlpha:I

    .line 133
    int-to-float v3, v3

    .line 135
    div-float/2addr v3, v7

    .line 136
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 137
    goto :goto_1

    .line 140
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mBgProtection:Landroid/widget/ImageView;

    .line 141
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 143
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mLockScreenFp:Lcom/airbnb/lottie/LottieAnimationView;

    .line 146
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 148
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mLockScreenFp:Lcom/airbnb/lottie/LottieAnimationView;

    .line 151
    iget v3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mInterpolatedDarkAmount:F

    .line 153
    sub-float v3, v2, v3

    .line 155
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 157
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mAodFp:Lcom/airbnb/lottie/LottieAnimationView;

    .line 160
    iget v3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mBurnInOffsetX:F

    .line 162
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 164
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mAodFp:Lcom/airbnb/lottie/LottieAnimationView;

    .line 167
    iget v3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mBurnInOffsetY:F

    .line 169
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 171
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mAodFp:Lcom/airbnb/lottie/LottieAnimationView;

    .line 174
    iget v3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mBurnInProgress:F

    .line 176
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 178
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mAodFp:Lcom/airbnb/lottie/LottieAnimationView;

    .line 181
    iget v3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mInterpolatedDarkAmount:F

    .line 183
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 185
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mAnimationType:I

    .line 188
    if-ne v0, v4, :cond_5

    .line 190
    iget v3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mInterpolatedDarkAmount:F

    .line 192
    cmpl-float v5, v3, v5

    .line 194
    if-eqz v5, :cond_4

    .line 196
    cmpl-float v3, v3, v2

    .line 198
    if-nez v3, :cond_5

    .line 200
    :cond_4
    move v3, v4

    .line 202
    goto :goto_2

    .line 203
    :cond_5
    move v3, v6

    .line 204
    :goto_2
    if-ne v0, v1, :cond_6

    .line 205
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mInterpolatedDarkAmount:F

    .line 207
    cmpl-float v0, v0, v2

    .line 209
    if-nez v0, :cond_6

    .line 211
    goto :goto_3

    .line 213
    :cond_6
    move v4, v6

    .line 214
    :goto_3
    if-nez v3, :cond_7

    .line 215
    if-eqz v4, :cond_8

    .line 217
    :cond_7
    iput v6, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mAnimationType:I

    .line 219
    :cond_8
    return-void
    .line 221
.end method

.method public final updateColor()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mFullyInflated:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 7
    const v1, 0x112009b    # @android:^attr-private/materialColorOnSurfaceInverse

    .line 9
    const/4 v2, 0x0

    .line 12
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 13
    move-result v0

    .line 16
    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mTextColorPrimary:I

    .line 17
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v0

    .line 22
    const v1, 0x11200b0    # @android:^attr-private/materialColorSurfaceContainerHighest

    .line 23
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 26
    move-result v0

    .line 29
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mBgProtection:Landroid/widget/ImageView;

    .line 30
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 32
    move-result-object v0

    .line 35
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 36
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mLockScreenFp:Lcom/airbnb/lottie/LottieAnimationView;

    .line 39
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->invalidate()V

    .line 41
    return-void
    .line 44
.end method

.method public final updatePadding()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mLockScreenFp:Lcom/airbnb/lottie/LottieAnimationView;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mAodFp:Lcom/airbnb/lottie/LottieAnimationView;

    .line 6
    if-nez v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object v0

    .line 14
    const v1, 0x7f0705ed    # @dimen/lock_icon_padding '48.0px'

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 18
    move-result v0

    .line 21
    int-to-float v0, v0

    .line 22
    iget v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mScaleFactor:F

    .line 23
    mul-float/2addr v0, v1

    .line 25
    float-to-int v0, v0

    .line 26
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mLockScreenFp:Lcom/airbnb/lottie/LottieAnimationView;

    .line 27
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 29
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mAodFp:Lcom/airbnb/lottie/LottieAnimationView;

    .line 32
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 34
    :cond_1
    :goto_0
    return-void
    .line 37
.end method
