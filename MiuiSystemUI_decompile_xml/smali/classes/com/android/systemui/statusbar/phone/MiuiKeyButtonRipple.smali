.class public final Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;
.super Landroid/graphics/drawable/Drawable;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mAnimatorListener:Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$mAnimatorListener$1;

.field public mBottomProp:Landroid/graphics/CanvasProperty;

.field public mDark:Z

.field public mDelayTouchFeedback:Z

.field public mDrawingHardwareGlow:Z

.field public mEndRect:Landroid/graphics/Rect;

.field public final mEnterHwTraceAnimator:Lcom/android/systemui/statusbar/phone/TraceAnimatorListener;

.field public final mExitHwTraceAnimator:Lcom/android/systemui/statusbar/phone/TraceAnimatorListener;

.field public mFirstLeftEnd:F

.field public mFirstRightEnd:F

.field public mFirstRightStart:F

.field public mGlowAlpha:F

.field public mGlowScale:F

.field public final mHandler:Landroid/os/Handler;

.field public final mInterpolator:Lcom/android/systemui/statusbar/phone/LogInterpolator;

.field public mLastDark:Z

.field public mLeftProp:Landroid/graphics/CanvasProperty;

.field public final mMaxWidth:I

.field public mPaintProp:Landroid/graphics/CanvasProperty;

.field public mPressed:Z

.field public mRightProp:Landroid/graphics/CanvasProperty;

.field public mRipplePaint:Landroid/graphics/Paint;

.field public final mRunningAnimations:Ljava/util/HashSet;

.field public mRxProp:Landroid/graphics/CanvasProperty;

.field public mRyProp:Landroid/graphics/CanvasProperty;

.field public mSecondLeftEnd:F

.field public mSecondLeftStart:F

.field public mSecondRightEnd:F

.field public mSecondRightStart:F

.field public final mSineInterpolator:Lcom/android/systemui/statusbar/phone/SineInterpolator;

.field public final mSlideAnimatorListener:Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$mAnimatorListener$1;

.field public mSlideToRight:Z

.field public mStartRect:Landroid/graphics/Rect;

.field public mSupportHardware:Z

.field public final mTargetView:Landroid/view/View;

.field public final mTmpArray:Ljava/util/ArrayList;

.field public mTopProp:Landroid/graphics/CanvasProperty;

.field public mType:Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$Type;

.field public mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mTargetView:Landroid/view/View;

    .line 5
    new-instance v0, Lcom/android/systemui/statusbar/phone/SineInterpolator;

    .line 7
    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/SineInterpolator;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mSineInterpolator:Lcom/android/systemui/statusbar/phone/SineInterpolator;

    .line 12
    const/high16 v0, 0x3f800000    # 1.0f

    .line 14
    iput v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mGlowScale:F

    .line 16
    new-instance v0, Lcom/android/systemui/statusbar/phone/LogInterpolator;

    .line 18
    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/LogInterpolator;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mInterpolator:Lcom/android/systemui/statusbar/phone/LogInterpolator;

    .line 23
    new-instance v0, Landroid/os/Handler;

    .line 25
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 27
    move-result-object v1

    .line 30
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 31
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mHandler:Landroid/os/Handler;

    .line 34
    new-instance v0, Ljava/util/HashSet;

    .line 36
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    .line 43
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Lcom/android/systemui/statusbar/phone/TraceAnimatorListener;

    .line 50
    const-string v1, "exitHardware"

    .line 52
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/TraceAnimatorListener;-><init>(Ljava/lang/String;)V

    .line 54
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mExitHwTraceAnimator:Lcom/android/systemui/statusbar/phone/TraceAnimatorListener;

    .line 57
    new-instance v0, Lcom/android/systemui/statusbar/phone/TraceAnimatorListener;

    .line 59
    const-string v1, "enterHardware"

    .line 61
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/TraceAnimatorListener;-><init>(Ljava/lang/String;)V

    .line 63
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mEnterHwTraceAnimator:Lcom/android/systemui/statusbar/phone/TraceAnimatorListener;

    .line 66
    sget-object v0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$Type;->ROUNDED_RECT:Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$Type;

    .line 68
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mType:Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$Type;

    .line 70
    new-instance v0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$mAnimatorListener$1;

    .line 72
    const/4 v1, 0x0

    .line 74
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$mAnimatorListener$1;-><init>(Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;I)V

    .line 75
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mAnimatorListener:Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$mAnimatorListener$1;

    .line 78
    new-instance v0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$mAnimatorListener$1;

    .line 80
    const/4 v1, 0x1

    .line 82
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$mAnimatorListener$1;-><init>(Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;I)V

    .line 83
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mSlideAnimatorListener:Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$mAnimatorListener$1;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 88
    move-result-object p1

    .line 91
    const v0, 0x7f070426    # @dimen/key_button_ripple_max_width '95.0dp'

    .line 92
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 95
    move-result p1

    .line 98
    iput p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mMaxWidth:I

    .line 99
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mTargetView:Landroid/view/View;

    .line 101
    return-void
    .line 103
.end method


