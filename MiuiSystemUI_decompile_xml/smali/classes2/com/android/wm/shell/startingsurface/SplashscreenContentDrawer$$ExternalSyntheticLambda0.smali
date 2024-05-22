.class public final synthetic Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

.field public final synthetic f$1:Landroid/window/SplashScreenView;

.field public final synthetic f$2:Landroid/view/SurfaceControl;

.field public final synthetic f$3:Landroid/graphics/Rect;

.field public final synthetic f$4:Ljava/lang/Runnable;

.field public final synthetic f$5:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Landroid/window/SplashScreenView;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Ljava/lang/Runnable;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda0;->f$1:Landroid/window/SplashScreenView;

    .line 7
    iput-object p3, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda0;->f$2:Landroid/view/SurfaceControl;

    .line 9
    iput-object p4, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda0;->f$3:Landroid/graphics/Rect;

    .line 11
    iput-object p5, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda0;->f$4:Ljava/lang/Runnable;

    .line 13
    iput p6, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda0;->f$5:F

    .line 15
    return-void
    .line 17
.end method


# virtual methods
.method public final run()V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    .line 4
    iget-object v4, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda0;->f$1:Landroid/window/SplashScreenView;

    .line 6
    iget-object v5, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda0;->f$2:Landroid/view/SurfaceControl;

    .line 8
    iget-object v6, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda0;->f$3:Landroid/graphics/Rect;

    .line 10
    iget-object v9, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda0;->f$4:Ljava/lang/Runnable;

    .line 12
    iget v10, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda0;->f$5:F

    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    new-instance v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;

    .line 19
    iget-object v3, v1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mContext:Landroid/content/Context;

    .line 21
    iget v7, v1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mMainWindowShiftLength:I

    .line 23
    iget-object v8, v1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 25
    move-object v2, v0

    .line 27
    invoke-direct/range {v2 .. v10}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;-><init>(Landroid/content/Context;Landroid/window/SplashScreenView;Landroid/view/SurfaceControl;Landroid/graphics/Rect;ILcom/android/wm/shell/common/TransactionPool;Ljava/lang/Runnable;F)V

    .line 28
    iget-object v1, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mSplashScreenView:Landroid/window/SplashScreenView;

    .line 31
    iget-object v14, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mFirstWindowSurface:Landroid/view/SurfaceControl;

    .line 33
    iget v2, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mMainWindowShiftLength:I

    .line 35
    iget-object v3, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 37
    iget-object v4, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mFirstWindowFrame:Landroid/graphics/Rect;

    .line 39
    iget v5, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mAnimationDuration:I

    .line 41
    iget v6, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mIconFadeOutDuration:I

    .line 43
    iget v7, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mIconStartAlpha:F

    .line 45
    iget v8, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mBrandingStartAlpha:F

    .line 47
    iget v9, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mAppRevealDelay:I

    .line 49
    iget v10, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mAppRevealDuration:I

    .line 51
    iget v15, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mRoundedCornerRadius:F

    .line 53
    sget-object v11, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils;->ICON_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 55
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    .line 57
    move-result v11

    .line 60
    const/4 v12, 0x0

    .line 61
    sub-int/2addr v11, v12

    .line 62
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    .line 63
    move-result v13

    .line 66
    const/4 v12, 0x2

    .line 67
    div-int/2addr v13, v12

    .line 68
    mul-int/2addr v11, v11

    .line 69
    mul-int v16, v13, v13

    .line 70
    add-int v11, v16, v11

    .line 72
    move/from16 v17, v13

    .line 74
    int-to-double v12, v11

    .line 76
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    .line 77
    move-result-wide v11

    .line 80
    double-to-int v11, v11

    .line 81
    int-to-float v11, v11

    .line 82
    const/high16 v12, 0x3fa00000    # 1.25f

    .line 83
    mul-float/2addr v11, v12

    .line 85
    float-to-double v11, v11

    .line 86
    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    .line 87
    add-double v11, v11, v18

    .line 89
    double-to-int v11, v11

    .line 91
    const/4 v12, -0x1

    .line 92
    const/4 v13, 0x0

    .line 93
    filled-new-array {v12, v12, v13}, [I

    .line 94
    move-result-object v22

    .line 97
    const/4 v12, 0x3

    .line 98
    new-array v12, v12, [F

    .line 99
    fill-array-data v12, :array_0

    .line 101
    new-instance v13, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;

    .line 104
    invoke-direct {v13, v1}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;-><init>(Landroid/view/ViewGroup;)V

    .line 106
    move/from16 v25, v15

    .line 109
    iget-object v15, v13, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;->mCircleCenter:Landroid/graphics/Point;

    .line 111
    move/from16 v27, v9

    .line 113
    move/from16 v26, v10

    .line 115
    move/from16 v10, v17

    .line 117
    const/4 v9, 0x0

    .line 119
    invoke-virtual {v15, v10, v9}, Landroid/graphics/Point;->set(II)V

    .line 120
    iput v9, v13, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;->mInitRadius:I

    .line 123
    iput v11, v13, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;->mFinishRadius:I

    .line 125
    new-instance v9, Landroid/graphics/RadialGradient;

    .line 127
    const/16 v19, 0x0

    .line 129
    const/16 v20, 0x0

    .line 131
    const/high16 v21, 0x3f800000    # 1.0f

    .line 133
    sget-object v24, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 135
    move-object/from16 v18, v9

    .line 137
    move-object/from16 v23, v12

    .line 139
    invoke-direct/range {v18 .. v24}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 141
    iget-object v10, v13, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;->mVanishPaint:Landroid/graphics/Paint;

    .line 144
    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 146
    iget-object v9, v13, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;->mVanishPaint:Landroid/graphics/Paint;

    .line 149
    sget-object v10, Landroid/graphics/BlendMode;->DST_OUT:Landroid/graphics/BlendMode;

    .line 151
    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 153
    if-eqz v14, :cond_0

    .line 156
    invoke-virtual {v14}, Landroid/view/SurfaceControl;->isValid()Z

    .line 158
    move-result v9

    .line 161
    if-eqz v9, :cond_0

    .line 162
    new-instance v9, Landroid/view/View;

    .line 164
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 166
    move-result-object v10

    .line 169
    invoke-direct {v9, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 170
    invoke-virtual {v1}, Landroid/window/SplashScreenView;->getInitBackgroundColor()I

    .line 173
    move-result v10

    .line 176
    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 177
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    .line 180
    const/4 v11, -0x1

    .line 182
    invoke-direct {v10, v11, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 183
    invoke-virtual {v1, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    new-instance v10, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;

    .line 189
    neg-int v11, v2

    .line 191
    int-to-float v12, v11

    .line 192
    move-object v11, v10

    .line 193
    const/4 v15, 0x2

    .line 194
    move-object/from16 p0, v10

    .line 195
    move-object v10, v13

    .line 197
    move-object v13, v9

    .line 198
    move-object/from16 v20, v9

    .line 199
    move v9, v15

    .line 201
    move/from16 v19, v25

    .line 202
    move-object v15, v1

    .line 204
    move-object/from16 v16, v3

    .line 205
    move-object/from16 v17, v4

    .line 207
    move/from16 v18, v2

    .line 209
    invoke-direct/range {v11 .. v19}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;-><init>(FLandroid/view/View;Landroid/view/SurfaceControl;Landroid/view/ViewGroup;Lcom/android/wm/shell/common/TransactionPool;Landroid/graphics/Rect;IF)V

    .line 211
    move-object/from16 v3, p0

    .line 214
    move-object/from16 v2, v20

    .line 216
    goto :goto_0

    .line 218
    :cond_0
    move-object v10, v13

    .line 219
    const/4 v9, 0x2

    .line 220
    const/4 v2, 0x0

    .line 221
    move-object v3, v2

    .line 222
    :goto_0
    new-array v4, v9, [F

    .line 223
    fill-array-data v4, :array_1

    .line 225
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 228
    move-result-object v4

    .line 231
    int-to-long v11, v5

    .line 232
    invoke-virtual {v4, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 233
    sget-object v9, Lcom/android/wm/shell/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 236
    invoke-virtual {v4, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 238
    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 241
    new-instance v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$1;

    .line 244
    invoke-direct {v0, v3, v1, v10, v2}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$1;-><init>(Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;Landroid/view/ViewGroup;Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;Landroid/view/View;)V

    .line 246
    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 249
    new-instance v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda0;

    .line 252
    move-object v11, v0

    .line 254
    move v12, v6

    .line 255
    move v13, v5

    .line 256
    move-object v14, v1

    .line 257
    move v15, v7

    .line 258
    move/from16 v16, v8

    .line 259
    move/from16 v17, v27

    .line 261
    move/from16 v18, v26

    .line 263
    move-object/from16 v19, v10

    .line 265
    move-object/from16 v20, v3

    .line 267
    invoke-direct/range {v11 .. v20}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda0;-><init>(IILandroid/view/ViewGroup;FFIILcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;)V

    .line 269
    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 272
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 275
    return-void

    .line 278
    nop

    .line 279
    :array_0
    .array-data 4
        0x0
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    .line 280
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 290
.end method
