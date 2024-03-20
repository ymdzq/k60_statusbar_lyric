.class public final Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/miui/interfaces/keyguard/IMiuiFaceUnlockManager;
.implements Lcom/miui/interfaces/ILateInitializer;


# instance fields
.field public final mCallbacks:Ljava/util/ArrayList;

.field public final mContext:Landroid/content/Context;

.field public mDisableLockScreenFaceUnlockAnim:Z

.field public mFaceFailConunt:I

.field public mFaceLockedOut:Z

.field public final mFaceManager:Landroid/hardware/face/BaseMiuiFaceManager;

.field public final mFaceViewList:Ljava/util/ArrayList;

.field public final mHandlerThread:Landroid/os/HandlerThread;

.field public mHasFace:Z

.field public final mKeyguardCommonSettingObserver:Lmiui/stub/MiuiStub$15;

.field public mKeyguardOccluded:Z

.field public mKeyguardShowing:Z

.field public final mKeyguardUpdateMonitorCallback:Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager$2;

.field public mLockScreenMagazinePreViewVisibility:Z

.field public final mMiuiKeyguardUpdateMonitorCallback:Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager$3;

.field public final mRemovalCallback:Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager$1;

.field public mScreenOnDelay:J

.field public volatile mScrollProgress:F

.field public mUpdateMonitor:Lmiui/stub/MiuiStub$3;

.field public mUpdateMonitorInjector:Lmiui/stub/MiuiStub$13;

.field public mWakeupByNotification:Z

.field public final mWorkerHandler:Landroid/os/Handler;

