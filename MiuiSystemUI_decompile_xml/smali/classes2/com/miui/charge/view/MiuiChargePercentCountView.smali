.class public Lcom/miui/charge/view/MiuiChargePercentCountView;
.super Landroid/widget/LinearLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mChargeNumberTranslateInit:I

.field public mChargeNumberTranslateSmall:I

.field public mChargeSpeed:I

.field public mContentSwitchAnimator:Landroid/animation/AnimatorSet;

.field public final mCubicInterpolator:Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;

.field public mCurrentProgress:I

.field public mIntegerTv:Lcom/miui/charge/view/NumberDrawView;

.field public mIsFold:Z

.field public mIsPad:Z

.field public mLargeTextSizePx:I

.field public mPercentTextSizePx:I

.field public final mQuartOutInterpolator:Lcom/miui/maml/animation/interpolater/QuartEaseOutInterpolater;

.field public mScreenSize:Landroid/graphics/Point;

.field public mSmallTextSizePx:I

.field public mValueAnimator:Landroid/animation/ValueAnimator;

.field public mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/miui/charge/view/MiuiChargePercentCountView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/charge/view/MiuiChargePercentCountView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;

    invoke-direct {p2}, Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;-><init>()V

    iput-object p2, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mCubicInterpolator:Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;

    .line 5
    new-instance p2, Lcom/miui/maml/animation/interpolater/QuartEaseOutInterpolater;

    invoke-direct {p2}, Lcom/miui/maml/animation/interpolater/QuartEaseOutInterpolater;-><init>()V

    iput-object p2, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mQuartOutInterpolator:Lcom/miui/maml/animation/interpolater/QuartEaseOutInterpolater;

    const/4 p2, 0x0

    .line 6
    iput-boolean p2, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mIsFold:Z

    .line 7
    iput-boolean p2, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mIsPad:Z

    .line 8
    iput p2, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mChargeSpeed:I

    .line 9
    sget-boolean p3, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    iput-boolean p3, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mIsPad:Z

    .line 10
    sget-boolean p3, Lcom/miui/utils/configs/MiuiConfigs;->IS_FOLD:Z

    iput-boolean p3, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mIsFold:Z

    .line 11
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    const-string/jumbo p3, "window"

    .line 12
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mWindowManager:Landroid/view/WindowManager;

    .line 13
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    iput-object p3, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mScreenSize:Landroid/graphics/Point;

    .line 14
    iget-object p3, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p3

    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mScreenSize:Landroid/graphics/Point;

    invoke-virtual {p3, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 15
    invoke-virtual {p0}, Lcom/miui/charge/view/MiuiChargePercentCountView;->updateSizeForScreenSizeChange()V

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p3

    const-string v0, "fonts/Mitype2018-35.otf"

    invoke-static {p3, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p3

    .line 17
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 18
    iput p2, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mCurrentProgress:I

    .line 19
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x51

    .line 20
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 21
    new-instance v1, Lcom/miui/charge/view/NumberDrawView;

    invoke-direct {v1, p1}, Lcom/miui/charge/view/NumberDrawView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mIntegerTv:Lcom/miui/charge/view/NumberDrawView;

    .line 22
    iget p1, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mLargeTextSizePx:I

    iget v2, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mSmallTextSizePx:I

    iget v3, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mPercentTextSizePx:I

    invoke-virtual {v1, p1, v2, v3}, Lcom/miui/charge/view/NumberDrawView;->setSize(III)V

    .line 23
    iget-object p1, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mIntegerTv:Lcom/miui/charge/view/NumberDrawView;

    const-string v1, "#FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p3, :cond_0

    .line 24
    iget-object p1, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mIntegerTv:Lcom/miui/charge/view/NumberDrawView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mIntegerTv:Lcom/miui/charge/view/NumberDrawView;

    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    invoke-virtual {p0, p2}, Lcom/miui/charge/view/MiuiChargePercentCountView;->setProgress(I)V

    return-void
.end method


# virtual methods
.method public final checkScreenSize()V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Point;

    .line 2
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mWindowManager:Landroid/view/WindowManager;

    .line 7
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 9
    move-result-object v1

    .line 12
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 13
    iget-object v1, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mScreenSize:Landroid/graphics/Point;

    .line 16
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 18
    iget v3, v0, Landroid/graphics/Point;->y:I

    .line 20
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->equals(II)Z

    .line 22
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    iget-object v1, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mScreenSize:Landroid/graphics/Point;

    .line 28
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 30
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 32
    invoke-virtual {v1, v2, v0}, Landroid/graphics/Point;->set(II)V

    .line 34
    invoke-virtual {p0}, Lcom/miui/charge/view/MiuiChargePercentCountView;->updateSizeForScreenSizeChange()V

    .line 37
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mIntegerTv:Lcom/miui/charge/view/NumberDrawView;

    .line 40
    iget v1, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mLargeTextSizePx:I

    .line 42
    iget v2, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mSmallTextSizePx:I

    .line 44
    iget v3, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mPercentTextSizePx:I

    .line 46
    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/charge/view/NumberDrawView;->setSize(III)V

    .line 48
    invoke-virtual {v0}, Lcom/miui/charge/view/NumberDrawView;->doUpdateDrawParams()V

    .line 51
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 54
    :cond_0
    return-void
    .line 57
.end method

.method public final onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Lcom/miui/charge/view/MiuiChargePercentCountView;->checkScreenSize()V

    .line 5
    return-void
    .line 8
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Lcom/miui/charge/view/MiuiChargePercentCountView;->checkScreenSize()V

    .line 5
    return-void
    .line 8
.end method

.method public setChargeLevelAnimationListener(Lcom/miui/charge/view/MiuiChargePercentCountView$ChargeLevelAnimationListener;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setProgress(I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_2

    .line 2
    const/16 v0, 0x64

    .line 4
    if-gt p1, v0, :cond_2

    .line 6
    if-eq p1, v0, :cond_0

    .line 8
    iget-object v1, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 10
    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 14
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    if-ne p1, v0, :cond_1

    .line 21
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 23
    if-eqz v0, :cond_1

    .line 25
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 27
    :cond_1
    iput p1, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mCurrentProgress:I

    .line 30
    iget-object p0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mIntegerTv:Lcom/miui/charge/view/NumberDrawView;

    .line 32
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 34
    move-result-object v0

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object p1

    .line 41
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 42
    move-result-object p1

    .line 45
    const-string v1, "%d"

    .line 46
    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 51
    invoke-virtual {p0, p1}, Lcom/miui/charge/view/NumberDrawView;->setLevelText(Ljava/lang/String;)V

    .line 52
    :cond_2
    :goto_0
    return-void
    .line 55
.end method

.method public final switchAnimation()V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string/jumbo v1, "switchAnimation: chargeSpeed="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    iget v1, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mChargeSpeed:I

    .line 10
    const-string v2, "MiuiChargePercentCountView"

    .line 12
    invoke-static {v0, v1, v2}, Lcom/android/keyguard/AwesomeLockScreen$2$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mContentSwitchAnimator:Landroid/animation/AnimatorSet;

    .line 17
    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 21
    :cond_0
    invoke-static {}, Lcom/miui/charge/ChargeUtils;->supportWaveChargeAnimation()Z

    .line 24
    move-result v0

    .line 27
    const/4 v1, 0x1

    .line 28
    if-eqz v0, :cond_1

    .line 29
    const/high16 v0, 0x3f400000    # 0.75f

    .line 31
    const/high16 v2, -0x3d380000    # -100.0f

    .line 33
    goto :goto_1

    .line 35
    :cond_1
    invoke-static {}, Lcom/miui/charge/ChargeUtils;->supportParticleChargeAnimation()Z

    .line 36
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    iget v0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mChargeNumberTranslateSmall:I

    .line 42
    goto :goto_0

    .line 44
    :cond_2
    iget v0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mChargeSpeed:I

    .line 45
    const/high16 v2, 0x3f800000    # 1.0f

    .line 47
    if-nez v0, :cond_3

    .line 49
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 51
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 54
    iget v0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mChargeNumberTranslateInit:I

    .line 57
    int-to-float v0, v0

    .line 59
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 60
    iget v0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mChargeNumberTranslateInit:I

    .line 63
    int-to-float v0, v0

    .line 65
    move v9, v2

    .line 66
    move v2, v0

    .line 67
    move v0, v9

    .line 68
    goto :goto_1

    .line 69
    :cond_3
    if-ne v0, v1, :cond_4

    .line 70
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 72
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 75
    iget v0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mChargeNumberTranslateInit:I

    .line 78
    int-to-float v0, v0

    .line 80
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 81
    iget v0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mChargeNumberTranslateSmall:I

    .line 84
    goto :goto_0

    .line 86
    :cond_4
    iget v0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mChargeNumberTranslateSmall:I

    .line 87
    :goto_0
    int-to-float v2, v0

    .line 89
    const v0, 0x3f59999a    # 0.85f

    .line 90
    :goto_1
    sget-object v3, Landroid/widget/LinearLayout;->SCALE_X:Landroid/util/Property;

    .line 93
    const/4 v4, 0x2

    .line 95
    new-array v5, v4, [F

    .line 96
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScaleX()F

    .line 98
    move-result v6

    .line 101
    const/4 v7, 0x0

    .line 102
    aput v6, v5, v7

    .line 103
    aput v0, v5, v1

    .line 105
    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 107
    move-result-object v3

    .line 110
    sget-object v5, Landroid/widget/LinearLayout;->SCALE_Y:Landroid/util/Property;

    .line 111
    new-array v6, v4, [F

    .line 113
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScaleY()F

    .line 115
    move-result v8

    .line 118
    aput v8, v6, v7

    .line 119
    aput v0, v6, v1

    .line 121
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 123
    move-result-object v0

    .line 126
    sget-object v5, Landroid/widget/LinearLayout;->TRANSLATION_Y:Landroid/util/Property;

    .line 127
    new-array v4, v4, [F

    .line 129
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTranslationY()F

    .line 131
    move-result v6

    .line 134
    aput v6, v4, v7

    .line 135
    aput v2, v4, v1

    .line 137
    invoke-static {v5, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 139
    move-result-object v1

    .line 142
    filled-new-array {v3, v0, v1}, [Landroid/animation/PropertyValuesHolder;

    .line 143
    move-result-object v0

    .line 146
    invoke-static {p0, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 147
    move-result-object v0

    .line 150
    const-wide/16 v1, 0x1f4

    .line 151
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 153
    move-result-object v0

    .line 156
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 157
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 159
    iput-object v1, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mContentSwitchAnimator:Landroid/animation/AnimatorSet;

    .line 162
    iget-object v2, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mCubicInterpolator:Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;

    .line 164
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 166
    iget-object v1, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mContentSwitchAnimator:Landroid/animation/AnimatorSet;

    .line 169
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 171
    iget-object p0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mContentSwitchAnimator:Landroid/animation/AnimatorSet;

    .line 174
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 176
    return-void
    .line 179
.end method

.method public final updateSizeForScreenSizeChange()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mScreenSize:Landroid/graphics/Point;

    .line 2
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 4
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 6
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 8
    move-result v0

    .line 11
    int-to-float v0, v0

    .line 12
    const/high16 v1, 0x3f800000    # 1.0f

    .line 13
    mul-float v2, v0, v1

    .line 15
    const/high16 v3, 0x44870000    # 1080.0f

    .line 17
    div-float/2addr v2, v3

    .line 19
    iget-boolean v4, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mIsFold:Z

    .line 20
    if-nez v4, :cond_0

    .line 22
    iget-boolean v4, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mIsPad:Z

    .line 24
    if-eqz v4, :cond_2

    .line 26
    :cond_0
    cmpl-float v4, v2, v1

    .line 28
    if-lez v4, :cond_1

    .line 30
    goto :goto_0

    .line 32
    :cond_1
    move v1, v2

    .line 33
    :goto_0
    move v2, v1

    .line 34
    :cond_2
    iget-boolean v1, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mIsPad:Z

    .line 35
    const/high16 v4, -0x3ee00000    # -10.0f

    .line 37
    const/high16 v5, -0x3d740000    # -70.0f

    .line 39
    if-eqz v1, :cond_4

    .line 41
    invoke-static {}, Lcom/miui/charge/ChargeUtils;->isLiteChargeAnimation()Z

    .line 43
    move-result v1

    .line 46
    if-eqz v1, :cond_3

    .line 47
    const v1, 0x3f19999a    # 0.6f

    .line 49
    mul-float/2addr v0, v1

    .line 52
    div-float v2, v0, v3

    .line 53
    :cond_3
    const/high16 v0, 0x43100000    # 144.0f

    .line 55
    mul-float/2addr v0, v2

    .line 57
    float-to-int v0, v0

    .line 58
    iput v0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mLargeTextSizePx:I

    .line 59
    const/high16 v0, 0x42960000    # 75.0f

    .line 61
    mul-float/2addr v0, v2

    .line 63
    float-to-int v0, v0

    .line 64
    iput v0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mSmallTextSizePx:I

    .line 65
    const/high16 v0, 0x427c0000    # 63.0f

    .line 67
    mul-float/2addr v0, v2

    .line 69
    float-to-int v0, v0

    .line 70
    iput v0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mPercentTextSizePx:I

    .line 71
    mul-float/2addr v5, v2

    .line 73
    float-to-int v0, v5

    .line 74
    iput v0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mChargeNumberTranslateSmall:I

    .line 75
    mul-float/2addr v2, v4

    .line 77
    float-to-int v0, v2

    .line 78
    iput v0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mChargeNumberTranslateInit:I

    .line 79
    return-void

    .line 81
    :cond_4
    const/high16 v0, 0x433c0000    # 188.0f

    .line 82
    mul-float/2addr v0, v2

    .line 84
    float-to-int v0, v0

    .line 85
    iput v0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mLargeTextSizePx:I

    .line 86
    const/high16 v0, 0x42c80000    # 100.0f

    .line 88
    mul-float/2addr v0, v2

    .line 90
    float-to-int v0, v0

    .line 91
    iput v0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mSmallTextSizePx:I

    .line 92
    const/high16 v0, 0x42800000    # 64.0f

    .line 94
    mul-float/2addr v0, v2

    .line 96
    float-to-int v0, v0

    .line 97
    iput v0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mPercentTextSizePx:I

    .line 98
    mul-float/2addr v5, v2

    .line 100
    float-to-int v0, v5

    .line 101
    iput v0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mChargeNumberTranslateSmall:I

    .line 102
    mul-float/2addr v2, v4

    .line 104
    float-to-int v0, v2

    .line 105
    iput v0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mChargeNumberTranslateInit:I

    .line 106
    invoke-static {}, Lcom/miui/charge/ChargeUtils;->supportParticleChargeAnimation()Z

    .line 108
    move-result v0

    .line 111
    if-eqz v0, :cond_5

    .line 112
    iget v0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mChargeNumberTranslateSmall:I

    .line 114
    neg-int v0, v0

    .line 116
    const/4 v1, 0x0

    .line 117
    invoke-virtual {p0, v1, v0, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 118
    :cond_5
    return-void
    .line 121
.end method
