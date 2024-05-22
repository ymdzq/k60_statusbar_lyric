.class public Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;
.super Landroid/graphics/drawable/Drawable;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final ALPHA_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field public final mAnimatorListener:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$1;

.field public mBottomProp:Landroid/graphics/CanvasProperty;

.field public mDark:Z

.field public mDrawingHardwareGlow:Z

.field public final mEnterHwTraceAnimator:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$1;

.field public final mExitHwTraceAnimator:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$1;

.field public mGlowAlpha:F

.field public mGlowScale:F

.field public final mHandler:Landroid/os/Handler;

.field public final mInterpolator:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$LogInterpolator;

.field public mLastDark:Z

.field public mLeftProp:Landroid/graphics/CanvasProperty;

.field public mMaxWidth:I

.field public final mMaxWidthResource:I

.field public mPaintProp:Landroid/graphics/CanvasProperty;

.field public mPressed:Z

.field public mRightProp:Landroid/graphics/CanvasProperty;

.field public mRipplePaint:Landroid/graphics/Paint;

.field public final mRunningAnimations:Ljava/util/HashSet;

.field public mRxProp:Landroid/graphics/CanvasProperty;

.field public mRyProp:Landroid/graphics/CanvasProperty;

.field public mSupportHardware:Z

.field public final mTargetView:Landroid/view/View;

.field public final mTmpArray:Ljava/util/ArrayList;

.field public mTopProp:Landroid/graphics/CanvasProperty;