.field public final resetScreenTurnOnDelayedState:Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mCallbacks:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mFaceViewList:Ljava/util/ArrayList;

    .line 17
    new-instance v0, Landroid/os/HandlerThread;

    .line 19
    const-string v1, "face_unlock"

    .line 21
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 23
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 26
    const/4 v1, 0x0

    .line 28
    iput-boolean v1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mDisableLockScreenFaceUnlockAnim:Z

    .line 29
    new-instance v1, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager$1;

    .line 31
    invoke-direct {v1, p0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager$1;-><init>(Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;)V

    .line 33
    iput-object v1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mRemovalCallback:Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager$1;

    .line 36
    new-instance v1, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager$$ExternalSyntheticLambda0;

    .line 38
    invoke-direct {v1}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager$$ExternalSyntheticLambda0;-><init>()V

    .line 40
    iput-object v1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->resetScreenTurnOnDelayedState:Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager$$ExternalSyntheticLambda0;

    .line 43
    new-instance v1, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager$2;

    .line 45
    invoke-direct {v1, p0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager$2;-><init>(Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;)V

    .line 47
    iput-object v1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mKeyguardUpdateMonitorCallback:Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager$2;

    .line 50
    new-instance v1, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager$3;

    .line 52
    invoke-direct {v1, p0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager$3;-><init>(Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;)V

    .line 54
    iput-object v1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mMiuiKeyguardUpdateMonitorCallback:Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager$3;

    .line 57
    const-string v1, "miui_face"

    .line 59
    const-string v2, "MiuiFaceUnlockManager"

    .line 61
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-class v2, Lmiui/stub/MiuiStub$1;

    .line 66
    invoke-static {v2}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 68
    move-result-object v2

    .line 71
    check-cast v2, Lmiui/stub/MiuiStub$1;

    .line 72
    invoke-virtual {v2}, Lmiui/stub/MiuiStub$1;->getSystemUIContext()Landroid/content/Context;

    .line 74
    move-result-object v2

    .line 77
    iput-object v2, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mContext:Landroid/content/Context;

    .line 78
    const-class v3, Lmiui/stub/MiuiStub$15;

    .line 80
    invoke-static {v3}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 82
    move-result-object v3

    .line 85
    check-cast v3, Lmiui/stub/MiuiStub$15;

    .line 86
    iput-object v3, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mKeyguardCommonSettingObserver:Lmiui/stub/MiuiStub$15;

    .line 88
    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    move-result-object v1

    .line 93
    check-cast v1, Landroid/hardware/face/BaseMiuiFaceManager;

    .line 94
    iput-object v1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mFaceManager:Landroid/hardware/face/BaseMiuiFaceManager;

    .line 96
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 98
    new-instance v1, Landroid/os/Handler;

    .line 101
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 103
    move-result-object v0

    .line 106
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 107
    iput-object v1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mWorkerHandler:Landroid/os/Handler;

    .line 110
    return-void
    .line 112
.end method


# virtual methods
.method public final isFaceAuthEnabled()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mContext:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockUtils;->isHardwareDetected(Landroid/content/Context;)Z

    .line 4
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    invoke-static {v0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockUtils;->getFaceManager(Landroid/content/Context;)V

    .line 10
    sget-object v1, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockUtils;->mWeakReferenceFaceManager:Ljava/lang/ref/WeakReference;

    .line 13
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 18
    check-cast v1, Landroid/hardware/face/BaseMiuiFaceManager;

    .line 19
    invoke-virtual {v1}, Landroid/hardware/face/BaseMiuiFaceManager;->isFaceFeatureEnabled()Z

    .line 21
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    invoke-static {v0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockUtils;->hasEnrolledTemplates(Landroid/content/Context;)Z

    .line 27
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mKeyguardCommonSettingObserver:Lmiui/stub/MiuiStub$15;

    .line 33
    iget-object p0, p0, Lmiui/stub/MiuiStub$15;->this$0:Lmiui/stub/MiuiStub;

    .line 35
    iget-object p0, p0, Lmiui/stub/MiuiStub;->mMiuiModuleProvider:Lmiui/stub/MiuiStub$MiuiModuleProvider;

    .line 37
    iget-object p0, p0, Lmiui/stub/MiuiStub$MiuiModuleProvider;->mKeyguardCommonSettingObserver:Ldagger/Lazy;

    .line 39
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 41
    move-result-object p0

    .line 44
    check-cast p0, Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 45
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardCommonSettingObserver;->faceUnlockApplyForKeyguard:Z

    .line 47
    if-eqz p0, :cond_0

    .line 49
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 51
    move-result p0

    .line 54
    if-nez p0, :cond_0

    .line 55
    const/4 p0, 0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const/4 p0, 0x0

    .line 59
    :goto_0
    return p0
    .line 60
.end method

.method public final isFaceUnlockSuccessAndStayScreen()Z
    .locals 1

    .line 1
    const-class v0, Lmiui/stub/MiuiStub$13;

    .line 2
    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lmiui/stub/MiuiStub$13;

    .line 8
    invoke-virtual {v0}, Lmiui/stub/MiuiStub$13;->isFaceUnlock()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mKeyguardCommonSettingObserver:Lmiui/stub/MiuiStub$15;

    .line 16
    invoke-virtual {p0}, Lmiui/stub/MiuiStub$15;->getFaceUnlockSuccessStayScreen()Z

    .line 18
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    const/4 p0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    return p0
    .line 27
.end method

.method public final isShowMessageWhenFaceUnlockSuccess()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mKeyguardCommonSettingObserver:Lmiui/stub/MiuiStub$15;

    .line 2
    iget-object v0, v0, Lmiui/stub/MiuiStub$15;->this$0:Lmiui/stub/MiuiStub;

    .line 4
    iget-object v0, v0, Lmiui/stub/MiuiStub;->mMiuiModuleProvider:Lmiui/stub/MiuiStub$MiuiModuleProvider;

    .line 6
    iget-object v0, v0, Lmiui/stub/MiuiStub$MiuiModuleProvider;->mKeyguardCommonSettingObserver:Ldagger/Lazy;

    .line 8
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 13
    check-cast v0, Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 14
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardCommonSettingObserver;->faceUnlockApplyForKeyguard:Z

    .line 16
    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mKeyguardCommonSettingObserver:Lmiui/stub/MiuiStub$15;

    .line 20
    invoke-virtual {v0}, Lmiui/stub/MiuiStub$15;->getFaceUnlockSuccessStayScreen()Z

    .line 22
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mKeyguardCommonSettingObserver:Lmiui/stub/MiuiStub$15;

    .line 28
    iget-object p0, p0, Lmiui/stub/MiuiStub$15;->this$0:Lmiui/stub/MiuiStub;

    .line 30
    iget-object p0, p0, Lmiui/stub/MiuiStub;->mMiuiModuleProvider:Lmiui/stub/MiuiStub$MiuiModuleProvider;

    .line 32
    iget-object p0, p0, Lmiui/stub/MiuiStub$MiuiModuleProvider;->mKeyguardCommonSettingObserver:Ldagger/Lazy;

    .line 34
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 36
    move-result-object p0

    .line 39
    check-cast p0, Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 40
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardCommonSettingObserver;->faceUnlockSuccessShowMessage:Z

    .line 42
    if-eqz p0, :cond_0

    .line 44
    const/4 p0, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 p0, 0x0

    .line 48
    :goto_0
    return p0
    .line 49
.end method

.method public final registerFaceUnlockCallback(Lcom/miui/interfaces/keyguard/FaceUnlockCallback;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mCallbacks:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    move-result v2

    .line 8
    if-ge v0, v2, :cond_1

    .line 9
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 14
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 15
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 20
    if-ne v1, p1, :cond_0

    .line 21
    return-void

    .line 23
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 24
    goto :goto_0

    .line 26
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 27
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 29
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0, v0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->removeFaceUnlockCallback(Lcom/miui/interfaces/keyguard/FaceUnlockCallback;)V

    .line 36
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->isFaceAuthEnabled()Z

    .line 39
    move-result v0

    .line 42
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mKeyguardCommonSettingObserver:Lmiui/stub/MiuiStub$15;

    .line 43
    invoke-virtual {p0}, Lmiui/stub/MiuiStub$15;->getFaceUnlockSuccessStayScreen()Z

    .line 45
    move-result p0

    .line 48
    invoke-virtual {p1, v0, p0}, Lcom/miui/interfaces/keyguard/FaceUnlockCallback;->onFaceEnableChange(ZZ)V

    .line 49
    return-void
    .line 52
.end method

.method public final removeFaceUnlockCallback(Lcom/miui/interfaces/keyguard/FaceUnlockCallback;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mCallbacks:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 15
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 16
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 21
    if-ne v1, p1, :cond_0

    .line 22
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 24
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 27
    goto :goto_0

    .line 29
    :cond_1
    return-void
    .line 30
.end method

.method public final shouldShowFaceUnlockRetryMessageInBouncer()Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->isFaceAuthEnabled()Z

    .line 2
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mContext:Landroid/content/Context;

    .line 6
    const-class v2, Lmiui/stub/MiuiStub$13;

    .line 8
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mUpdateMonitor:Lmiui/stub/MiuiStub$3;

    .line 14
    invoke-virtual {v0}, Lmiui/stub/MiuiStub$3;->userNeedsStrongAuth()Z

    .line 16
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    invoke-static {v2}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 25
    check-cast v0, Lmiui/stub/MiuiStub$13;

    .line 26
    invoke-virtual {v0}, Lmiui/stub/MiuiStub$13;->isKeyguardShowing()Z

    .line 28
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mFaceLockedOut:Z

    .line 34
    if-nez v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mUpdateMonitor:Lmiui/stub/MiuiStub$3;

    .line 38
    invoke-virtual {v0}, Lmiui/stub/MiuiStub$3;->isSimPinSecure()Z

    .line 40
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mDisableLockScreenFaceUnlockAnim:Z

    .line 46
    if-nez v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mUpdateMonitor:Lmiui/stub/MiuiStub$3;

    .line 50
    invoke-virtual {v0}, Lmiui/stub/MiuiStub$3;->isFingerprintTemporarilyLockout()Z

    .line 52
    move-result v0

    .line 55
    if-nez v0, :cond_1

    .line 56
    invoke-static {v1}, Lcom/miui/utils/configs/MiuiConfigs;->isFoldLargeScreenAndNotPad(Landroid/content/Context;)Z

    .line 58
    move-result v0

    .line 61
    if-eqz v0, :cond_0

    .line 62
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->HAS_CAMERA_IN_LARGESCREEN:Z

    .line 64
    if-nez v0, :cond_0

    .line 66
    move v0, v4

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    move v0, v3

    .line 70
    :goto_0
    if-nez v0, :cond_1

    .line 71
    move v0, v4

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    move v0, v3

    .line 75
    :goto_1
    invoke-static {v2}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 76
    move-result-object v5

    .line 79
    check-cast v5, Lmiui/stub/MiuiStub$13;

    .line 80
    invoke-virtual {v5}, Lmiui/stub/MiuiStub$13;->isKeyguardOccluded()Z

    .line 82
    move-result v5

    .line 85
    iget-object v6, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mUpdateMonitor:Lmiui/stub/MiuiStub$3;

    .line 86
    invoke-virtual {v6}, Lmiui/stub/MiuiStub$3;->isPrimaryBouncerIsOrWillBeShowing()Z

    .line 88
    move-result v6

    .line 91
    if-eqz v6, :cond_4

    .line 92
    if-eqz v0, :cond_3

    .line 94
    if-eqz v5, :cond_2

    .line 96
    invoke-static {v1, v3}, Lcom/miui/systemui/util/CommonUtil;->getTopActivityPkg(Landroid/content/Context;Z)Ljava/lang/String;

    .line 98
    move-result-object p0

    .line 101
    const-string v0, "com.android.camera"

    .line 102
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 104
    move-result p0

    .line 107
    if-nez p0, :cond_3

    .line 108
    :cond_2
    move v3, v4

    .line 110
    :cond_3
    return v3

    .line 111
    :cond_4
    if-eqz v0, :cond_6

    .line 112
    if-nez v5, :cond_6

    .line 114
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mUpdateMonitor:Lmiui/stub/MiuiStub$3;

    .line 116
    invoke-virtual {v0}, Lmiui/stub/MiuiStub$3;->isFaceDetectionRunning()Z

    .line 118
    move-result v0

    .line 121
    if-nez v0, :cond_5

    .line 122
    invoke-static {v2}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 124
    move-result-object v0

    .line 127
    check-cast v0, Lmiui/stub/MiuiStub$13;

    .line 128
    invoke-virtual {v0}, Lmiui/stub/MiuiStub$13;->isFaceUnlock()Z

    .line 130
    move-result v0

    .line 133
    if-nez v0, :cond_5

    .line 134
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    .line 136
    if-eqz v0, :cond_6

    .line 138
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mUpdateMonitor:Lmiui/stub/MiuiStub$3;

    .line 140
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 142
    move-result v1

    .line 145
    iget-object v0, v0, Lmiui/stub/MiuiStub$3;->this$0:Lmiui/stub/MiuiStub;

    .line 146
    iget-object v0, v0, Lmiui/stub/MiuiStub;->mSysUIProvider:Lmiui/stub/MiuiStub$SysUIProvider;

    .line 148
    iget-object v0, v0, Lmiui/stub/MiuiStub$SysUIProvider;->mKeyguardUpdateMonitor:Ldagger/Lazy;

    .line 150
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 152
    move-result-object v0

    .line 155
    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 156
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    .line 158
    move-result v0

    .line 161
    if-nez v0, :cond_6

    .line 162
    :cond_5
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mLockScreenMagazinePreViewVisibility:Z

    .line 164
    if-nez v0, :cond_6

    .line 166
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mUpdateMonitor:Lmiui/stub/MiuiStub$3;

    .line 168
    iget-object p0, p0, Lmiui/stub/MiuiStub$3;->this$0:Lmiui/stub/MiuiStub;

    .line 170
    iget-object p0, p0, Lmiui/stub/MiuiStub;->mSysUIProvider:Lmiui/stub/MiuiStub$SysUIProvider;

    .line 172
    iget-object p0, p0, Lmiui/stub/MiuiStub$SysUIProvider;->mKeyguardUpdateMonitor:Ldagger/Lazy;

    .line 174
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 176
    move-result-object p0

    .line 179
    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 180
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 182
    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 184
    move-result p0

    .line 187
    if-ne p0, v4, :cond_6

    .line 188
    move v3, v4

    .line 190
    :cond_6
    return v3
    .line 191
.end method

.method public final start()V
    .locals 2

    .line 1
    const-class v0, Lmiui/stub/MiuiStub$3;

    .line 2
    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lmiui/stub/MiuiStub$3;

    .line 8
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mUpdateMonitor:Lmiui/stub/MiuiStub$3;

    .line 10
    const-class v0, Lmiui/stub/MiuiStub$13;

    .line 12
    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lmiui/stub/MiuiStub$13;

    .line 18
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mUpdateMonitorInjector:Lmiui/stub/MiuiStub$13;

    .line 20
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mUpdateMonitor:Lmiui/stub/MiuiStub$3;

    .line 22
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mKeyguardUpdateMonitorCallback:Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager$2;

    .line 24
    invoke-virtual {v0, v1}, Lmiui/stub/MiuiStub$3;->registerCallback(Lcom/miui/sysuiinterfaces/assist/IKeyguardUpdateMonitorCallback;)V

    .line 26
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mUpdateMonitorInjector:Lmiui/stub/MiuiStub$13;

    .line 29
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mMiuiKeyguardUpdateMonitorCallback:Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager$3;

    .line 31
    invoke-virtual {v0, p0}, Lmiui/stub/MiuiStub$13;->registerCallback(Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;)V

    .line 33
    return-void
    .line 36
.end method
