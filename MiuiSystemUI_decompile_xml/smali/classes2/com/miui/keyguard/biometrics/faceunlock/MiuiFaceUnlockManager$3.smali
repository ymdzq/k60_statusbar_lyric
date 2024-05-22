.class public final Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager$3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;


# instance fields
.field public final synthetic this$0:Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;


# direct methods
.method public constructor <init>(Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager$3;->this$0:Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChargeAnimationShowingChanged(Z)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager$3;->this$0:Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;

    .line 4
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mUpdateMonitor:Lmiui/stub/MiuiStub$3;

    .line 6
    sget-object p1, Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;->FACE_AUTH_CHARGE_ANIMATION_CHANGED:Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;

    .line 8
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0, p1}, Lmiui/stub/MiuiStub$3;->requestFaceAuth(ILcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;)V

    .line 11
    :cond_0
    return-void
    .line 14
.end method

.method public final onKeyguardOccludedChanged(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager$3;->this$0:Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;

    .line 2
    iget-boolean v1, v0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mKeyguardOccluded:Z

    .line 4
    if-eq v1, p1, :cond_0

    .line 6
    iget v0, v0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mScrollProgress:F

    .line 8
    const/4 v1, 0x0

    .line 10
    cmpl-float v0, v0, v1

    .line 11
    if-nez v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager$3;->this$0:Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;

    .line 15
    iget-object v0, v0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mUpdateMonitor:Lmiui/stub/MiuiStub$3;

    .line 17
    sget-object v1, Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;->FACE_AUTH_UPDATED_KEYGUARD_OCCLUSION_CHANGED:Lcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;

    .line 19
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v2, v1}, Lmiui/stub/MiuiStub$3;->requestFaceAuth(ILcom/miui/sysuiinterfaces/assist/IFaceAuthUiEvent;)V

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager$3;->this$0:Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;

    .line 25
    iput-boolean p1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mKeyguardOccluded:Z

    .line 27
    return-void
    .line 29
.end method

.method public final onKeyguardShowingChanged(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager$3;->this$0:Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;

    .line 2
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mKeyguardShowing:Z

    .line 4
    if-eq v0, p1, :cond_0

    .line 6
    if-nez p1, :cond_0

    .line 8
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mUpdateMonitorInjector:Lmiui/stub/MiuiStub$13;

    .line 10
    invoke-virtual {v0}, Lmiui/stub/MiuiStub$13;->isFaceUnlock()Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mKeyguardCommonSettingObserver:Lmiui/stub/MiuiStub$15;

    .line 18
    invoke-virtual {v0}, Lmiui/stub/MiuiStub$15;->getFaceUnlockSuccessStayScreen()Z

    .line 20
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    const-string v0, "miui_face"

    .line 26
    const-string v1, "face unlock success and keyguard dismiss"

    .line 28
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_0
    iput-boolean p1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mKeyguardShowing:Z

    .line 33
    return-void
    .line 35
.end method

.method public final onLockScreenMagazinePreViewVisibilityChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager$3;->this$0:Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;

    .line 2
    iput-boolean p1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mLockScreenMagazinePreViewVisibility:Z

    .line 4
    return-void
    .line 6
.end method

.method public final onRegionChanged()V
    .locals 5

    .line 1
    const-string v0, "miui_face"

    .line 2
    const-string v1, "onRegionChanged"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 9
    if-eqz v1, :cond_0

    .line 11
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager$3;->this$0:Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;

    .line 13
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mContext:Landroid/content/Context;

    .line 15
    invoke-static {v1}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockUtils;->isHardwareDetected(Landroid/content/Context;)Z

    .line 17
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    const-string v1, "deleteFeature faceId=0"

    .line 23
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    new-instance v0, Landroid/hardware/face/Face;

    .line 28
    const-string v1, "0"

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 32
    move-result v1

    .line 35
    const-wide/16 v2, 0x0

    .line 36
    const/4 v4, 0x0

    .line 38
    invoke-direct {v0, v4, v1, v2, v3}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 39
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 42
    move-result v1

    .line 45
    iget-object v2, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mRemovalCallback:Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager$1;

    .line 46
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mFaceManager:Landroid/hardware/face/BaseMiuiFaceManager;

    .line 48
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/face/BaseMiuiFaceManager;->remove(Landroid/hardware/face/Face;ILandroid/hardware/face/FaceManager$RemovalCallback;)V

    .line 50
    :cond_0
    return-void
    .line 53
.end method

.method public final onStartedWakingUpWithReason(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "android.policy:POWER"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    const-string v0, "com.android.systemui:PICK_UP"

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 12
    move-result p1

    .line 15
    if-eqz p1, :cond_3

    .line 16
    :cond_0
    const-class p1, Lmiui/stub/MiuiStub$3;

    .line 18
    invoke-static {p1}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 23
    check-cast p1, Lmiui/stub/MiuiStub$3;

    .line 24
    invoke-virtual {p1}, Lmiui/stub/MiuiStub$3;->userNeedsStrongAuth()Z

    .line 26
    move-result p1

    .line 29
    if-nez p1, :cond_3

    .line 30
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager$3;->this$0:Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;

    .line 32
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->isFaceAuthEnabled()Z

    .line 34
    move-result p1

    .line 37
    if-eqz p1, :cond_3

    .line 38
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mKeyguardCommonSettingObserver:Lmiui/stub/MiuiStub$15;

    .line 40
    invoke-virtual {p1}, Lmiui/stub/MiuiStub$15;->getFaceUnlockSuccessStayScreen()Z

    .line 42
    move-result p1

    .line 45
    const/4 v0, 0x0

    .line 46
    if-nez p1, :cond_2

    .line 47
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mContext:Landroid/content/Context;

    .line 49
    invoke-static {p1}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockUtils;->isSupportScreenOnDelayed(Landroid/content/Context;)Z

    .line 51
    move-result p1

    .line 54
    if-eqz p1, :cond_2

    .line 55
    const-string/jumbo p1, "support_tee_face_unlock"

    .line 57
    invoke-static {p1, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    .line 60
    move-result p1

    .line 63
    if-nez p1, :cond_1

    .line 64
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mFaceManager:Landroid/hardware/face/BaseMiuiFaceManager;

    .line 66
    invoke-virtual {p1}, Landroid/hardware/face/BaseMiuiFaceManager;->isFaceUnlockInited()Z

    .line 68
    move-result p1

    .line 71
    if-eqz p1, :cond_2

    .line 72
    :cond_1
    const/4 p1, 0x1

    .line 74
    invoke-static {p1}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockUtils;->setScreenTurnOnDelayed(Z)V

    .line 75
    const-string p1, "miui_face"

    .line 78
    const-string v0, "face unlock when screen on delayed"

    .line 80
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-wide/16 v0, 0x226

    .line 85
    iput-wide v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mScreenOnDelay:J

    .line 87
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mWorkerHandler:Landroid/os/Handler;

    .line 89
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->resetScreenTurnOnDelayedState:Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager$$ExternalSyntheticLambda0;

    .line 91
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 93
    iget-wide v1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mScreenOnDelay:J

    .line 96
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 98
    goto :goto_0

    .line 101
    :cond_2
    invoke-static {v0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockUtils;->setScreenTurnOnDelayed(Z)V

    .line 102
    const-wide/16 v0, 0x0

    .line 105
    iput-wide v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mScreenOnDelay:J

    .line 107
    :cond_3
    :goto_0
    return-void
    .line 109
.end method
