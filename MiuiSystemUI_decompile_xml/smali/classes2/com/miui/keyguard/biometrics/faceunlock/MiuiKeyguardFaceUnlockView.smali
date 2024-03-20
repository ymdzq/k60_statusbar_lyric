.class public Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAnimationHandler:Landroid/os/Handler;

.field public final mConfiguration:Landroid/content/res/Configuration;

.field public final mContext:Landroid/content/Context;

.field public final mDelayedHide:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$7;

.field public mFaceIV:Landroid/widget/ImageView;

.field public mFaceUnlockAnimation:Landroid/animation/AnimatorSet;

.field public mFaceUnlockAnimationRuning:Z

.field public final mFaceUnlockCallback:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$4;

.field public final mFaceUnlockClickListener:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$5;

.field public final mFaceUnlockManager:Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;

.field public mFaceUnlockTimeOutAni:Landroid/animation/AnimatorSet;

.field public mFirstBouncerChange:Z

.field public mGoingToSleep:Z

.field public mHintTV:Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;

.field public final mIsFoldFaceView:Z

.field public mIsKeyguardFaceUnlockView:Z

.field public final mIsPadFaceView:Z

.field public mIsUnlockTimeoutShowing:Z

.field public final mKeyguardCommonSettingObserver:Lmiui/stub/MiuiStub$15;

.field public final mKeyguardUpdateMonitorCallback:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$2;

.field public mLightLockWallpaper:Z

.field public final mMiuiKeyguardUpdateMonitorCallback:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$3;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public mRingIV:Landroid/widget/ImageView;

.field public final mStatusBarStateListener:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$10;

.field public mSuccessAniRunning:Z

.field public final mSuccessAnimationListener:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$8;

.field public mSuccessfulAnimation:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

.field public final mUpdateMonitor:Lmiui/stub/MiuiStub$3;

.field public final mUpdateMonitorInjector:Lmiui/stub/MiuiStub$13;

.field public mWaitWakeupAimation:Z

.field public final mWakefulnessObserver:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$1;


