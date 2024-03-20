.class public final Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;
.super Landroid/view/animation/Animation;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mCurHeight:I

.field public final mCurWidth:I

.field public final mFromRect:Landroid/graphics/Rect;

.field public final mFromScale:F

.field public mInterpolator:Landroid/view/animation/Interpolator;

.field public mPivotX:F

.field public final mPivotXType:I

.field public final mPivotXValue:F

.field public mPivotY:F

.field public final mPivotYType:I

.field public final mPivotYValue:F

.field public mShotBottom:I

.field public mShotLeft:I

.field public mShotRight:I

.field public mShotScale:F

.field public mShotTop:I

.field public final mToRect:Landroid/graphics/Rect;

.field public final mToScale:F


# direct methods
.method public constructor <init>(IIFIIIIII)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;->mPivotXType:I

    .line 6
    iput v0, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;->mPivotYType:I

    .line 8
    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;->mPivotXValue:F

    .line 11
    iput v1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;->mPivotYValue:F

    .line 13
    new-instance v1, Landroid/graphics/Rect;

    .line 15
    invoke-direct {v1, v0, v0, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 17
    iput-object v1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;->mFromRect:Landroid/graphics/Rect;

    .line 20
    new-instance p4, Landroid/graphics/Rect;

    .line 22
    invoke-direct {p4, p6, p7, p8, p9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 24
    iput-object p4, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;->mToRect:Landroid/graphics/Rect;

    .line 27
    const/high16 p4, 0x3f800000    # 1.0f

    .line 29
    iput p4, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;->mFromScale:F

    .line 31
    iput p3, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;->mToScale:F

    .line 33
    const/high16 p3, 0x3f000000    # 0.5f

    .line 35
    iput p3, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;->mPivotXValue:F

    .line 37
    const/4 p4, 0x1

    .line 39
    iput p4, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;->mPivotXType:I

    .line 40
    iput p3, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;->mPivotYValue:F

    .line 42
    iput p4, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;->mPivotYType:I

    .line 44
    iput p1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;->mCurWidth:I

    .line 46
    iput p2, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;->mCurHeight:I

    .line 48
    return-void
    .line 50
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/animation/Animation;->getScaleFactor()F

    .line 2
    move-result p1

    .line 5
    iget v0, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;->mShotLeft:I

    .line 6
    iget v1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;->mShotTop:I

    .line 8
    iget v2, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;->mShotRight:I

    .line 10
    iget v3, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;->mShotBottom:I

    .line 12
    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/view/animation/Transformation;->setClipRect(IIII)V

    .line 14
    iget v0, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;->mPivotX:F

    .line 17
    const/4 v1, 0x0

    .line 19
    cmpl-float v0, v0, v1

    .line 20
    if-nez v0, :cond_0

    .line 22
    iget v0, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;->mPivotY:F

    .line 24
    cmpl-float v0, v0, v1

    .line 26
    if-nez v0, :cond_0

    .line 28
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    .line 30
    move-result-object p1

    .line 33
    iget p0, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;->mShotScale:F

    .line 34
    invoke-virtual {p1, p0, p0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 36
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    .line 40
    move-result-object p2

    .line 43
    iget v0, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;->mShotScale:F

    .line 44
    iget v1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;->mPivotX:F

    .line 46
    mul-float/2addr v1, p1

    .line 48
    iget p0, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;->mPivotY:F

    .line 49
    mul-float/2addr p1, p0

    .line 51
    invoke-virtual {p2, v0, v0, v1, p1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 52
    :goto_0
    return-void
    .line 55
.end method

.method public final getTransformation(JLandroid/view/animation/Transformation;)Z
    .locals 10

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
    move-result v2

    .line 44
    invoke-virtual {p0}, Landroid/view/animation/Animation;->isFillEnabled()Z

    .line 45
    move-result v3

    .line 48
    if-nez v3, :cond_2

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
    cmpl-float v4, v0, v7

    .line 59
    if-gez v4, :cond_3

    .line 61
    if-eqz v2, :cond_8

    .line 63
    :cond_3
    cmpg-float v2, v0, v8

    .line 65
    if-lez v2, :cond_4

    .line 67
    if-eqz v1, :cond_8

    .line 69
    :cond_4
    if-eqz v3, :cond_5

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
    iget-object v1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 81
    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 83
    move-result v0

    .line 86
    iget v1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;->mCurWidth:I

    .line 87
    iget v2, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;->mCurHeight:I

    .line 89
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 91
    move-result v1

    .line 94
    iget v2, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;->mToScale:F

    .line 95
    iget v3, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;->mFromScale:F

    .line 97
    invoke-static {v3, v2, v0, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 99
    move-result v2

    .line 102
    iget-object v3, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;->mToRect:Landroid/graphics/Rect;

    .line 103
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 105
    iget-object v5, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;->mFromRect:Landroid/graphics/Rect;

    .line 107
    iget v6, v5, Landroid/graphics/Rect;->left:I

    .line 109
    sub-int/2addr v6, v4

    .line 111
    int-to-float v6, v6

    .line 112
    mul-float/2addr v6, v0

    .line 113
    float-to-int v6, v6

    .line 114
    add-int/2addr v4, v6

    .line 115
    iget v6, v3, Landroid/graphics/Rect;->top:I

    .line 116
    iget v7, v5, Landroid/graphics/Rect;->top:I

    .line 118
    sub-int/2addr v7, v6

    .line 120
    int-to-float v7, v7

    .line 121
    mul-float/2addr v7, v0

    .line 122
    float-to-int v7, v7

    .line 123
    add-int/2addr v6, v7

    .line 124
    iget v7, v3, Landroid/graphics/Rect;->right:I

    .line 125
    iget v9, v5, Landroid/graphics/Rect;->right:I

    .line 127
    sub-int/2addr v9, v7

    .line 129
    int-to-float v9, v9

    .line 130
    mul-float/2addr v9, v0

    .line 131
    float-to-int v9, v9

    .line 132
    add-int/2addr v7, v9

    .line 133
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 134
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 136
    sub-int/2addr v5, v3

    .line 138
    int-to-float v5, v5

    .line 139
    mul-float/2addr v5, v0

    .line 140
    float-to-int v0, v5

    .line 141
    add-int/2addr v3, v0

    .line 142
    iget v0, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;->mCurWidth:I

    .line 143
    iget v5, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;->mCurHeight:I

    .line 145
    if-le v0, v5, :cond_6

    .line 147
    sub-int/2addr v7, v4

    .line 149
    goto :goto_1

    .line 150
    :cond_6
    sub-int v7, v3, v6

    .line 151
    :goto_1
    int-to-float v3, v7

    .line 153
    mul-float/2addr v3, v2

    .line 154
    int-to-float v1, v1

    .line 155
    mul-float/2addr v8, v1

    .line 156
    div-float/2addr v3, v8

    .line 157
    iput v3, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;->mShotScale:F

    .line 158
    mul-float/2addr v2, v1

    .line 160
    div-float/2addr v2, v3

    .line 161
    float-to-int v1, v2

    .line 162
    const/4 v2, 0x0

    .line 163
    if-le v0, v5, :cond_7

    .line 164
    sub-int v3, v0, v1

    .line 166
    div-int/lit8 v3, v3, 0x2

    .line 168
    iput v3, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;->mShotLeft:I

    .line 170
    iput v2, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;->mShotTop:I

    .line 172
    add-int/2addr v0, v1

    .line 174
    div-int/lit8 v0, v0, 0x2

    .line 175
    iput v0, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;->mShotRight:I

    .line 177
    iput v5, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;->mShotBottom:I

    .line 179
    goto :goto_2

    .line 181
    :cond_7
    iput v2, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;->mShotLeft:I

    .line 182
    sub-int v2, v5, v1

    .line 184
    div-int/lit8 v2, v2, 0x2

    .line 186
    iput v2, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;->mShotTop:I

    .line 188
    iput v0, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;->mShotRight:I

    .line 190
    add-int/2addr v5, v1

    .line 192
    div-int/lit8 v5, v5, 0x2

    .line 193
    iput v5, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;->mShotBottom:I

    .line 195
    :cond_8
    :goto_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 197
    move-result p0

    .line 200
    return p0
    .line 201
.end method

.method public final initialize(IIII)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 2
    iget v0, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;->mPivotXType:I

    .line 5
    iget v1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;->mPivotXValue:F

    .line 7
    invoke-virtual {p0, v0, v1, p1, p3}, Landroid/view/animation/Animation;->resolveSize(IFII)F

    .line 9
    move-result p1

    .line 12
    iput p1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;->mPivotX:F

    .line 13
    iget p1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;->mPivotYType:I

    .line 15
    iget p3, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;->mPivotYValue:F

    .line 17
    invoke-virtual {p0, p1, p3, p2, p4}, Landroid/view/animation/Animation;->resolveSize(IFII)F

    .line 19
    move-result p1

    .line 22
    iput p1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;->mPivotY:F

    .line 23
    return-void
    .line 25
.end method

.method public final setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ShotClipAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 2
    return-void
    .line 4
.end method
