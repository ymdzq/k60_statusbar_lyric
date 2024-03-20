.class public final Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;
.super Landroid/view/animation/Animation;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public isGetCurScale:Z

.field public final mFinalScale:F

.field public mFirstPhaseDuration:I

.field public mLongEaseInterpolator:Landroid/view/animation/Interpolator;

.field public final mMiddleScale:F

.field public mNextPhaseScale:F

.field public mPivotX:F

.field public final mPivotXType:I

.field public final mPivotXValue:F

.field public mPivotY:F

.field public final mPivotYType:I

.field public final mPivotYValue:F

.field public mScale:F

.field public mScaleBreakOffset:F

.field public mScaleDelayTime:I

.field public mSecPhaseDuration:I

.field public mShortEaseInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(F)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    iput v0, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mScale:F

    .line 7
    iput v0, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mNextPhaseScale:F

    .line 9
    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->isGetCurScale:Z

    .line 12
    const/4 v2, 0x0

    .line 14
    iput v2, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mPivotXType:I

    .line 15
    iput v2, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mPivotYType:I

    .line 17
    const/4 v2, 0x0

    .line 19
    iput v2, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mPivotXValue:F

    .line 20
    iput v2, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mPivotYValue:F

    .line 22
    iput v2, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mScaleBreakOffset:F

    .line 24
    iput p1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mMiddleScale:F

    .line 26
    iput v0, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mFinalScale:F

    .line 28
    const/high16 p1, 0x3f000000    # 0.5f

    .line 30
    iput p1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mPivotXValue:F

    .line 32
    iput v1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mPivotXType:I

    .line 34
    iput p1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mPivotYValue:F

    .line 36
    iput v1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mPivotYType:I

    .line 38
    return-void
    .line 40
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/animation/Animation;->getScaleFactor()F

    .line 2
    move-result p1

    .line 5
    iget v0, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mPivotX:F

    .line 6
    const/4 v1, 0x0

    .line 8
    cmpl-float v0, v0, v1

    .line 9
    if-nez v0, :cond_0

    .line 11
    iget v0, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mPivotY:F

    .line 13
    cmpl-float v0, v0, v1

    .line 15
    if-nez v0, :cond_0

    .line 17
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    .line 19
    move-result-object p1

    .line 22
    iget p0, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mScale:F

    .line 23
    invoke-virtual {p1, p0, p0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 25
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    .line 29
    move-result-object p2

    .line 32
    iget v0, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mScale:F

    .line 33
    iget v1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mPivotX:F

    .line 35
    mul-float/2addr v1, p1

    .line 37
    iget p0, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mPivotY:F

    .line 38
    mul-float/2addr p1, p0

    .line 40
    invoke-virtual {p2, v0, v0, v1, p1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 41
    :goto_0
    return-void
    .line 44
.end method

.method public final getTransformation(JLandroid/view/animation/Transformation;)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/animation/Animation;->getStartOffset()J

    .line 2
    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Landroid/view/animation/Animation;->getDuration()J

    .line 6
    move-result-wide v2

    .line 9
    invoke-virtual {p0}, Landroid/view/animation/Animation;->getStartTime()J

    .line 10
    move-result-wide v4

    .line 13
    const-wide/16 v6, 0x0

    .line 14
    cmp-long v6, v2, v6

    .line 16
    const/4 v7, 0x0

    .line 18
    const/high16 v8, 0x3f800000    # 1.0f

    .line 19
    if-eqz v6, :cond_0

    .line 21
    add-long/2addr v4, v0

    .line 23
    sub-long v0, p1, v4

    .line 24
    long-to-float v0, v0

    .line 26
    long-to-float v1, v2

    .line 27
    div-float/2addr v0, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    cmp-long v0, p1, v4

    .line 30
    if-gez v0, :cond_1

    .line 32
    move v0, v7

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move v0, v8

    .line 36
    :goto_0
    invoke-virtual {p0}, Landroid/view/animation/Animation;->getFillAfter()Z

    .line 37
    move-result v1

    .line 40
    invoke-virtual {p0}, Landroid/view/animation/Animation;->getFillBefore()Z

    .line 41
    move-result v4

    .line 44
    invoke-virtual {p0}, Landroid/view/animation/Animation;->isFillEnabled()Z

    .line 45
    move-result v5

    .line 48
    if-nez v5, :cond_2

    .line 49
    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    .line 51
    move-result v0

    .line 54
    invoke-static {v0, v7}, Ljava/lang/Math;->max(FF)F

    .line 55
    move-result v0

    .line 58
    :cond_2
    cmpl-float v6, v0, v7

    .line 59
    if-gez v6, :cond_3

    .line 61
    if-eqz v4, :cond_8

    .line 63
    :cond_3
    cmpg-float v4, v0, v8

    .line 65
    if-lez v4, :cond_4

    .line 67
    if-eqz v1, :cond_8

    .line 69
    :cond_4
    if-eqz v5, :cond_5

    .line 71
    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    .line 73
    move-result v0

    .line 76
    invoke-static {v0, v7}, Ljava/lang/Math;->max(FF)F

    .line 77
    move-result v0

    .line 80
    :cond_5
    iget v1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mScaleBreakOffset:F

    .line 81
    cmpg-float v1, v0, v1

    .line 83
    if-gtz v1, :cond_6

    .line 85
    iget-object v1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mShortEaseInterpolator:Landroid/view/animation/Interpolator;

    .line 87
    long-to-int v2, v2

    .line 89
    int-to-float v2, v2

    .line 90
    mul-float/2addr v0, v2

    .line 91
    iget v2, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mFirstPhaseDuration:I

    .line 92
    int-to-float v2, v2

    .line 94
    div-float/2addr v0, v2

    .line 95
    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 96
    move-result v0

    .line 99
    iget v1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mFinalScale:F

    .line 100
    iget v2, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mMiddleScale:F

    .line 102
    invoke-static {v2, v1, v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 104
    move-result v0

    .line 107
    iput v0, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mScale:F

    .line 108
    goto :goto_1

    .line 110
    :cond_6
    iget-boolean v1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->isGetCurScale:Z

    .line 111
    if-eqz v1, :cond_7

    .line 113
    iget v1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mScale:F

    .line 115
    iput v1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mNextPhaseScale:F

    .line 117
    const/4 v1, 0x0

    .line 119
    iput-boolean v1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->isGetCurScale:Z

    .line 120
    :cond_7
    iget-object v1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mLongEaseInterpolator:Landroid/view/animation/Interpolator;

    .line 122
    long-to-int v2, v2

    .line 124
    int-to-float v2, v2

    .line 125
    mul-float/2addr v0, v2

    .line 126
    iget v2, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mSecPhaseDuration:I

    .line 127
    int-to-float v3, v2

    .line 129
    div-float/2addr v0, v3

    .line 130
    iget v3, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mScaleDelayTime:I

    .line 131
    int-to-float v3, v3

    .line 133
    mul-float/2addr v3, v8

    .line 134
    int-to-float v2, v2

    .line 135
    div-float/2addr v3, v2

    .line 136
    sub-float/2addr v0, v3

    .line 137
    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 138
    move-result v0

    .line 141
    iget v1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mNextPhaseScale:F

    .line 142
    iget v2, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mFinalScale:F

    .line 144
    invoke-static {v2, v1, v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 146
    move-result v0

    .line 149
    iput v0, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mScale:F

    .line 150
    :cond_8
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 152
    move-result p0

    .line 155
    return p0
    .line 156
.end method

.method public final initialize(IIII)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 2
    iget v0, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mPivotXType:I

    .line 5
    iget v1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mPivotXValue:F

    .line 7
    invoke-virtual {p0, v0, v1, p1, p3}, Landroid/view/animation/Animation;->resolveSize(IFII)F

    .line 9
    move-result p1

    .line 12
    iput p1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mPivotX:F

    .line 13
    iget p1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mPivotYType:I

    .line 15
    iget p3, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mPivotYValue:F

    .line 17
    invoke-virtual {p0, p1, p3, p2, p4}, Landroid/view/animation/Animation;->resolveSize(IFII)F

    .line 19
    move-result p1

    .line 22
    iput p1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScaleAnimation;->mPivotY:F

    .line 23
    return-void
    .line 25
.end method