# direct methods
.method public static -$$Nest$mstartFaceUnlockAnimation(Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->shouldFaceUnlockViewExecuteAnimation()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    goto :goto_3

    .line 8
    :cond_0
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mFaceUnlockAnimationRuning:Z

    .line 9
    if-nez v0, :cond_4

    .line 11
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mUpdateMonitor:Lmiui/stub/MiuiStub$3;

    .line 13
    invoke-virtual {v0}, Lmiui/stub/MiuiStub$3;->isPrimaryBouncerIsOrWillBeShowing()Z

    .line 15
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-nez v0, :cond_1

    .line 21
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mLightLockWallpaper:Z

    .line 23
    if-eqz v0, :cond_1

    .line 25
    move v0, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move v0, v2

    .line 29
    :goto_0
    iget-object v3, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mFaceIV:Landroid/widget/ImageView;

    .line 30
    if-eqz v0, :cond_2

    .line 32
    const v4, 0x7f080c5a    # @drawable/face_unlock_face_black 'res/drawable-440dpi/face_unlock_face_black.xml'

    .line 34
    goto :goto_1

    .line 37
    :cond_2
    const v4, 0x7f080c59    # @drawable/face_unlock_face 'res/drawable-440dpi/face_unlock_face.xml'

    .line 38
    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 41
    iget-object v3, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mRingIV:Landroid/widget/ImageView;

    .line 44
    if-eqz v0, :cond_3

    .line 46
    const v0, 0x7f080c5c    # @drawable/face_unlock_ring_black 'res/drawable-440dpi/face_unlock_ring_black.xml'

    .line 48
    goto :goto_2

    .line 51
    :cond_3
    const v0, 0x7f080c5b    # @drawable/face_unlock_ring 'res/drawable-440dpi/face_unlock_ring.xml'

    .line 52
    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    iput-boolean v1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mFaceUnlockAnimationRuning:Z

    .line 58
    invoke-direct {p0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->getFaceUnlockAnimation()Landroid/animation/AnimatorSet;

    .line 60
    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mFaceUnlockAnimation:Landroid/animation/AnimatorSet;

    .line 64
    new-instance v1, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$6;

    .line 66
    invoke-direct {v1, v2, p0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$6;-><init>(ILjava/lang/Object;)V

    .line 68
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 71
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mFaceUnlockAnimation:Landroid/animation/AnimatorSet;

    .line 74
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 76
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mAnimationHandler:Landroid/os/Handler;

    .line 79
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mDelayedHide:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$7;

    .line 81
    const-wide/16 v1, 0x5c8

    .line 83
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 85
    :cond_4
    :goto_3
    return-void
    .line 88
.end method

.method public static -$$Nest$mstartFaceUnlockTimeOutAnimation(Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;)V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mIsPadFaceView:Z

    .line 2
    if-eqz v0, :cond_a

    .line 4
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->shouldFaceUnlockViewExecuteAnimation()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_a

    .line 10
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mIsUnlockTimeoutShowing:Z

    .line 12
    if-nez v0, :cond_a

    .line 14
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mIsKeyguardFaceUnlockView:Z

    .line 16
    if-eqz v0, :cond_a

    .line 18
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mUpdateMonitorInjector:Lmiui/stub/MiuiStub$13;

    .line 20
    invoke-virtual {v0}, Lmiui/stub/MiuiStub$13;->isKeyguardShowing()Z

    .line 22
    move-result v0

    .line 25
    if-eqz v0, :cond_a

    .line 26
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mUpdateMonitorInjector:Lmiui/stub/MiuiStub$13;

    .line 28
    invoke-virtual {v0}, Lmiui/stub/MiuiStub$13;->isKeyguardOccluded()Z

    .line 30
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    goto/16 :goto_2

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mFaceUnlockAnimation:Landroid/animation/AnimatorSet;

    .line 38
    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 42
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mFaceUnlockAnimation:Landroid/animation/AnimatorSet;

    .line 48
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 50
    :cond_1
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->resetViewFromTimeOutAnimation()V

    .line 53
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mHintTV:Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;

    .line 56
    const/4 v1, 0x0

    .line 58
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mHintTV:Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;

    .line 62
    invoke-virtual {v0}, Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;->getScrollWidth()I

    .line 64
    move-result v0

    .line 67
    iget-object v2, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mRingIV:Landroid/widget/ImageView;

    .line 68
    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    .line 70
    move-result v2

    .line 73
    add-int/2addr v2, v0

    .line 74
    const/4 v0, 0x2

    .line 75
    div-int/2addr v2, v0

    .line 76
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    .line 77
    move-result v3

    .line 80
    const/4 v4, 0x1

    .line 81
    if-eq v3, v4, :cond_2

    .line 82
    mul-int/lit8 v2, v2, -0x1

    .line 84
    :cond_2
    iget-object v3, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mFaceIV:Landroid/widget/ImageView;

    .line 86
    new-array v5, v0, [F

    .line 88
    const/4 v6, 0x0

    .line 90
    aput v6, v5, v1

    .line 91
    int-to-float v2, v2

    .line 93
    aput v2, v5, v4

    .line 94
    const-string/jumbo v7, "translationX"

    .line 96
    invoke-static {v3, v7, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 99
    move-result-object v3

    .line 102
    iget-object v5, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mRingIV:Landroid/widget/ImageView;

    .line 103
    new-array v8, v0, [F

    .line 105
    aput v6, v8, v1

    .line 107
    aput v2, v8, v4

    .line 109
    invoke-static {v5, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 111
    move-result-object v5

    .line 114
    iget-object v8, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mHintTV:Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;

    .line 115
    new-array v9, v0, [F

    .line 117
    aput v6, v9, v1

    .line 119
    aput v2, v9, v4

    .line 121
    invoke-static {v8, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 123
    move-result-object v2

    .line 126
    new-instance v6, Landroid/animation/AnimatorSet;

    .line 127
    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 129
    iput-object v6, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mFaceUnlockTimeOutAni:Landroid/animation/AnimatorSet;

    .line 132
    const-wide/16 v7, 0x12c

    .line 134
    invoke-virtual {v6, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 136
    iget-object v6, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mFaceUnlockTimeOutAni:Landroid/animation/AnimatorSet;

    .line 139
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    .line 141
    const/high16 v8, 0x3fc00000    # 1.5f

    .line 143
    invoke-direct {v7, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 145
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 148
    iget-object v6, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mFaceUnlockTimeOutAni:Landroid/animation/AnimatorSet;

    .line 151
    filled-new-array {v3, v5, v2}, [Landroid/animation/Animator;

    .line 153
    move-result-object v2

    .line 156
    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 157
    iget-object v2, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mFaceUnlockTimeOutAni:Landroid/animation/AnimatorSet;

    .line 160
    new-instance v3, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$6;

    .line 162
    invoke-direct {v3, v4, p0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$6;-><init>(ILjava/lang/Object;)V

    .line 164
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 167
    iget-object v2, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mFaceUnlockTimeOutAni:Landroid/animation/AnimatorSet;

    .line 170
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 172
    iput-boolean v4, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mIsUnlockTimeoutShowing:Z

    .line 175
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mHintTV:Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;

    .line 177
    iput-boolean v4, p0, Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;->mAnimation:Z

    .line 179
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    .line 181
    move-result v2

    .line 184
    iget v3, p0, Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;->mDelta:I

    .line 185
    div-int/2addr v2, v3

    .line 187
    add-int/lit8 v2, v2, 0x5

    .line 188
    const/16 v3, 0x12c

    .line 190
    div-int/2addr v3, v2

    .line 192
    int-to-long v2, v3

    .line 193
    iput-wide v2, p0, Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;->mIntervalDuration:J

    .line 194
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;->getScrollWidth()I

    .line 196
    move-result v2

    .line 199
    if-nez v2, :cond_3

    .line 200
    goto :goto_2

    .line 202
    :cond_3
    iput v1, p0, Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;->mTranslate:I

    .line 203
    const/16 v3, 0x14

    .line 205
    iput v3, p0, Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;->mDelta:I

    .line 207
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    .line 209
    move-result v3

    .line 212
    if-ne v3, v4, :cond_4

    .line 213
    move v1, v4

    .line 215
    :cond_4
    iput-boolean v1, p0, Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;->mIsRTL:Z

    .line 216
    if-eqz v1, :cond_5

    .line 218
    iput v2, p0, Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;->mTranslate:I

    .line 220
    const/16 v1, -0x14

    .line 222
    iput v1, p0, Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;->mDelta:I

    .line 224
    :cond_5
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 226
    move-result-object v1

    .line 229
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 230
    move-result-object v1

    .line 233
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 234
    move-result v1

    .line 237
    if-lez v1, :cond_6

    .line 238
    int-to-float v2, v2

    .line 240
    const/high16 v3, 0x40000000    # 2.0f

    .line 241
    mul-float/2addr v2, v3

    .line 243
    int-to-float v1, v1

    .line 244
    div-float/2addr v2, v1

    .line 245
    iput v2, p0, Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;->mGradientColorWidth:F

    .line 246
    :cond_6
    iget-boolean v1, p0, Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;->mDarkStyle:Z

    .line 248
    if-eqz v1, :cond_7

    .line 250
    const/high16 v2, -0x1000000

    .line 252
    goto :goto_0

    .line 254
    :cond_7
    const/4 v2, -0x1

    .line 255
    :goto_0
    if-eqz v1, :cond_8

    .line 256
    const/high16 v1, 0xf000000

    .line 258
    goto :goto_1

    .line 260
    :cond_8
    const v1, 0xfffffff

    .line 261
    :goto_1
    filled-new-array {v2, v1}, [I

    .line 264
    move-result-object v3

    .line 267
    iget-boolean v4, p0, Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;->mIsRTL:Z

    .line 268
    if-eqz v4, :cond_9

    .line 270
    filled-new-array {v1, v2}, [I

    .line 272
    move-result-object v3

    .line 275
    :cond_9
    move-object v9, v3

    .line 276
    new-instance v1, Landroid/graphics/LinearGradient;

    .line 277
    const/4 v5, 0x0

    .line 279
    const/4 v6, 0x0

    .line 280
    iget v7, p0, Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;->mGradientColorWidth:F

    .line 281
    const/4 v8, 0x0

    .line 283
    new-array v10, v0, [F

    .line 284
    fill-array-data v10, :array_0

    .line 286
    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 289
    move-object v4, v1

    .line 291
    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 292
    iput-object v1, p0, Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;->mLinerGradient:Landroid/graphics/LinearGradient;

    .line 295
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;->mPaint:Landroid/graphics/Paint;

    .line 297
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 299
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 302
    :cond_a
    :goto_2
    return-void

    .line 305
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 306
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mAnimationHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mLightLockWallpaper:Z

    .line 5
    iput-boolean p2, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mSuccessAniRunning:Z

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mFirstBouncerChange:Z

    .line 7
    new-instance v1, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$1;

    invoke-direct {v1, p0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$1;-><init>(Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;)V

    iput-object v1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mWakefulnessObserver:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$1;

    .line 8
    new-instance v1, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$2;

    invoke-direct {v1, p0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$2;-><init>(Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;)V

    iput-object v1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mKeyguardUpdateMonitorCallback:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$2;

    .line 9
    new-instance v1, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$3;

    invoke-direct {v1, p0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$3;-><init>(Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;)V

    iput-object v1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mMiuiKeyguardUpdateMonitorCallback:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$3;

    .line 10
    new-instance v1, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$4;

    invoke-direct {v1, p0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$4;-><init>(Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;)V

    iput-object v1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mFaceUnlockCallback:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$4;

    .line 11
    new-instance v1, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$5;

    invoke-direct {v1, p0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$5;-><init>(Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;)V

    iput-object v1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mFaceUnlockClickListener:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$5;

    .line 12
    new-instance v1, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$7;

    invoke-direct {v1, p0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$7;-><init>(Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;)V

    iput-object v1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mDelayedHide:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$7;

    .line 13
    new-instance v1, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$8;

    invoke-direct {v1, p0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$8;-><init>(Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;)V

    iput-object v1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mSuccessAnimationListener:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$8;

    .line 14
    new-instance v1, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$10;

    invoke-direct {v1, p0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$10;-><init>(Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;)V

    iput-object v1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mStatusBarStateListener:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$10;

    .line 15
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mContext:Landroid/content/Context;

    .line 16
    const-class v1, Lmiui/stub/MiuiStub$3;

    invoke-static {v1}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/stub/MiuiStub$3;

    iput-object v1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mUpdateMonitor:Lmiui/stub/MiuiStub$3;

    .line 17
    const-class v1, Lmiui/stub/MiuiStub$15;

    invoke-static {v1}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/stub/MiuiStub$15;

    iput-object v1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mKeyguardCommonSettingObserver:Lmiui/stub/MiuiStub$15;

    .line 18
    const-class v1, Lcom/miui/interfaces/keyguard/IMiuiFaceUnlockManager;

    invoke-static {v1}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;

    iput-object v1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mFaceUnlockManager:Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;

    const-string v1, "power"

    .line 19
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mPowerManager:Landroid/os/PowerManager;

    .line 20
    const-class v1, Lmiui/stub/MiuiStub$13;

    invoke-static {v1}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/stub/MiuiStub$13;

    iput-object v1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mUpdateMonitorInjector:Lmiui/stub/MiuiStub$13;

    .line 21
    sget-boolean v1, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    iput-boolean v1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mIsPadFaceView:Z

    .line 22
    sget-boolean v2, Lcom/miui/utils/configs/MiuiConfigs;->IS_FOLD:Z

    iput-boolean v2, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mIsFoldFaceView:Z

    .line 23
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    iput-object v2, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mConfiguration:Landroid/content/res/Configuration;

    .line 24
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mFaceIV:Landroid/widget/ImageView;

    const v3, 0x7f080c59    # @drawable/face_unlock_face 'res/drawable-440dpi/face_unlock_face.xml'

    .line 25
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 26
    iget-object v2, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mFaceIV:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 27
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070810    # @dimen/miui_face_unlock_view_width '30.0dp'

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 29
    new-instance v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 30
    iput v2, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 31
    iput v2, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 32
    iput v2, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 33
    iput v2, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 34
    iget-object v3, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mFaceIV:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mRingIV:Landroid/widget/ImageView;

    .line 36
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 37
    iget-object v3, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mRingIV:Landroid/widget/ImageView;

    const v5, 0x7f0a0540    # @id/mRingIv

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setId(I)V

    .line 38
    iget-object v3, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mRingIV:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 39
    iget-object v3, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mRingIV:Landroid/widget/ImageView;

    const v6, 0x7f080c5b    # @drawable/face_unlock_ring 'res/drawable-440dpi/face_unlock_ring.xml'

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 40
    iget-object v3, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mRingIV:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v1, :cond_1

    .line 41
    new-instance v1, Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mHintTV:Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;

    const v3, 0x7f13040d    # @string/face_unlock_swipe_up_retry 'Swipe up to try again'

    .line 42
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 43
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mHintTV:Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v3

    if-ne v3, v0, :cond_0

    const v3, 0x800005

    goto :goto_0

    :cond_0
    const v3, 0x800003

    :goto_0
    or-int/lit8 v3, v3, 0x10

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 44
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mHintTV:Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mHintTV:Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06016f    # @color/keyguard_face_unlock_text_color '#ffffffff'

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070403    # @dimen/hint_max_width '132.0dp'

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 47
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070402    # @dimen/hint_max_height '32.0dp'

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 48
    new-instance v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v4, v1, v3}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 49
    iput v2, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 50
    iput v2, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 51
    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 52
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070401    # @dimen/hint_margin_start '8.67dp'

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 53
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 54
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070407    # @dimen/hint_text_size '14.0sp'

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 55
    iget-object v2, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mHintTV:Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;

    const/4 v3, 0x2

    .line 56
    invoke-virtual {v2, v0, v1, v3, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    .line 57
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mHintTV:Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;

    invoke-virtual {p0, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07080b    # @dimen/miui_face_unlock_view_padding '7.3dp'

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 59
    invoke-virtual {p0, p1, p2, p1, p2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method private getFaceUnlockAnimation()Landroid/animation/AnimatorSet;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    const v1, 0x7f02000a    # @animator/keyguard_face_unlock_error_face_rotate 'res/animator/keyguard_face_unlock_error_face_rotate.xml'

    .line 6
    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    .line 9
    move-result-object v0

    .line 12
    check-cast v0, Landroid/animation/AnimatorSet;

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 15
    move-result-object v1

    .line 18
    const v2, 0x7f02000b    # @animator/keyguard_face_unlock_error_ring_rotate 'res/animator/keyguard_face_unlock_error_ring_rotate.xml'

    .line 19
    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    .line 22
    move-result-object v1

    .line 25
    check-cast v1, Landroid/animation/AnimatorSet;

    .line 26
    iget-object v2, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mFaceIV:Landroid/widget/ImageView;

    .line 28
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 30
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mRingIV:Landroid/widget/ImageView;

    .line 33
    invoke-virtual {v1, p0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 35
    new-instance p0, Landroid/animation/AnimatorSet;

    .line 38
    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 40
    filled-new-array {v0, v1}, [Landroid/animation/Animator;

    .line 43
    move-result-object v0

    .line 46
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 47
    return-object p0
    .line 50
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mUpdateMonitor:Lmiui/stub/MiuiStub$3;

    .line 5
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mKeyguardUpdateMonitorCallback:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$2;

    .line 7
    invoke-virtual {v0, v1}, Lmiui/stub/MiuiStub$3;->registerCallback(Lcom/miui/sysuiinterfaces/assist/IKeyguardUpdateMonitorCallback;)V

    .line 9
    const-class v0, Lmiui/stub/MiuiStub$13;

    .line 12
    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lmiui/stub/MiuiStub$13;

    .line 18
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mMiuiKeyguardUpdateMonitorCallback:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$3;

    .line 20
    invoke-virtual {v0, v1}, Lmiui/stub/MiuiStub$13;->registerCallback(Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;)V

    .line 22
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mFaceUnlockManager:Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;

    .line 25
    iget-object v1, v0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mFaceViewList:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 29
    move-result v2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    goto :goto_0

    .line 35
    :cond_0
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 36
    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 38
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v0, v0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mFaceViewList:Ljava/util/ArrayList;

    .line 44
    const/4 v1, 0x0

    .line 46
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 47
    :goto_0
    const-class v0, Lmiui/stub/MiuiStub$4;

    .line 50
    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 52
    move-result-object v0

    .line 55
    check-cast v0, Lmiui/stub/MiuiStub$4;

    .line 56
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mWakefulnessObserver:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$1;

    .line 58
    invoke-virtual {v0, v1}, Lmiui/stub/MiuiStub$4;->addObserver(Lcom/miui/sysuiinterfaces/IWakefulnessLifecycle$IObserver;)V

    .line 60
    const-class v0, Lmiui/stub/MiuiStub$8;

    .line 63
    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 65
    move-result-object v0

    .line 68
    check-cast v0, Lmiui/stub/MiuiStub$8;

    .line 69
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mStatusBarStateListener:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$10;

    .line 71
    invoke-virtual {v0, v1}, Lmiui/stub/MiuiStub$8;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 73
    const-class v0, Lcom/miui/interfaces/keyguard/IMiuiFaceUnlockManager;

    .line 76
    invoke-static {v0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 78
    move-result-object v0

    .line 81
    check-cast v0, Lcom/miui/interfaces/keyguard/IMiuiFaceUnlockManager;

    .line 82
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mFaceUnlockCallback:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$4;

    .line 84
    check-cast v0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;

    .line 86
    invoke-virtual {v0, p0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->registerFaceUnlockCallback(Lcom/miui/interfaces/keyguard/FaceUnlockCallback;)V

    .line 88
    return-void
    .line 91
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mConfiguration:Landroid/content/res/Configuration;

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 7
    move-result p1

    .line 10
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mIsFoldFaceView:Z

    .line 11
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    and-int/lit16 v0, p1, 0x800

    .line 17
    if-eqz v0, :cond_0

    .line 19
    move v0, v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v0, v2

    .line 23
    :goto_0
    if-eqz v0, :cond_8

    .line 24
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mUpdateMonitor:Lmiui/stub/MiuiStub$3;

    .line 26
    sget-object v3, Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;->FACE_AUTH_FOLD_STATE_CHANGE:Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;

    .line 28
    invoke-virtual {v0, v2, v3}, Lmiui/stub/MiuiStub$3;->requestFaceAuth(ILcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;)V

    .line 30
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->updateFaceUnlockIconStatus()V

    .line 33
    goto :goto_5

    .line 36
    :cond_1
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mIsPadFaceView:Z

    .line 37
    if-eqz v0, :cond_8

    .line 39
    and-int/lit8 v0, p1, 0x4

    .line 41
    if-eqz v0, :cond_2

    .line 43
    move v0, v1

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move v0, v2

    .line 47
    :goto_1
    if-eqz v0, :cond_3

    .line 48
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mHintTV:Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;

    .line 50
    const v3, 0x7f13040d    # @string/face_unlock_swipe_up_retry 'Swipe up to try again'

    .line 52
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 55
    :cond_3
    and-int/lit16 v0, p1, 0x2000

    .line 58
    if-eqz v0, :cond_4

    .line 60
    move v0, v1

    .line 62
    goto :goto_2

    .line 63
    :cond_4
    move v0, v2

    .line 64
    :goto_2
    if-eqz v0, :cond_6

    .line 65
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mHintTV:Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;

    .line 67
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    .line 69
    move-result v3

    .line 72
    if-ne v3, v1, :cond_5

    .line 73
    const v3, 0x800005

    .line 75
    goto :goto_3

    .line 78
    :cond_5
    const v3, 0x800003

    .line 79
    :goto_3
    or-int/lit8 v3, v3, 0x10

    .line 82
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 84
    :cond_6
    const/high16 v0, 0x40000000    # 2.0f

    .line 87
    and-int/2addr v0, p1

    .line 89
    if-eqz v0, :cond_7

    .line 90
    move v0, v1

    .line 92
    goto :goto_4

    .line 93
    :cond_7
    move v0, v2

    .line 94
    :goto_4
    if-eqz v0, :cond_8

    .line 95
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 97
    move-result-object v0

    .line 100
    const v3, 0x7f070407    # @dimen/hint_text_size '14.0sp'

    .line 101
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 104
    move-result v0

    .line 107
    iget-object v3, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mHintTV:Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;

    .line 108
    const/4 v4, 0x2

    .line 110
    invoke-virtual {v3, v1, v0, v4, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    .line 111
    :cond_8
    :goto_5
    and-int/lit16 v0, p1, 0x80

    .line 114
    if-eqz v0, :cond_9

    .line 116
    move v0, v1

    .line 118
    goto :goto_6

    .line 119
    :cond_9
    move v0, v2

    .line 120
    :goto_6
    and-int/lit16 p1, p1, 0x1000

    .line 121
    if-eqz p1, :cond_a

    .line 123
    goto :goto_7

    .line 125
    :cond_a
    move v1, v2

    .line 126
    :goto_7
    if-nez v0, :cond_b

    .line 127
    if-eqz v1, :cond_f

    .line 129
    :cond_b
    iget-boolean p1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mIsPadFaceView:Z

    .line 131
    if-eqz p1, :cond_c

    .line 133
    iget-boolean p1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mIsKeyguardFaceUnlockView:Z

    .line 135
    if-nez p1, :cond_c

    .line 137
    const p1, 0x7f07080d    # @dimen/miui_face_unlock_view_top_bouncer '32.73dp'

    .line 139
    goto :goto_8

    .line 142
    :cond_c
    sget-boolean p1, Lcom/miui/utils/configs/MiuiConfigs;->IS_NOTCH:Z

    .line 143
    if-eqz p1, :cond_d

    .line 145
    const p1, 0x7f07080a    # @dimen/miui_face_unlock_view_notch_top '@dimen/miui_face_unlock_view_top'

    .line 147
    goto :goto_8

    .line 150
    :cond_d
    const p1, 0x7f07080c    # @dimen/miui_face_unlock_view_top '41.14dp'

    .line 151
    :goto_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 154
    move-result-object v0

    .line 157
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 158
    move-result-object v1

    .line 161
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 162
    move-result p1

    .line 165
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 166
    if-eqz v1, :cond_e

    .line 168
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 170
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 172
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    :cond_e
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mFaceIV:Landroid/widget/ImageView;

    .line 177
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 179
    move-result-object p1

    .line 182
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 183
    move-result-object v0

    .line 186
    const v1, 0x7f070810    # @dimen/miui_face_unlock_view_width '30.0dp'

    .line 187
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 190
    move-result v0

    .line 193
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 194
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 196
    move-result-object v0

    .line 199
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 200
    move-result v0

    .line 203
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 204
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mFaceIV:Landroid/widget/ImageView;

    .line 206
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mRingIV:Landroid/widget/ImageView;

    .line 211
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    :cond_f
    return-void
    .line 216
.end method

.method public final onDetachedFromWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mUpdateMonitor:Lmiui/stub/MiuiStub$3;

    .line 5
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mKeyguardUpdateMonitorCallback:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$2;

    .line 7
    invoke-virtual {v0, v1}, Lmiui/stub/MiuiStub$3;->removeCallback(Lcom/miui/sysuiinterfaces/assist/IKeyguardUpdateMonitorCallback;)V

    .line 9
    const-class v0, Lmiui/stub/MiuiStub$13;

    .line 12
    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lmiui/stub/MiuiStub$13;

    .line 18
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mMiuiKeyguardUpdateMonitorCallback:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$3;

    .line 20
    iget-object v0, v0, Lmiui/stub/MiuiStub$13;->this$0:Lmiui/stub/MiuiStub;

    .line 22
    iget-object v0, v0, Lmiui/stub/MiuiStub;->mMiuiModuleProvider:Lmiui/stub/MiuiStub$MiuiModuleProvider;

    .line 24
    iget-object v0, v0, Lmiui/stub/MiuiStub$MiuiModuleProvider;->mKeyguardUpdateMonitorInjector:Ldagger/Lazy;

    .line 26
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 31
    check-cast v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 32
    invoke-virtual {v0, v1}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->removeCallback(Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;)V

    .line 34
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mFaceUnlockManager:Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;

    .line 37
    iget-object v0, v0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mFaceViewList:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 41
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mSuccessfulAnimation:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    .line 44
    if-eqz v0, :cond_4

    .line 46
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mSuccessAnimationListener:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$8;

    .line 48
    if-nez v1, :cond_0

    .line 50
    goto :goto_0

    .line 52
    :cond_0
    iget-object v2, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    .line 53
    if-eqz v2, :cond_2

    .line 55
    check-cast v2, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 57
    iget-object v3, v1, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->mPlatformCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback$1;

    .line 59
    if-nez v3, :cond_1

    .line 61
    new-instance v3, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback$1;

    .line 63
    invoke-direct {v3, v1}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback$1;-><init>(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    .line 65
    iput-object v3, v1, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->mPlatformCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback$1;

    .line 68
    :cond_1
    iget-object v3, v1, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->mPlatformCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback$1;

    .line 70
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->unregisterAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    .line 72
    :cond_2
    iget-object v2, v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 75
    if-nez v2, :cond_3

    .line 77
    goto :goto_0

    .line 79
    :cond_3
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 80
    iget-object v1, v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 83
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 85
    move-result v1

    .line 88
    if-nez v1, :cond_4

    .line 89
    iget-object v1, v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatorListener:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$2;

    .line 91
    if-eqz v1, :cond_4

    .line 93
    iget-object v2, v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    .line 95
    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 97
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 99
    const/4 v1, 0x0

    .line 102
    iput-object v1, v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatorListener:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$2;

    .line 103
    :cond_4
    :goto_0
    const-class v0, Lmiui/stub/MiuiStub$4;

    .line 105
    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 107
    move-result-object v0

    .line 110
    check-cast v0, Lmiui/stub/MiuiStub$4;

    .line 111
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mWakefulnessObserver:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$1;

    .line 113
    iget-object v0, v0, Lmiui/stub/MiuiStub$4;->this$0:Lmiui/stub/MiuiStub;

    .line 115
    iget-object v0, v0, Lmiui/stub/MiuiStub;->mSysUIProvider:Lmiui/stub/MiuiStub$SysUIProvider;

    .line 117
    iget-object v0, v0, Lmiui/stub/MiuiStub$SysUIProvider;->mWakefulnessLifecycle:Ldagger/Lazy;

    .line 119
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 121
    move-result-object v0

    .line 124
    check-cast v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 125
    sget-object v2, Lmiui/stub/MiuiProxy;->sWakefullObserMap:Ljava/util/Map;

    .line 127
    check-cast v2, Ljava/util/HashMap;

    .line 129
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    move-result-object v1

    .line 134
    check-cast v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 135
    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/Lifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 137
    const-class v0, Lmiui/stub/MiuiStub$8;

    .line 140
    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 142
    move-result-object v0

    .line 145
    check-cast v0, Lmiui/stub/MiuiStub$8;

    .line 146
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mStatusBarStateListener:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$10;

    .line 148
    invoke-virtual {v0, v1}, Lmiui/stub/MiuiStub$8;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 150
    const-class v0, Lcom/miui/interfaces/keyguard/IMiuiFaceUnlockManager;

    .line 153
    invoke-static {v0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 155
    move-result-object v0

    .line 158
    check-cast v0, Lcom/miui/interfaces/keyguard/IMiuiFaceUnlockManager;

    .line 159
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mFaceUnlockCallback:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$4;

    .line 161
    check-cast v0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;

    .line 163
    invoke-virtual {v0, p0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->removeFaceUnlockCallback(Lcom/miui/interfaces/keyguard/FaceUnlockCallback;)V

    .line 165
    return-void
    .line 168
.end method

.method public final onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 2
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mFaceUnlockClickListener:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$5;

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 10
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 14
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mContext:Landroid/content/Context;

    .line 16
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object v1

    .line 21
    sget-boolean v2, Lcom/miui/utils/configs/MiuiConfigs;->IS_NOTCH:Z

    .line 22
    if-eqz v2, :cond_0

    .line 24
    const v2, 0x7f07080a    # @dimen/miui_face_unlock_view_notch_top '@dimen/miui_face_unlock_view_top'

    .line 26
    goto :goto_0

    .line 29
    :cond_0
    const v2, 0x7f07080c    # @dimen/miui_face_unlock_view_top '41.14dp'

    .line 30
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 33
    move-result v1

    .line 36
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 37
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    return-void
    .line 42
.end method

.method public final resetViewFromTimeOutAnimation()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mIsPadFaceView:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mFaceUnlockTimeOutAni:Landroid/animation/AnimatorSet;

    .line 7
    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mRingIV:Landroid/widget/ImageView;

    .line 14
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 17
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mRingIV:Landroid/widget/ImageView;

    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 22
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mFaceIV:Landroid/widget/ImageView;

    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 27
    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mIsUnlockTimeoutShowing:Z

    .line 31
    iget-object v2, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mHintTV:Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;

    .line 33
    if-eqz v2, :cond_2

    .line 35
    iput-boolean v0, v2, Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;->mAnimation:Z

    .line 37
    iput v0, v2, Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;->mTranslate:I

    .line 39
    iput v1, v2, Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;->mGradientColorWidth:F

    .line 41
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 43
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mHintTV:Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;

    .line 46
    const/4 v0, 0x4

    .line 48
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 49
    :cond_2
    return-void
    .line 52
.end method

.method public setAlpha(F)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mGoingToSleep:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 7
    return-void
    .line 10
.end method

.method public setKeyguardFaceUnlockView(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mIsKeyguardFaceUnlockView:Z

    .line 2
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->updateFaceUnlockIconStatus()V

    .line 4
    return-void
    .line 7
.end method

.method public setVisibility(I)V
    .locals 12

    .line 1
    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    .line 4
    move-result v0

    .line 7
    if-eq v0, p1, :cond_0

    .line 8
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mWaitWakeupAimation:Z

    .line 10
    if-eqz v0, :cond_0

    .line 12
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 14
    const/4 v1, 0x0

    .line 16
    const/high16 v2, 0x3f800000    # 1.0f

    .line 17
    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 19
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    .line 22
    const v4, 0x3f19999a    # 0.6f

    .line 24
    const/high16 v5, 0x3f800000    # 1.0f

    .line 27
    const v6, 0x3f19999a    # 0.6f

    .line 29
    const/high16 v7, 0x3f800000    # 1.0f

    .line 32
    const/4 v8, 0x1

    .line 34
    const/high16 v9, 0x3f000000    # 0.5f

    .line 35
    const/4 v10, 0x1

    .line 37
    const/high16 v11, 0x3f000000    # 0.5f

    .line 38
    move-object v3, v1

    .line 40
    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 41
    new-instance v2, Landroid/view/animation/AnimationSet;

    .line 44
    const/4 v3, 0x1

    .line 46
    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 47
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 50
    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 53
    const-wide/16 v0, 0x15e

    .line 56
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 58
    new-instance v0, Lcom/miui/utils/animation/SpringInterpolator;

    .line 61
    const v1, 0x3f666666    # 0.9f

    .line 63
    const v3, 0x3f5c28f6    # 0.86f

    .line 66
    invoke-direct {v0, v1, v3}, Lcom/miui/utils/animation/SpringInterpolator;-><init>(FF)V

    .line 69
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 72
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 75
    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mWaitWakeupAimation:Z

    .line 79
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 81
    return-void
    .line 84
.end method

.method public final shouldFaceUnlockViewExecuteAnimation()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mUpdateMonitor:Lmiui/stub/MiuiStub$3;

    .line 2
    invoke-virtual {v0}, Lmiui/stub/MiuiStub$3;->isPrimaryBouncerIsOrWillBeShowing()Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mIsKeyguardFaceUnlockView:Z

    .line 10
    if-nez v0, :cond_1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mUpdateMonitor:Lmiui/stub/MiuiStub$3;

    .line 14
    invoke-virtual {v0}, Lmiui/stub/MiuiStub$3;->isPrimaryBouncerIsOrWillBeShowing()Z

    .line 16
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    iget-boolean p0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mIsKeyguardFaceUnlockView:Z

    .line 22
    if-nez p0, :cond_2

    .line 24
    :cond_1
    const/4 p0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_2
    const/4 p0, 0x0

    .line 28
    :goto_0
    return p0
    .line 29
.end method

.method public final updateFaceUnlockIconStatus()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mContext:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockUtils;->isHardwareDetected(Landroid/content/Context;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 8
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->shouldFaceUnlockViewExecuteAnimation()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mFaceUnlockManager:Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;

    .line 16
    invoke-virtual {v0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->shouldShowFaceUnlockRetryMessageInBouncer()Z

    .line 18
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mUpdateMonitor:Lmiui/stub/MiuiStub$3;

    .line 24
    invoke-virtual {v0}, Lmiui/stub/MiuiStub$3;->userFaceNeedsStrongAuth()Z

    .line 26
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    :cond_1
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->setVisibility(I)V

    .line 33
    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 37
    const/4 v0, 0x4

    .line 40
    invoke-virtual {p0, v0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->setVisibility(I)V

    .line 41
    :goto_0
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mSuccessAniRunning:Z

    .line 44
    if-eqz v0, :cond_3

    .line 46
    return-void

    .line 48
    :cond_3
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mIsPadFaceView:Z

    .line 49
    if-eqz v0, :cond_4

    .line 51
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mHintTV:Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;

    .line 53
    iget-boolean v1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mLightLockWallpaper:Z

    .line 55
    invoke-virtual {v0, v1}, Lcom/miui/keyguard/biometrics/widget/GradientShaderTextView;->setDarkStyle(Z)V

    .line 57
    :cond_4
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mRingIV:Landroid/widget/ImageView;

    .line 60
    const/4 v1, 0x0

    .line 62
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 63
    const-class v0, Lmiui/stub/MiuiStub$13;

    .line 66
    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 68
    move-result-object v0

    .line 71
    check-cast v0, Lmiui/stub/MiuiStub$13;

    .line 72
    invoke-virtual {v0}, Lmiui/stub/MiuiStub$13;->isFaceUnlock()Z

    .line 74
    move-result v0

    .line 77
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mUpdateMonitor:Lmiui/stub/MiuiStub$3;

    .line 78
    invoke-virtual {v1}, Lmiui/stub/MiuiStub$3;->isPrimaryBouncerIsOrWillBeShowing()Z

    .line 80
    move-result v1

    .line 83
    if-nez v1, :cond_7

    .line 84
    iget-boolean v1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mLightLockWallpaper:Z

    .line 86
    if-nez v1, :cond_5

    .line 88
    goto :goto_2

    .line 90
    :cond_5
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mFaceIV:Landroid/widget/ImageView;

    .line 91
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 93
    move-result-object p0

    .line 96
    if-eqz v0, :cond_6

    .line 97
    const v0, 0x7f080c56    # @drawable/face_unlock_black_success 'res/drawable-440dpi/face_unlock_black_success.xml'

    .line 99
    goto :goto_1

    .line 102
    :cond_6
    const v0, 0x7f080c55    # @drawable/face_unlock_black_error 'res/drawable-440dpi/face_unlock_black_error.xml'

    .line 103
    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 106
    move-result-object p0

    .line 109
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    goto :goto_4

    .line 113
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mFaceIV:Landroid/widget/ImageView;

    .line 114
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 116
    move-result-object p0

    .line 119
    if-eqz v0, :cond_8

    .line 120
    const v0, 0x7f080c5d    # @drawable/face_unlock_success 'res/drawable-440dpi/face_unlock_success.xml'

    .line 122
    goto :goto_3

    .line 125
    :cond_8
    const v0, 0x7f080c58    # @drawable/face_unlock_error 'res/drawable-440dpi/face_unlock_error.xml'

    .line 126
    :goto_3
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 129
    move-result-object p0

    .line 132
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    :cond_9
    :goto_4
    return-void
    .line 136
.end method
