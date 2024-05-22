.class public Lcom/miui/charge/container/MiuiChargeLogoView;
.super Landroid/widget/RelativeLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mAnimatorSet:Landroid/animation/AnimatorSet;

.field public mChargeSpeed:I

.field public mChargeTipTranslateSmall:I

.field public mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

.field public final mCubicInterpolator:Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;

.field public mIsFoldChargeVideo:Z

.field public mIsPadChargeVideo:Z

.field public mScreenSize:Landroid/graphics/Point;

.field public mSpeedTipTextSizePx:I

.field public mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

.field public mStateTipAlpha:I

.field public mStateTipTranslationY:I

.field public mTipTopMargin:I

.field public mTurboViewAlpha:I

.field public mTurboViewTranslationY:I

.field public mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/miui/charge/container/MiuiChargeLogoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/charge/container/MiuiChargeLogoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;

    invoke-direct {p2}, Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;-><init>()V

    iput-object p2, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mCubicInterpolator:Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mIsFoldChargeVideo:Z

    .line 6
    iput-boolean p2, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mIsPadChargeVideo:Z

    .line 7
    iput p2, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeSpeed:I

    .line 8
    sget-boolean p3, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    iput-boolean p3, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mIsPadChargeVideo:Z

    .line 9
    sget-boolean p3, Lcom/miui/utils/configs/MiuiConfigs;->IS_FOLD:Z

    iput-boolean p3, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mIsFoldChargeVideo:Z

    .line 10
    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->setLayoutDirection(I)V

    const-string/jumbo p3, "window"

    .line 11
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mWindowManager:Landroid/view/WindowManager;

    .line 12
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    iput-object p3, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mScreenSize:Landroid/graphics/Point;

    .line 13
    iget-object p3, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p3

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mScreenSize:Landroid/graphics/Point;

    invoke-virtual {p3, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 14
    invoke-virtual {p0}, Lcom/miui/charge/container/MiuiChargeLogoView;->updateSizeForScreenSizeChange()V

    .line 15
    new-instance p3, Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    invoke-direct {p3, p1}, Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 17
    iget-object p3, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    iget v0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mSpeedTipTextSizePx:I

    int-to-float v0, v0

    invoke-virtual {p3, p2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 18
    iget-object p3, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 19
    iget-object p2, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    const-string p3, "#8CFFFFFF"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    iget-object p2, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    const/16 p3, 0x11

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setGravity(I)V

    .line 21
    iget-boolean p2, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mIsPadChargeVideo:Z

    if-eqz p2, :cond_0

    .line 22
    iget-object p2, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    const p3, 0x3ecccccd    # 0.4f

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 23
    :cond_0
    iget-object p2, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f130a21    # @string/rapid_charge_mode_tip 'Quick charge'

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p2, p3, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xe

    .line 25
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 26
    iget-boolean v1, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mIsPadChargeVideo:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x2a

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mTipTopMargin:I

    :goto_0
    iput v1, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 27
    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    invoke-virtual {p0, v1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    new-instance p2, Lcom/miui/charge/view/MiuiChargeTurboView;

    invoke-direct {p2, p1}, Lcom/miui/charge/view/MiuiChargeTurboView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    .line 29
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, p3, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 30
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 31
    iget p2, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mTipTopMargin:I

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 32
    iget-object p2, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 33
    iget-object p2, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    invoke-virtual {p2}, Lcom/miui/charge/view/MiuiChargeTurboView;->setViewInitState()V

    .line 34
    iget-object p2, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    invoke-virtual {p0, p2, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

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
    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mWindowManager:Landroid/view/WindowManager;

    .line 7
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 9
    move-result-object v1

    .line 12
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 13
    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mScreenSize:Landroid/graphics/Point;

    .line 16
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 18
    iget v3, v0, Landroid/graphics/Point;->y:I

    .line 20
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->equals(II)Z

    .line 22
    move-result v1

    .line 25
    if-nez v1, :cond_1

    .line 26
    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mScreenSize:Landroid/graphics/Point;

    .line 28
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 30
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 32
    invoke-virtual {v1, v2, v0}, Landroid/graphics/Point;->set(II)V

    .line 34
    invoke-virtual {p0}, Lcom/miui/charge/container/MiuiChargeLogoView;->updateSizeForScreenSizeChange()V

    .line 37
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    .line 40
    iget v1, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mSpeedTipTextSizePx:I

    .line 42
    int-to-float v1, v1

    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 46
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    .line 49
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 51
    move-result-object v0

    .line 54
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 55
    iget-boolean v1, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mIsPadChargeVideo:Z

    .line 57
    if-eqz v1, :cond_0

    .line 59
    const/16 v1, 0x2a

    .line 61
    goto :goto_0

    .line 63
    :cond_0
    iget v1, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mTipTopMargin:I

    .line 64
    :goto_0
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 66
    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    .line 68
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    .line 73
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 75
    move-result-object v0

    .line 78
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 79
    iget v1, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mTipTopMargin:I

    .line 81
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 83
    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    .line 85
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    :cond_1
    return-void
    .line 90
.end method

.method public final onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    .line 5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 7
    move-result-object v1

    .line 10
    const v2, 0x7f130a21    # @string/rapid_charge_mode_tip 'Quick charge'

    .line 11
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    invoke-virtual {p0}, Lcom/miui/charge/container/MiuiChargeLogoView;->checkScreenSize()V

    .line 21
    return-void
    .line 24
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Lcom/miui/charge/container/MiuiChargeLogoView;->checkScreenSize()V

    .line 5
    return-void
    .line 8
.end method

.method public final updateSizeForScreenSizeChange()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mScreenSize:Landroid/graphics/Point;

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
    iget-boolean v4, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mIsFoldChargeVideo:Z

    .line 20
    if-nez v4, :cond_0

    .line 22
    iget-boolean v4, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mIsPadChargeVideo:Z

    .line 24
    if-eqz v4, :cond_1

    .line 26
    :cond_0
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    .line 28
    move-result v2

    .line 31
    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    .line 32
    invoke-static {}, Lcom/miui/charge/ChargeUtils;->isLiteChargeAnimationPad()Z

    .line 35
    move-result v1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    const v1, 0x3f19999a    # 0.6f

    .line 41
    mul-float/2addr v0, v1

    .line 44
    div-float v2, v0, v3

    .line 45
    :cond_2
    iget-boolean v0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mIsPadChargeVideo:Z

    .line 47
    if-eqz v0, :cond_3

    .line 49
    const/high16 v0, 0x42800000    # 64.0f

    .line 51
    mul-float/2addr v0, v2

    .line 53
    float-to-int v0, v0

    .line 54
    iput v0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mTipTopMargin:I

    .line 55
    const/16 v0, 0x1e

    .line 57
    iput v0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mSpeedTipTextSizePx:I

    .line 59
    goto :goto_0

    .line 61
    :cond_3
    const v0, 0x4209f0a4    # 34.485f

    .line 62
    mul-float/2addr v0, v2

    .line 65
    float-to-int v0, v0

    .line 66
    iput v0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mSpeedTipTextSizePx:I

    .line 67
    const/high16 v0, 0x430b0000    # 139.0f

    .line 69
    mul-float/2addr v0, v2

    .line 71
    float-to-int v0, v0

    .line 72
    iput v0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mTipTopMargin:I

    .line 73
    :goto_0
    const/4 v0, 0x0

    .line 75
    mul-float/2addr v2, v0

    .line 76
    float-to-int v0, v2

    .line 77
    iput v0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTipTranslateSmall:I

    .line 78
    return-void
    .line 80
.end method
