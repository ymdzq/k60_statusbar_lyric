.class public final Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/sysuiinterfaces/IWakefulnessLifecycle$IObserver;


# instance fields
.field public final synthetic this$0:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;


# direct methods
.method public constructor <init>(Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$1;->this$0:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onFinishedGoingToSleep()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$1;->this$0:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;

    .line 2
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mAnimationHandler:Landroid/os/Handler;

    .line 4
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mDelayedHide:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$7;

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mFaceUnlockAnimationRuning:Z

    .line 12
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->updateFaceUnlockIconStatus()V

    .line 14
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->resetViewFromTimeOutAnimation()V

    .line 17
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mAnimationHandler:Landroid/os/Handler;

    .line 20
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mDelayedHide:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$7;

    .line 22
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 24
    return-void
    .line 27
.end method

.method public final onStartedGoingToSleep()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$1;->this$0:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;

    .line 3
    invoke-virtual {p0, v0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->setAlpha(F)V

    .line 5
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mGoingToSleep:Z

    .line 9
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mSuccessfulAnimation:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->isRunning()Z

    .line 15
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mSuccessfulAnimation:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    .line 21
    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->stop()V

    .line 23
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mSuccessAniRunning:Z

    .line 27
    :cond_0
    return-void
    .line 29
.end method

.method public final onStartedWakingUp()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$1;->this$0:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;

    .line 4
    const/4 v2, 0x0

    .line 6
    iput-boolean v2, v1, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mGoingToSleep:Z

    .line 7
    const/high16 v3, 0x3f800000    # 1.0f

    .line 9
    invoke-virtual {v1, v3}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->setAlpha(F)V

    .line 11
    sget-boolean v4, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 14
    const v5, 0x3f5c28f6    # 0.86f

    .line 16
    const v6, 0x3f666666    # 0.9f

    .line 19
    const/4 v7, 0x0

    .line 22
    const-wide/16 v8, 0x15e

    .line 23
    const/4 v10, 0x1

    .line 25
    if-eqz v4, :cond_0

    .line 26
    iget-object v4, v1, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mUpdateMonitor:Lmiui/stub/MiuiStub$3;

    .line 28
    invoke-virtual {v4}, Lmiui/stub/MiuiStub$3;->userFaceNeedsStrongAuth()Z

    .line 30
    move-result v4

    .line 33
    if-eqz v4, :cond_0

    .line 34
    iput-boolean v2, v1, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mWaitWakeupAimation:Z

    .line 36
    invoke-virtual {v1, v2}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->setVisibility(I)V

    .line 38
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    .line 41
    invoke-direct {v4, v7, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 43
    new-instance v3, Landroid/view/animation/ScaleAnimation;

    .line 46
    const v12, 0x3f19999a    # 0.6f

    .line 48
    const/high16 v13, 0x3f800000    # 1.0f

    .line 51
    const v14, 0x3f19999a    # 0.6f

    .line 53
    const/high16 v15, 0x3f800000    # 1.0f

    .line 56
    const/16 v16, 0x1

    .line 58
    const/high16 v17, 0x3f000000    # 0.5f

    .line 60
    const/16 v18, 0x1

    .line 62
    const/high16 v19, 0x3f000000    # 0.5f

    .line 64
    move-object v11, v3

    .line 66
    invoke-direct/range {v11 .. v19}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 67
    new-instance v7, Landroid/view/animation/AnimationSet;

    .line 70
    invoke-direct {v7, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 72
    invoke-virtual {v7, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 75
    invoke-virtual {v7, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 78
    invoke-virtual {v7, v8, v9}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 81
    new-instance v3, Lcom/miui/utils/animation/SpringInterpolator;

    .line 84
    invoke-direct {v3, v6, v5}, Lcom/miui/utils/animation/SpringInterpolator;-><init>(FF)V

    .line 86
    invoke-virtual {v7, v3}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 89
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 92
    iget-object v1, v1, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mAnimationHandler:Landroid/os/Handler;

    .line 95
    new-instance v3, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$1$$ExternalSyntheticLambda0;

    .line 97
    invoke-direct {v3, v0, v2}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$1$$ExternalSyntheticLambda0;-><init>(Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$1;I)V

    .line 99
    invoke-virtual {v1, v3, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 102
    goto/16 :goto_0

    .line 105
    :cond_0
    iget-object v4, v1, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mFaceUnlockManager:Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;

    .line 107
    iget-boolean v4, v4, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mWakeupByNotification:Z

    .line 109
    if-eqz v4, :cond_1

    .line 111
    iget-object v4, v1, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mKeyguardCommonSettingObserver:Lmiui/stub/MiuiStub$15;

    .line 113
    iget-object v4, v4, Lmiui/stub/MiuiStub$15;->this$0:Lmiui/stub/MiuiStub;

    .line 115
    iget-object v4, v4, Lmiui/stub/MiuiStub;->mMiuiModuleProvider:Lmiui/stub/MiuiStub$MiuiModuleProvider;

    .line 117
    iget-object v4, v4, Lmiui/stub/MiuiStub$MiuiModuleProvider;->mKeyguardCommonSettingObserver:Ldagger/Lazy;

    .line 119
    invoke-interface {v4}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 121
    move-result-object v4

    .line 124
    check-cast v4, Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 125
    iget-boolean v4, v4, Lcom/android/keyguard/KeyguardCommonSettingObserver;->faceUnlockStartByNotificationScreenOn:Z

    .line 127
    if-nez v4, :cond_1

    .line 129
    iget-boolean v4, v1, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mIsPadFaceView:Z

    .line 131
    if-eqz v4, :cond_1

    .line 133
    invoke-virtual {v1}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->updateFaceUnlockIconStatus()V

    .line 135
    invoke-static {v1}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->-$$Nest$mstartFaceUnlockTimeOutAnimation(Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;)V

    .line 138
    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    .line 142
    move-result v4

    .line 145
    if-nez v4, :cond_2

    .line 146
    iput-boolean v2, v1, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mWaitWakeupAimation:Z

    .line 148
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 150
    invoke-direct {v0, v7, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 152
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    .line 155
    const v12, 0x3f19999a    # 0.6f

    .line 157
    const/high16 v13, 0x3f800000    # 1.0f

    .line 160
    const v14, 0x3f19999a    # 0.6f

    .line 162
    const/high16 v15, 0x3f800000    # 1.0f

    .line 165
    const/16 v16, 0x1

    .line 167
    const/high16 v17, 0x3f000000    # 0.5f

    .line 169
    const/16 v18, 0x1

    .line 171
    const/high16 v19, 0x3f000000    # 0.5f

    .line 173
    move-object v11, v2

    .line 175
    invoke-direct/range {v11 .. v19}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 176
    new-instance v3, Landroid/view/animation/AnimationSet;

    .line 179
    invoke-direct {v3, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 181
    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 184
    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 187
    invoke-virtual {v3, v8, v9}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 190
    new-instance v0, Lcom/miui/utils/animation/SpringInterpolator;

    .line 193
    invoke-direct {v0, v6, v5}, Lcom/miui/utils/animation/SpringInterpolator;-><init>(FF)V

    .line 195
    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 198
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 201
    iget-object v0, v1, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mContext:Landroid/content/Context;

    .line 204
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 206
    move-result-object v0

    .line 209
    const v2, 0x7f130097    # @string/accessibility_keyguard_face_unlock_view 'Face unlock'

    .line 210
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 213
    move-result-object v0

    .line 216
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 217
    goto :goto_0

    .line 220
    :cond_2
    iput-boolean v10, v1, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mWaitWakeupAimation:Z

    .line 221
    iget-object v1, v1, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mAnimationHandler:Landroid/os/Handler;

    .line 223
    new-instance v2, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$1$$ExternalSyntheticLambda0;

    .line 225
    invoke-direct {v2, v0, v10}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$1$$ExternalSyntheticLambda0;-><init>(Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$1;I)V

    .line 227
    const-wide/16 v3, 0xc8

    .line 230
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 232
    :goto_0
    return-void
    .line 235
.end method