# virtual methods
.method public final cancelAnimations()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    if-ge v1, v0, :cond_0

    .line 16
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 23
    check-cast v2, Landroid/animation/Animator;

    .line 24
    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 29
    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 34
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    .line 37
    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    .line 39
    return-void
    .line 42
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    .line 2
    move-result v0

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mSupportHardware:Z

    .line 6
    sget-object v1, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$Type;->ROUNDED_RECT:Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$Type;

    .line 8
    if-eqz v0, :cond_a

    .line 10
    move-object v2, p1

    .line 12
    check-cast v2, Landroid/graphics/RecordingCanvas;

    .line 13
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mDrawingHardwareGlow:Z

    .line 15
    if-eqz p1, :cond_11

    .line 17
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mType:Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$Type;

    .line 19
    const/4 v0, 0x0

    .line 21
    if-ne p1, v1, :cond_7

    .line 22
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mLeftProp:Landroid/graphics/CanvasProperty;

    .line 24
    if-nez p1, :cond_0

    .line 26
    move-object v3, v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v3, p1

    .line 30
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mTopProp:Landroid/graphics/CanvasProperty;

    .line 31
    if-nez p1, :cond_1

    .line 33
    move-object v4, v0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move-object v4, p1

    .line 37
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRightProp:Landroid/graphics/CanvasProperty;

    .line 38
    if-nez p1, :cond_2

    .line 40
    move-object v5, v0

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    move-object v5, p1

    .line 44
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mBottomProp:Landroid/graphics/CanvasProperty;

    .line 45
    if-nez p1, :cond_3

    .line 47
    move-object v6, v0

    .line 49
    goto :goto_3

    .line 50
    :cond_3
    move-object v6, p1

    .line 51
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRxProp:Landroid/graphics/CanvasProperty;

    .line 52
    if-nez p1, :cond_4

    .line 54
    move-object v7, v0

    .line 56
    goto :goto_4

    .line 57
    :cond_4
    move-object v7, p1

    .line 58
    :goto_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRyProp:Landroid/graphics/CanvasProperty;

    .line 59
    if-nez p1, :cond_5

    .line 61
    move-object v8, v0

    .line 63
    goto :goto_5

    .line 64
    :cond_5
    move-object v8, p1

    .line 65
    :goto_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    .line 66
    if-nez p0, :cond_6

    .line 68
    move-object v9, v0

    .line 70
    goto :goto_6

    .line 71
    :cond_6
    move-object v9, p0

    .line 72
    :goto_6
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/RecordingCanvas;->drawRoundRect(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    .line 73
    goto/16 :goto_b

    .line 76
    :cond_7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 78
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 82
    move-result p1

    .line 85
    int-to-float p1, p1

    .line 86
    const/high16 v1, 0x40000000    # 2.0f

    .line 87
    div-float/2addr p1, v1

    .line 89
    invoke-static {p1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 90
    move-result-object p1

    .line 93
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 94
    move-result-object v3

    .line 97
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 98
    move-result v3

    .line 101
    int-to-float v3, v3

    .line 102
    div-float/2addr v3, v1

    .line 103
    invoke-static {v3}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 104
    move-result-object v1

    .line 107
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 108
    move-result-object v3

    .line 111
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 112
    move-result v3

    .line 115
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 116
    move-result-object v4

    .line 119
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 120
    move-result v4

    .line 123
    if-le v3, v4, :cond_8

    .line 124
    move v3, v4

    .line 126
    :cond_8
    const/high16 v4, 0x3f800000    # 1.0f

    .line 127
    int-to-float v3, v3

    .line 129
    mul-float/2addr v3, v4

    .line 130
    const/4 v4, 0x2

    .line 131
    int-to-float v4, v4

    .line 132
    div-float/2addr v3, v4

    .line 133
    invoke-static {v3}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 134
    move-result-object v3

    .line 137
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    .line 138
    if-nez p0, :cond_9

    .line 140
    goto :goto_7

    .line 142
    :cond_9
    move-object v0, p0

    .line 143
    :goto_7
    invoke-virtual {v2, p1, v1, v3, v0}, Landroid/graphics/RecordingCanvas;->drawCircle(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    .line 144
    goto/16 :goto_b

    .line 147
    :cond_a
    iget v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mGlowAlpha:F

    .line 149
    const/4 v2, 0x0

    .line 151
    cmpl-float v0, v0, v2

    .line 152
    if-lez v0, :cond_11

    .line 154
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->getRipplePaint()Landroid/graphics/Paint;

    .line 156
    move-result-object v0

    .line 159
    iget v2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mGlowAlpha:F

    .line 160
    const/high16 v3, 0x437f0000    # 255.0f

    .line 162
    mul-float/2addr v2, v3

    .line 164
    float-to-int v2, v2

    .line 165
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 166
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 169
    move-result-object v2

    .line 172
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 173
    move-result v2

    .line 176
    int-to-float v2, v2

    .line 177
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 178
    move-result-object v3

    .line 181
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 182
    move-result v3

    .line 185
    int-to-float v3, v3

    .line 186
    cmpl-float v4, v2, v3

    .line 187
    if-lez v4, :cond_b

    .line 189
    const/4 v4, 0x1

    .line 191
    goto :goto_8

    .line 192
    :cond_b
    const/4 v4, 0x0

    .line 193
    :goto_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->getRippleSize()I

    .line 194
    move-result v5

    .line 197
    int-to-float v5, v5

    .line 198
    iget v6, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mGlowScale:F

    .line 199
    mul-float/2addr v5, v6

    .line 201
    const/high16 v6, 0x3f000000    # 0.5f

    .line 202
    mul-float/2addr v5, v6

    .line 204
    mul-float/2addr v2, v6

    .line 205
    mul-float/2addr v3, v6

    .line 206
    if-eqz v4, :cond_c

    .line 207
    move v6, v5

    .line 209
    goto :goto_9

    .line 210
    :cond_c
    move v6, v2

    .line 211
    :goto_9
    if-eqz v4, :cond_d

    .line 212
    move v5, v3

    .line 214
    :cond_d
    if-eqz v4, :cond_e

    .line 215
    move v8, v3

    .line 217
    goto :goto_a

    .line 218
    :cond_e
    move v8, v2

    .line 219
    :goto_a
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mType:Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$Type;

    .line 220
    if-ne p0, v1, :cond_f

    .line 222
    sub-float p0, v2, v6

    .line 224
    sub-float v4, v3, v5

    .line 226
    add-float v1, v6, v2

    .line 228
    add-float v6, v3, v5

    .line 230
    move-object v2, p1

    .line 232
    move v3, p0

    .line 233
    move v5, v1

    .line 234
    move v7, v8

    .line 235
    move-object v9, v0

    .line 236
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 237
    goto :goto_b

    .line 240
    :cond_f
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 241
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 244
    cmpl-float p0, v6, v5

    .line 247
    if-lez p0, :cond_10

    .line 249
    move v6, v5

    .line 251
    :cond_10
    neg-float v4, v6

    .line 252
    move-object v2, p1

    .line 253
    move v3, v4

    .line 254
    move v5, v6

    .line 255
    move-object v7, v0

    .line 256
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 257
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 260
    :cond_11
    :goto_b
    return-void
    .line 263
.end method

.method public final endAnimations(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "KeyButtonRipple.endAnim: reason="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    const-string p1, " cancel="

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 23
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 24
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 27
    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mVisible:Z

    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    .line 33
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 42
    move-result v0

    .line 45
    :goto_0
    if-ge p1, v0, :cond_1

    .line 46
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    .line 48
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object v1

    .line 53
    check-cast v1, Landroid/animation/Animator;

    .line 54
    if-eqz p2, :cond_0

    .line 56
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 58
    goto :goto_1

    .line 61
    :cond_0
    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    .line 62
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 65
    goto :goto_0

    .line 67
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    .line 68
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 70
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    .line 73
    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 75
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mHandler:Landroid/os/Handler;

    .line 78
    const/4 p1, 0x0

    .line 80
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 81
    return-void
    .line 84
.end method

.method public final enterHardware()V
    .locals 10

    .line 1
    const-string v0, "enterHardware"

    .line 2
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->endAnimations(Ljava/lang/String;Z)V

    .line 5
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mVisible:Z

    .line 8
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mDrawingHardwareGlow:Z

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->getExtendSize()I

    .line 12
    move-result v0

    .line 15
    int-to-float v0, v0

    .line 16
    const/high16 v1, 0x40000000    # 2.0f

    .line 17
    div-float/2addr v0, v1

    .line 19
    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 20
    move-result-object v0

    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->isHorizontal()Z

    .line 24
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mLeftProp:Landroid/graphics/CanvasProperty;

    .line 30
    goto :goto_0

    .line 32
    :cond_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mTopProp:Landroid/graphics/CanvasProperty;

    .line 33
    :goto_0
    new-instance v0, Landroid/view/RenderNodeAnimator;

    .line 35
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->getExtendStart()Landroid/graphics/CanvasProperty;

    .line 37
    move-result-object v2

    .line 40
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->getExtendSize()I

    .line 41
    move-result v3

    .line 44
    const/4 v4, 0x2

    .line 45
    div-int/2addr v3, v4

    .line 46
    int-to-float v3, v3

    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->getRippleSize()I

    .line 48
    move-result v5

    .line 51
    int-to-float v5, v5

    .line 52
    const v6, 0x3faccccd    # 1.35f

    .line 53
    mul-float/2addr v5, v6

    .line 56
    int-to-float v7, v4

    .line 57
    div-float/2addr v5, v7

    .line 58
    sub-float/2addr v3, v5

    .line 59
    invoke-direct {v0, v2, v3}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 60
    const-wide/16 v2, 0x15e

    .line 63
    invoke-virtual {v0, v2, v3}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    .line 65
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mInterpolator:Lcom/android/systemui/statusbar/phone/LogInterpolator;

    .line 68
    invoke-virtual {v0, v5}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 70
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mAnimatorListener:Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$mAnimatorListener$1;

    .line 73
    invoke-virtual {v0, v5}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 75
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mTargetView:Landroid/view/View;

    .line 78
    invoke-virtual {v0, v5}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->getExtendSize()I

    .line 83
    move-result v5

    .line 86
    int-to-float v5, v5

    .line 87
    div-float/2addr v5, v1

    .line 88
    invoke-static {v5}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 89
    move-result-object v5

    .line 92
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->isHorizontal()Z

    .line 93
    move-result v8

    .line 96
    if-eqz v8, :cond_1

    .line 97
    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRightProp:Landroid/graphics/CanvasProperty;

    .line 99
    goto :goto_1

    .line 101
    :cond_1
    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mBottomProp:Landroid/graphics/CanvasProperty;

    .line 102
    :goto_1
    new-instance v5, Landroid/view/RenderNodeAnimator;

    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->getExtendEnd()Landroid/graphics/CanvasProperty;

    .line 106
    move-result-object v8

    .line 109
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->getExtendSize()I

    .line 110
    move-result v9

    .line 113
    div-int/2addr v9, v4

    .line 114
    int-to-float v4, v9

    .line 115
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->getRippleSize()I

    .line 116
    move-result v9

    .line 119
    int-to-float v9, v9

    .line 120
    invoke-static {v9, v6, v7, v4}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m$1(FFFF)F

    .line 121
    move-result v4

    .line 124
    invoke-direct {v5, v8, v4}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 125
    invoke-virtual {v5, v2, v3}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    .line 128
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mInterpolator:Lcom/android/systemui/statusbar/phone/LogInterpolator;

    .line 131
    invoke-virtual {v5, v2}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 133
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mAnimatorListener:Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$mAnimatorListener$1;

    .line 136
    invoke-virtual {v5, v2}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 138
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mEnterHwTraceAnimator:Lcom/android/systemui/statusbar/phone/TraceAnimatorListener;

    .line 141
    invoke-virtual {v5, v2}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 143
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mTargetView:Landroid/view/View;

    .line 146
    invoke-virtual {v5, v2}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 148
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->isHorizontal()Z

    .line 151
    move-result v2

    .line 154
    const/4 v3, 0x0

    .line 155
    if-eqz v2, :cond_2

    .line 156
    invoke-static {v3}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 158
    move-result-object v2

    .line 161
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mTopProp:Landroid/graphics/CanvasProperty;

    .line 162
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 164
    move-result-object v2

    .line 167
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 168
    move-result v2

    .line 171
    int-to-float v2, v2

    .line 172
    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 173
    move-result-object v2

    .line 176
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mBottomProp:Landroid/graphics/CanvasProperty;

    .line 177
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 179
    move-result-object v2

    .line 182
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 183
    move-result v2

    .line 186
    int-to-float v2, v2

    .line 187
    div-float/2addr v2, v1

    .line 188
    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 189
    move-result-object v2

    .line 192
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRxProp:Landroid/graphics/CanvasProperty;

    .line 193
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 195
    move-result-object v2

    .line 198
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 199
    move-result v2

    .line 202
    int-to-float v2, v2

    .line 203
    div-float/2addr v2, v1

    .line 204
    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 205
    move-result-object v1

    .line 208
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRyProp:Landroid/graphics/CanvasProperty;

    .line 209
    goto :goto_2

    .line 211
    :cond_2
    invoke-static {v3}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 212
    move-result-object v2

    .line 215
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mLeftProp:Landroid/graphics/CanvasProperty;

    .line 216
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 218
    move-result-object v2

    .line 221
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 222
    move-result v2

    .line 225
    int-to-float v2, v2

    .line 226
    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 227
    move-result-object v2

    .line 230
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRightProp:Landroid/graphics/CanvasProperty;

    .line 231
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 233
    move-result-object v2

    .line 236
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 237
    move-result v2

    .line 240
    int-to-float v2, v2

    .line 241
    div-float/2addr v2, v1

    .line 242
    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 243
    move-result-object v2

    .line 246
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRxProp:Landroid/graphics/CanvasProperty;

    .line 247
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 249
    move-result-object v2

    .line 252
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 253
    move-result v2

    .line 256
    int-to-float v2, v2

    .line 257
    div-float/2addr v2, v1

    .line 258
    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 259
    move-result-object v1

    .line 262
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRyProp:Landroid/graphics/CanvasProperty;

    .line 263
    :goto_2
    iput v6, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mGlowScale:F

    .line 265
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mLastDark:Z

    .line 267
    if-eqz v1, :cond_3

    .line 269
    const v1, 0x3dcccccd    # 0.1f

    .line 271
    goto :goto_3

    .line 274
    :cond_3
    const/high16 v1, 0x3e800000    # 0.25f

    .line 275
    :goto_3
    iput v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mGlowAlpha:F

    .line 277
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->getRipplePaint()Landroid/graphics/Paint;

    .line 279
    move-result-object v1

    .line 282
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    .line 283
    iget v2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mGlowAlpha:F

    .line 285
    const/16 v3, 0xff

    .line 287
    int-to-float v3, v3

    .line 289
    mul-float/2addr v2, v3

    .line 290
    float-to-int v2, v2

    .line 291
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 292
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    .line 295
    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    .line 297
    move-result-object v1

    .line 300
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    .line 301
    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    .line 303
    invoke-virtual {v5}, Landroid/view/RenderNodeAnimator;->start()V

    .line 306
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    .line 309
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 311
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    .line 314
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 316
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 319
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mDelayTouchFeedback:Z

    .line 322
    if-eqz v0, :cond_4

    .line 324
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mPressed:Z

    .line 326
    if-nez v0, :cond_4

    .line 328
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->exitHardware()V

    .line 330
    :cond_4
    return-void
    .line 333
.end method

.method public final enterSoftware()V
    .locals 3

    .line 1
    const-string v0, "enterSoftware"

    .line 2
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->endAnimations(Ljava/lang/String;Z)V

    .line 5
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mVisible:Z

    .line 8
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mLastDark:Z

    .line 10
    if-eqz v0, :cond_0

    .line 12
    const v0, 0x3dcccccd    # 0.1f

    .line 14
    goto :goto_0

    .line 17
    :cond_0
    const/high16 v0, 0x3e800000    # 0.25f

    .line 18
    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mGlowAlpha:F

    .line 20
    const/4 v0, 0x2

    .line 22
    new-array v0, v0, [F

    .line 23
    fill-array-data v0, :array_0

    .line 25
    const-string v1, "glowScale"

    .line 28
    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 30
    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mInterpolator:Lcom/android/systemui/statusbar/phone/LogInterpolator;

    .line 34
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 36
    const-wide/16 v1, 0x15e

    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 41
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mAnimatorListener:Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$mAnimatorListener$1;

    .line 44
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 46
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 49
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    .line 52
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 54
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mDelayTouchFeedback:Z

    .line 57
    if-eqz v0, :cond_1

    .line 59
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mPressed:Z

    .line 61
    if-nez v0, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->exitSoftware()V

    .line 65
    :cond_1
    return-void

    .line 68
    nop

    .line 69
    :array_0
    .array-data 4
        0x0
        0x3faccccd    # 1.35f
    .end array-data
.end method

.method public final exitHardware()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->getRipplePaint()Landroid/graphics/Paint;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    .line 6
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    .line 10
    new-instance v0, Landroid/view/RenderNodeAnimator;

    .line 12
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    .line 14
    if-nez v1, :cond_0

    .line 16
    const/4 v1, 0x0

    .line 18
    :cond_0
    const/4 v2, 0x1

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-direct {v0, v1, v2, v3}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    .line 21
    const-wide/16 v1, 0x1c2

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    .line 26
    sget-object v1, Lcom/android/app/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 31
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mAnimatorListener:Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$mAnimatorListener$1;

    .line 34
    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 36
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mExitHwTraceAnimator:Lcom/android/systemui/statusbar/phone/TraceAnimatorListener;

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 41
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mTargetView:Landroid/view/View;

    .line 44
    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 46
    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    .line 49
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    .line 52
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 57
    return-void
    .line 60
.end method

.method public final exitSoftware()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 3
    const/4 v1, 0x0

    .line 5
    iget v2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mGlowAlpha:F

    .line 6
    aput v2, v0, v1

    .line 8
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput v2, v0, v1

    .line 12
    const-string v1, "glowAlpha"

    .line 14
    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 16
    move-result-object v0

    .line 19
    sget-object v1, Lcom/android/app/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 20
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 22
    const-wide/16 v1, 0x1c2

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 27
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mAnimatorListener:Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$mAnimatorListener$1;

    .line 30
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 32
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 35
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    .line 38
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    return-void
    .line 43
.end method

.method public final gestureSlideEffect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mStartRect:Landroid/graphics/Rect;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mEndRect:Landroid/graphics/Rect;

    .line 4
    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 6
    iget p2, p2, Landroid/graphics/Rect;->left:I

    .line 8
    const/4 v0, 0x2

    .line 10
    const/4 v1, 0x1

    .line 11
    const v2, 0x3eb33333    # 0.35f

    .line 12
    const/4 v3, 0x0

    .line 15
    if-ge p1, p2, :cond_a

    .line 16
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mSlideToRight:Z

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->getRippleSize()I

    .line 20
    move-result p1

    .line 23
    int-to-float p1, p1

    .line 24
    const p2, -0x414ccccd    # -0.35f

    .line 25
    mul-float/2addr p1, p2

    .line 28
    int-to-float v0, v0

    .line 29
    div-float/2addr p1, v0

    .line 30
    iput p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mFirstLeftEnd:F

    .line 31
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mStartRect:Landroid/graphics/Rect;

    .line 33
    if-nez p1, :cond_0

    .line 35
    move-object v4, v3

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move-object v4, p1

    .line 39
    :goto_0
    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 40
    int-to-float v4, v4

    .line 42
    if-nez p1, :cond_1

    .line 43
    move-object v5, v3

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    move-object v5, p1

    .line 47
    :goto_1
    iget v5, v5, Landroid/graphics/Rect;->left:I

    .line 48
    int-to-float v5, v5

    .line 50
    sub-float/2addr v4, v5

    .line 51
    iput v4, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mFirstRightStart:F

    .line 52
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mEndRect:Landroid/graphics/Rect;

    .line 54
    if-nez v4, :cond_2

    .line 56
    move-object v4, v3

    .line 58
    :cond_2
    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 59
    if-nez p1, :cond_3

    .line 61
    move-object p1, v3

    .line 63
    :cond_3
    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 64
    sub-int/2addr v4, p1

    .line 66
    int-to-float p1, v4

    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->getRippleSize()I

    .line 68
    move-result v4

    .line 71
    int-to-float v4, v4

    .line 72
    invoke-static {v4, v2, v0, p1}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m$1(FFFF)F

    .line 73
    move-result p1

    .line 76
    iput p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mFirstRightEnd:F

    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->getRippleSize()I

    .line 79
    move-result p1

    .line 82
    int-to-float p1, p1

    .line 83
    mul-float/2addr p1, p2

    .line 84
    div-float/2addr p1, v0

    .line 85
    iput p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mSecondLeftStart:F

    .line 86
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mEndRect:Landroid/graphics/Rect;

    .line 88
    if-nez p1, :cond_4

    .line 90
    move-object p1, v3

    .line 92
    :cond_4
    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 93
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mStartRect:Landroid/graphics/Rect;

    .line 95
    if-nez p2, :cond_5

    .line 97
    move-object p2, v3

    .line 99
    :cond_5
    iget p2, p2, Landroid/graphics/Rect;->left:I

    .line 100
    sub-int/2addr p1, p2

    .line 102
    int-to-float p1, p1

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->getRippleSize()I

    .line 104
    move-result p2

    .line 107
    int-to-float p2, p2

    .line 108
    invoke-static {p2, v2, v0, p1}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 109
    move-result p1

    .line 112
    iput p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mSecondLeftEnd:F

    .line 113
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mEndRect:Landroid/graphics/Rect;

    .line 115
    if-nez p1, :cond_6

    .line 117
    move-object p1, v3

    .line 119
    :cond_6
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 120
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mStartRect:Landroid/graphics/Rect;

    .line 122
    if-nez p2, :cond_7

    .line 124
    move-object p2, v3

    .line 126
    :cond_7
    iget p2, p2, Landroid/graphics/Rect;->left:I

    .line 127
    sub-int/2addr p1, p2

    .line 129
    int-to-float p1, p1

    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->getRippleSize()I

    .line 131
    move-result p2

    .line 134
    int-to-float p2, p2

    .line 135
    invoke-static {p2, v2, v0, p1}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m$1(FFFF)F

    .line 136
    move-result p1

    .line 139
    iput p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mSecondRightStart:F

    .line 140
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mEndRect:Landroid/graphics/Rect;

    .line 142
    if-nez p1, :cond_8

    .line 144
    move-object p1, v3

    .line 146
    :cond_8
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 147
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mStartRect:Landroid/graphics/Rect;

    .line 149
    if-nez p2, :cond_9

    .line 151
    goto :goto_2

    .line 153
    :cond_9
    move-object v3, p2

    .line 154
    :goto_2
    iget p2, v3, Landroid/graphics/Rect;->left:I

    .line 155
    sub-int/2addr p1, p2

    .line 157
    int-to-float p1, p1

    .line 158
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->getRippleSize()I

    .line 159
    move-result p2

    .line 162
    int-to-float p2, p2

    .line 163
    invoke-static {p2, v2, v0, p1}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m$1(FFFF)F

    .line 164
    move-result p1

    .line 167
    iput p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mSecondRightEnd:F

    .line 168
    goto/16 :goto_8

    .line 170
    :cond_a
    const/4 v4, 0x0

    .line 172
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mSlideToRight:Z

    .line 173
    sub-int/2addr p2, p1

    .line 175
    int-to-float p1, p2

    .line 176
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->getRippleSize()I

    .line 177
    move-result p2

    .line 180
    int-to-float p2, p2

    .line 181
    mul-float/2addr p2, v2

    .line 182
    int-to-float v0, v0

    .line 183
    div-float/2addr p2, v0

    .line 184
    sub-float/2addr p1, p2

    .line 185
    iput p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mFirstLeftEnd:F

    .line 186
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mStartRect:Landroid/graphics/Rect;

    .line 188
    if-nez p1, :cond_b

    .line 190
    move-object p2, v3

    .line 192
    goto :goto_3

    .line 193
    :cond_b
    move-object p2, p1

    .line 194
    :goto_3
    iget p2, p2, Landroid/graphics/Rect;->right:I

    .line 195
    int-to-float p2, p2

    .line 197
    if-nez p1, :cond_c

    .line 198
    move-object v4, v3

    .line 200
    goto :goto_4

    .line 201
    :cond_c
    move-object v4, p1

    .line 202
    :goto_4
    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 203
    int-to-float v4, v4

    .line 205
    sub-float/2addr p2, v4

    .line 206
    iput p2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mFirstRightStart:F

    .line 207
    if-nez p1, :cond_d

    .line 209
    move-object p2, v3

    .line 211
    goto :goto_5

    .line 212
    :cond_d
    move-object p2, p1

    .line 213
    :goto_5
    iget p2, p2, Landroid/graphics/Rect;->right:I

    .line 214
    if-nez p1, :cond_e

    .line 216
    move-object p1, v3

    .line 218
    :cond_e
    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 219
    sub-int/2addr p2, p1

    .line 221
    int-to-float p1, p2

    .line 222
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->getRippleSize()I

    .line 223
    move-result p2

    .line 226
    int-to-float p2, p2

    .line 227
    invoke-static {p2, v2, v0, p1}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m$1(FFFF)F

    .line 228
    move-result p1

    .line 231
    iput p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mFirstRightEnd:F

    .line 232
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mEndRect:Landroid/graphics/Rect;

    .line 234
    if-nez p1, :cond_f

    .line 236
    move-object p1, v3

    .line 238
    :cond_f
    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 239
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mStartRect:Landroid/graphics/Rect;

    .line 241
    if-nez p2, :cond_10

    .line 243
    move-object p2, v3

    .line 245
    :cond_10
    iget p2, p2, Landroid/graphics/Rect;->left:I

    .line 246
    sub-int/2addr p1, p2

    .line 248
    int-to-float p1, p1

    .line 249
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->getRippleSize()I

    .line 250
    move-result p2

    .line 253
    int-to-float p2, p2

    .line 254
    invoke-static {p2, v2, v0, p1}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 255
    move-result p1

    .line 258
    iput p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mSecondLeftStart:F

    .line 259
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mEndRect:Landroid/graphics/Rect;

    .line 261
    if-nez p1, :cond_11

    .line 263
    move-object p1, v3

    .line 265
    :cond_11
    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 266
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mStartRect:Landroid/graphics/Rect;

    .line 268
    if-nez p2, :cond_12

    .line 270
    move-object p2, v3

    .line 272
    :cond_12
    iget p2, p2, Landroid/graphics/Rect;->left:I

    .line 273
    sub-int/2addr p1, p2

    .line 275
    int-to-float p1, p1

    .line 276
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->getRippleSize()I

    .line 277
    move-result p2

    .line 280
    int-to-float p2, p2

    .line 281
    invoke-static {p2, v2, v0, p1}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 282
    move-result p1

    .line 285
    iput p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mSecondLeftEnd:F

    .line 286
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mStartRect:Landroid/graphics/Rect;

    .line 288
    if-nez p1, :cond_13

    .line 290
    move-object p2, v3

    .line 292
    goto :goto_6

    .line 293
    :cond_13
    move-object p2, p1

    .line 294
    :goto_6
    iget p2, p2, Landroid/graphics/Rect;->right:I

    .line 295
    if-nez p1, :cond_14

    .line 297
    move-object p1, v3

    .line 299
    :cond_14
    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 300
    sub-int/2addr p2, p1

    .line 302
    int-to-float p1, p2

    .line 303
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->getRippleSize()I

    .line 304
    move-result p2

    .line 307
    int-to-float p2, p2

    .line 308
    invoke-static {p2, v2, v0, p1}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m$1(FFFF)F

    .line 309
    move-result p1

    .line 312
    iput p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mSecondRightStart:F

    .line 313
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mEndRect:Landroid/graphics/Rect;

    .line 315
    if-nez p1, :cond_15

    .line 317
    move-object p1, v3

    .line 319
    :cond_15
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 320
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mStartRect:Landroid/graphics/Rect;

    .line 322
    if-nez p2, :cond_16

    .line 324
    goto :goto_7

    .line 326
    :cond_16
    move-object v3, p2

    .line 327
    :goto_7
    iget p2, v3, Landroid/graphics/Rect;->left:I

    .line 328
    sub-int/2addr p1, p2

    .line 330
    int-to-float p1, p1

    .line 331
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->getRippleSize()I

    .line 332
    move-result p2

    .line 335
    int-to-float p2, p2

    .line 336
    invoke-static {p2, v2, v0, p1}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m$1(FFFF)F

    .line 337
    move-result p1

    .line 340
    iput p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mSecondRightEnd:F

    .line 341
    :goto_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->cancelAnimations()V

    .line 343
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mDrawingHardwareGlow:Z

    .line 346
    const/4 p1, 0x0

    .line 348
    invoke-static {p1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 349
    move-result-object p2

    .line 352
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->isHorizontal()Z

    .line 353
    move-result v0

    .line 356
    if-eqz v0, :cond_17

    .line 357
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mLeftProp:Landroid/graphics/CanvasProperty;

    .line 359
    goto :goto_9

    .line 361
    :cond_17
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mTopProp:Landroid/graphics/CanvasProperty;

    .line 362
    :goto_9
    new-instance p2, Landroid/view/RenderNodeAnimator;

    .line 364
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->getExtendStart()Landroid/graphics/CanvasProperty;

    .line 366
    move-result-object v0

    .line 369
    iget v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mFirstLeftEnd:F

    .line 370
    invoke-direct {p2, v0, v1}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 372
    const-wide/16 v0, 0xfa

    .line 375
    invoke-virtual {p2, v0, v1}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    .line 377
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mSineInterpolator:Lcom/android/systemui/statusbar/phone/SineInterpolator;

    .line 380
    invoke-virtual {p2, v2}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 382
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mSlideToRight:Z

    .line 385
    if-eqz v2, :cond_18

    .line 387
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mAnimatorListener:Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$mAnimatorListener$1;

    .line 389
    goto :goto_a

    .line 391
    :cond_18
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mSlideAnimatorListener:Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$mAnimatorListener$1;

    .line 392
    :goto_a
    invoke-virtual {p2, v2}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 394
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mTargetView:Landroid/view/View;

    .line 397
    invoke-virtual {p2, v2}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 399
    iget v2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mFirstRightStart:F

    .line 402
    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 404
    move-result-object v2

    .line 407
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->isHorizontal()Z

    .line 408
    move-result v3

    .line 411
    if-eqz v3, :cond_19

    .line 412
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRightProp:Landroid/graphics/CanvasProperty;

    .line 414
    goto :goto_b

    .line 416
    :cond_19
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mBottomProp:Landroid/graphics/CanvasProperty;

    .line 417
    :goto_b
    new-instance v2, Landroid/view/RenderNodeAnimator;

    .line 419
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->getExtendEnd()Landroid/graphics/CanvasProperty;

    .line 421
    move-result-object v3

    .line 424
    iget v4, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mFirstRightEnd:F

    .line 425
    invoke-direct {v2, v3, v4}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 427
    invoke-virtual {v2, v0, v1}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    .line 430
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mSineInterpolator:Lcom/android/systemui/statusbar/phone/SineInterpolator;

    .line 433
    invoke-virtual {v2, v0}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 435
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mSlideToRight:Z

    .line 438
    if-eqz v0, :cond_1a

    .line 440
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mSlideAnimatorListener:Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$mAnimatorListener$1;

    .line 442
    goto :goto_c

    .line 444
    :cond_1a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mAnimatorListener:Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$mAnimatorListener$1;

    .line 445
    :goto_c
    invoke-virtual {v2, v0}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 447
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mTargetView:Landroid/view/View;

    .line 450
    invoke-virtual {v2, v0}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 452
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->isHorizontal()Z

    .line 455
    move-result v0

    .line 458
    const/high16 v1, 0x40000000    # 2.0f

    .line 459
    if-eqz v0, :cond_1b

    .line 461
    invoke-static {p1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 463
    move-result-object p1

    .line 466
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mTopProp:Landroid/graphics/CanvasProperty;

    .line 467
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 469
    move-result-object p1

    .line 472
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 473
    move-result p1

    .line 476
    int-to-float p1, p1

    .line 477
    invoke-static {p1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 478
    move-result-object p1

    .line 481
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mBottomProp:Landroid/graphics/CanvasProperty;

    .line 482
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 484
    move-result-object p1

    .line 487
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 488
    move-result p1

    .line 491
    int-to-float p1, p1

    .line 492
    div-float/2addr p1, v1

    .line 493
    invoke-static {p1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 494
    move-result-object p1

    .line 497
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRxProp:Landroid/graphics/CanvasProperty;

    .line 498
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 500
    move-result-object p1

    .line 503
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 504
    move-result p1

    .line 507
    int-to-float p1, p1

    .line 508
    div-float/2addr p1, v1

    .line 509
    invoke-static {p1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 510
    move-result-object p1

    .line 513
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRyProp:Landroid/graphics/CanvasProperty;

    .line 514
    goto :goto_d

    .line 516
    :cond_1b
    invoke-static {p1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 517
    move-result-object p1

    .line 520
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mLeftProp:Landroid/graphics/CanvasProperty;

    .line 521
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 523
    move-result-object p1

    .line 526
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 527
    move-result p1

    .line 530
    int-to-float p1, p1

    .line 531
    invoke-static {p1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 532
    move-result-object p1

    .line 535
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRightProp:Landroid/graphics/CanvasProperty;

    .line 536
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 538
    move-result-object p1

    .line 541
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 542
    move-result p1

    .line 545
    int-to-float p1, p1

    .line 546
    div-float/2addr p1, v1

    .line 547
    invoke-static {p1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 548
    move-result-object p1

    .line 551
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRxProp:Landroid/graphics/CanvasProperty;

    .line 552
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 554
    move-result-object p1

    .line 557
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 558
    move-result p1

    .line 561
    int-to-float p1, p1

    .line 562
    div-float/2addr p1, v1

    .line 563
    invoke-static {p1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    .line 564
    move-result-object p1

    .line 567
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRyProp:Landroid/graphics/CanvasProperty;

    .line 568
    :goto_d
    const p1, 0x3faccccd    # 1.35f

    .line 570
    iput p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mGlowScale:F

    .line 573
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->getRipplePaint()Landroid/graphics/Paint;

    .line 575
    move-result-object p1

    .line 578
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    .line 579
    iget v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mGlowAlpha:F

    .line 581
    const/16 v1, 0xff

    .line 583
    int-to-float v1, v1

    .line 585
    mul-float/2addr v0, v1

    .line 586
    float-to-int v0, v0

    .line 587
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 588
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    .line 591
    invoke-static {p1}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    .line 593
    move-result-object p1

    .line 596
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    .line 597
    invoke-virtual {p2}, Landroid/view/RenderNodeAnimator;->start()V

    .line 599
    invoke-virtual {v2}, Landroid/view/RenderNodeAnimator;->start()V

    .line 602
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    .line 605
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 607
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    .line 610
    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 612
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 615
    return-void
    .line 618
.end method

.method public final getExtendEnd()Landroid/graphics/CanvasProperty;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->isHorizontal()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRightProp:Landroid/graphics/CanvasProperty;

    .line 9
    if-nez p0, :cond_1

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mBottomProp:Landroid/graphics/CanvasProperty;

    .line 14
    if-nez p0, :cond_1

    .line 16
    goto :goto_0

    .line 18
    :cond_1
    move-object v1, p0

    .line 19
    :goto_0
    return-object v1
    .line 20
.end method

.method public final getExtendSize()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->isHorizontal()Z

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

.method public final getExtendStart()Landroid/graphics/CanvasProperty;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->isHorizontal()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mLeftProp:Landroid/graphics/CanvasProperty;

    .line 9
    if-nez p0, :cond_1

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mTopProp:Landroid/graphics/CanvasProperty;

    .line 14
    if-nez p0, :cond_1

    .line 16
    goto :goto_0

    .line 18
    :cond_1
    move-object v1, p0

    .line 19
    :goto_0
    return-object v1
    .line 20
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
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    .line 2
    if-nez v0, :cond_1

    .line 4
    new-instance v0, Landroid/graphics/Paint;

    .line 6
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    .line 11
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 14
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    .line 17
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 19
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mLastDark:Z

    .line 22
    if-eqz v1, :cond_0

    .line 24
    const/high16 v1, -0x1000000

    .line 26
    goto :goto_0

    .line 28
    :cond_0
    const/4 v1, -0x1

    .line 29
    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    .line 33
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 35
    return-object p0
    .line 38
.end method

.method public final getRippleSize()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->isHorizontal()Z

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
    iget p0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mMaxWidth:I

    .line 25
    if-le v0, p0, :cond_1

    .line 27
    move v0, p0

    .line 29
    :cond_1
    return v0
    .line 30
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
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->endAnimations(Ljava/lang/String;Z)V

    .line 5
    return-void
    .line 8
.end method

.method public final onStateChange([I)Z
    .locals 6

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    const/4 v3, 0x1

    .line 5
    if-ge v2, v0, :cond_1

    .line 6
    aget v4, p1, v2

    .line 8
    const v5, 0x10100a7    # @android:attr/state_pressed

    .line 10
    if-ne v4, v5, :cond_0

    .line 13
    move p1, v3

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 17
    goto :goto_0

    .line 19
    :cond_1
    move p1, v1

    .line 20
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mPressed:Z

    .line 21
    if-eq p1, v0, :cond_b

    .line 23
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mDark:Z

    .line 25
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mLastDark:Z

    .line 27
    const/4 v4, 0x0

    .line 29
    if-eq v0, v2, :cond_2

    .line 30
    if-eqz p1, :cond_2

    .line 32
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    .line 34
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mLastDark:Z

    .line 36
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mSupportHardware:Z

    .line 38
    if-eqz v0, :cond_6

    .line 40
    if-eqz p1, :cond_5

    .line 42
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mDelayTouchFeedback:Z

    .line 44
    if-eqz v0, :cond_4

    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    .line 48
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 50
    move-result v0

    .line 53
    if-eqz v0, :cond_3

    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mHandler:Landroid/os/Handler;

    .line 56
    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mHandler:Landroid/os/Handler;

    .line 61
    new-instance v2, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$setPressedHardware$1;

    .line 63
    invoke-direct {v2, p0, v1}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$setPressedHardware$1;-><init>(Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;I)V

    .line 65
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    .line 68
    move-result v1

    .line 71
    int-to-long v4, v1

    .line 72
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    goto :goto_2

    .line 76
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mVisible:Z

    .line 77
    if-eqz v0, :cond_a

    .line 79
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->enterHardware()V

    .line 81
    goto :goto_2

    .line 84
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->enterHardware()V

    .line 85
    goto :goto_2

    .line 88
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->exitHardware()V

    .line 89
    goto :goto_2

    .line 92
    :cond_6
    if-eqz p1, :cond_9

    .line 93
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mDelayTouchFeedback:Z

    .line 95
    if-eqz v0, :cond_8

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    .line 99
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 101
    move-result v0

    .line 104
    if-eqz v0, :cond_7

    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mHandler:Landroid/os/Handler;

    .line 107
    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mHandler:Landroid/os/Handler;

    .line 112
    new-instance v1, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$setPressedHardware$1;

    .line 114
    invoke-direct {v1, p0, v3}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$setPressedHardware$1;-><init>(Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;I)V

    .line 116
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    .line 119
    move-result v2

    .line 122
    int-to-long v4, v2

    .line 123
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 124
    goto :goto_2

    .line 127
    :cond_7
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mVisible:Z

    .line 128
    if-eqz v0, :cond_a

    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->enterSoftware()V

    .line 132
    goto :goto_2

    .line 135
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->enterSoftware()V

    .line 136
    goto :goto_2

    .line 139
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->exitSoftware()V

    .line 140
    :cond_a
    :goto_2
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->mPressed:Z

    .line 143
    move v1, v3

    .line 145
    :cond_b
    return v1
    .line 146
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

.method public final setVisible(ZZ)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 2
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple;->jumpToCurrentState()V

    .line 8
    :cond_0
    return p1
    .line 11
.end method
