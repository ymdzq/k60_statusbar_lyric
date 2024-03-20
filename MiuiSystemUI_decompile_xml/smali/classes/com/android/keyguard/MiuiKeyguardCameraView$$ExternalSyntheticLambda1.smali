.class public final synthetic Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/keyguard/MiuiKeyguardCameraView;

.field public final synthetic f$1:F

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/MiuiKeyguardCameraView;FFI)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/MiuiKeyguardCameraView;

    .line 4
    iput p2, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda1;->f$1:F

    .line 6
    iput p3, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda1;->f$2:F

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget v1, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    const-string v2, "KeyguardCameraView"

    .line 6
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    goto/16 :goto_2

    .line 13
    :pswitch_0
    iget-object v0, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/MiuiKeyguardCameraView;

    .line 15
    iget-object v0, v0, Lcom/android/keyguard/MiuiKeyguardCameraView;->mMiuiKeyguardCameraView:Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;

    .line 17
    iget-boolean v1, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mTouchDownInitial:Z

    .line 19
    if-nez v1, :cond_0

    .line 21
    goto/16 :goto_0

    .line 23
    :cond_0
    iput-boolean v4, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mTouchDownInitial:Z

    .line 25
    iget-boolean v1, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIsActive:Z

    .line 27
    const/4 v4, 0x2

    .line 29
    if-eqz v1, :cond_1

    .line 30
    invoke-virtual {v0}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->cancelAnim()V

    .line 32
    iput-boolean v3, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIsPendingStartCamera:Z

    .line 35
    iget v1, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreViewWidth:F

    .line 37
    iget v3, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mScreenWidth:I

    .line 39
    int-to-float v5, v3

    .line 41
    iget v6, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreViewHeight:F

    .line 42
    iget v7, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mScreenHeight:I

    .line 44
    int-to-float v8, v7

    .line 46
    iget v9, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreViewCenterX:F

    .line 47
    div-int/2addr v3, v4

    .line 49
    int-to-float v3, v3

    .line 50
    iget v10, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreViewCenterY:F

    .line 51
    div-int/2addr v7, v4

    .line 53
    int-to-float v7, v7

    .line 54
    iget v11, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreViewRadius:F

    .line 55
    iget v12, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreViewInitRadius:F

    .line 57
    iget v13, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreViewAlpha:F

    .line 59
    iget v14, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconAlpha:F

    .line 61
    iget v15, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconScale:F

    .line 63
    move-object/from16 v16, v2

    .line 65
    new-instance v2, Landroid/animation/AnimatorSet;

    .line 67
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 69
    move-object/from16 p0, v2

    .line 72
    new-array v2, v4, [F

    .line 74
    const/16 v17, 0x0

    .line 76
    aput v1, v2, v17

    .line 78
    const/4 v1, 0x1

    .line 80
    aput v5, v2, v1

    .line 81
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 83
    move-result-object v1

    .line 86
    new-instance v2, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda2;

    .line 87
    const/4 v5, 0x5

    .line 89
    invoke-direct {v2, v0, v5}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;I)V

    .line 90
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 93
    new-array v2, v4, [F

    .line 96
    aput v6, v2, v17

    .line 98
    const/4 v5, 0x1

    .line 100
    aput v8, v2, v5

    .line 101
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 103
    move-result-object v2

    .line 106
    new-instance v6, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda2;

    .line 107
    const/4 v8, 0x6

    .line 109
    invoke-direct {v6, v0, v8}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;I)V

    .line 110
    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 113
    new-array v6, v4, [F

    .line 116
    aput v9, v6, v17

    .line 118
    aput v3, v6, v5

    .line 120
    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 122
    move-result-object v3

    .line 125
    new-instance v6, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda2;

    .line 126
    const/4 v8, 0x7

    .line 128
    invoke-direct {v6, v0, v8}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;I)V

    .line 129
    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 132
    new-array v6, v4, [F

    .line 135
    aput v10, v6, v17

    .line 137
    aput v7, v6, v5

    .line 139
    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 141
    move-result-object v6

    .line 144
    new-instance v7, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda2;

    .line 145
    const/16 v8, 0x8

    .line 147
    invoke-direct {v7, v0, v8}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;I)V

    .line 149
    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 152
    new-array v7, v4, [F

    .line 155
    aput v13, v7, v17

    .line 157
    const/high16 v8, 0x3f800000    # 1.0f

    .line 159
    aput v8, v7, v5

    .line 161
    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 163
    move-result-object v7

    .line 166
    new-instance v8, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda2;

    .line 167
    const/16 v9, 0x9

    .line 169
    invoke-direct {v8, v0, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;I)V

    .line 171
    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 174
    new-array v8, v4, [F

    .line 177
    aput v11, v8, v17

    .line 179
    aput v12, v8, v5

    .line 181
    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 183
    move-result-object v8

    .line 186
    new-instance v9, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda2;

    .line 187
    const/16 v10, 0xa

    .line 189
    invoke-direct {v9, v0, v10}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;I)V

    .line 191
    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 194
    new-array v9, v4, [F

    .line 197
    aput v14, v9, v17

    .line 199
    const/4 v10, 0x0

    .line 201
    aput v10, v9, v5

    .line 202
    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 204
    move-result-object v9

    .line 207
    new-instance v10, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda2;

    .line 208
    const/16 v11, 0xb

    .line 210
    invoke-direct {v10, v0, v11}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;I)V

    .line 212
    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 215
    new-array v10, v4, [F

    .line 218
    aput v15, v10, v17

    .line 220
    const/high16 v11, 0x3fc00000    # 1.5f

    .line 222
    aput v11, v10, v5

    .line 224
    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 226
    move-result-object v5

    .line 229
    new-instance v10, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda2;

    .line 230
    const/16 v11, 0xc

    .line 232
    invoke-direct {v10, v0, v11}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;I)V

    .line 234
    invoke-virtual {v5, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 237
    move-object/from16 v18, v1

    .line 240
    move-object/from16 v19, v2

    .line 242
    move-object/from16 v20, v3

    .line 244
    move-object/from16 v21, v6

    .line 246
    move-object/from16 v22, v7

    .line 248
    move-object/from16 v23, v8

    .line 250
    move-object/from16 v24, v9

    .line 252
    move-object/from16 v25, v5

    .line 254
    filled-new-array/range {v18 .. v25}, [Landroid/animation/Animator;

    .line 256
    move-result-object v1

    .line 259
    move-object/from16 v2, p0

    .line 260
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 262
    iput-object v2, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 265
    new-instance v1, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$PhysicBasedInterpolator;

    .line 267
    const v3, 0x3f666666    # 0.9f

    .line 269
    const v5, 0x3f59999a    # 0.85f

    .line 272
    invoke-direct {v1, v3, v5}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$PhysicBasedInterpolator;-><init>(FF)V

    .line 275
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 278
    iget-object v1, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 281
    const-wide/16 v2, 0x15e

    .line 283
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 285
    iget-object v1, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 288
    new-instance v2, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$4;

    .line 290
    invoke-direct {v2, v0}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$4;-><init>(Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;)V

    .line 292
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 295
    iget-object v1, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 298
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 300
    iget-object v1, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 303
    iput-object v1, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mBackgroundAnimatorSet:Landroid/animation/AnimatorSet;

    .line 305
    new-array v1, v4, [F

    .line 307
    fill-array-data v1, :array_0

    .line 309
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 312
    move-result-object v1

    .line 315
    iput-object v1, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    .line 316
    new-instance v2, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda2;

    .line 318
    const/4 v3, 0x0

    .line 320
    invoke-direct {v2, v0, v3}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;I)V

    .line 321
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 324
    iget-object v1, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    .line 327
    new-instance v2, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$PhysicBasedInterpolator;

    .line 329
    const v3, 0x3f7d70a4    # 0.99f

    .line 331
    const v4, 0x3f2b851f    # 0.67f

    .line 334
    invoke-direct {v2, v3, v4}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$PhysicBasedInterpolator;-><init>(FF)V

    .line 337
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 340
    iget-object v1, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    .line 343
    const-wide/16 v2, 0x1c2

    .line 345
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 347
    iget-object v1, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    .line 350
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 352
    iget-object v1, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mMainHandler:Landroid/os/Handler;

    .line 355
    new-instance v2, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda1;

    .line 357
    const/4 v3, 0x4

    .line 359
    invoke-direct {v2, v0, v3}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;I)V

    .line 360
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 363
    invoke-static {}, Lcom/android/keyguard/analytics/AnalyticsHelper;->getInstance()Lcom/android/keyguard/analytics/AnalyticsHelper;

    .line 366
    move-result-object v1

    .line 369
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 370
    new-instance v2, Ljava/util/HashMap;

    .line 373
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 375
    const-string v3, "lock_screen_action"

    .line 378
    const-string v4, "action_enter_camera_view"

    .line 380
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string v3, "keyguard_action"

    .line 385
    invoke-virtual {v1, v3, v2}, Lcom/android/keyguard/analytics/AnalyticsHelper;->track(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 387
    invoke-static {}, Lcom/android/keyguard/analytics/AnalyticsHelper;->getInstance()Lcom/android/keyguard/analytics/AnalyticsHelper;

    .line 390
    move-result-object v1

    .line 393
    invoke-virtual {v1, v4}, Lcom/android/keyguard/analytics/AnalyticsHelper;->trackPageStart(Ljava/lang/String;)V

    .line 394
    const-string/jumbo v1, "start camera activity"

    .line 397
    move-object/from16 v2, v16

    .line 400
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v0, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mContext:Landroid/content/Context;

    .line 405
    new-instance v1, Landroid/content/Intent;

    .line 407
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 409
    const v2, 0x10808000

    .line 412
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 415
    const-string v2, "ShowCameraWhenLocked"

    .line 418
    const/4 v3, 0x1

    .line 420
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 421
    const-string v2, "StartActivityWhenLocked"

    .line 424
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 426
    const-string v2, "android.media.action.STILL_IMAGE_CAMERA"

    .line 429
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    new-instance v2, Landroid/content/ComponentName;

    .line 434
    const-string v3, "com.android.camera"

    .line 436
    const-string v4, "com.android.camera.Camera"

    .line 438
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 443
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 446
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 448
    const-class v0, Lcom/miui/systemui/analytics/SystemUIStat;

    .line 451
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 453
    move-result-object v0

    .line 456
    check-cast v0, Lcom/miui/systemui/analytics/SystemUIStat;

    .line 457
    const-string/jumbo v1, "\u6ed1\u52a8\u76f8\u673aicon\u8fdb\u5165\u76f8\u673a"

    .line 459
    invoke-virtual {v0, v1}, Lcom/miui/systemui/analytics/SystemUIStat;->handleKeyguardActionEvent(Ljava/lang/String;)V

    .line 462
    goto/16 :goto_0

    .line 465
    :cond_1
    invoke-virtual {v0}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->cancelAnim()V

    .line 467
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 470
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 472
    iput-object v1, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 475
    new-array v1, v4, [F

    .line 477
    iget v2, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mActiveAnimPer:F

    .line 479
    const/4 v3, 0x0

    .line 481
    aput v2, v1, v3

    .line 482
    const/4 v2, 0x0

    .line 484
    const/4 v3, 0x1

    .line 485
    aput v2, v1, v3

    .line 486
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 488
    move-result-object v1

    .line 491
    new-instance v2, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda2;

    .line 492
    invoke-direct {v2, v0, v3}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;I)V

    .line 494
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 497
    new-instance v2, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$PhysicBasedInterpolator;

    .line 500
    const v5, 0x3f4ccccd    # 0.8f

    .line 502
    const v6, 0x3f2b851f    # 0.67f

    .line 505
    invoke-direct {v2, v5, v6}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$PhysicBasedInterpolator;-><init>(FF)V

    .line 508
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 511
    const-wide/16 v6, 0x1c2

    .line 514
    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 516
    new-array v2, v4, [F

    .line 519
    iget v6, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mMoveYPer:F

    .line 521
    const/4 v7, 0x0

    .line 523
    aput v6, v2, v7

    .line 524
    const/4 v6, 0x0

    .line 526
    aput v6, v2, v3

    .line 527
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 529
    move-result-object v2

    .line 532
    new-instance v3, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda2;

    .line 533
    invoke-direct {v3, v0, v4}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;I)V

    .line 535
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 538
    new-instance v3, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$PhysicBasedInterpolator;

    .line 541
    const v6, 0x3f2b851f    # 0.67f

    .line 543
    invoke-direct {v3, v5, v6}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$PhysicBasedInterpolator;-><init>(FF)V

    .line 546
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 549
    const-wide/16 v6, 0x1c2

    .line 552
    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 554
    new-array v3, v4, [F

    .line 557
    iget v4, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mMoveDistance:F

    .line 559
    const/4 v6, 0x0

    .line 561
    aput v4, v3, v6

    .line 562
    const/4 v4, 0x0

    .line 564
    const/4 v6, 0x1

    .line 565
    aput v4, v3, v6

    .line 566
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 568
    move-result-object v3

    .line 571
    new-instance v4, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda2;

    .line 572
    const/4 v6, 0x3

    .line 574
    invoke-direct {v4, v0, v6}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;I)V

    .line 575
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 578
    new-instance v4, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$PhysicBasedInterpolator;

    .line 581
    const v6, 0x3f35c28f    # 0.71f

    .line 583
    invoke-direct {v4, v5, v6}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$PhysicBasedInterpolator;-><init>(FF)V

    .line 586
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 589
    const-wide/16 v4, 0x2bc

    .line 592
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 594
    iget-object v4, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 597
    new-instance v5, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$5;

    .line 599
    invoke-direct {v5, v0}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$5;-><init>(Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;)V

    .line 601
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 604
    iget-object v4, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 607
    filled-new-array {v1, v2, v3}, [Landroid/animation/Animator;

    .line 609
    move-result-object v1

    .line 612
    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 613
    iget-object v0, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 616
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 618
    :goto_0
    return-void

    .line 621
    :pswitch_1
    iget-object v1, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/MiuiKeyguardCameraView;

    .line 622
    iget v3, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda1;->f$1:F

    .line 624
    iget v0, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda1;->f$2:F

    .line 626
    iget-object v1, v1, Lcom/android/keyguard/MiuiKeyguardCameraView;->mMiuiKeyguardCameraView:Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;

    .line 628
    iget-boolean v4, v1, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mShowing:Z

    .line 630
    if-eqz v4, :cond_2

    .line 632
    iget-boolean v4, v1, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIsPendingStartCamera:Z

    .line 634
    if-eqz v4, :cond_2

    .line 636
    goto :goto_1

    .line 638
    :cond_2
    invoke-virtual {v1}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->cancelAnim()V

    .line 639
    iput v3, v1, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mInitialTouchX:F

    .line 642
    iput v0, v1, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mInitialTouchY:F

    .line 644
    const v4, 0x3f19999a    # 0.6f

    .line 646
    iput v4, v1, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mMoveActivePer:F

    .line 649
    iput v3, v1, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mTouchX:F

    .line 651
    iput v0, v1, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mTouchY:F

    .line 653
    const/4 v0, 0x0

    .line 655
    iput v0, v1, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mMoveYPer:F

    .line 656
    iget-object v3, v1, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mBackgroundView:Landroid/view/View;

    .line 658
    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 660
    iget-object v3, v1, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mCameraScrimView:Landroid/view/View;

    .line 663
    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 665
    const/4 v3, 0x0

    .line 668
    iput-boolean v3, v1, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIsActive:Z

    .line 669
    iput v0, v1, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mActiveAnimPer:F

    .line 671
    const/4 v0, 0x1

    .line 673
    iput-boolean v0, v1, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mTouchDownInitial:Z

    .line 674
    new-instance v3, Ljava/lang/StringBuilder;

    .line 676
    const-string/jumbo v4, "show "

    .line 678
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 681
    iget-boolean v4, v1, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mShowing:Z

    .line 684
    invoke-static {v3, v4, v2}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 686
    iget-boolean v2, v1, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mShowing:Z

    .line 689
    if-eqz v2, :cond_3

    .line 691
    goto :goto_1

    .line 693
    :cond_3
    iput-boolean v0, v1, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mShowing:Z

    .line 694
    const/4 v2, 0x0

    .line 696
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 697
    iget-object v2, v1, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mCallBack:Lcom/android/keyguard/MiuiKeyguardCameraView$MainThreadCallback;

    .line 700
    if-eqz v2, :cond_4

    .line 702
    invoke-virtual {v2, v0}, Lcom/android/keyguard/MiuiKeyguardCameraView$MainThreadCallback;->onVisibilityChanged(Z)V

    .line 704
    :cond_4
    invoke-virtual {v1, v0}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->updateKeepScreenOnFlag(Z)V

    .line 707
    :goto_1
    return-void

    .line 710
    :goto_2
    iget-object v1, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/MiuiKeyguardCameraView;

    .line 711
    iget v2, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda1;->f$1:F

    .line 713
    iget v0, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda1;->f$2:F

    .line 715
    iget-object v1, v1, Lcom/android/keyguard/MiuiKeyguardCameraView;->mMiuiKeyguardCameraView:Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;

    .line 717
    iget-boolean v3, v1, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mTouchDownInitial:Z

    .line 719
    if-nez v3, :cond_5

    .line 721
    goto :goto_3

    .line 723
    :cond_5
    iput v2, v1, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mTouchX:F

    .line 724
    iput v0, v1, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mTouchY:F

    .line 726
    iget v3, v1, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mInitialTouchX:F

    .line 728
    cmpl-float v2, v2, v3

    .line 730
    if-lez v2, :cond_6

    .line 732
    iput v3, v1, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mTouchX:F

    .line 734
    :cond_6
    iget v2, v1, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mInitialTouchY:F

    .line 736
    cmpl-float v0, v0, v2

    .line 738
    if-lez v0, :cond_7

    .line 740
    iput v2, v1, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mTouchY:F

    .line 742
    :cond_7
    iget v0, v1, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mTouchX:F

    .line 744
    sub-float/2addr v3, v0

    .line 746
    float-to-double v2, v3

    .line 747
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 748
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 750
    move-result-wide v2

    .line 753
    iget v0, v1, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mInitialTouchY:F

    .line 754
    iget v6, v1, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mTouchY:F

    .line 756
    sub-float/2addr v0, v6

    .line 758
    float-to-double v6, v0

    .line 759
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 760
    move-result-wide v4

    .line 763
    add-double/2addr v4, v2

    .line 764
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 765
    move-result-wide v2

    .line 768
    double-to-float v0, v2

    .line 769
    iput v0, v1, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mMoveDistance:F

    .line 770
    invoke-virtual {v1}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->handleMoveDistanceChanged()V

    .line 772
    :goto_3
    return-void

    .line 775
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 776
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 784
.end method
