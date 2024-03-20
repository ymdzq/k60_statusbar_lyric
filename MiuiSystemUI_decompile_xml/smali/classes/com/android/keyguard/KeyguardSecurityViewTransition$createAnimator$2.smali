.class public final Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $endRect:Landroid/graphics/Rect;

.field public final synthetic $fadeInInterpolator:Landroid/view/animation/Interpolator;

.field public final synthetic $fadeOutInterpolator:Landroid/view/animation/Interpolator;

.field public final synthetic $initialAlpha:F

.field public final synthetic $positionInterpolator:Landroid/view/animation/Interpolator;

.field public final synthetic $startRect:Landroid/graphics/Rect;

.field public final synthetic $totalTranslation:I

.field public final synthetic $v:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/animation/Interpolator;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/animation/Interpolator;Landroid/view/View;FLandroid/view/animation/Interpolator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$positionInterpolator:Landroid/view/animation/Interpolator;

    .line 2
    iput p2, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$totalTranslation:I

    .line 4
    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$endRect:Landroid/graphics/Rect;

    .line 6
    iput-object p4, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$startRect:Landroid/graphics/Rect;

    .line 8
    iput-object p5, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$fadeOutInterpolator:Landroid/view/animation/Interpolator;

    .line 10
    iput-object p6, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$v:Landroid/view/View;

    .line 12
    iput p7, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$initialAlpha:F

    .line 14
    iput-object p8, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$fadeInInterpolator:Landroid/view/animation/Interpolator;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
    .line 21
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 2
    move-result v0

    .line 5
    const v1, 0x3e4ccccd    # 0.2f

    .line 6
    cmpg-float v0, v0, v1

    .line 9
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    if-gez v0, :cond_0

    .line 13
    move v0, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v0, v3

    .line 17
    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$positionInterpolator:Landroid/view/animation/Interpolator;

    .line 18
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 20
    move-result v5

    .line 23
    invoke-interface {v4, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 24
    move-result v4

    .line 27
    iget v5, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$totalTranslation:I

    .line 28
    int-to-float v6, v5

    .line 30
    mul-float/2addr v4, v6

    .line 31
    float-to-int v4, v4

    .line 32
    sub-int/2addr v5, v4

    .line 33
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$endRect:Landroid/graphics/Rect;

    .line 34
    iget v6, v6, Landroid/graphics/Rect;->left:I

    .line 36
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$startRect:Landroid/graphics/Rect;

    .line 38
    iget v7, v7, Landroid/graphics/Rect;->left:I

    .line 40
    if-ge v6, v7, :cond_1

    .line 42
    goto :goto_1

    .line 44
    :cond_1
    move v2, v3

    .line 45
    :goto_1
    if-eqz v2, :cond_2

    .line 46
    neg-int v4, v4

    .line 48
    neg-int v5, v5

    .line 49
    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    .line 50
    const/4 v3, 0x0

    .line 52
    if-eqz v0, :cond_4

    .line 53
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 55
    move-result p1

    .line 58
    invoke-static {v2, v3, v3, v1, p1}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    .line 59
    move-result p1

    .line 62
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$fadeOutInterpolator:Landroid/view/animation/Interpolator;

    .line 63
    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 65
    move-result p1

    .line 68
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$v:Landroid/view/View;

    .line 69
    iget v1, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$initialAlpha:F

    .line 71
    mul-float/2addr p1, v1

    .line 73
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 74
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$v:Landroid/view/View;

    .line 77
    instance-of v0, p1, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 79
    if-eqz v0, :cond_3

    .line 81
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$startRect:Landroid/graphics/Rect;

    .line 83
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 85
    add-int/2addr v0, v4

    .line 87
    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 88
    iget v2, p0, Landroid/graphics/Rect;->right:I

    .line 90
    add-int/2addr v2, v4

    .line 92
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 93
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 95
    goto :goto_2

    .line 98
    :cond_3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$startRect:Landroid/graphics/Rect;

    .line 99
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 101
    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 103
    iget v2, p0, Landroid/graphics/Rect;->right:I

    .line 105
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 107
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 109
    goto :goto_2

    .line 112
    :cond_4
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 113
    move-result p1

    .line 116
    invoke-static {v3, v2, v1, v2, p1}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    .line 117
    move-result p1

    .line 120
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$fadeInInterpolator:Landroid/view/animation/Interpolator;

    .line 121
    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 123
    move-result p1

    .line 126
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$v:Landroid/view/View;

    .line 127
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 129
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$v:Landroid/view/View;

    .line 132
    instance-of v0, p1, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 134
    if-eqz v0, :cond_5

    .line 136
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$endRect:Landroid/graphics/Rect;

    .line 138
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 140
    sub-int/2addr v0, v5

    .line 142
    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 143
    iget v2, p0, Landroid/graphics/Rect;->right:I

    .line 145
    sub-int/2addr v2, v5

    .line 147
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 148
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 150
    goto :goto_2

    .line 153
    :cond_5
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;->$endRect:Landroid/graphics/Rect;

    .line 154
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 156
    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 158
    iget v2, p0, Landroid/graphics/Rect;->right:I

    .line 160
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 162
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 164
    :goto_2
    return-void
    .line 167
.end method
