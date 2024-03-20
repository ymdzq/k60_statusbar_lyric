.class public final Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mAuthFingerprintId:I

.field public mBLEUnlockState:Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;

.field public mChargeAnimationShowing:Z

.field public final mContext:Landroid/content/Context;

.field public mFaceUnlockMode:I

.field public mFingerprintMode:I

.field public mKeyguardOccluded:Z

.field public mKeyguardShowing:Z

.field public final mMiuiCallbacks:Ljava/util/ArrayList;

.field public mUnlockWay:Ljava/lang/String;

.field public mWakeupReason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->mContext:Landroid/content/Context;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->mMiuiCallbacks:Ljava/util/ArrayList;

    .line 12
    const-string p1, "none"

    .line 14
    iput-object p1, p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->mWakeupReason:Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->mUnlockWay:Ljava/lang/String;

    .line 18
    return-void
    .line 20
.end method

.method public static shouldListenForFingerprintWhenUnlocked()Z
    .locals 5

    .line 1
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 8
    const-class v1, Lcom/miui/interfaces/keyguard/IMiuiFaceUnlockManager;

    .line 10
    invoke-static {v1}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 15
    check-cast v1, Lcom/miui/interfaces/keyguard/IMiuiFaceUnlockManager;

    .line 16
    check-cast v1, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;

    .line 18
    invoke-virtual {v1}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->isFaceUnlockSuccessAndStayScreen()Z

    .line 20
    move-result v1

    .line 23
    const/4 v2, 0x1

    .line 24
    if-nez v1, :cond_2

    .line 25
    const-class v1, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 27
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 32
    check-cast v1, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 33
    iget-object v1, v1, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->mBLEUnlockState:Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;

    .line 35
    sget-object v3, Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;->SUCCEED:Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;

    .line 37
    const/4 v4, 0x0

    .line 39
    if-ne v1, v3, :cond_0

    .line 40
    move v1, v2

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move v1, v4

    .line 44
    :goto_0
    if-nez v1, :cond_2

    .line 45
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 47
    move-result v1

    .line 50
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserUnlockedWithPassword(I)Z

    .line 51
    move-result v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    goto :goto_1

    .line 57
    :cond_1
    move v2, v4

    .line 58
    :cond_2
    :goto_1
    return v2
    .line 59
.end method


