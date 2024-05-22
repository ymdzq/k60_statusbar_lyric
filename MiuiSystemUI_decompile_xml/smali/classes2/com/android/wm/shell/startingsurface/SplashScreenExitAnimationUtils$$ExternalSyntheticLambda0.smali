.class public final synthetic Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/view/ViewGroup;

.field public final synthetic f$3:F

.field public final synthetic f$4:F

.field public final synthetic f$5:I

.field public final synthetic f$6:I

.field public final synthetic f$7:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;

.field public final synthetic f$8:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;


# direct methods
.method public synthetic constructor <init>(IILandroid/view/ViewGroup;FFIILcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda0;->f$0:I

    .line 5
    iput p2, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    iput-object p3, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda0;->f$2:Landroid/view/ViewGroup;

    .line 9
    iput p4, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda0;->f$3:F

    .line 11
    iput p5, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda0;->f$4:F

    .line 13
    iput p6, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda0;->f$5:I

    .line 15
    iput p7, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda0;->f$6:I

    .line 17
    iput-object p8, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda0;->f$7:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;

    .line 19
    iput-object p9, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda0;->f$8:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;

    .line 21
    return-void
    .line 23
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda0;->f$0:I

    .line 2
    iget v1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    iget-object v2, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda0;->f$2:Landroid/view/ViewGroup;

    .line 6
    iget v3, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda0;->f$3:F

    .line 8
    iget v4, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda0;->f$4:F

    .line 10
    iget v5, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda0;->f$5:I

    .line 12
    iget v6, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda0;->f$6:I

    .line 14
    iget-object v7, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda0;->f$7:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;

    .line 16
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda0;->f$8:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;

    .line 18
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 23
    check-cast p1, Ljava/lang/Float;

    .line 24
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 26
    move-result p1

    .line 29
    sget-object v8, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils;->ICON_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 30
    int-to-long v9, v0

    .line 32
    int-to-float v0, v1

    .line 33
    mul-float/2addr p1, v0

    .line 34
    const-wide/16 v0, 0x0

    .line 35
    long-to-float v0, v0

    .line 37
    sub-float v0, p1, v0

    .line 38
    long-to-float v1, v9

    .line 40
    div-float/2addr v0, v1

    .line 41
    const/4 v1, 0x0

    .line 42
    const/high16 v9, 0x3f800000    # 1.0f

    .line 43
    invoke-static {v0, v1, v9}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 45
    move-result v0

    .line 48
    check-cast v8, Landroid/view/animation/PathInterpolator;

    .line 49
    invoke-virtual {v8, v0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 51
    move-result v0

    .line 54
    instance-of v8, v2, Landroid/window/SplashScreenView;

    .line 55
    if-eqz v8, :cond_0

    .line 57
    check-cast v2, Landroid/window/SplashScreenView;

    .line 59
    invoke-virtual {v2}, Landroid/window/SplashScreenView;->getIconView()Landroid/view/View;

    .line 61
    move-result-object v8

    .line 64
    invoke-virtual {v2}, Landroid/window/SplashScreenView;->getBrandingView()Landroid/view/View;

    .line 65
    move-result-object v2

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    const/4 v8, 0x0

    .line 70
    move-object v2, v8

    .line 71
    :goto_0
    if-eqz v8, :cond_1

    .line 72
    sub-float v10, v9, v0

    .line 74
    mul-float/2addr v10, v3

    .line 76
    invoke-virtual {v8, v10}, Landroid/view/View;->setAlpha(F)V

    .line 77
    :cond_1
    if-eqz v2, :cond_2

    .line 80
    sub-float v0, v9, v0

    .line 82
    mul-float/2addr v0, v4

    .line 84
    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 85
    :cond_2
    int-to-long v2, v5

    .line 88
    int-to-long v4, v6

    .line 89
    long-to-float v0, v2

    .line 90
    sub-float/2addr p1, v0

    .line 91
    long-to-float v0, v4

    .line 92
    div-float/2addr p1, v0

    .line 93
    invoke-static {p1, v1, v9}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 94
    move-result p1

    .line 97
    iget-object v0, v7, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;->mVanishPaint:Landroid/graphics/Paint;

    .line 98
    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    .line 100
    move-result-object v0

    .line 103
    if-nez v0, :cond_3

    .line 104
    goto :goto_1

    .line 106
    :cond_3
    sget-object v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils;->MASK_RADIUS_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 107
    check-cast v0, Landroid/view/animation/PathInterpolator;

    .line 109
    invoke-virtual {v0, p1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 111
    move-result v0

    .line 114
    sget-object v2, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 115
    check-cast v2, Landroid/view/animation/PathInterpolator;

    .line 117
    invoke-virtual {v2, p1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 119
    move-result v2

    .line 122
    iget v3, v7, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;->mInitRadius:I

    .line 123
    int-to-float v4, v3

    .line 125
    iget v5, v7, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;->mFinishRadius:I

    .line 126
    sub-int/2addr v5, v3

    .line 128
    int-to-float v3, v5

    .line 129
    mul-float/2addr v3, v0

    .line 130
    add-float/2addr v3, v4

    .line 131
    iget-object v0, v7, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;->mVanishMatrix:Landroid/graphics/Matrix;

    .line 132
    invoke-virtual {v0, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 134
    iget-object v0, v7, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;->mVanishMatrix:Landroid/graphics/Matrix;

    .line 137
    iget-object v3, v7, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;->mCircleCenter:Landroid/graphics/Point;

    .line 139
    iget v4, v3, Landroid/graphics/Point;->x:I

    .line 141
    int-to-float v4, v4

    .line 143
    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 144
    int-to-float v3, v3

    .line 146
    invoke-virtual {v0, v4, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 147
    iget-object v0, v7, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;->mVanishPaint:Landroid/graphics/Paint;

    .line 150
    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    .line 152
    move-result-object v0

    .line 155
    iget-object v3, v7, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;->mVanishMatrix:Landroid/graphics/Matrix;

    .line 156
    invoke-virtual {v0, v3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 158
    iget-object v0, v7, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;->mVanishPaint:Landroid/graphics/Paint;

    .line 161
    const/high16 v3, 0x437f0000    # 255.0f

    .line 163
    mul-float/2addr v2, v3

    .line 165
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 166
    move-result v2

    .line 169
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 170
    invoke-virtual {v7}, Landroid/view/View;->postInvalidate()V

    .line 173
    :goto_1
    if-eqz p0, :cond_5

    .line 176
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mFirstWindowSurface:Landroid/view/SurfaceControl;

    .line 178
    if-eqz v0, :cond_5

    .line 180
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 182
    move-result v2

    .line 185
    if-eqz v2, :cond_5

    .line 186
    iget-object v2, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mSplashScreenView:Landroid/view/ViewGroup;

    .line 188
    invoke-virtual {v2}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    .line 190
    move-result v2

    .line 193
    if-nez v2, :cond_4

    .line 194
    goto :goto_2

    .line 196
    :cond_4
    sget-object v2, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils;->SHIFT_UP_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 197
    check-cast v2, Landroid/view/animation/PathInterpolator;

    .line 199
    invoke-virtual {v2, p1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 201
    move-result p1

    .line 204
    iget v2, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mToYDelta:F

    .line 205
    iget v3, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mFromYDelta:F

    .line 207
    invoke-static {v2, v3, p1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 209
    move-result p1

    .line 212
    iget-object v2, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mOccludeHoleView:Landroid/view/View;

    .line 213
    invoke-virtual {v2, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 215
    iget-object v2, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mTmpTransform:Landroid/graphics/Matrix;

    .line 218
    invoke-virtual {v2, v1, p1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 220
    iget-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 223
    invoke-virtual {p1}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 225
    move-result-object v1

    .line 228
    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    .line 229
    move-result-object v3

    .line 232
    invoke-virtual {v3}, Landroid/view/Choreographer;->getVsyncId()J

    .line 233
    move-result-wide v3

    .line 236
    invoke-virtual {v1, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    .line 237
    iget-object v3, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mFirstWindowFrame:Landroid/graphics/Rect;

    .line 240
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 242
    int-to-float v4, v4

    .line 244
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 245
    iget v5, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mMainWindowShiftLength:I

    .line 247
    add-int/2addr v3, v5

    .line 249
    int-to-float v3, v3

    .line 250
    invoke-virtual {v2, v4, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 251
    new-instance v3, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    .line 254
    invoke-direct {v3, v0}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 256
    invoke-virtual {v3, v2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    .line 259
    move-result-object v0

    .line 262
    invoke-virtual {v0, v1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMergeTransaction(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    .line 263
    move-result-object v0

    .line 266
    invoke-virtual {v0}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    .line 267
    move-result-object v0

    .line 270
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    .line 271
    filled-new-array {v0}, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    .line 273
    move-result-object v0

    .line 276
    invoke-virtual {p0, v0}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    .line 277
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 280
    :cond_5
    :goto_2
    return-void
    .line 283
.end method
