.class public final Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;
.super Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController$Stub;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# instance fields
.field public final featureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final handler:Landroid/os/Handler;

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final keyguardViewController:Lcom/android/keyguard/KeyguardViewController;

.field public final keyguardViewMediator:Ldagger/Lazy;

.field public launcherUnlockController:Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController;

.field public final listeners:Ljava/util/ArrayList;

.field public lockscreenSmartspace:Landroid/view/View;

.field public playingCannedUnlockAnimation:Z

.field public final statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public surfaceBehindAlpha:F

.field public final surfaceBehindAlphaAnimator:Landroid/animation/ValueAnimator;

.field public final surfaceBehindEntryAnimator:Landroid/animation/ValueAnimator;

.field public surfaceBehindRemoteAnimationTargets:[Landroid/view/RemoteAnimationTarget;

.field public final wallpaperCannedUnlockAnimator:Landroid/animation/ValueAnimator;

.field public final wallpaperManager:Landroid/app/WallpaperManager;

.field public wallpaperTargets:[Landroid/view/RemoteAnimationTarget;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Ldagger/Lazy;Lcom/android/keyguard/KeyguardViewController;Lcom/android/systemui/flags/FeatureFlags;Ldagger/Lazy;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Landroid/app/WallpaperManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController$Stub;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 5
    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardViewMediator:Ldagger/Lazy;

    .line 7
    iput-object p4, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    .line 9
    iput-object p5, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 11
    iput-object p7, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 13
    iput-object p9, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->wallpaperManager:Landroid/app/WallpaperManager;

    .line 15
    new-instance p3, Ljava/util/ArrayList;

    .line 17
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 19
    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->listeners:Ljava/util/ArrayList;

    .line 22
    const/high16 p3, 0x3f800000    # 1.0f

    .line 24
    iput p3, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindAlpha:F

    .line 26
    const/4 p3, 0x2

    .line 28
    new-array p4, p3, [F

    .line 29
    fill-array-data p4, :array_0

    .line 31
    invoke-static {p4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 34
    move-result-object p4

    .line 37
    iput-object p4, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 38
    new-array p5, p3, [F

    .line 40
    fill-array-data p5, :array_1

    .line 42
    invoke-static {p5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 45
    move-result-object p5

    .line 48
    iput-object p5, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->wallpaperCannedUnlockAnimator:Landroid/animation/ValueAnimator;

    .line 49
    new-instance p6, Landroid/graphics/Matrix;

    .line 51
    invoke-direct {p6}, Landroid/graphics/Matrix;-><init>()V

    .line 53
    new-array p6, p3, [F

    .line 56
    fill-array-data p6, :array_2

    .line 58
    invoke-static {p6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 61
    move-result-object p6

    .line 64
    iput-object p6, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindEntryAnimator:Landroid/animation/ValueAnimator;

    .line 65
    new-instance p7, Landroid/os/Handler;

    .line 67
    invoke-direct {p7}, Landroid/os/Handler;-><init>()V

    .line 69
    iput-object p7, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->handler:Landroid/os/Handler;

    .line 72
    const-wide/16 p7, 0x1

    .line 74
    invoke-virtual {p4, p7, p8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 76
    sget-object p9, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 79
    invoke-virtual {p4, p9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 81
    new-instance p9, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$1$1;

    .line 84
    const/4 v0, 0x0

    .line 86
    invoke-direct {p9, p0, v0}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$1$1;-><init>(Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;I)V

    .line 87
    invoke-virtual {p4, p9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 90
    new-instance p9, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$1$2;

    .line 93
    invoke-direct {p9, p0, v0}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$1$2;-><init>(Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;I)V

    .line 95
    invoke-virtual {p4, p9}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 98
    invoke-virtual {p5, p7, p8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 101
    sget-object p4, Lcom/android/app/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 104
    invoke-virtual {p5, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 106
    new-instance p4, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$1$2;

    .line 109
    const/4 p9, 0x1

    .line 111
    invoke-direct {p4, p0, p9}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$1$2;-><init>(Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;I)V

    .line 112
    invoke-virtual {p5, p4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 115
    invoke-virtual {p6, p7, p8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 118
    const-wide/16 p4, 0x0

    .line 121
    invoke-virtual {p6, p4, p5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 123
    sget-object p4, Lcom/android/app/animation/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    .line 126
    invoke-virtual {p6, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 128
    new-instance p4, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$1$1;

    .line 131
    invoke-direct {p4, p0, p9}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$1$1;-><init>(Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;I)V

    .line 133
    invoke-virtual {p6, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 136
    new-instance p4, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$1$2;

    .line 139
    invoke-direct {p4, p0, p3}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$1$2;-><init>(Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;I)V

    .line 141
    invoke-virtual {p6, p4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 144
    check-cast p2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 147
    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 152
    move-result-object p0

    .line 155
    const p1, 0x1050296    # @android:dimen/select_dialog_padding_start_material

    .line 156
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 159
    return-void

    .line 162
    nop

    .line 163
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 164
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 172
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 180
.end method

.method public static synthetic getSurfaceBehindAlphaAnimator$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static synthetic getSurfaceBehindEntryAnimator$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static synthetic getSurfaceTransactionApplier$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static synthetic getWillUnlockWithInWindowLauncherAnimations$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method


# virtual methods
.method public final notifyFinishedKeyguardExitAnimation()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->handler:Landroid/os/Handler;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindAlpha:F

    .line 10
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 12
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 14
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindEntryAnimator:Landroid/animation/ValueAnimator;

    .line 17
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 19
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->wallpaperCannedUnlockAnimator:Landroid/animation/ValueAnimator;

    .line 22
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 24
    const/4 v2, 0x1

    .line 27
    const/4 v3, 0x0

    .line 28
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->launcherUnlockController:Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController;

    .line 29
    if-eqz v4, :cond_0

    .line 31
    check-cast v4, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub$Proxy;

    .line 33
    iget-object v5, v4, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 35
    invoke-static {v5}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 37
    move-result-object v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :try_start_1
    const-string v6, "com.android.systemui.shared.system.smartspace.ILauncherUnlockAnimationController"

    .line 41
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 46
    invoke-virtual {v5, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 49
    iget-object v0, v4, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 52
    const/4 v4, 0x2

    .line 54
    invoke-interface {v0, v4, v5, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    :try_start_2
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 58
    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 63
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    const-string v4, "KeyguardUnlock"

    .line 68
    const-string v5, "Remote exception in notifyFinishedKeyguardExitAnimation"

    .line 70
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindRemoteAnimationTargets:[Landroid/view/RemoteAnimationTarget;

    .line 75
    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->wallpaperTargets:[Landroid/view/RemoteAnimationTarget;

    .line 77
    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->playingCannedUnlockAnimation:Z

    .line 79
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->lockscreenSmartspace:Landroid/view/View;

    .line 81
    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 85
    move-result v0

    .line 88
    const/4 v1, 0x4

    .line 89
    if-ne v0, v1, :cond_1

    .line 90
    goto :goto_1

    .line 92
    :cond_1
    move v2, v3

    .line 93
    :goto_1
    if-eqz v2, :cond_3

    .line 94
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->lockscreenSmartspace:Landroid/view/View;

    .line 96
    if-nez v0, :cond_2

    .line 98
    goto :goto_2

    .line 100
    :cond_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 101
    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->listeners:Ljava/util/ArrayList;

    .line 104
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 106
    move-result-object p0

    .line 109
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    move-result v0

    .line 113
    if-eqz v0, :cond_4

    .line 114
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    move-result-object v0

    .line 119
    check-cast v0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$KeyguardUnlockAnimationListener;

    .line 120
    invoke-interface {v0}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$KeyguardUnlockAnimationListener;->onUnlockAnimationFinished()V

    .line 122
    goto :goto_3

    .line 125
    :cond_4
    return-void
    .line 126
.end method

.method public final onKeyguardDismissAmountChanged()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 2
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 4
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 6
    if-eqz v0, :cond_5

    .line 8
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->playingCannedUnlockAnimation:Z

    .line 10
    if-nez v0, :cond_5

    .line 12
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 14
    sget-object v1, Lcom/android/systemui/flags/Flags;->NEW_UNLOCK_SWIPE_ANIMATION:Lcom/android/systemui/flags/ReleasedFlag;

    .line 16
    check-cast v0, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 18
    invoke-virtual {v0, v1}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 20
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    goto :goto_0

    .line 26
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->playingCannedUnlockAnimation:Z

    .line 27
    if-eqz v0, :cond_1

    .line 29
    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 32
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 34
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 36
    if-nez v1, :cond_2

    .line 38
    goto :goto_0

    .line 40
    :cond_2
    iget v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mDismissAmount:F

    .line 41
    const v1, 0x3e19999a    # 0.15f

    .line 43
    cmpl-float v2, v0, v1

    .line 46
    if-ltz v2, :cond_3

    .line 48
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardViewMediator:Ldagger/Lazy;

    .line 50
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 52
    move-result-object v0

    .line 55
    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 56
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardViewMediator:Ldagger/Lazy;

    .line 61
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 63
    move-result-object v0

    .line 66
    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 67
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    goto :goto_0

    .line 72
    :cond_3
    cmpg-float v0, v0, v1

    .line 73
    if-gez v0, :cond_4

    .line 75
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardViewMediator:Ldagger/Lazy;

    .line 77
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 79
    move-result-object v0

    .line 82
    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 83
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardViewMediator:Ldagger/Lazy;

    .line 88
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 90
    move-result-object v0

    .line 93
    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 94
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardViewMediator:Ldagger/Lazy;

    .line 99
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 101
    move-result-object v0

    .line 104
    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 105
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 107
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 109
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mFlingingToDismissKeyguard:Z

    .line 111
    if-eqz v0, :cond_5

    .line 113
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->playingCannedUnlockAnimation:Z

    .line 115
    if-nez v0, :cond_5

    .line 117
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->updateSurfaceBehindAppearAmount()V

    .line 119
    :cond_5
    return-void
    .line 122
.end method

.method public final onKeyguardGoingAwayChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 2
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 4
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 10
    check-cast p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 12
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mLeaveOpenOnKeyguardHide:Z

    .line 14
    :cond_0
    return-void
    .line 16
.end method

.method public final unlockToLauncherWithInWindowAnimations()V
    .locals 7

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindAlpha:F

    .line 4
    const-wide/16 v0, 0x0

    .line 6
    const/4 v2, 0x1

    .line 8
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->launcherUnlockController:Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController;

    .line 9
    if-eqz v3, :cond_0

    .line 11
    check-cast v3, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub$Proxy;

    .line 13
    iget-object v4, v3, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 15
    invoke-static {v4}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 17
    move-result-object v4
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :try_start_1
    const-string v5, "com.android.systemui.shared.system.smartspace.ILauncherUnlockAnimationController"

    .line 21
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 26
    const-wide/16 v5, 0x1

    .line 29
    invoke-virtual {v4, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 31
    invoke-virtual {v4, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 34
    iget-object v3, v3, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 37
    const/4 v5, 0x0

    .line 39
    const/4 v6, 0x3

    .line 40
    invoke-interface {v3, v6, v4, v5, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :try_start_2
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 44
    goto :goto_0

    .line 47
    :catchall_0
    move-exception v3

    .line 48
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 49
    throw v3
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_0

    .line 52
    :catch_0
    const-string v3, "KeyguardUnlock"

    .line 53
    const-string v4, "launcherUnlockAnimationController was dead, but non-null. Catching exception as this should mean Launcher is in the process of being destroyed, but the IPC to System UI telling us hasn\'t arrived yet."

    .line 55
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->lockscreenSmartspace:Landroid/view/View;

    .line 60
    const/4 v4, 0x0

    .line 62
    if-eqz v3, :cond_1

    .line 63
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 65
    move-result v3

    .line 68
    if-nez v3, :cond_1

    .line 69
    goto :goto_1

    .line 71
    :cond_1
    move v2, v4

    .line 72
    :goto_1
    if-eqz v2, :cond_3

    .line 73
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->lockscreenSmartspace:Landroid/view/View;

    .line 75
    if-nez v2, :cond_2

    .line 77
    goto :goto_2

    .line 79
    :cond_2
    const/4 v3, 0x4

    .line 80
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 81
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->handler:Landroid/os/Handler;

    .line 84
    new-instance v3, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$unlockToLauncherWithInWindowAnimations$1;

    .line 86
    invoke-direct {v3, p0}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$unlockToLauncherWithInWindowAnimations$1;-><init>(Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;)V

    .line 88
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 91
    return-void
    .line 94
.end method

.method public final updateSurfaceBehindAppearAmount()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindRemoteAnimationTargets:[Landroid/view/RemoteAnimationTarget;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->playingCannedUnlockAnimation:Z

    .line 7
    if-eqz v0, :cond_1

    .line 9
    return-void

    .line 11
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 12
    move-object v0, p0

    .line 14
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 15
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mFlingingToDismissKeyguard:Z

    .line 17
    if-eqz v0, :cond_2

    .line 19
    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 21
    iget p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mDismissAmount:F

    .line 23
    goto :goto_0

    .line 25
    :cond_2
    move-object v0, p0

    .line 26
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 27
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mDismissingFromTouch:Z

    .line 29
    if-nez v0, :cond_3

    .line 31
    move-object v0, p0

    .line 33
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 34
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSnappingKeyguardBackAfterSwipe:Z

    .line 36
    if-eqz v0, :cond_4

    .line 38
    :cond_3
    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 40
    iget p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mDismissAmount:F

    .line 42
    :cond_4
    :goto_0
    return-void
    .line 44
.end method
