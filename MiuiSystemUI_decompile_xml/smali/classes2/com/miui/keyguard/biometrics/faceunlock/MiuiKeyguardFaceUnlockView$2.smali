.class public final Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/sysuiinterfaces/assist/IKeyguardUpdateMonitorCallback;


# instance fields
.field public final synthetic this$0:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;


# direct methods
.method public constructor <init>(Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$2;->this$0:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$2;->this$0:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;

    .line 2
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mAnimationHandler:Landroid/os/Handler;

    .line 4
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mDelayedHide:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$7;

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mFaceUnlockAnimationRuning:Z

    .line 12
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->updateFaceUnlockIconStatus()V

    .line 14
    return-void
    .line 17
.end method

.method public final onBiometricAuthenticated(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 4

    .line 1
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 2
    if-ne p1, v0, :cond_3

    .line 4
    sget p1, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->$r8$clinit:I

    .line 6
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$2;->this$0:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;

    .line 8
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->shouldFaceUnlockViewExecuteAnimation()Z

    .line 10
    move-result p1

    .line 13
    if-eqz p1, :cond_3

    .line 14
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mKeyguardCommonSettingObserver:Lmiui/stub/MiuiStub$15;

    .line 16
    invoke-virtual {p1}, Lmiui/stub/MiuiStub$15;->getFaceUnlockSuccessStayScreen()Z

    .line 18
    move-result p1

    .line 21
    if-eqz p1, :cond_3

    .line 22
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mUpdateMonitor:Lmiui/stub/MiuiStub$3;

    .line 24
    invoke-virtual {p1}, Lmiui/stub/MiuiStub$3;->isPrimaryBouncerIsOrWillBeShowing()Z

    .line 26
    move-result p1

    .line 29
    if-nez p1, :cond_3

    .line 30
    const-class p1, Lcom/miui/interfaces/IHapticFeedBack;

    .line 32
    invoke-static {p1}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    move-result-object p1

    .line 37
    check-cast p1, Lcom/miui/interfaces/IHapticFeedBack;

    .line 38
    check-cast p1, Lcom/miui/systemui/functions/HapticFeedBackImpl;

    .line 40
    const-string v0, "mesh_light"

    .line 42
    const/4 v1, -0x1

    .line 44
    const/16 v2, 0xce

    .line 45
    const/4 v3, 0x0

    .line 47
    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/miui/systemui/functions/HapticFeedBackImpl;->extExtHapticFeedback(ILjava/lang/String;II)V

    .line 48
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mFaceUnlockAnimation:Landroid/animation/AnimatorSet;

    .line 51
    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 55
    move-result p1

    .line 58
    if-eqz p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mFaceUnlockAnimation:Landroid/animation/AnimatorSet;

    .line 61
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 63
    :cond_0
    iget-boolean p1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mIsUnlockTimeoutShowing:Z

    .line 66
    if-eqz p1, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->resetViewFromTimeOutAnimation()V

    .line 70
    :cond_1
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mRingIV:Landroid/widget/ImageView;

    .line 73
    const/4 v0, 0x0

    .line 75
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 76
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mRingIV:Landroid/widget/ImageView;

    .line 79
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setRotationY(F)V

    .line 81
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mRingIV:Landroid/widget/ImageView;

    .line 84
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 86
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mFaceIV:Landroid/widget/ImageView;

    .line 89
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setRotationY(F)V

    .line 91
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mFaceIV:Landroid/widget/ImageView;

    .line 94
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 96
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mUpdateMonitor:Lmiui/stub/MiuiStub$3;

    .line 99
    invoke-virtual {p1}, Lmiui/stub/MiuiStub$3;->isPrimaryBouncerIsOrWillBeShowing()Z

    .line 101
    move-result p1

    .line 104
    if-nez p1, :cond_2

    .line 105
    iget-boolean p1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mLightLockWallpaper:Z

    .line 107
    if-eqz p1, :cond_2

    .line 109
    const p1, 0x7f080c57    # @drawable/face_unlock_black_success_ani 'res/drawable-440dpi/face_unlock_black_success_ani.xml'

    .line 111
    goto :goto_0

    .line 114
    :cond_2
    const p1, 0x7f080c5e    # @drawable/face_unlock_success_ani 'res/drawable-440dpi/face_unlock_success_ani.xml'

    .line 115
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 118
    move-result-object v0

    .line 121
    new-instance v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    .line 122
    invoke-direct {v1, v0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;-><init>(Landroid/content/Context;)V

    .line 124
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 127
    move-result-object v2

    .line 130
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 131
    move-result-object v0

    .line 134
    sget-object v3, Landroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    .line 135
    invoke-virtual {v2, p1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 137
    move-result-object p1

    .line 140
    iget-object v0, v1, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mCallback:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$1;

    .line 141
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 143
    new-instance v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;

    .line 146
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 148
    move-result-object v2

    .line 151
    invoke-direct {v0, v2}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 152
    iput-object p1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    .line 155
    iput-object v1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mSuccessfulAnimation:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    .line 157
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mSuccessAnimationListener:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$8;

    .line 159
    invoke-virtual {v1, p1}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    .line 161
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mFaceIV:Landroid/widget/ImageView;

    .line 164
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mSuccessfulAnimation:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    .line 166
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mSuccessfulAnimation:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    .line 171
    invoke-virtual {p1}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->start()V

    .line 173
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mContext:Landroid/content/Context;

    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 178
    move-result-object p1

    .line 181
    const v0, 0x7f13040c    # @string/face_unlock_success 'Unlocked successfully'

    .line 182
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 185
    move-result-object p1

    .line 188
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 189
    :cond_3
    return-void
    .line 192
.end method

.method public final onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$2;->this$0:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;

    .line 2
    iget-object p2, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mAnimationHandler:Landroid/os/Handler;

    .line 4
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mDelayedHide:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$7;

    .line 6
    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    const/4 p2, 0x0

    .line 11
    iput-boolean p2, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mFaceUnlockAnimationRuning:Z

    .line 12
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->updateFaceUnlockIconStatus()V

    .line 14
    sget-object p2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 17
    if-ne p3, p2, :cond_0

    .line 19
    const/4 p2, 0x3

    .line 21
    if-ne p1, p2, :cond_0

    .line 22
    iget-boolean p1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mIsPadFaceView:Z

    .line 24
    if-eqz p1, :cond_0

    .line 26
    invoke-static {p0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->-$$Nest$mstartFaceUnlockTimeOutAnimation(Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;)V

    .line 28
    :cond_0
    return-void
    .line 31
.end method

.method public final onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 1
    sget-object p2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 2
    if-ne p3, p2, :cond_1

    .line 4
    const/16 p2, 0x2711

    .line 6
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$2;->this$0:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;

    .line 8
    if-ne p1, p2, :cond_0

    .line 10
    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mFaceUnlockAnimationRuning:Z

    .line 13
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->updateFaceUnlockIconStatus()V

    .line 15
    goto :goto_0

    .line 18
    :cond_0
    sget p1, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->$r8$clinit:I

    .line 19
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->shouldFaceUnlockViewExecuteAnimation()Z

    .line 21
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    invoke-static {p0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->-$$Nest$mstartFaceUnlockAnimation(Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;)V

    .line 27
    :cond_1
    :goto_0
    return-void
    .line 30
.end method

.method public final onKeyguardBouncerStateChanged(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$2;->this$0:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;

    .line 2
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->updateFaceUnlockIconStatus()V

    .line 4
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mIsPadFaceView:Z

    .line 7
    if-eqz v0, :cond_3

    .line 9
    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->resetViewFromTimeOutAnimation()V

    .line 13
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mUpdateMonitor:Lmiui/stub/MiuiStub$3;

    .line 16
    sget-object v0, Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;->FACE_AUTH_UPDATED_PRIMARY_BOUNCER_SHOWN_OR_WILL_BE_SHOWN:Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;

    .line 18
    const/4 v1, 0x2

    .line 20
    invoke-virtual {p1, v1, v0}, Lmiui/stub/MiuiStub$3;->requestFaceAuth(ILcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;)V

    .line 21
    goto :goto_0

    .line 24
    :cond_0
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mUpdateMonitor:Lmiui/stub/MiuiStub$3;

    .line 25
    invoke-virtual {p1}, Lmiui/stub/MiuiStub$3;->isFaceDetectionRunning()Z

    .line 27
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    invoke-static {p0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->-$$Nest$mstartFaceUnlockAnimation(Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;)V

    .line 33
    goto :goto_0

    .line 36
    :cond_1
    iget-boolean p1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mFirstBouncerChange:Z

    .line 37
    if-nez p1, :cond_2

    .line 39
    invoke-static {p0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->-$$Nest$mstartFaceUnlockTimeOutAnimation(Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;)V

    .line 41
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->mFirstBouncerChange:Z

    .line 45
    :cond_3
    return-void
    .line 47
.end method

.method public final onStrongAuthStateChanged()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView$2;->this$0:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;

    .line 2
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->updateFaceUnlockIconStatus()V

    .line 4
    return-void
    .line 7
.end method