.field public mType:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 2
    const v1, 0x3f4ccccd    # 0.8f

    .line 4
    const/high16 v2, 0x3f800000    # 1.0f

    .line 7
    const/4 v3, 0x0

    .line 9
    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 10
    sput-object v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->ALPHA_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 13
    return-void
    .line 15
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mGlowAlpha:F

    .line 6
    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    iput v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mGlowScale:F

    .line 10
    new-instance v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$LogInterpolator;

    .line 12
    invoke-direct {v0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$LogInterpolator;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mInterpolator:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$LogInterpolator;

    .line 17
    new-instance v0, Landroid/os/Handler;

    .line 19
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mHandler:Landroid/os/Handler;

    .line 24
    new-instance v0, Ljava/util/HashSet;

    .line 26
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$1;

    .line 40
    const-string v1, "exitHardware"

    .line 42
    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$1;-><init>(Ljava/lang/String;)V

    .line 44
    iput-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mExitHwTraceAnimator:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$1;

    .line 47
    new-instance v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$1;

    .line 49
    const-string v1, "enterHardware"

    .line 51
    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$1;-><init>(Ljava/lang/String;)V

    .line 53
    iput-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mEnterHwTraceAnimator:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$1;

    .line 56
    sget-object v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;->ROUNDED_RECT:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;

    .line 58
    iput-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mType:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;

    .line 60
    new-instance v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$1;

    .line 62
    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$1;-><init>(Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;)V

    .line 64
    iput-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mAnimatorListener:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$1;

    .line 67
    iput p3, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mMaxWidthResource:I

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 71
    move-result-object p1

    .line 74
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 75
    move-result p1

    .line 78
    iput p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mMaxWidth:I

    .line 79
    iput-object p2, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mTargetView:Landroid/view/View;

    .line 81
    return-void
    .line 83
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    .line 2
    move-result v0

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mSupportHardware:Z

    .line 6
    sget-object v1, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;->ROUNDED_RECT:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;

    .line 8
    if-eqz v0, :cond_1

    .line 10
    move-object v2, p1

    .line 12
    check-cast v2, Landroid/graphics/RecordingCanvas;

    .line 13
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mDrawingHardwareGlow:Z

    .line 15
    if-eqz p1, :cond_7

    .line 17
    iget-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mType:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;

    .line 19
    if-ne p1, v1, :cond_0

    .line 21
    iget-object v3, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mLeftProp:Landroid/graphics/CanvasProperty;

    .line 23
    iget-object v4, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mTopProp:Landroid/graphics/CanvasProperty;

    .line 25
    iget-object v5, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mRightProp:Landroid/graphics/CanvasProperty;

    .line 27
    iget-object v6, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mBottomProp:Landroid/graphics/CanvasProperty;

    .line 29
    iget-object v7, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mRxProp:Landroid/graphics/CanvasProperty;

    .line 31
    iget-object v8, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mRyProp:Landroid/graphics/CanvasProperty;

    .line 33
    iget-object v9, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    .line 35
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/RecordingCanvas;->drawRoundRect(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    .line 37
    goto/16 :goto_3

    .line 40
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 42
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 46
    move-result p1

    .line 49
    div-int/lit8 p1, p1, 0x2

    .line 50
    int-to-float p1, p1

    .line 52
    invoke-static {p1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 53
    move-result-object p1

    .line 56
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 57
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 61
    move-result v0

    .line 64
    div-int/lit8 v0, v0, 0x2

    .line 65
    int-to-float v0, v0

    .line 67
    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 68
    move-result-object v0

    .line 71
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 72
    move-result-object v1

    .line 75
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 76
    move-result v1

    .line 79
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 80
    move-result-object v3

    .line 83
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 84
    move-result v3

    .line 87
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 88
    move-result v1

    .line 91
    const/high16 v3, 0x3f800000    # 1.0f

    .line 92
    int-to-float v1, v1

    .line 94
    mul-float/2addr v1, v3

    .line 95
    const/high16 v3, 0x40000000    # 2.0f

    .line 96
    div-float/2addr v1, v3

    .line 98
    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 99
    move-result-object v1

    .line 102
    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    .line 103
    invoke-virtual {v2, p1, v0, v1, p0}, Landroid/graphics/RecordingCanvas;->drawCircle(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    .line 105
    goto/16 :goto_3

    .line 108
    :cond_1
    iget v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mGlowAlpha:F

    .line 110
    const/4 v2, 0x0

    .line 112
    cmpl-float v0, v0, v2

    .line 113
    if-lez v0, :cond_7

    .line 115
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->getRipplePaint()Landroid/graphics/Paint;

    .line 117
    move-result-object v0

    .line 120
    iget v2, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mGlowAlpha:F

    .line 121
    const/high16 v3, 0x437f0000    # 255.0f

    .line 123
    mul-float/2addr v2, v3

    .line 125
    float-to-int v2, v2

    .line 126
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 127
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 130
    move-result-object v2

    .line 133
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 134
    move-result v2

    .line 137
    int-to-float v2, v2

    .line 138
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 139
    move-result-object v3

    .line 142
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 143
    move-result v3

    .line 146
    int-to-float v3, v3

    .line 147
    cmpl-float v4, v2, v3

    .line 148
    if-lez v4, :cond_2

    .line 150
    const/4 v4, 0x1

    .line 152
    goto :goto_0

    .line 153
    :cond_2
    const/4 v4, 0x0

    .line 154
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->getRippleSize()I

    .line 155
    move-result v5

    .line 158
    int-to-float v5, v5

    .line 159
    iget v6, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mGlowScale:F

    .line 160
    mul-float/2addr v5, v6

    .line 162
    const/high16 v6, 0x3f000000    # 0.5f

    .line 163
    mul-float/2addr v5, v6

    .line 165
    mul-float/2addr v2, v6

    .line 166
    mul-float/2addr v3, v6

    .line 167
    if-eqz v4, :cond_3

    .line 168
    move v6, v5

    .line 170
    goto :goto_1

    .line 171
    :cond_3
    move v6, v2

    .line 172
    :goto_1
    if-eqz v4, :cond_4

    .line 173
    move v5, v3

    .line 175
    :cond_4
    if-eqz v4, :cond_5

    .line 176
    move v8, v3

    .line 178
    goto :goto_2

    .line 179
    :cond_5
    move v8, v2

    .line 180
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mType:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;

    .line 181
    if-ne p0, v1, :cond_6

    .line 183
    sub-float p0, v2, v6

    .line 185
    sub-float v4, v3, v5

    .line 187
    add-float v1, v6, v2

    .line 189
    add-float v6, v3, v5

    .line 191
    move-object v2, p1

    .line 193
    move v3, p0

    .line 194
    move v5, v1

    .line 195
    move v7, v8

    .line 196
    move-object v9, v0

    .line 197
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 198
    goto :goto_3

    .line 201
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 202
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 205
    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    .line 208
    move-result v6

    .line 211
    neg-float v4, v6

    .line 212
    move-object v2, p1

    .line 213
    move v3, v4

    .line 214
    move v5, v6

    .line 215
    move-object v7, v0

    .line 216
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 217
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 220
    :cond_7
    :goto_3
    return-void
    .line 223
.end method

.method public final endAnimations(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    const-string v1, "KeyButtonRipple.endAnim: reason="

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string p1, " cancel="

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 29
    const-wide/16 v0, 0x1000

    .line 30
    invoke-static {v0, v1, p1}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    .line 35
    iget-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    .line 37
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 39
    iget-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 44
    move-result p1

    .line 47
    const/4 v0, 0x0

    .line 48
    :goto_0
    if-ge v0, p1, :cond_2

    .line 49
    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    move-result-object v1

    .line 56
    check-cast v1, Landroid/animation/Animator;

    .line 57
    if-eqz p2, :cond_1

    .line 59
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 61
    goto :goto_1

    .line 64
    :cond_1
    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    .line 65
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 68
    goto :goto_0

    .line 70
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    .line 71
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 73
    iget-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    .line 76
    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 78
    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mHandler:Landroid/os/Handler;

    .line 81
    const/4 p1, 0x0

    .line 83
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 84
    return-void
    .line 87
.end method

.method public final getExtendSize()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->isHorizontal()Z

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 6
    move-result-object p0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 12
    move-result p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 17
    move-result p0

    .line 20
    :goto_0
    return p0
    .line 21
.end method

.method public getGlowAlpha()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mGlowAlpha:F

    .line 2
    return p0
    .line 4
.end method

.method public getGlowScale()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mGlowScale:F

    .line 2
    return p0
    .line 4
.end method

.method public final getOpacity()I
    .locals 0

    .line 1
    const/4 p0, -0x3

    .line 2
    return p0
    .line 3
.end method

.method public final getRipplePaint()Landroid/graphics/Paint;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    .line 2
    if-nez v0, :cond_1

    .line 4
    new-instance v0, Landroid/graphics/Paint;

    .line 6
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    .line 11
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 14
    iget-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    .line 17
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mLastDark:Z

    .line 19
    if-eqz v1, :cond_0

    .line 21
    const/high16 v1, -0x1000000

    .line 23
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, -0x1

    .line 26
    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 27
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    .line 30
    return-object p0
    .line 32
.end method

.method public final getRippleSize()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->isHorizontal()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 12
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 17
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 21
    move-result v0

    .line 24
    :goto_0
    iget p0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mMaxWidth:I

    .line 25
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    .line 27
    move-result p0

    .line 30
    return p0
    .line 31
.end method

.method public final hasFocusStateSpecified()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final isHorizontal()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 6
    move-result v0

    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 10
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 14
    move-result p0

    .line 17
    if-le v0, p0, :cond_0

    .line 18
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
    .line 23
.end method

.method public final isStateful()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final jumpToCurrentState()V
    .locals 2

    .line 1
    const-string v0, "jumpToCurrentState"

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->endAnimations(Ljava/lang/String;Z)V

    .line 5
    return-void
    .line 8
.end method

.method public final onStateChange([I)Z
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    array-length v2, p1

    .line 4
    const/4 v3, 0x1

    .line 5
    if-ge v1, v2, :cond_1

    .line 6
    aget v2, p1, v1

    .line 8
    const v4, 0x10100a7    # @android:attr/state_pressed

    .line 10
    if-ne v2, v4, :cond_0

    .line 13
    move p1, v3

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 17
    goto :goto_0

    .line 19
    :cond_1
    move p1, v0

    .line 20
    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mPressed:Z

    .line 21
    if-eq p1, v1, :cond_d

    .line 23
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mDark:Z

    .line 25
    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mLastDark:Z

    .line 27
    if-eq v1, v2, :cond_2

    .line 29
    if-eqz p1, :cond_2

    .line 31
    const/4 v2, 0x0

    .line 33
    iput-object v2, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    .line 34
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mLastDark:Z

    .line 36
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mSupportHardware:Z

    .line 38
    const-wide/16 v4, 0x15e

    .line 40
    const v2, 0x3dcccccd    # 0.1f

    .line 42
    const v6, 0x3e4ccccd    # 0.2f

    .line 45
    const-wide/16 v7, 0x1c2

    .line 48
    const/4 v9, 0x0

    .line 50
    const/4 v10, 0x2

    .line 51
    if-eqz v1, :cond_a

    .line 52
    if-eqz p1, :cond_9

    .line 54
    const-string v0, "enterHardware"

    .line 56
    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->endAnimations(Ljava/lang/String;Z)V

    .line 58
    iput-boolean v3, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mDrawingHardwareGlow:Z

    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->getExtendSize()I

    .line 63
    move-result v0

    .line 66
    div-int/2addr v0, v10

    .line 67
    int-to-float v0, v0

    .line 68
    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 69
    move-result-object v0

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->isHorizontal()Z

    .line 73
    move-result v1

    .line 76
    if-eqz v1, :cond_3

    .line 77
    iput-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mLeftProp:Landroid/graphics/CanvasProperty;

    .line 79
    goto :goto_2

    .line 81
    :cond_3
    iput-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mTopProp:Landroid/graphics/CanvasProperty;

    .line 82
    :goto_2
    new-instance v0, Landroid/view/RenderNodeAnimator;

    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->isHorizontal()Z

    .line 86
    move-result v1

    .line 89
    if-eqz v1, :cond_4

    .line 90
    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mLeftProp:Landroid/graphics/CanvasProperty;

    .line 92
    goto :goto_3

    .line 94
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mTopProp:Landroid/graphics/CanvasProperty;

    .line 95
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->getExtendSize()I

    .line 97
    move-result v7

    .line 100
    div-int/2addr v7, v10

    .line 101
    int-to-float v7, v7

    .line 102
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->getRippleSize()I

    .line 103
    move-result v8

    .line 106
    int-to-float v8, v8

    .line 107
    const v11, 0x3faccccd    # 1.35f

    .line 108
    const/high16 v12, 0x40000000    # 2.0f

    .line 111
    invoke-static {v8, v11, v12, v7}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 113
    move-result v7

    .line 116
    invoke-direct {v0, v1, v7}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 117
    invoke-virtual {v0, v4, v5}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    .line 120
    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mInterpolator:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$LogInterpolator;

    .line 123
    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 125
    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mAnimatorListener:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$1;

    .line 128
    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 130
    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mTargetView:Landroid/view/View;

    .line 133
    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 135
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->getExtendSize()I

    .line 138
    move-result v1

    .line 141
    div-int/2addr v1, v10

    .line 142
    int-to-float v1, v1

    .line 143
    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 144
    move-result-object v1

    .line 147
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->isHorizontal()Z

    .line 148
    move-result v7

    .line 151
    if-eqz v7, :cond_5

    .line 152
    iput-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mRightProp:Landroid/graphics/CanvasProperty;

    .line 154
    goto :goto_4

    .line 156
    :cond_5
    iput-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mBottomProp:Landroid/graphics/CanvasProperty;

    .line 157
    :goto_4
    new-instance v1, Landroid/view/RenderNodeAnimator;

    .line 159
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->isHorizontal()Z

    .line 161
    move-result v7

    .line 164
    if-eqz v7, :cond_6

    .line 165
    iget-object v7, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mRightProp:Landroid/graphics/CanvasProperty;

    .line 167
    goto :goto_5

    .line 169
    :cond_6
    iget-object v7, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mBottomProp:Landroid/graphics/CanvasProperty;

    .line 170
    :goto_5
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->getExtendSize()I

    .line 172
    move-result v8

    .line 175
    div-int/2addr v8, v10

    .line 176
    int-to-float v8, v8

    .line 177
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->getRippleSize()I

    .line 178
    move-result v13

    .line 181
    int-to-float v13, v13

    .line 182
    invoke-static {v13, v11, v12, v8}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m$1(FFFF)F

    .line 183
    move-result v8

    .line 186
    invoke-direct {v1, v7, v8}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 187
    invoke-virtual {v1, v4, v5}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    .line 190
    iget-object v4, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mInterpolator:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$LogInterpolator;

    .line 193
    invoke-virtual {v1, v4}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 195
    iget-object v4, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mAnimatorListener:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$1;

    .line 198
    invoke-virtual {v1, v4}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 200
    iget-object v4, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mEnterHwTraceAnimator:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$1;

    .line 203
    invoke-virtual {v1, v4}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 205
    iget-object v4, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mTargetView:Landroid/view/View;

    .line 208
    invoke-virtual {v1, v4}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 210
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->isHorizontal()Z

    .line 213
    move-result v4

    .line 216
    if-eqz v4, :cond_7

    .line 217
    invoke-static {v9}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 219
    move-result-object v4

    .line 222
    iput-object v4, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mTopProp:Landroid/graphics/CanvasProperty;

    .line 223
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 225
    move-result-object v4

    .line 228
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 229
    move-result v4

    .line 232
    int-to-float v4, v4

    .line 233
    invoke-static {v4}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 234
    move-result-object v4

    .line 237
    iput-object v4, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mBottomProp:Landroid/graphics/CanvasProperty;

    .line 238
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 240
    move-result-object v4

    .line 243
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 244
    move-result v4

    .line 247
    div-int/2addr v4, v10

    .line 248
    int-to-float v4, v4

    .line 249
    invoke-static {v4}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 250
    move-result-object v4

    .line 253
    iput-object v4, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mRxProp:Landroid/graphics/CanvasProperty;

    .line 254
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 256
    move-result-object v4

    .line 259
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 260
    move-result v4

    .line 263
    div-int/2addr v4, v10

    .line 264
    int-to-float v4, v4

    .line 265
    invoke-static {v4}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 266
    move-result-object v4

    .line 269
    iput-object v4, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mRyProp:Landroid/graphics/CanvasProperty;

    .line 270
    goto :goto_6

    .line 272
    :cond_7
    invoke-static {v9}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 273
    move-result-object v4

    .line 276
    iput-object v4, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mLeftProp:Landroid/graphics/CanvasProperty;

    .line 277
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 279
    move-result-object v4

    .line 282
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 283
    move-result v4

    .line 286
    int-to-float v4, v4

    .line 287
    invoke-static {v4}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 288
    move-result-object v4

    .line 291
    iput-object v4, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mRightProp:Landroid/graphics/CanvasProperty;

    .line 292
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 294
    move-result-object v4

    .line 297
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 298
    move-result v4

    .line 301
    div-int/2addr v4, v10

    .line 302
    int-to-float v4, v4

    .line 303
    invoke-static {v4}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 304
    move-result-object v4

    .line 307
    iput-object v4, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mRxProp:Landroid/graphics/CanvasProperty;

    .line 308
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 310
    move-result-object v4

    .line 313
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 314
    move-result v4

    .line 317
    div-int/2addr v4, v10

    .line 318
    int-to-float v4, v4

    .line 319
    invoke-static {v4}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 320
    move-result-object v4

    .line 323
    iput-object v4, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mRyProp:Landroid/graphics/CanvasProperty;

    .line 324
    :goto_6
    iput v11, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mGlowScale:F

    .line 326
    iget-boolean v4, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mLastDark:Z

    .line 328
    if-eqz v4, :cond_8

    .line 330
    goto :goto_7

    .line 332
    :cond_8
    move v2, v6

    .line 333
    :goto_7
    iput v2, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mGlowAlpha:F

    .line 334
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->getRipplePaint()Landroid/graphics/Paint;

    .line 336
    move-result-object v2

    .line 339
    iput-object v2, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    .line 340
    iget v4, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mGlowAlpha:F

    .line 342
    const/high16 v5, 0x437f0000    # 255.0f

    .line 344
    mul-float/2addr v4, v5

    .line 346
    float-to-int v4, v4

    .line 347
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 348
    iget-object v2, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    .line 351
    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    .line 353
    move-result-object v2

    .line 356
    iput-object v2, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    .line 357
    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    .line 359
    invoke-virtual {v1}, Landroid/view/RenderNodeAnimator;->start()V

    .line 362
    iget-object v2, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    .line 365
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 367
    iget-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    .line 370
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 372
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 375
    goto/16 :goto_9

    .line 378
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->getRipplePaint()Landroid/graphics/Paint;

    .line 380
    move-result-object v0

    .line 383
    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    .line 384
    move-result-object v0

    .line 387
    iput-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    .line 388
    new-instance v0, Landroid/view/RenderNodeAnimator;

    .line 390
    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    .line 392
    invoke-direct {v0, v1, v3, v9}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    .line 394
    invoke-virtual {v0, v7, v8}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    .line 397
    sget-object v1, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->ALPHA_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 400
    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 402
    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mAnimatorListener:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$1;

    .line 405
    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 407
    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mExitHwTraceAnimator:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$1;

    .line 410
    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 412
    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mTargetView:Landroid/view/View;

    .line 415
    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 417
    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    .line 420
    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    .line 423
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 425
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 428
    goto :goto_9

    .line 431
    :cond_a
    if-eqz p1, :cond_c

    .line 432
    const-string v0, "enterSoftware"

    .line 434
    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->endAnimations(Ljava/lang/String;Z)V

    .line 436
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mLastDark:Z

    .line 439
    if-eqz v0, :cond_b

    .line 441
    goto :goto_8

    .line 443
    :cond_b
    move v2, v6

    .line 444
    :goto_8
    iput v2, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mGlowAlpha:F

    .line 445
    new-array v0, v10, [F

    .line 447
    fill-array-data v0, :array_0

    .line 449
    const-string v1, "glowScale"

    .line 452
    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 454
    move-result-object v0

    .line 457
    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mInterpolator:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$LogInterpolator;

    .line 458
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 460
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 463
    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mAnimatorListener:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$1;

    .line 466
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 468
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 471
    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    .line 474
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 476
    goto :goto_9

    .line 479
    :cond_c
    new-array v1, v10, [F

    .line 480
    iget v2, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mGlowAlpha:F

    .line 482
    aput v2, v1, v0

    .line 484
    aput v9, v1, v3

    .line 486
    const-string v0, "glowAlpha"

    .line 488
    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 490
    move-result-object v0

    .line 493
    sget-object v1, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->ALPHA_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 494
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 496
    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 499
    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mAnimatorListener:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$1;

    .line 502
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 504
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 507
    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    .line 510
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 512
    :goto_9
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mPressed:Z

    .line 515
    return v3

    .line 517
    :cond_d
    return v0

    .line 518
    nop

    .line 519
    :array_0
    .array-data 4
        0x0
        0x3faccccd    # 1.35f
    .end array-data
    .line 520
.end method

.method public final setAlpha(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setGlowAlpha(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mGlowAlpha:F

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 4
    return-void
    .line 7
.end method

.method public setGlowScale(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mGlowScale:F

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 4
    return-void
    .line 7
.end method

.method public final setVisible(ZZ)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 2
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->jumpToCurrentState()V

    .line 8
    :cond_0
    return p1
    .line 11
.end method
