.class public final Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mBypassEnabled:Z

.field public mClockBottom:F

.field public mContainerTopPadding:I

.field public mCutoutTopInset:I

.field public mDarkAmount:F

.field public mIsClockTopAligned:Z

.field public mIsSplitShade:Z

.field public mKeyguardStatusHeight:I

.field public mMaxBurnInPreventionOffsetX:I

.field public mMaxBurnInPreventionOffsetYClock:I

.field public mMinTopMargin:I

.field public mOverStretchAmount:F

.field public mPanelExpansion:F

.field public mQsExpansion:F

.field public mSplitShadeTargetTopMargin:I

.field public mStatusViewBottomMargin:I

.field public mUdfpsTop:F

.field public mUnlockedStackScrollerPadding:I

.field public mUserSwitchHeight:I

.field public mUserSwitchPreferredY:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mCutoutTopInset:I

    .line 6
    return-void
    .line 8
.end method


# virtual methods
.method public final getClockY(FF)I
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mIsSplitShade:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget v0, p0, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mSplitShadeTargetTopMargin:I

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    iget v0, p0, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mMinTopMargin:I

    .line 9
    :goto_0
    int-to-float v0, v0

    .line 11
    iget v1, p0, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    .line 12
    neg-int v1, v1

    .line 14
    int-to-float v1, v1

    .line 15
    const/high16 v2, 0x40400000    # 3.0f

    .line 16
    div-float/2addr v1, v2

    .line 18
    sget-object v2, Lcom/android/app/animation/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    .line 19
    check-cast v2, Landroid/view/animation/PathInterpolator;

    .line 21
    invoke-virtual {v2, p1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 23
    move-result p1

    .line 26
    invoke-static {v1, v0, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 27
    move-result p1

    .line 30
    iget v0, p0, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mMaxBurnInPreventionOffsetYClock:I

    .line 31
    int-to-float v1, v0

    .line 33
    sub-float v1, p1, v1

    .line 34
    iget v2, p0, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mCutoutTopInset:I

    .line 36
    int-to-float v2, v2

    .line 38
    cmpg-float v3, v1, v2

    .line 39
    const/4 v4, 0x0

    .line 41
    if-gez v3, :cond_1

    .line 42
    sub-float v1, v2, v1

    .line 44
    goto :goto_1

    .line 46
    :cond_1
    move v1, v4

    .line 47
    :goto_1
    iget v3, p0, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mUdfpsTop:F

    .line 48
    const/high16 v5, -0x40800000    # -1.0f

    .line 50
    cmpl-float v5, v3, v5

    .line 52
    const/4 v6, 0x0

    .line 54
    if-lez v5, :cond_2

    .line 55
    const/4 v5, 0x1

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    move v5, v6

    .line 59
    :goto_2
    if-eqz v5, :cond_6

    .line 60
    iget-boolean v5, p0, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mIsClockTopAligned:Z

    .line 62
    if-nez v5, :cond_6

    .line 64
    iget v1, p0, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mClockBottom:F

    .line 66
    cmpg-float v5, v3, v1

    .line 68
    if-gez v5, :cond_4

    .line 70
    sub-float v1, p1, v2

    .line 72
    float-to-int v1, v1

    .line 74
    div-int/lit8 v1, v1, 0x2

    .line 75
    if-ge v0, v1, :cond_3

    .line 77
    goto :goto_3

    .line 79
    :cond_3
    move v0, v1

    .line 80
    :goto_3
    neg-int v1, v0

    .line 81
    int-to-float v1, v1

    .line 82
    goto :goto_5

    .line 83
    :cond_4
    sub-float v2, p1, v2

    .line 84
    sub-float/2addr v3, v1

    .line 86
    add-float v1, v3, v2

    .line 87
    float-to-int v1, v1

    .line 89
    div-int/lit8 v1, v1, 0x2

    .line 90
    if-ge v0, v1, :cond_5

    .line 92
    goto :goto_4

    .line 94
    :cond_5
    move v0, v1

    .line 95
    :goto_4
    sub-float/2addr v3, v2

    .line 96
    const/high16 v1, 0x40000000    # 2.0f

    .line 97
    div-float v1, v3, v1

    .line 99
    :cond_6
    :goto_5
    mul-int/lit8 v2, v0, 0x2

    .line 101
    invoke-static {v2, v6}, Lcom/android/systemui/doze/util/BurnInHelperKt;->getBurnInOffset(IZ)I

    .line 103
    move-result v2

    .line 106
    sub-int/2addr v2, v0

    .line 107
    int-to-float v0, v2

    .line 108
    add-float v2, p1, v0

    .line 109
    add-float/2addr v2, v1

    .line 111
    invoke-static {v4, v0, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 112
    invoke-static {p1, v2, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 115
    move-result p1

    .line 118
    iget p0, p0, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mOverStretchAmount:F

    .line 119
    add-float/2addr p1, p0

    .line 121
    float-to-int p0, p1

    .line 122
    return p0
    .line 123
.end method

.method public final setup$com$android$systemui$statusbar$phone$KeyguardClockPositionAlgorithm(IIIIFFZIFIZFFZ)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mContainerTopPadding:I

    .line 2
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    .line 4
    move-result v0

    .line 7
    add-int/2addr v0, p1

    .line 8
    iput v0, p0, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mMinTopMargin:I

    .line 9
    const/high16 p1, 0x3f800000    # 1.0f

    .line 11
    const/4 v0, 0x0

    .line 13
    invoke-static {p1, v0, p1}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 14
    move-result p1

    .line 17
    iput p1, p0, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mPanelExpansion:F

    .line 18
    iget p1, p0, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mStatusViewBottomMargin:I

    .line 20
    add-int/2addr p1, p2

    .line 22
    iput p1, p0, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    .line 23
    iput p3, p0, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mUserSwitchHeight:I

    .line 25
    iput p4, p0, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mUserSwitchPreferredY:I

    .line 27
    iput p5, p0, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mDarkAmount:F

    .line 29
    iput p6, p0, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mOverStretchAmount:F

    .line 31
    iput-boolean p7, p0, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mBypassEnabled:Z

    .line 33
    iput p8, p0, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mUnlockedStackScrollerPadding:I

    .line 35
    iput p9, p0, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mQsExpansion:F

    .line 37
    iput p10, p0, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mCutoutTopInset:I

    .line 39
    iput-boolean p11, p0, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mIsSplitShade:Z

    .line 41
    iput p12, p0, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mUdfpsTop:F

    .line 43
    iput p13, p0, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mClockBottom:F

    .line 45
    iput-boolean p14, p0, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mIsClockTopAligned:Z

    .line 47
    return-void
    .line 49
.end method