# virtual methods
.method public final forEachCallback(Lkotlin/jvm/functions/Function1;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->mMiuiCallbacks:Ljava/util/ArrayList;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 23
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 28
    check-cast v1, Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

    .line 29
    if-eqz v1, :cond_0

    .line 31
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object p0

    .line 40
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v0

    .line 50
    check-cast v0, Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

    .line 51
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    goto :goto_1

    .line 56
    :cond_2
    return-void
    .line 57
.end method

.method public final handleChargeAnimationShowingChanged(ZZ)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->mChargeAnimationShowing:Z

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput-boolean p1, p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->mChargeAnimationShowing:Z

    .line 6
    new-instance v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector$handleChargeAnimationShowingChanged$1;

    .line 8
    invoke-direct {v0, p1, p2}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector$handleChargeAnimationShowingChanged$1;-><init>(ZZ)V

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->forEachCallback(Lkotlin/jvm/functions/Function1;)V

    .line 13
    :cond_0
    return-void
    .line 16
.end method

.method public final handleFingerprintLockoutReset()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector$handleFingerprintLockoutReset$1;->INSTANCE:Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector$handleFingerprintLockoutReset$1;

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->forEachCallback(Lkotlin/jvm/functions/Function1;)V

    .line 4
    return-void
    .line 7
.end method

.method public final handleLockScreenMagazinePreViewVisibilityChanged(Z)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector$handleLockScreenMagazinePreViewVisibilityChanged$1;

    .line 2
    invoke-direct {v0, p1}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector$handleLockScreenMagazinePreViewVisibilityChanged$1;-><init>(Z)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->forEachCallback(Lkotlin/jvm/functions/Function1;)V

    .line 7
    return-void
    .line 10
.end method

.method public final handleLockWallpaperChanged(Z)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector$handleLockWallpaperChanged$1;

    .line 2
    invoke-direct {v0, p1}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector$handleLockWallpaperChanged$1;-><init>(Z)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->forEachCallback(Lkotlin/jvm/functions/Function1;)V

    .line 7
    return-void
    .line 10
.end method

.method public final handlePartColorComputeComplete(Ljava/util/Map;IZZZZZ)V
    .locals 9

    .line 1
    new-instance v8, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector$handlePartColorComputeComplete$1;

    .line 2
    move-object v0, v8

    .line 4
    move-object v1, p1

    .line 5
    move v2, p2

    .line 6
    move v3, p3

    .line 7
    move v4, p4

    .line 8
    move v5, p5

    .line 9
    move v6, p6

    .line 10
    move/from16 v7, p7

    .line 11
    invoke-direct/range {v0 .. v7}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector$handlePartColorComputeComplete$1;-><init>(Ljava/util/Map;IZZZZZ)V

    .line 13
    move-object v0, p0

    .line 16
    invoke-virtual {p0, v8}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->forEachCallback(Lkotlin/jvm/functions/Function1;)V

    .line 17
    return-void
    .line 20
.end method

.method public final handlePreBiometricAuthenticated(I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector$handlePreBiometricAuthenticated$1;

    .line 2
    invoke-direct {v0, p1}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector$handlePreBiometricAuthenticated$1;-><init>(I)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->forEachCallback(Lkotlin/jvm/functions/Function1;)V

    .line 7
    return-void
    .line 10
.end method

.method public final handleStartedWakingUpWithReason(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->mWakeupReason:Ljava/lang/String;

    .line 2
    new-instance v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector$handleStartedWakingUpWithReason$1;

    .line 4
    invoke-direct {v0, p1}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector$handleStartedWakingUpWithReason$1;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->forEachCallback(Lkotlin/jvm/functions/Function1;)V

    .line 9
    return-void
    .line 12
.end method

.method public final isFaceUnlock()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->mFaceUnlockMode:I

    .line 2
    const/4 v0, 0x5

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    const/4 v0, 0x7

    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    :goto_1
    return p0
    .line 14
.end method

.method public final isFingerprintUnlock()Z
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->mFingerprintMode:I

    .line 2
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    const/4 v1, 0x2

    .line 7
    if-eq p0, v1, :cond_1

    .line 8
    const/4 v1, 0x7

    .line 10
    if-eq p0, v1, :cond_1

    .line 11
    const/4 v1, 0x5

    .line 13
    if-ne p0, v1, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :cond_1
    :goto_0
    return v0
    .line 18
.end method

.method public final needDoKeyguardUnlockAnimation()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/miui/systemui/util/CommonUtil;->isDefaultLockScreenTheme()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    const-class v0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;

    .line 8
    invoke-static {v0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 13
    check-cast v0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;

    .line 14
    iget-boolean v0, v0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->mFastUnlockInScreenOff:Z

    .line 16
    if-nez v0, :cond_0

    .line 18
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->mContext:Landroid/content/Context;

    .line 20
    invoke-static {p0}, Lcom/miui/systemui/util/CommonUtil;->isTopActivityLauncher(Landroid/content/Context;)Z

    .line 22
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    const-class p0, Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 28
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    move-result-object p0

    .line 33
    check-cast p0, Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 34
    iget p0, p0, Lcom/android/keyguard/KeyguardCommonSettingObserver;->animationRate:I

    .line 36
    const/4 v0, 0x2

    .line 38
    if-eq p0, v0, :cond_0

    .line 39
    const/4 p0, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 p0, 0x0

    .line 43
    :goto_0
    return p0
    .line 44
.end method

.method public final onMagazineResourceInited()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector$onMagazineResourceInited$1;->INSTANCE:Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector$onMagazineResourceInited$1;

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->forEachCallback(Lkotlin/jvm/functions/Function1;)V

    .line 4
    return-void
    .line 7
.end method

.method public final onPhoneSignalChange(Z)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector$onPhoneSignalChange$1;

    .line 2
    invoke-direct {v0, p1}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector$onPhoneSignalChange$1;-><init>(Z)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->forEachCallback(Lkotlin/jvm/functions/Function1;)V

    .line 7
    return-void
    .line 10
.end method

.method public final onRegionChanged()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector$onRegionChanged$1;->INSTANCE:Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector$onRegionChanged$1;

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->forEachCallback(Lkotlin/jvm/functions/Function1;)V

    .line 4
    return-void
    .line 7
.end method

.method public final registerCallback(Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->mMiuiCallbacks:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_1

    .line 9
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v3

    .line 14
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 15
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 17
    move-result-object v3

    .line 20
    if-ne v3, p1, :cond_0

    .line 21
    new-instance p0, Ljava/lang/Exception;

    .line 23
    const-string p1, "Called by"

    .line 25
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 27
    const-string p1, "KeyguardUpdateMonitorInjector"

    .line 30
    const-string v0, "Object tried to add another callback"

    .line 32
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    return-void

    .line 37
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 38
    goto :goto_0

    .line 40
    :cond_1
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 41
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 43
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, v0}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->removeCallback(Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;)V

    .line 50
    if-eqz p1, :cond_2

    .line 53
    iget-boolean v0, p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->mKeyguardOccluded:Z

    .line 55
    invoke-interface {p1, v0}, Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;->onKeyguardOccludedChanged(Z)V

    .line 57
    :cond_2
    if-eqz p1, :cond_3

    .line 60
    iget-boolean p0, p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->mKeyguardShowing:Z

    .line 62
    invoke-interface {p1, p0}, Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;->onKeyguardShowingChanged(Z)V

    .line 64
    :cond_3
    sget-boolean p0, Lcom/miui/utils/configs/MiuiConfigs;->CN_CUSTOMIZATION_TEST:Z

    .line 67
    if-eqz p0, :cond_4

    .line 69
    if-eqz p1, :cond_4

    .line 71
    const-class p0, Lcom/android/keyguard/PhoneSignalControllerImpl;

    .line 73
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 75
    move-result-object p0

    .line 78
    check-cast p0, Lcom/android/keyguard/PhoneSignalControllerImpl;

    .line 79
    iget-boolean p0, p0, Lcom/android/keyguard/PhoneSignalControllerImpl;->mSignalAvailable:Z

    .line 81
    invoke-interface {p1}, Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;->onPhoneSignalChanged()V

    .line 83
    :cond_4
    return-void
    .line 86
.end method

.method public final removeCallback(Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;)V
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 5
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 7
    new-instance v1, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector$removeCallback$1;

    .line 10
    const/4 v2, 0x1

    .line 12
    invoke-direct {v1, v2, p1}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector$removeCallback$1;-><init>(ILjava/lang/Object;)V

    .line 13
    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 16
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->mMiuiCallbacks:Ljava/util/ArrayList;

    .line 18
    new-instance p1, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector$removeCallback$1;

    .line 20
    const/4 v1, 0x0

    .line 22
    invoke-direct {p1, v1, v0}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector$removeCallback$1;-><init>(ILjava/lang/Object;)V

    .line 23
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 26
    return-void
    .line 29
.end method

.method public final sendScreenOnBroadcast2SuperWallpaper()V
    .locals 4

    .line 1
    const-class v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 8
    const-string/jumbo v1, "super_wallpaper"

    .line 10
    iget-object v0, v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mKeyguardWallpaperType:Ljava/lang/String;

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->mWakeupReason:Ljava/lang/String;

    .line 21
    iget-object v1, p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->mUnlockWay:Ljava/lang/String;

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    const-string v3, "is_super_wallpaper==true wakeupReason="

    .line 27
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const-string v0, " UnlockWay="

    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 46
    const-string v1, "KeyguardViewMediator"

    .line 47
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v0, Landroid/content/Intent;

    .line 52
    const-string v1, "com.android.systemui.SCREEN_ON"

    .line 54
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    const-string/jumbo v1, "wakeupReason"

    .line 59
    iget-object v2, p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->mWakeupReason:Ljava/lang/String;

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string/jumbo v1, "wakeupWay"

    .line 67
    iget-object v2, p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->mUnlockWay:Ljava/lang/String;

    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->mContext:Landroid/content/Context;

    .line 75
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 77
    :cond_0
    return-void
    .line 80
.end method

.method public final setKeyguardShowingAndOccluded(ZZ)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->mKeyguardOccluded:Z

    .line 2
    if-eq p2, v0, :cond_0

    .line 4
    iput-boolean p2, p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->mKeyguardOccluded:Z

    .line 6
    new-instance v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector$handleKeyguardOccludedChanged$1;

    .line 8
    invoke-direct {v0, p2}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector$handleKeyguardOccludedChanged$1;-><init>(Z)V

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->forEachCallback(Lkotlin/jvm/functions/Function1;)V

    .line 13
    const-class v0, Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 16
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 21
    check-cast v0, Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 22
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardCommonSettingObserver;->aodUsingSuperWallpaperStyle:Z

    .line 24
    if-eqz v0, :cond_0

    .line 26
    const-class v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 28
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 33
    check-cast v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 34
    const-string v1, "keyguard_occluded"

    .line 36
    invoke-virtual {v0, p2, v1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->sendCommand(ILjava/lang/String;)V

    .line 38
    :cond_0
    iget-boolean p2, p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->mKeyguardShowing:Z

    .line 41
    if-eq p2, p1, :cond_1

    .line 43
    iput-boolean p1, p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->mKeyguardShowing:Z

    .line 45
    new-instance p2, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector$handleKeyguardShowingChanged$1;

    .line 47
    invoke-direct {p2, p1}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector$handleKeyguardShowingChanged$1;-><init>(Z)V

    .line 49
    invoke-virtual {p0, p2}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->forEachCallback(Lkotlin/jvm/functions/Function1;)V

    .line 52
    :cond_1
    return-void
    .line 55
.end method

.method public final setKeyguardUnlockWay(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    if-eqz p2, :cond_0

    .line 2
    const-string/jumbo v0, "unlock keyguard by "

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 10
    const-string v1, "miui_keyguard"

    .line 11
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_0
    iput-object p1, p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->mUnlockWay:Ljava/lang/String;

    .line 16
    const-class p0, Lcom/miui/systemui/analytics/SystemUIStat;

    .line 18
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 23
    check-cast p0, Lcom/miui/systemui/analytics/SystemUIStat;

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    new-instance v0, Lcom/android/keyguard/event/KeyguardUnlockEvent;

    .line 29
    sget-object v1, Lcom/android/keyguard/event/KeyguardEvent;->Companion:Lcom/android/keyguard/event/KeyguardEvent$Companion;

    .line 31
    invoke-virtual {v1, p1}, Lcom/android/keyguard/event/KeyguardEvent$Companion;->getUnlockWay(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 36
    invoke-virtual {v1, p2}, Lcom/android/keyguard/event/KeyguardEvent$Companion;->trackIfEventParams(Z)Ljava/lang/String;

    .line 37
    move-result-object p2

    .line 40
    const v1, 0x1511750

    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object v1

    .line 47
    const-string v2, "178.2.0.1.20919"

    .line 48
    invoke-direct {v0, p1, p2, v2, v1}, Lcom/android/keyguard/event/KeyguardUnlockEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 50
    iget-object p0, p0, Lcom/miui/systemui/analytics/SystemUIStat;->mEventTracker:Lcom/miui/interfaces/IEventTracker;

    .line 53
    invoke-interface {p0, v0}, Lcom/miui/interfaces/IEventTracker;->track(Ljava/lang/Object;)V

    .line 55
    return-void
    .line 58
.end method

.method public final trackKeyguardScreenOnEvent(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    const-class v1, Lcom/miui/systemui/analytics/SystemUIStat;

    .line 4
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object v2

    .line 9
    check-cast v2, Lcom/miui/systemui/analytics/SystemUIStat;

    .line 10
    move-object/from16 v3, p0

    .line 12
    iget-object v4, v3, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->mWakeupReason:Ljava/lang/String;

    .line 14
    iget-boolean v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintLockedOutPermanent:Z

    .line 16
    const/4 v6, 0x0

    .line 18
    const/4 v7, 0x1

    .line 19
    if-nez v5, :cond_1

    .line 20
    iget-boolean v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintLockedOut:Z

    .line 22
    if-eqz v5, :cond_0

    .line 24
    goto :goto_0

    .line 26
    :cond_0
    move v5, v6

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    move v5, v7

    .line 29
    :goto_1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 30
    move-result v8

    .line 33
    move-object/from16 v9, p2

    .line 34
    invoke-virtual {v9, v8}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    .line 36
    move-result-wide v8

    .line 39
    const-wide/16 v10, 0x0

    .line 40
    cmp-long v8, v8, v10

    .line 42
    if-eqz v8, :cond_2

    .line 44
    move v8, v7

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    move v8, v6

    .line 48
    :goto_2
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceLockedOutPermanent:Z

    .line 49
    if-nez v0, :cond_3

    .line 51
    const-class v0, Lcom/miui/interfaces/keyguard/IMiuiFaceUnlockManager;

    .line 53
    invoke-static {v0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 55
    move-result-object v0

    .line 58
    check-cast v0, Lcom/miui/interfaces/keyguard/IMiuiFaceUnlockManager;

    .line 59
    check-cast v0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;

    .line 61
    iget-boolean v0, v0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mFaceLockedOut:Z

    .line 63
    if-eqz v0, :cond_4

    .line 65
    :cond_3
    move v6, v7

    .line 67
    :cond_4
    sget-boolean v0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockUtils;->sIsScreenTurnOnDelayed:Z

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->isFingerprintUnlock()Z

    .line 70
    move-result v3

    .line 73
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    new-instance v7, Lcom/android/keyguard/event/KeyguardScreenOnEvent;

    .line 77
    const-string v9, "android.policy:POWER"

    .line 79
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    move-result v9

    .line 84
    if-nez v9, :cond_6

    .line 85
    const-string v9, "android.policy:KEY"

    .line 87
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    move-result v9

    .line 92
    if-nez v9, :cond_6

    .line 93
    const-string v9, "android.policy:FINGERPRINT"

    .line 95
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    move-result v9

    .line 100
    if-nez v9, :cond_6

    .line 101
    const-string v9, "com.android.systemui:PICK_UP"

    .line 103
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    move-result v9

    .line 108
    if-nez v9, :cond_6

    .line 109
    const-string v9, "com.android.systemui:GOTO_UNLOCK"

    .line 111
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    move-result v9

    .line 116
    if-nez v9, :cond_6

    .line 117
    const-string v9, "android.server.power:PLUGGED:true"

    .line 119
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    move-result v9

    .line 124
    if-nez v9, :cond_6

    .line 125
    const-string v9, "android.server.power:PLUGGED:false"

    .line 127
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    move-result v9

    .line 132
    if-nez v9, :cond_6

    .line 133
    const-string v9, "com.android.systemui:RAPID_CHARGE"

    .line 135
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    move-result v9

    .line 140
    if-nez v9, :cond_6

    .line 141
    const-string v9, "com.android.systemui:NOTIFICATION"

    .line 143
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    move-result v9

    .line 148
    if-nez v9, :cond_6

    .line 149
    const-string v9, "com.android.systemui:HEADSET"

    .line 151
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    move-result v9

    .line 156
    if-eqz v9, :cond_5

    .line 157
    goto :goto_3

    .line 159
    :cond_5
    const-string/jumbo v4, "\u5176\u5b83"

    .line 160
    :cond_6
    :goto_3
    move-object v10, v4

    .line 163
    sget-object v4, Lcom/android/keyguard/event/KeyguardEvent;->Companion:Lcom/android/keyguard/event/KeyguardEvent$Companion;

    .line 164
    invoke-virtual {v4, v5}, Lcom/android/keyguard/event/KeyguardEvent$Companion;->trackIfEventParams(Z)Ljava/lang/String;

    .line 166
    move-result-object v11

    .line 169
    invoke-virtual {v4, v8}, Lcom/android/keyguard/event/KeyguardEvent$Companion;->trackIfEventParams(Z)Ljava/lang/String;

    .line 170
    move-result-object v12

    .line 173
    invoke-virtual {v4, v6}, Lcom/android/keyguard/event/KeyguardEvent$Companion;->trackIfEventParams(Z)Ljava/lang/String;

    .line 174
    move-result-object v13

    .line 177
    invoke-virtual {v4, v0}, Lcom/android/keyguard/event/KeyguardEvent$Companion;->trackIfEventParams(Z)Ljava/lang/String;

    .line 178
    move-result-object v14

    .line 181
    invoke-virtual {v4, v3}, Lcom/android/keyguard/event/KeyguardEvent$Companion;->trackIfEventParams(Z)Ljava/lang/String;

    .line 182
    move-result-object v15

    .line 185
    const-string v16, "178.2.0.1.20916"

    .line 186
    const v0, 0x1511750

    .line 188
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    move-result-object v17

    .line 194
    move-object v9, v7

    .line 195
    invoke-direct/range {v9 .. v17}, Lcom/android/keyguard/event/KeyguardScreenOnEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 196
    iget-object v0, v2, Lcom/miui/systemui/analytics/SystemUIStat;->mEventTracker:Lcom/miui/interfaces/IEventTracker;

    .line 199
    invoke-interface {v0, v7}, Lcom/miui/interfaces/IEventTracker;->track(Ljava/lang/Object;)V

    .line 201
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 204
    move-result-object v0

    .line 207
    check-cast v0, Lcom/miui/systemui/analytics/SystemUIStat;

    .line 208
    const-string/jumbo v1, "\u9501\u5c4f\u4eae\u5c4f"

    .line 210
    invoke-virtual {v0, v1}, Lcom/miui/systemui/analytics/SystemUIStat;->handleMainLockscreenExposeEvent(Ljava/lang/String;)V

    .line 213
    return-void
    .line 216
.end method
