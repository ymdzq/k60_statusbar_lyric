.class public final Lcom/android/systemui/keyguard/KeyguardViewMediator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# static fields
.field public static final USER_PRESENT_INTENT:Landroid/content/Intent;

.field public static final USER_PRESENT_INTENT_OPTIONS:Landroid/os/Bundle;

.field public static final mUnlockTrackSimStates:Landroid/util/SparseArray;


# instance fields
.field public mAlarmManager:Landroid/app/AlarmManager;

.field public mAnimatingScreenOff:Z

.field public mAodShowing:Z

.field public mAudioManager:Landroid/media/AudioManager;

.field public final mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public mBleUnlockHelper:Lcom/android/keyguard/MiuiBleUnlockHelper;

.field public mBootCompleted:Z

.field public mBootSendUserPresent:Z

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mBroadcastReceiver:Lcom/android/systemui/keyguard/KeyguardViewMediator$10;

.field public mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public final mCollapseControlCenterRunnable:Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda1;

.field public final mContext:Landroid/content/Context;

.field public final mControlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

.field public mCustomMessage:Ljava/lang/CharSequence;

.field public final mDelayedLockBroadcastReceiver:Lcom/android/systemui/keyguard/KeyguardViewMediator$10;

.field public mDelayedProfileShowingSequence:I

.field public mDelayedShowingSequence:I

.field public mDeviceInteractive:Z

.field public final mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

.field public final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field public mDozing:Z

.field public final mDreamOpenAnimationDuration:I

.field public final mDreamOverlayStateCallback:Lcom/android/systemui/keyguard/KeyguardViewMediator$2;

.field public final mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

.field public final mDreamingToLockscreenTransitionViewModel:Ldagger/Lazy;

.field public final mExitAnimationRunner:Lcom/android/systemui/keyguard/KeyguardViewMediator$6;

.field public mExternallyEnabled:Z

.field public final mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field public final mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public mGoingToSleep:Z

.field public final mHandler:Lcom/android/systemui/keyguard/KeyguardViewMediator$12;

.field public final mHapticFeedBack:Lcom/miui/interfaces/IHapticFeedBack;

.field public mHideAnimation:Landroid/view/animation/Animation;

.field public final mHideAnimationFinishedRunnable:Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda1;

.field public mHideAnimationRun:Z

.field public mHideAnimationRunning:Z

.field public mHiding:Z

.field public mInGestureNavigationMode:Z

.field public mInputRestricted:Z

.field public final mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

.field public final mKeyguardCommonSettingObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver;

.field public final mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

.field public mKeyguardDonePending:Z

.field public final mKeyguardGoingAwayRunnable:Lcom/android/systemui/keyguard/KeyguardViewMediator$13;

.field public final mKeyguardStateCallbacks:Ljava/util/ArrayList;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardStateControllerCallback:Lcom/android/systemui/keyguard/KeyguardViewMediator$9;

.field public final mKeyguardTransitions:Lcom/android/wm/shell/keyguard/KeyguardTransitions;

.field public final mKeyguardUnlockAnimationControllerLazy:Ldagger/Lazy;

.field public final mKeyguardViewControllerLazy:Ldagger/Lazy;

.field public final mLastSimStates:Landroid/util/SparseIntArray;

.field public mLockLater:Z

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mLockSoundId:I

.field public mLockSoundStreamId:I

.field public mLockSoundVolume:F

.field public mLockSounds:Landroid/media/SoundPool;

.field public final mMainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final mMultiUserController:Lcom/miui/systemui/MultiUserController;

.field public mNeedToReshowWhenReenabled:Z

.field public final mNotificationShadeDepthController:Ldagger/Lazy;

.field public final mNotificationShadeWindowControllerLazy:Ldagger/Lazy;

.field public final mNotifyKeyguardShowingRunnable:Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda5;

.field final mOccludeAnimationController:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

.field public mOccludeAnimationPlaying:Z

.field public final mOccludeAnimationRunner:Lcom/android/systemui/keyguard/KeyguardViewMediator$OccludeActivityLaunchRemoteAnimationRunner;

.field public final mOccludeByDreamAnimationRunner:Lcom/android/systemui/keyguard/KeyguardViewMediator$7;

.field public mOccluded:Z

.field public final mOnPropertiesChangedListener:Lcom/android/systemui/keyguard/KeyguardViewMediator$1;

.field public final mPM:Landroid/os/PowerManager;

.field public mPendingLock:Z

.field public mPendingPinLock:Z

.field public mPendingReset:Z

.field public final mPhoneState:Ljava/lang/String;

.field public final mPowerButtonY:F

.field public mPowerGestureIntercepted:Z

.field public final mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

.field public final mScrimControllerLazy:Ldagger/Lazy;

.field public mSendOccluded:Z

.field public final mSessionTracker:Lcom/android/systemui/log/SessionTracker;

.field public final mShadeController:Ldagger/Lazy;

.field public mShowHomeOverLockscreen:Z

.field public mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mShowing:Z

.field public mShuttingDown:Z

.field public final mSimWasLocked:Landroid/util/SparseBooleanArray;

.field public mSmartCoverHelper:Lcom/android/keyguard/MiuiSmartCoverHelper;

.field public final mStatusBarDisableToken:Landroid/os/IBinder;

.field public mStatusBarManager:Landroid/app/StatusBarManager;

.field public final mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public final mSystemPropertiesHelper:Lcom/android/systemui/flags/SystemPropertiesHelper;

.field public mSystemReady:Z

.field public mTargetOccluded:Z

.field public final mToken:Landroid/os/IBinder;

.field public final mTrustManager:Landroid/app/trust/TrustManager;

.field public mTrustedSoundId:I

.field public final mUiBgExecutor:Ljava/util/concurrent/Executor;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public mUiSoundsStreamType:I

.field public mUnlockSoundId:I

.field public mUnlockingAndWakingFromDream:Z

.field public final mUnoccludeAnimationRunner:Lcom/android/systemui/keyguard/KeyguardViewMediator$8;

.field public final mUpdateCallback:Lcom/android/systemui/keyguard/KeyguardViewMediator$3;

.field public final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mUserId:I

.field public final mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mViewMediatorCallback:Lcom/android/systemui/keyguard/KeyguardViewMediator$4;

.field public mWaitingUntilKeyguardVisible:Z

.field public mWakeAndUnlocking:Z

.field public mWallpaperManager:Landroid/app/WallpaperManager;

.field public final mWindowCornerRadius:F


# direct methods
.method public static -$$Nest$mhandleKeyguardDoneDrawing(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    const-string v0, "KeyguardViewMediator#handleKeyguardDoneDrawing"

    .line 5
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 7
    monitor-enter p0

    .line 10
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    .line 11
    const-string v1, "handleKeyguardDoneDrawing"

    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 18
    if-eqz v0, :cond_0

    .line 20
    const-string v0, "KeyguardViewMediator"

    .line 22
    const-string v1, "handleKeyguardDoneDrawing: notifying mWaitingUntilKeyguardVisible"

    .line 24
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 32
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/KeyguardViewMediator$12;

    .line 35
    const/16 v1, 0x8

    .line 37
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 39
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 43
    return-void

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    throw v0
    .line 49
.end method

.method public static -$$Nest$mhandleNotifyFinishedGoingToSleep(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    .line 3
    const-string v1, "handleNotifyFinishedGoingToSleep"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 10
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    .line 16
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 18
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;

    .line 20
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->hide()V

    .line 22
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0
    .line 29
.end method

.method public static -$$Nest$mhandleNotifyStartedGoingToSleep(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    .line 3
    const-string v1, "handleNotifyStartedGoingToSleep"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 10
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    .line 16
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 18
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 20
    check-cast v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 22
    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 24
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    .line 26
    move-result-object v1

    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-interface {v1, v2}, Landroid/view/WindowInsetsController;->setAnimationsDisabled(Z)V

    .line 31
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 34
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 36
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getNavigationBarView()Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 38
    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$$ExternalSyntheticLambda0;

    .line 44
    const/4 v2, 0x0

    .line 46
    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$$ExternalSyntheticLambda0;-><init>(I)V

    .line 47
    iget-object v2, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mVertical:Landroid/view/View;

    .line 50
    if-eqz v2, :cond_0

    .line 52
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    .line 54
    :cond_0
    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mHorizontal:Landroid/view/View;

    .line 57
    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    .line 61
    :cond_1
    monitor-exit p0

    .line 64
    return-void

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw v0
    .line 68
.end method

.method public static -$$Nest$mhandleNotifyStartedWakingUp(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    const-string v0, "KeyguardViewMediator#handleMotifyStartedWakingUp"

    .line 5
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 7
    monitor-enter p0

    .line 10
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    .line 11
    const-string v1, "handleNotifyWakingUp"

    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 18
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    .line 24
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 26
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 28
    check-cast v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 30
    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 32
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    .line 34
    move-result-object v1

    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-interface {v1, v2}, Landroid/view/WindowInsetsController;->setAnimationsDisabled(Z)V

    .line 39
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 42
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 44
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getNavigationBarView()Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 46
    move-result-object v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$$ExternalSyntheticLambda0;

    .line 52
    const/4 v2, 0x1

    .line 54
    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$$ExternalSyntheticLambda0;-><init>(I)V

    .line 55
    iget-object v2, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mVertical:Landroid/view/View;

    .line 58
    if-eqz v2, :cond_0

    .line 60
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    .line 62
    :cond_0
    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mHorizontal:Landroid/view/View;

    .line 65
    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    .line 69
    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    :goto_0
    const-class v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 75
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 77
    move-result-object v0

    .line 80
    check-cast v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 81
    invoke-virtual {v0}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->sendScreenOnBroadcast2SuperWallpaper()V

    .line 83
    const-class v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 86
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 88
    move-result-object v0

    .line 91
    check-cast v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 92
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 94
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 96
    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->trackKeyguardScreenOnEvent(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;)V

    .line 98
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 102
    return-void

    .line 105
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    throw v0
    .line 107
.end method

.method public static -$$Nest$mhandleReset(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    .line 3
    const-string v1, "handleReset"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 10
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    .line 16
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 18
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset(Z)V

    .line 20
    monitor-exit p0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p1
    .line 27
.end method

.method public static -$$Nest$mhandleSetOccluded(Lcom/android/systemui/keyguard/KeyguardViewMediator;ZZ)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    const-string v0, "isOccluded="

    .line 5
    const-string v1, "KeyguardViewMediator#handleSetOccluded"

    .line 7
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 9
    const-string v1, "KeyguardViewMediator"

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    const-string v3, "handleSetOccluded("

    .line 16
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    const-string v3, ")"

    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 32
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object v1

    .line 39
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v2

    .line 43
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 44
    move-result-object v1

    .line 47
    const v2, 0x8cf0

    .line 48
    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 51
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 54
    const/16 v2, 0x17

    .line 56
    invoke-virtual {v1, v2}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    .line 58
    monitor-enter p0

    .line 61
    :try_start_0
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    .line 62
    if-eqz v1, :cond_0

    .line 64
    if-eqz p1, :cond_0

    .line 66
    const-wide/16 v6, 0x0

    .line 68
    const/4 v3, 0x0

    .line 70
    const/4 v8, 0x0

    .line 71
    const/4 v9, 0x0

    .line 72
    const/4 v10, 0x0

    .line 73
    const/4 v11, 0x0

    .line 74
    move-object v2, p0

    .line 75
    move-wide v4, v6

    .line 76
    invoke-virtual/range {v2 .. v11}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->startKeyguardExitAnimation(IJJ[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    .line 77
    goto :goto_0

    .line 80
    :catchall_0
    move-exception p1

    .line 81
    goto/16 :goto_4

    .line 82
    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 84
    const/4 v2, 0x0

    .line 85
    if-eqz p1, :cond_1

    .line 86
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 88
    iget-boolean v3, v3, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSecureCameraLaunched:Z

    .line 90
    if-eqz v3, :cond_1

    .line 92
    move v3, v1

    .line 94
    goto :goto_1

    .line 95
    :cond_1
    move v3, v2

    .line 96
    :goto_1
    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPowerGestureIntercepted:Z

    .line 97
    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    .line 99
    if-eqz v3, :cond_2

    .line 101
    if-nez p1, :cond_2

    .line 103
    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 105
    if-eqz v3, :cond_3

    .line 107
    const-class v3, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 109
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 111
    move-result-object v3

    .line 114
    check-cast v3, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 115
    invoke-virtual {v3}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->isDoodleTemplate()Z

    .line 117
    move-result v3

    .line 120
    if-nez v3, :cond_3

    .line 121
    const-class v3, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;

    .line 123
    invoke-static {v3}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 125
    move-result-object v3

    .line 128
    check-cast v3, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;

    .line 129
    invoke-virtual {v3, v1}, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->setWallpaperAsTarget(Z)V

    .line 131
    goto :goto_2

    .line 134
    :cond_2
    if-nez v3, :cond_3

    .line 135
    if-eqz p1, :cond_3

    .line 137
    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 139
    if-eqz v3, :cond_3

    .line 141
    const-class v3, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;

    .line 143
    invoke-static {v3}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 145
    move-result-object v3

    .line 148
    check-cast v3, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;

    .line 149
    invoke-virtual {v3, v2}, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->setWallpaperAsTarget(Z)V

    .line 151
    :cond_3
    :goto_2
    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    .line 154
    if-eq v3, p1, :cond_5

    .line 156
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    .line 158
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 160
    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 162
    move-result-object v3

    .line 165
    check-cast v3, Lcom/android/keyguard/KeyguardViewController;

    .line 166
    if-eqz p2, :cond_4

    .line 168
    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    .line 170
    if-eqz p2, :cond_4

    .line 172
    goto :goto_3

    .line 174
    :cond_4
    move v1, v2

    .line 175
    :goto_3
    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 176
    invoke-virtual {v3, p1, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setOccluded(ZZ)V

    .line 178
    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked(ZZ)V

    .line 181
    :cond_5
    const-string p2, "KeyguardViewMediator"

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    .line 186
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 191
    const-string p1, ",mPowerGestureIntercepted="

    .line 194
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPowerGestureIntercepted:Z

    .line 199
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    move-result-object p1

    .line 207
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 212
    return-void

    .line 215
    :goto_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    throw p1
    .line 217
.end method

.method public static -$$Nest$mhandleSystemReady(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    .line 3
    const-string v1, "onSystemReady"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    .line 11
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 13
    move-result v1

    .line 16
    iput v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUserId:I

    .line 17
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    .line 20
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 23
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateCallback:Lcom/android/systemui/keyguard/KeyguardViewMediator$3;

    .line 25
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 27
    const/4 v1, 0x0

    .line 30
    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked(ZZ)V

    .line 31
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 34
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDreamOverlayStateCallback:Lcom/android/systemui/keyguard/KeyguardViewMediator$2;

    .line 36
    invoke-virtual {v2, v3}, Lcom/android/systemui/dreams/DreamOverlayStateController;->addCallback(Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;)V

    .line 38
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 41
    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 43
    move-result-object v2

    .line 46
    check-cast v2, Lcom/android/keyguard/KeyguardViewController;

    .line 47
    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 49
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 51
    move-result-object v2

    .line 54
    if-eqz v2, :cond_0

    .line 55
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    .line 57
    move-result-object v3

    .line 60
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDreamingToLockscreenTransitionViewModel:Ldagger/Lazy;

    .line 61
    invoke-interface {v4}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 63
    move-result-object v4

    .line 66
    check-cast v4, Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel;

    .line 67
    iget-object v4, v4, Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel;->dreamOverlayAlpha:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 69
    new-instance v5, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda10;

    .line 71
    invoke-direct {v5, p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V

    .line 73
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mMainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 76
    invoke-static {v3, v4, v5, v0}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlinx/coroutines/CoroutineDispatcher;)V

    .line 78
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    .line 81
    move-result-object v0

    .line 84
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDreamingToLockscreenTransitionViewModel:Ldagger/Lazy;

    .line 85
    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 87
    move-result-object v2

    .line 90
    check-cast v2, Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel;

    .line 91
    iget-object v2, v2, Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel;->transitionEnded:Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel$special$$inlined$filter$1;

    .line 93
    new-instance v3, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda10;

    .line 95
    invoke-direct {v3, p0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V

    .line 97
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mMainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 100
    invoke-static {v0, v2, v3, v1}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlinx/coroutines/CoroutineDispatcher;)V

    .line 102
    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    .line 106
    goto :goto_1

    .line 107
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->maybeSendUserPresentBroadcast()V

    .line 109
    return-void

    .line 112
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    throw v0
    .line 114
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    const-string v1, "android.intent.action.USER_PRESENT"

    .line 4
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    const/high16 v1, 0x24200000

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 11
    move-result-object v0

    .line 14
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->USER_PRESENT_INTENT:Landroid/content/Intent;

    .line 15
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 17
    move-result-object v0

    .line 20
    const/4 v1, 0x2

    .line 21
    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    .line 22
    move-result-object v0

    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    .line 27
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 31
    move-result-object v0

    .line 34
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->USER_PRESENT_INTENT_OPTIONS:Landroid/os/Bundle;

    .line 35
    new-instance v0, Landroid/util/SparseArray;

    .line 37
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 39
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockTrackSimStates:Landroid/util/SparseArray;

    .line 42
    return-void
    .line 44
.end method

.method public constructor <init>(Landroid/app/trust/TrustManager;Landroid/content/Context;Landroid/os/PowerManager;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/logging/UiEventLogger;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardCommonSettingObserver;Lcom/android/keyguard/KeyguardDisplayManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;Lcom/android/systemui/dreams/DreamOverlayStateController;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/flags/SystemPropertiesHelper;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Lcom/android/systemui/log/SessionTracker;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/wm/shell/keyguard/KeyguardTransitions;Lcom/miui/systemui/MultiUserController;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ljava/util/concurrent/Executor;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 10

    move-object v0, p0

    move-object/from16 v1, p21

    move-object/from16 v2, p24

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarDisableToken:Landroid/os/IBinder;

    const/4 v3, 0x1

    .line 3
    iput-boolean v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    const/4 v4, 0x0

    .line 4
    iput-boolean v4, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 5
    iput-boolean v4, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    .line 6
    iput-boolean v4, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccludeAnimationPlaying:Z

    .line 7
    iput-boolean v4, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    .line 8
    new-instance v5, Landroid/util/SparseIntArray;

    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v5, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLastSimStates:Landroid/util/SparseIntArray;

    .line 9
    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v5, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSimWasLocked:Landroid/util/SparseBooleanArray;

    .line 10
    sget-object v5, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iput-object v5, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    .line 11
    iput-boolean v4, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 12
    iput-boolean v4, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 13
    iput-boolean v4, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockingAndWakingFromDream:Z

    .line 14
    iput-boolean v4, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 15
    iput-boolean v4, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRunning:Z

    .line 16
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    .line 17
    iput-boolean v4, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingPinLock:Z

    .line 18
    iput-boolean v4, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPowerGestureIntercepted:Z

    const-string/jumbo v5, "statusbar"

    .line 19
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 20
    invoke-static {v6}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 21
    new-instance v6, Landroid/os/Binder;

    invoke-direct {v6}, Landroid/os/Binder;-><init>()V

    iput-object v6, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mToken:Landroid/os/IBinder;

    .line 22
    iput v4, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUserId:I

    .line 23
    new-instance v6, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v6, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOnPropertiesChangedListener:Lcom/android/systemui/keyguard/KeyguardViewMediator$1;

    .line 24
    new-instance v7, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;

    invoke-direct {v7, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v7, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDreamOverlayStateCallback:Lcom/android/systemui/keyguard/KeyguardViewMediator$2;

    .line 25
    new-instance v7, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;

    invoke-direct {v7, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v7, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateCallback:Lcom/android/systemui/keyguard/KeyguardViewMediator$3;

    .line 26
    new-instance v7, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;

    invoke-direct {v7, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v7, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/systemui/keyguard/KeyguardViewMediator$4;

    .line 27
    new-instance v7, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;

    invoke-direct {v7, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v7, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccludeAnimationController:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    .line 28
    new-instance v7, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;

    invoke-direct {v7, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v7, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitAnimationRunner:Lcom/android/systemui/keyguard/KeyguardViewMediator$6;

    .line 29
    new-instance v7, Lcom/android/systemui/keyguard/KeyguardViewMediator$OccludeActivityLaunchRemoteAnimationRunner;

    invoke-direct {v7, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$OccludeActivityLaunchRemoteAnimationRunner;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v7, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccludeAnimationRunner:Lcom/android/systemui/keyguard/KeyguardViewMediator$OccludeActivityLaunchRemoteAnimationRunner;

    .line 30
    new-instance v7, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;

    invoke-direct {v7, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v7, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccludeByDreamAnimationRunner:Lcom/android/systemui/keyguard/KeyguardViewMediator$7;

    .line 31
    new-instance v7, Lcom/android/systemui/keyguard/KeyguardViewMediator$8;

    invoke-direct {v7, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$8;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v7, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnoccludeAnimationRunner:Lcom/android/systemui/keyguard/KeyguardViewMediator$8;

    .line 32
    new-instance v7, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;

    invoke-direct {v7, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v7, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateControllerCallback:Lcom/android/systemui/keyguard/KeyguardViewMediator$9;

    .line 33
    new-instance v8, Lcom/android/systemui/keyguard/KeyguardViewMediator$10;

    invoke-direct {v8, p0, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator$10;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V

    iput-object v8, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedLockBroadcastReceiver:Lcom/android/systemui/keyguard/KeyguardViewMediator$10;

    .line 34
    new-instance v8, Lcom/android/systemui/keyguard/KeyguardViewMediator$10;

    invoke-direct {v8, p0, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator$10;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V

    iput-object v8, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBroadcastReceiver:Lcom/android/systemui/keyguard/KeyguardViewMediator$10;

    .line 35
    new-instance v3, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v3, p0, v8}, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Looper;)V

    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/KeyguardViewMediator$12;

    .line 36
    new-instance v8, Lcom/android/systemui/keyguard/KeyguardViewMediator$13;

    invoke-direct {v8, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$13;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v8, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardGoingAwayRunnable:Lcom/android/systemui/keyguard/KeyguardViewMediator$13;

    .line 37
    new-instance v8, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda1;

    const/4 v9, 0x2

    invoke-direct {v8, p0, v9}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V

    iput-object v8, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationFinishedRunnable:Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda1;

    move-object v8, p2

    .line 38
    iput-object v8, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    move-object/from16 v9, p20

    .line 39
    iput-object v9, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    move-object/from16 v9, p11

    .line 40
    iput-object v9, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    move-object/from16 v9, p6

    .line 41
    iput-object v9, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v9, p10

    .line 42
    iput-object v9, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-object/from16 v9, p29

    .line 43
    iput-object v9, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    move-object/from16 v9, p17

    .line 44
    iput-object v9, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    move-object/from16 v9, p31

    .line 45
    iput-object v9, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNotificationShadeDepthController:Ldagger/Lazy;

    move-object/from16 v9, p36

    .line 46
    iput-object v9, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v9, p9

    .line 47
    iput-object v9, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object v9, p3

    .line 48
    iput-object v9, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    move-object v9, p1

    .line 49
    iput-object v9, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustManager:Landroid/app/trust/TrustManager;

    move-object/from16 v9, p25

    .line 50
    iput-object v9, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    move-object/from16 v9, p16

    .line 51
    iput-object v9, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemPropertiesHelper:Lcom/android/systemui/flags/SystemPropertiesHelper;

    .line 52
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 53
    invoke-static {v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v5, p8

    .line 54
    iput-object v5, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    move-object/from16 v5, p32

    .line 55
    iput-object v5, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShadeController:Ldagger/Lazy;

    .line 56
    const-class v5, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v9, p14

    invoke-virtual {v9, v5, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    move-object/from16 v5, p27

    .line 57
    iput-object v5, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardTransitions:Lcom/android/wm/shell/keyguard/KeyguardTransitions;

    move-object/from16 v5, p33

    .line 58
    iput-object v5, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNotificationShadeWindowControllerLazy:Ldagger/Lazy;

    .line 59
    invoke-virtual/range {p26 .. p26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "nav_bar_handle_show_over_lockscreen"

    const-string/jumbo v9, "systemui"

    .line 60
    invoke-static {v9, v5, v4}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    .line 61
    iput-boolean v4, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowHomeOverLockscreen:Z

    .line 62
    new-instance v4, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda3;

    invoke-direct {v4, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator$12;)V

    .line 63
    invoke-static {v9, v4, v6}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 64
    new-instance v3, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    move-object/from16 v4, p19

    .line 65
    invoke-virtual {v4, v3}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    move-result v3

    invoke-static {v3}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInGestureNavigationMode:Z

    move-object/from16 v3, p22

    .line 66
    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 67
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 68
    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 69
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 70
    move-object v1, v2

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    move-object/from16 v1, p30

    .line 71
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardUnlockAnimationControllerLazy:Ldagger/Lazy;

    move-object/from16 v1, p23

    .line 72
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    move-object v1, p4

    .line 73
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    move-object/from16 v1, p13

    .line 74
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    move-object/from16 v1, p34

    .line 75
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScrimControllerLazy:Ldagger/Lazy;

    .line 76
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070e6e    # @dimen/physical_power_button_center_screen_location_y '620.0px'

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPowerButtonY:F

    .line 77
    invoke-static {p2}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v1

    iput v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWindowCornerRadius:F

    .line 78
    sget-wide v1, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToDreamingTransitionViewModel;->DREAMING_ANIMATION_DURATION_MS:J

    long-to-int v1, v1

    iput v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDreamOpenAnimationDuration:I

    move-object/from16 v1, p15

    .line 79
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    move-object v1, p5

    .line 80
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    move-object/from16 v1, p18

    .line 81
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSessionTracker:Lcom/android/systemui/log/SessionTracker;

    move-object/from16 v1, p37

    .line 82
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mMainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object/from16 v1, p35

    .line 83
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDreamingToLockscreenTransitionViewModel:Ldagger/Lazy;

    move-object/from16 v1, p7

    .line 84
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardCommonSettingObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver;

    move-object/from16 v1, p28

    .line 85
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mMultiUserController:Lcom/miui/systemui/MultiUserController;

    move-object/from16 v1, p12

    .line 86
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mControlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 87
    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda1;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCollapseControlCenterRunnable:Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda1;

    .line 88
    const-class v1, Lcom/miui/interfaces/IHapticFeedBack;

    invoke-static {v1}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/interfaces/IHapticFeedBack;

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHapticFeedBack:Lcom/miui/interfaces/IHapticFeedBack;

    .line 89
    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda5;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNotifyKeyguardShowingRunnable:Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda5;

    return-void
.end method


# virtual methods
.method public final adjustStatusBarLocked(ZZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 4
    if-nez v0, :cond_0

    .line 6
    const-string/jumbo v0, "statusbar"

    .line 8
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 14
    check-cast v0, Landroid/app/StatusBarManager;

    .line 15
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 19
    const-string v2, "KeyguardViewMediator"

    .line 21
    if-nez v0, :cond_1

    .line 23
    const-string p0, "Could not get status bar manager"

    .line 25
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    goto/16 :goto_1

    .line 30
    :cond_1
    const/4 v0, 0x0

    .line 32
    if-eqz p2, :cond_2

    .line 33
    :try_start_0
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 35
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarDisableToken:Landroid/os/IBinder;

    .line 37
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 39
    move-result-object v4

    .line 42
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 43
    check-cast v5, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 45
    invoke-virtual {v5}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 47
    move-result v5

    .line 50
    invoke-interface {p2, v0, v3, v4, v5}, Lcom/android/internal/statusbar/IStatusBarService;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_0

    .line 54
    :catch_0
    move-exception p2

    .line 55
    const-string v3, "Failed to force clear flags"

    .line 56
    invoke-static {v2, v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    :cond_2
    :goto_0
    if-nez p1, :cond_3

    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    .line 63
    move-result p2

    .line 66
    if-eqz p2, :cond_5

    .line 67
    :cond_3
    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowHomeOverLockscreen:Z

    .line 69
    if-eqz p2, :cond_4

    .line 71
    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInGestureNavigationMode:Z

    .line 73
    if-nez p2, :cond_5

    .line 75
    :cond_4
    const/high16 v0, 0x600000

    .line 77
    :cond_5
    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 79
    if-nez p2, :cond_6

    .line 81
    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPowerGestureIntercepted:Z

    .line 83
    if-eqz p2, :cond_7

    .line 85
    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    .line 87
    if-eqz p2, :cond_7

    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    .line 91
    move-result p2

    .line 94
    if-eqz p2, :cond_7

    .line 95
    :cond_6
    const/high16 p2, 0x1000000

    .line 97
    or-int/2addr v0, p2

    .line 99
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    .line 100
    const-string v3, "adjustStatusBarLocked: mShowing="

    .line 102
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 107
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 109
    const-string v3, " mOccluded="

    .line 112
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    .line 117
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 119
    const-string v3, " isSecure="

    .line 122
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    .line 127
    move-result v3

    .line 130
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 131
    const-string v3, " force="

    .line 134
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 139
    const-string p1, " mPowerGestureIntercepted="

    .line 142
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPowerGestureIntercepted:Z

    .line 147
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 149
    const-string p1, " --> flags=0x"

    .line 152
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 157
    move-result-object p1

    .line 160
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const-string p1, " mUserId="

    .line 164
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iget p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUserId:I

    .line 169
    invoke-static {p2, p1, v2}, Lcom/android/keyguard/AwesomeLockScreen$2$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 171
    iget p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUserId:I

    .line 174
    if-eqz p1, :cond_9

    .line 176
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 178
    if-nez p1, :cond_8

    .line 180
    goto :goto_2

    .line 182
    :cond_8
    :try_start_1
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mToken:Landroid/os/IBinder;

    .line 183
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 185
    move-result-object v1

    .line 188
    iget p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUserId:I

    .line 189
    invoke-interface {p1, v0, p2, v1, p0}, Lcom/android/internal/statusbar/IStatusBarService;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 191
    goto :goto_1

    .line 194
    :catch_1
    move-exception p0

    .line 195
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 196
    :goto_1
    return-void

    .line 199
    :cond_9
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 200
    invoke-virtual {p0, v0}, Landroid/app/StatusBarManager;->disable(I)V

    .line 202
    return-void
    .line 205
.end method

.method public final createInteractionJankMonitorConf(ILjava/lang/String;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 2
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/keyguard/KeyguardViewController;

    .line 8
    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 12
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    .line 16
    move-result-object p0

    .line 19
    invoke-static {p1, p0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->withView(ILandroid/view/View;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    .line 20
    move-result-object p0

    .line 23
    if-eqz p2, :cond_0

    .line 24
    invoke-virtual {p0, p2}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setTag(Ljava/lang/String;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    .line 26
    move-result-object p0

    .line 29
    :cond_0
    return-object p0
    .line 30
.end method

.method public final dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$DismissMessage;

    .line 2
    invoke-direct {v0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator$DismissMessage;-><init>(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 4
    const/16 p1, 0xb

    .line 7
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/KeyguardViewMediator$12;

    .line 9
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 11
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 15
    return-void
    .line 18
.end method

.method public final doKeyguardForChildProfilesLocked()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 2
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 4
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserProfiles()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 17
    if-eqz v1, :cond_2

    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 23
    check-cast v1, Landroid/content/pm/UserInfo;

    .line 24
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    .line 26
    move-result v2

    .line 29
    if-nez v2, :cond_1

    .line 30
    goto :goto_0

    .line 32
    :cond_1
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 33
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 35
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    .line 37
    move-result v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 43
    const/4 v3, 0x1

    .line 45
    invoke-virtual {v2, v1, v3}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    .line 46
    goto :goto_0

    .line 49
    :cond_2
    return-void
    .line 50
.end method

.method public final doKeyguardLaterLocked(J)V
    .locals 12

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    move-result-wide v0

    .line 5
    add-long/2addr v0, p1

    .line 6
    new-instance p1, Landroid/content/Intent;

    .line 7
    const-string p2, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    .line 9
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 14
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 16
    move-result-object v2

    .line 19
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    iget v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    .line 23
    const-string/jumbo v3, "seq"

    .line 25
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 28
    const/high16 v2, 0x10000000

    .line 31
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 33
    const/4 v4, 0x0

    .line 36
    const/high16 v5, 0x14000000

    .line 37
    invoke-static {p2, v4, p1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 39
    move-result-object p1

    .line 42
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    .line 43
    const/4 v7, 0x2

    .line 45
    invoke-virtual {v6, v7, v0, v1, p1}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    .line 49
    const-string/jumbo v0, "setting alarm to turn off keyguard, seq = "

    .line 51
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    .line 57
    const-string v1, "KeyguardViewMediator"

    .line 59
    invoke-static {p1, v0, v1}, Lcom/android/keyguard/AwesomeLockScreen$2$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 61
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 64
    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 66
    invoke-virtual {p1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserProfiles()Ljava/util/List;

    .line 68
    move-result-object p1

    .line 71
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 72
    move-result-object p1

    .line 75
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    move-result v0

    .line 79
    if-eqz v0, :cond_3

    .line 80
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    move-result-object v0

    .line 85
    check-cast v0, Landroid/content/pm/UserInfo;

    .line 86
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEnabled()Z

    .line 88
    move-result v1

    .line 91
    if-nez v1, :cond_1

    .line 92
    goto :goto_0

    .line 94
    :cond_1
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 95
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 97
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    .line 99
    move-result v1

    .line 102
    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getLockTimeout(I)J

    .line 105
    move-result-wide v8

    .line 108
    const-wide/16 v10, 0x0

    .line 109
    cmp-long v1, v8, v10

    .line 111
    if-nez v1, :cond_2

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardForChildProfilesLocked()V

    .line 115
    goto :goto_0

    .line 118
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 119
    move-result-wide v10

    .line 122
    add-long/2addr v10, v8

    .line 123
    new-instance v1, Landroid/content/Intent;

    .line 124
    const-string v6, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_LOCK"

    .line 126
    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 131
    move-result-object v6

    .line 134
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    iget v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedProfileShowingSequence:I

    .line 138
    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    const-string v6, "android.intent.extra.USER_ID"

    .line 143
    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 148
    invoke-static {p2, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 151
    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    .line 155
    invoke-virtual {v1, v7, v10, v11, v0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 157
    goto :goto_0

    .line 160
    :cond_3
    return-void
    .line 161
.end method

.method public final doKeyguardLocked(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    const-string v2, "KeyguardViewMediator"

    .line 5
    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 9
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 11
    move-result v3

    .line 14
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->isUserInLockdown(I)Z

    .line 15
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    const-string p1, "doKeyguard: not showing because externally disabled"

    .line 21
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 26
    return-void

    .line 28
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 29
    const/4 v3, 0x0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 34
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 36
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 38
    if-eqz v0, :cond_2

    .line 40
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    .line 42
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 44
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    .line 50
    if-nez v0, :cond_1

    .line 52
    const-string p1, "doKeyguard: not showing (instead, resetting) because it is already showing, we\'re interactive, and we were not previously hiding. It should be safe to short-circuit here."

    .line 54
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {p0, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked(Z)V

    .line 59
    return-void

    .line 62
    :cond_1
    const-string v0, "doKeyguard: already showing, but re-showing because we\'re interactive or were in the middle of hiding."

    .line 63
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_2
    const-string v0, "keyguard.no_require_sim"

    .line 68
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 70
    move-result v0

    .line 73
    xor-int/2addr v0, v1

    .line 74
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 75
    invoke-virtual {v4, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(I)I

    .line 77
    move-result v4

    .line 80
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    .line 81
    move-result v4

    .line 84
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 85
    const/4 v6, 0x7

    .line 87
    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(I)I

    .line 88
    move-result v5

    .line 91
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    .line 92
    move-result v5

    .line 95
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 96
    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    .line 98
    move-result v6

    .line 101
    if-nez v6, :cond_5

    .line 102
    if-nez v4, :cond_3

    .line 104
    if-eqz v5, :cond_4

    .line 106
    :cond_3
    if-eqz v0, :cond_4

    .line 108
    goto :goto_0

    .line 110
    :cond_4
    move v0, v3

    .line 111
    goto :goto_1

    .line 112
    :cond_5
    :goto_0
    move v0, v1

    .line 113
    :goto_1
    if-nez v0, :cond_6

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning()Z

    .line 116
    move-result v4

    .line 119
    if-eqz v4, :cond_6

    .line 120
    const-string p0, "doKeyguard: not showing because device isn\'t provisioned and the sim is not locked or missing"

    .line 122
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void

    .line 127
    :cond_6
    if-eqz p1, :cond_7

    .line 128
    const-string v4, "force_show"

    .line 130
    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 132
    move-result v4

    .line 135
    if-eqz v4, :cond_7

    .line 136
    move v3, v1

    .line 138
    :cond_7
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 139
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 141
    move-result v5

    .line 144
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    .line 145
    move-result v4

    .line 148
    if-eqz v4, :cond_8

    .line 149
    if-nez v0, :cond_8

    .line 151
    if-nez v3, :cond_8

    .line 153
    const-string p0, "doKeyguard: not showing because lockscreen is off"

    .line 155
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void

    .line 160
    :cond_8
    sget-boolean v3, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    .line 161
    if-nez v3, :cond_a

    .line 163
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSmartCoverHelper:Lcom/android/keyguard/MiuiSmartCoverHelper;

    .line 165
    if-eqz v3, :cond_a

    .line 167
    iget-boolean v3, v3, Lcom/android/keyguard/MiuiSmartCoverHelper;->mHideLockForLid:Z

    .line 169
    if-eqz v3, :cond_a

    .line 171
    if-nez v0, :cond_a

    .line 173
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    .line 175
    move-result v0

    .line 178
    if-nez v0, :cond_a

    .line 179
    const-string p1, "Not showing lock screen since in smart cover mode"

    .line 181
    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 186
    if-eqz p1, :cond_9

    .line 188
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleHide()V

    .line 190
    :cond_9
    return-void

    .line 193
    :cond_a
    const-string v0, "doKeyguard: showing the lock screen"

    .line 194
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-static {}, Lcom/miui/systemui/util/CommonUtil;->isDefaultLockScreenTheme()Z

    .line 199
    move-result v0

    .line 202
    if-nez v0, :cond_b

    .line 203
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardCommonSettingObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 205
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardCommonSettingObserver;->aodUsingSuperWallpaperStyle:Z

    .line 207
    if-eqz v0, :cond_c

    .line 209
    :cond_b
    const-class v0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;

    .line 211
    invoke-static {v0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 213
    move-result-object v0

    .line 216
    check-cast v0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;

    .line 217
    invoke-virtual {v0, v1}, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->setWallpaperAsTarget(Z)V

    .line 219
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->showLocked(Landroid/os/Bundle;)V

    .line 222
    return-void
    .line 225
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p2, "  mSystemReady: "

    .line 2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    .line 7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 9
    const-string p2, "  mBootCompleted: "

    .line 12
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 14
    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootCompleted:Z

    .line 17
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 19
    const-string p2, "  mBootSendUserPresent: "

    .line 22
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 24
    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootSendUserPresent:Z

    .line 27
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 29
    const-string p2, "  mExternallyEnabled: "

    .line 32
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 34
    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 37
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 39
    const-string p2, "  mShuttingDown: "

    .line 42
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 44
    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShuttingDown:Z

    .line 47
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 49
    const-string p2, "  mNeedToReshowWhenReenabled: "

    .line 52
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 54
    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 57
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 59
    const-string p2, "  mShowing: "

    .line 62
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 64
    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 67
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 69
    const-string p2, "  mInputRestricted: "

    .line 72
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 74
    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInputRestricted:Z

    .line 77
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 79
    const-string p2, "  mOccluded: "

    .line 82
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 84
    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    .line 87
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 89
    const-string p2, "  mDelayedShowingSequence: "

    .line 92
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 94
    iget p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    .line 97
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 99
    const-string p2, "  mDeviceInteractive: "

    .line 102
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 104
    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    .line 107
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 109
    const-string p2, "  mGoingToSleep: "

    .line 112
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 114
    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGoingToSleep:Z

    .line 117
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 119
    const-string p2, "  mHiding: "

    .line 122
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 124
    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    .line 127
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 129
    const-string p2, "  mDozing: "

    .line 132
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 134
    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDozing:Z

    .line 137
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 139
    const-string p2, "  mAodShowing: "

    .line 142
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 144
    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAodShowing:Z

    .line 147
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 149
    const-string p2, "  mWaitingUntilKeyguardVisible: "

    .line 152
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 154
    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 157
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 159
    const-string p2, "  mKeyguardDonePending: "

    .line 162
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 164
    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 167
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 169
    const-string p2, "  mHideAnimationRun: "

    .line 172
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 174
    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 177
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 179
    const-string p2, "  mPendingReset: "

    .line 182
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 184
    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingReset:Z

    .line 187
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 189
    const-string p2, "  mPendingLock: "

    .line 192
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 194
    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingLock:Z

    .line 197
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 199
    const-string p2, "  wakeAndUnlocking: "

    .line 202
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 204
    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    .line 207
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 209
    const-string p2, "  mPendingPinLock: "

    .line 212
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 214
    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingPinLock:Z

    .line 217
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 219
    const-string p2, "  mPowerGestureIntercepted: "

    .line 222
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 224
    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPowerGestureIntercepted:Z

    .line 227
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 229
    const-string p2, "  isLockScreenDisabled: "

    .line 232
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 234
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 237
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUserId:I

    .line 239
    invoke-virtual {p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    .line 241
    move-result p2

    .line 244
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 245
    const-string p2, "  isSupportScreenOnDelayed: "

    .line 248
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 250
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 253
    invoke-static {p0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockUtils;->isSupportScreenOnDelayed(Landroid/content/Context;)Z

    .line 255
    move-result p0

    .line 258
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 259
    return-void
    .line 262
.end method

.method public final exitKeyguardAndFinishSurfaceBehindRemoteAnimation(Z)V
    .locals 2

    .line 1
    const-string p0, "KeyguardViewMediator"

    .line 2
    const-string v0, "onKeyguardExitRemoteAnimationFinished"

    .line 4
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    const-string/jumbo v1, "skip onKeyguardExitRemoteAnimationFinished cancelled="

    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    const-string p1, " surfaceAnimationRunning=false surfaceAnimationRequested=false"

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 28
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    return-void
    .line 32
.end method

.method public final finishSurfaceBehindRemoteAnimation()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 2
    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 4
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->notifyKeyguardGoingAway(Z)V

    .line 7
    return-void
    .line 10
.end method

.method public final getLockTimeout(I)J
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object v0

    .line 7
    const-string v1, "lock_screen_lock_after_timeout"

    .line 8
    const/16 v2, 0x1388

    .line 10
    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 12
    move-result v1

    .line 15
    int-to-long v1, v1

    .line 16
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 17
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    .line 19
    move-result-object p0

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-virtual {p0, v3, p1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    .line 24
    move-result-wide v3

    .line 27
    const-wide/16 v5, 0x0

    .line 28
    cmp-long p0, v3, v5

    .line 30
    if-gtz p0, :cond_0

    .line 32
    goto :goto_0

    .line 34
    :cond_0
    const-string/jumbo p0, "screen_off_timeout"

    .line 35
    const/16 v7, 0x7530

    .line 38
    invoke-static {v0, p0, v7, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 40
    move-result p0

    .line 43
    int-to-long p0, p0

    .line 44
    invoke-static {p0, p1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 45
    move-result-wide p0

    .line 48
    sub-long/2addr v3, p0

    .line 49
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 50
    move-result-wide p0

    .line 53
    invoke-static {p0, p1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 54
    move-result-wide v1

    .line 57
    :goto_0
    return-wide v1
    .line 58
.end method

.method public final handleHide()V
    .locals 5

    .line 1
    const-string v0, "KeyguardViewMediator#handleHide"

    .line 2
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAodShowing:Z

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 13
    move-result-wide v1

    .line 16
    const/4 v3, 0x4

    .line 17
    const-string v4, "com.android.systemui:BOUNCER_DOZING"

    .line 18
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 20
    :cond_0
    monitor-enter p0

    .line 23
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    .line 24
    const-string v1, "handleHide"

    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    .line 32
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 34
    move-object v2, v1

    .line 36
    check-cast v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 37
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDreaming:Z

    .line 39
    const/4 v3, 0x0

    .line 41
    if-eqz v2, :cond_1

    .line 42
    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 44
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    .line 46
    if-nez v1, :cond_1

    .line 48
    move v1, v0

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    move v1, v3

    .line 52
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockingAndWakingFromDream:Z

    .line 53
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 55
    if-eqz v2, :cond_2

    .line 57
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    .line 59
    if-eqz v2, :cond_3

    .line 61
    :cond_2
    if-eqz v1, :cond_5

    .line 63
    :cond_3
    if-eqz v1, :cond_4

    .line 65
    const-string v0, "KeyguardViewMediator"

    .line 67
    const-string v1, "hiding keyguard before waking from dream"

    .line 69
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardGoingAwayRunnable:Lcom/android/systemui/keyguard/KeyguardViewMediator$13;

    .line 74
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$13;->run()V

    .line 76
    goto :goto_1

    .line 79
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNotificationShadeWindowControllerLazy:Ldagger/Lazy;

    .line 80
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 82
    move-result-object v1

    .line 85
    check-cast v1, Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 86
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda1;

    .line 88
    invoke-direct {v2, p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V

    .line 90
    check-cast v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 93
    invoke-virtual {v1, v2}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->batchApplyWindowLayoutParams(Ljava/lang/Runnable;)V

    .line 95
    :goto_1
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 98
    move-result-object v0

    .line 101
    invoke-interface {v0}, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;->onKeyguardHide()V

    .line 102
    sget-boolean v0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockUtils;->sIsScreenTurnOnDelayed:Z

    .line 105
    if-eqz v0, :cond_6

    .line 107
    const-class v0, Lcom/android/keyguard/injector/KeyguardViewMediatorInjector;

    .line 109
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 111
    move-result-object v0

    .line 114
    check-cast v0, Lcom/android/keyguard/injector/KeyguardViewMediatorInjector;

    .line 115
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    .line 117
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    invoke-static {v1}, Lcom/android/keyguard/injector/KeyguardViewMediatorInjector;->unblockScreenOn(Ljava/util/ArrayList;)V

    .line 122
    goto :goto_2

    .line 125
    :catchall_0
    move-exception v0

    .line 126
    goto :goto_3

    .line 127
    :cond_6
    :goto_2
    const-class v0, Lcom/miui/interfaces/keyguard/IMiuiFaceUnlockManager;

    .line 128
    invoke-static {v0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 130
    move-result-object v0

    .line 133
    check-cast v0, Lcom/miui/interfaces/keyguard/IMiuiFaceUnlockManager;

    .line 134
    check-cast v0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;

    .line 136
    iput-boolean v3, v0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mFaceLockedOut:Z

    .line 138
    iput v3, v0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mFaceFailConunt:I

    .line 140
    invoke-virtual {v0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->isFaceAuthEnabled()Z

    .line 142
    move-result v1

    .line 145
    if-eqz v1, :cond_7

    .line 146
    iget-object v0, v0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mUpdateMonitor:Lmiui/stub/MiuiStub$3;

    .line 148
    iget-object v0, v0, Lmiui/stub/MiuiStub$3;->this$0:Lmiui/stub/MiuiStub;

    .line 150
    iget-object v0, v0, Lmiui/stub/MiuiStub;->mSysUIProvider:Lmiui/stub/MiuiStub$SysUIProvider;

    .line 152
    iget-object v0, v0, Lmiui/stub/MiuiStub$SysUIProvider;->mKeyguardUpdateMonitor:Ldagger/Lazy;

    .line 154
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 156
    move-result-object v0

    .line 159
    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 160
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    sget-object v1, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_STOPPED_USER_INPUT_ON_BOUNCER:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 165
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFace(Lcom/android/keyguard/FaceAuthUiEvent;)V

    .line 167
    :cond_7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 171
    return-void

    .line 174
    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    throw v0
    .line 176
.end method

.method public final handleKeyguardDone()V
    .locals 3

    .line 1
    const-string v0, "KeyguardViewMediator#handleKeyguardDone"

    .line 2
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 7
    move-result v0

    .line 10
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    .line 11
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda7;

    .line 13
    invoke-direct {v2, p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V

    .line 15
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 18
    const-string v1, "KeyguardViewMediator"

    .line 21
    const-string v2, "handleKeyguardDone"

    .line 23
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    monitor-enter p0

    .line 28
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetKeyguardDonePendingLocked()V

    .line 29
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBleUnlockHelper:Lcom/android/keyguard/MiuiBleUnlockHelper;

    .line 33
    invoke-virtual {v1}, Lcom/android/keyguard/MiuiBleUnlockHelper;->unregisterUnlockListener()V

    .line 35
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGoingToSleep:Z

    .line 38
    const/4 v2, 0x0

    .line 40
    if-eqz v1, :cond_0

    .line 41
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 43
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearBiometricRecognized(I)V

    .line 45
    const-string p0, "KeyguardViewMediator"

    .line 48
    const-string v0, "Device is going to sleep, aborting keyguardDone"

    .line 50
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-class p0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;

    .line 55
    invoke-static {p0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    move-result-object p0

    .line 60
    check-cast p0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;

    .line 61
    iput-boolean v2, p0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->mFastUnlock:Z

    .line 63
    iput-boolean v2, p0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->mFastUnlockInScreenOff:Z

    .line 65
    return-void

    .line 67
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setPendingLock(Z)V

    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleHide()V

    .line 71
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 74
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearBiometricRecognized(I)V

    .line 76
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 79
    return-void

    .line 82
    :catchall_0
    move-exception v0

    .line 83
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    throw v0
    .line 85
.end method

.method public final handleStartKeyguardExitAnimation(JJ[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 5

    .line 1
    const-string v0, "KeyguardViewMediator#handleStartKeyguardExitAnimation"

    .line 2
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    const-string v0, "KeyguardViewMediator"

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    const-string v2, "handleStartKeyguardExitAnimation startTime="

    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16
    const-string v2, " fadeoutDuration="

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/KeyguardViewMediator$12;

    .line 34
    const/16 v1, 0x14

    .line 36
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 38
    monitor-enter p0

    .line 41
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGoingToSleep:Z

    .line 42
    const/4 v1, 0x1

    .line 44
    const/4 v2, 0x0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSmartCoverHelper:Lcom/android/keyguard/MiuiSmartCoverHelper;

    .line 48
    if-eqz v0, :cond_0

    .line 50
    iget-boolean v0, v0, Lcom/android/keyguard/MiuiSmartCoverHelper;->mHideLockForLid:Z

    .line 52
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    .line 56
    move-result v0

    .line 59
    if-nez v0, :cond_0

    .line 60
    move v0, v1

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    move v0, v2

    .line 64
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    .line 65
    if-nez v3, :cond_1

    .line 67
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 69
    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 71
    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mFlingingToDismissKeyguardDuringSwipeGesture:Z

    .line 73
    if-eqz v3, :cond_2

    .line 75
    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGoingToSleep:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 77
    if-eqz v3, :cond_7

    .line 79
    if-nez v0, :cond_7

    .line 81
    :cond_2
    if-eqz p6, :cond_3

    .line 83
    :try_start_1
    invoke-interface {p6}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 85
    goto :goto_1

    .line 88
    :catch_0
    move-exception p1

    .line 89
    :try_start_2
    const-string p2, "KeyguardViewMediator"

    .line 90
    const-string p3, "Failed to call onAnimationFinished"

    .line 92
    invoke-static {p2, p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    :cond_3
    :goto_1
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGoingToSleep:Z

    .line 97
    if-eqz p1, :cond_5

    .line 99
    const-class p1, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;

    .line 101
    invoke-static {p1}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 103
    move-result-object p1

    .line 106
    check-cast p1, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;

    .line 107
    iget-boolean p1, p1, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->mFastUnlock:Z

    .line 109
    if-eqz p1, :cond_4

    .line 111
    const-class p1, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;

    .line 113
    invoke-static {p1}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 115
    move-result-object p1

    .line 118
    check-cast p1, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;

    .line 119
    invoke-virtual {p1, v2}, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->setWallpaperAsTarget(Z)V

    .line 121
    :cond_4
    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(ZZ)V

    .line 124
    const/4 p1, 0x0

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    .line 128
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 131
    move-object p2, p1

    .line 133
    check-cast p2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 134
    iget-boolean p2, p2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    .line 136
    if-eqz p2, :cond_6

    .line 138
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 140
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->notifyKeyguardGoingAway(Z)V

    .line 142
    goto :goto_2

    .line 145
    :cond_5
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 146
    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(ZZ)V

    .line 148
    :cond_6
    :goto_2
    monitor-exit p0

    .line 151
    return-void

    .line 152
    :cond_7
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    .line 153
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 155
    invoke-static {v3}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    .line 157
    move-result-object v3

    .line 160
    const/16 v4, 0xb

    .line 161
    invoke-virtual {v3, v4}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 163
    if-nez v0, :cond_8

    .line 166
    const-class v0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;

    .line 168
    invoke-static {v0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 170
    move-result-object v0

    .line 173
    check-cast v0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;

    .line 174
    iget-boolean v0, v0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->mFastUnlock:Z

    .line 176
    if-eqz v0, :cond_9

    .line 178
    const-class v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 180
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 182
    move-result-object v0

    .line 185
    check-cast v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 186
    invoke-virtual {v0}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->needDoKeyguardUnlockAnimation()Z

    .line 188
    move-result v0

    .line 191
    if-nez v0, :cond_8

    .line 192
    goto :goto_3

    .line 194
    :cond_8
    move v1, v2

    .line 195
    :cond_9
    :goto_3
    const-class v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 196
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 198
    move-result-object v0

    .line 201
    check-cast v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 202
    invoke-virtual {v0}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->needDoKeyguardUnlockAnimation()Z

    .line 204
    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 207
    const/16 v2, 0x1d

    .line 208
    if-eqz v0, :cond_d

    .line 210
    if-eqz p6, :cond_b

    .line 212
    :try_start_3
    invoke-interface {p6}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V

    .line 214
    if-eqz v1, :cond_a

    .line 217
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNotifyKeyguardShowingRunnable:Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda5;

    .line 219
    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda5;->run()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 221
    :cond_a
    :goto_4
    :try_start_4
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 224
    goto :goto_5

    .line 226
    :catchall_0
    move-exception p1

    .line 227
    goto :goto_6

    .line 228
    :catch_1
    :try_start_5
    const-string p1, "KeyguardViewMediator"

    .line 229
    const-string p2, "RemoteException"

    .line 231
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 233
    goto :goto_4

    .line 236
    :goto_5
    :try_start_6
    invoke-virtual {p1, v2}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    .line 237
    goto :goto_7

    .line 240
    :goto_6
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 241
    invoke-virtual {p2, v2}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    .line 243
    throw p1

    .line 246
    :cond_b
    if-eqz v1, :cond_c

    .line 247
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNotifyKeyguardShowingRunnable:Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda5;

    .line 249
    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda5;->run()V

    .line 251
    :cond_c
    :goto_7
    const-class p1, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 254
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 256
    move-result-object p1

    .line 259
    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 260
    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 262
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getShadeViewController()Lcom/android/systemui/shade/ShadeViewController;

    .line 264
    move-result-object p1

    .line 267
    check-cast p1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 268
    new-instance p2, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda1;

    .line 270
    const/4 p3, 0x4

    .line 272
    invoke-direct {p2, p0, p3}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V

    .line 273
    invoke-virtual {p1, p2}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->startUnlockKeyguardDismissAnim(Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda1;)V

    .line 276
    goto :goto_8

    .line 279
    :catchall_1
    move-exception p1

    .line 280
    goto :goto_9

    .line 281
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 282
    const-string v3, "RemoteAnimationDisabled"

    .line 284
    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->createInteractionJankMonitorConf(ILjava/lang/String;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    .line 286
    move-result-object v2

    .line 289
    invoke-virtual {v0, v2}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z

    .line 290
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 293
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 295
    move-result-object v0

    .line 298
    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    .line 299
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 301
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->hide(JJ)V

    .line 303
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 306
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 308
    move-result-object p1

    .line 311
    new-instance p2, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda8;

    .line 312
    invoke-direct {p2, p0, p6, v1, p5}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/view/IRemoteAnimationFinishedCallback;Z[Landroid/view/RemoteAnimationTarget;)V

    .line 314
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 317
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onKeyguardExitFinished()V

    .line 320
    :goto_8
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 323
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 324
    return-void

    .line 327
    :goto_9
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 328
    throw p1
    .line 329
.end method

.method public final declared-synchronized isGoingToShowKeyguard()Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGoingToSleep:Z

    .line 3
    const/4 v1, 0x1

    .line 5
    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 8
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 10
    if-nez v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/KeyguardViewMediator$12;

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 16
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    :cond_1
    :goto_0
    monitor-exit p0

    .line 24
    return v1

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    monitor-exit p0

    .line 27
    throw v0
    .line 28
.end method

.method public final isSecure()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 2
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 6
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 8
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->isMethodSecure(I)Z

    .line 10
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 16
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    .line 18
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 27
    :goto_1
    return p0
    .line 28
.end method

.method public final isShowingAndNotOccluded()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    .line 6
    if-nez p0, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
    .line 13
.end method

.method public final keyguardDone()V
    .locals 2

    .line 1
    const-string v0, "KeyguardViewMediator#keyguardDone"

    .line 2
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    const-string v0, "KeyguardViewMediator"

    .line 7
    const-string v1, "keyguardDone()"

    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    .line 14
    const/4 v0, 0x7

    .line 17
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/KeyguardViewMediator$12;

    .line 18
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 20
    move-result-object v0

    .line 23
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 24
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 27
    return-void
    .line 30
.end method

.method public final maybeHandlePendingLock()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingLock:Z

    .line 2
    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    .line 6
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->shouldDelayKeyguardShow()Z

    .line 8
    move-result v0

    .line 11
    const-string v1, "KeyguardViewMediator"

    .line 12
    if-eqz v0, :cond_0

    .line 14
    const-string p0, "#maybeHandlePendingLock: not handling because the screen off animation\'s shouldDelayKeyguardShow() returned true. This should be handled soon by #onStartedWakingUp, or by the end actions of the screen off animation."

    .line 16
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 22
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 24
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    .line 26
    if-eqz v0, :cond_1

    .line 28
    const-string p0, "#maybeHandlePendingLock: not handling because the keyguard is going away. This should be handled shortly by StatusBar#finishKeyguardFadingAway."

    .line 30
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void

    .line 35
    :cond_1
    const-string v0, "#maybeHandlePendingLock: handling pending lock; locking keyguard."

    .line 36
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    .line 42
    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setPendingLock(Z)V

    .line 46
    :cond_2
    return-void
    .line 49
.end method

.method public final maybeSendUserPresentBroadcast()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    .line 2
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 8
    move-result v0

    .line 11
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    .line 18
    goto :goto_0

    .line 21
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    .line 22
    if-eqz v0, :cond_1

    .line 24
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning()Z

    .line 26
    move-result p0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 32
    move-result p0

    .line 35
    invoke-virtual {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;->userPresent(I)V

    .line 36
    :cond_1
    :goto_0
    return-void
    .line 39
.end method

.method public final notifyTrustedChangedLocked(Z)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

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
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 15
    check-cast v1, Lcom/android/internal/policy/IKeyguardStateCallback;

    .line 16
    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onTrustedChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_1

    .line 21
    :catch_0
    move-exception v1

    .line 22
    const-string v2, "KeyguardViewMediator"

    .line 23
    const-string v3, "Failed to call notifyTrustedChangedLocked"

    .line 25
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    instance-of v1, v1, Landroid/os/DeadObjectException;

    .line 30
    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 34
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 37
    goto :goto_0

    .line 39
    :cond_1
    return-void
    .line 40
.end method

.method public final onBootCompleted()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5
    move-result-object v0

    .line 8
    const v1, 0x1110176    # @android:bool/config_handleVolumeKeysInWindowManager

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 18
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->guestUserInteractor$delegate:Lkotlin/Lazy;

    .line 20
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 25
    check-cast v0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    .line 26
    invoke-virtual {v0}, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->onDeviceBootCompleted()V

    .line 28
    :cond_0
    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootCompleted:Z

    .line 32
    const/4 v1, 0x0

    .line 34
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked(ZZ)V

    .line 35
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootSendUserPresent:Z

    .line 38
    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    .line 42
    :cond_1
    monitor-exit p0

    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw v0
    .line 49
.end method

.method public final onDozeAmountChanged(FF)V
    .locals 0

    .line 1
    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAnimatingScreenOff:Z

    .line 2
    if-eqz p2, :cond_0

    .line 4
    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDozing:Z

    .line 6
    if-eqz p2, :cond_0

    .line 8
    const/high16 p2, 0x3f800000    # 1.0f

    .line 10
    cmpl-float p1, p1, p2

    .line 12
    if-nez p1, :cond_0

    .line 14
    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAnimatingScreenOff:Z

    .line 17
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 19
    const/4 p2, 0x1

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(ZZ)V

    .line 22
    :cond_0
    return-void
    .line 25
.end method

.method public final onKeyguardExitFinished()V
    .locals 7

    .line 1
    const-string v0, "KeyguardViewMediator"

    .line 2
    const-string v1, "onKeyguardExitFinished()"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    .line 9
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    .line 19
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->playSound(I)V

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(ZZ)V

    .line 25
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    .line 28
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    .line 30
    iget-object v2, v1, Lcom/android/systemui/keyguard/DismissCallbackRegistry;->mDismissCallbacks:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 34
    move-result v3

    .line 37
    const/4 v4, 0x1

    .line 38
    sub-int/2addr v3, v4

    .line 39
    :goto_0
    if-ltz v3, :cond_1

    .line 40
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    move-result-object v5

    .line 45
    check-cast v5, Lcom/android/systemui/keyguard/DismissCallbackWrapper;

    .line 46
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    new-instance v6, Lcom/android/systemui/keyguard/DismissCallbackRegistry$$ExternalSyntheticLambda0;

    .line 51
    invoke-direct {v6, v5, v4}, Lcom/android/systemui/keyguard/DismissCallbackRegistry$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/keyguard/DismissCallbackWrapper;I)V

    .line 53
    iget-object v5, v1, Lcom/android/systemui/keyguard/DismissCallbackRegistry;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    .line 56
    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 58
    add-int/lit8 v3, v3, -0x1

    .line 61
    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetKeyguardDonePendingLocked()V

    .line 67
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 70
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked(ZZ)V

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    .line 75
    return-void
    .line 78
.end method

.method public final playSound(I)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundId:I

    .line 5
    const/4 v1, 0x1

    .line 7
    if-ne p1, v0, :cond_1

    .line 8
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    .line 10
    if-eqz v0, :cond_1

    .line 12
    const/4 v0, 0x2

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    move v0, v1

    .line 16
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 17
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 19
    move-result-object v3

    .line 22
    const-string v4, "lockscreen_sounds_enabled"

    .line 23
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 25
    move-result v5

    .line 28
    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 29
    move-result v3

    .line 32
    if-ne v3, v1, :cond_4

    .line 33
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    .line 35
    iget v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundStreamId:I

    .line 37
    invoke-virtual {v1, v3}, Landroid/media/SoundPool;->stop(I)V

    .line 39
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    .line 42
    if-nez v1, :cond_3

    .line 44
    const-string v1, "audio"

    .line 46
    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    move-result-object v1

    .line 51
    check-cast v1, Landroid/media/AudioManager;

    .line 52
    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    .line 54
    if-nez v1, :cond_2

    .line 56
    return-void

    .line 58
    :cond_2
    invoke-virtual {v1}, Landroid/media/AudioManager;->getUiSoundsStreamType()I

    .line 59
    move-result v1

    .line 62
    iput v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiSoundsStreamType:I

    .line 63
    :cond_3
    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda9;

    .line 65
    invoke-direct {v1, p0, p1, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;II)V

    .line 67
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    .line 70
    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 72
    :cond_4
    return-void
    .line 75
.end method

.method public final resetAppLock()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 2
    const-string/jumbo v0, "security"

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 10
    check-cast p0, Lmiui/security/SecurityManager;

    .line 11
    if-eqz p0, :cond_0

    .line 13
    const-string v0, "*"

    .line 15
    const/4 v1, -0x1

    .line 17
    invoke-virtual {p0, v0, v1}, Lmiui/security/SecurityManager;->removeAccessControlPassAsUser(Ljava/lang/String;I)V

    .line 18
    :cond_0
    return-void
    .line 21
.end method

.method public final resetKeyguardDonePendingLocked()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 3
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/KeyguardViewMediator$12;

    .line 5
    const/16 v0, 0xd

    .line 7
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 9
    return-void
    .line 12
.end method

.method public final resetStateLocked(Z)V
    .locals 2

    .line 1
    const-string v0, "KeyguardViewMediator"

    .line 2
    const-string/jumbo v1, "resetStateLocked"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    const/4 v0, 0x3

    .line 10
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/KeyguardViewMediator$12;

    .line 11
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 14
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 18
    return-void
    .line 21
.end method

.method public final sendUserPresentBroadcast()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootCompleted:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 7
    move-result v0

    .line 10
    new-instance v1, Landroid/os/UserHandle;

    .line 11
    invoke-direct {v1, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 13
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 16
    const-string/jumbo v3, "user"

    .line 18
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 24
    check-cast v2, Landroid/os/UserManager;

    .line 25
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    .line 27
    new-instance v4, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda2;

    .line 29
    invoke-direct {v4, p0, v2, v1, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/UserManager;Landroid/os/UserHandle;I)V

    .line 31
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 34
    goto :goto_0

    .line 37
    :cond_0
    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootSendUserPresent:Z

    .line 39
    :goto_0
    monitor-exit p0

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw v0
    .line 45
.end method

.method public final setBlursDisabledForAppLaunch(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNotificationShadeDepthController:Ldagger/Lazy;

    .line 2
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 8
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blursDisabledForAppLaunch:Z

    .line 10
    if-ne v0, p1, :cond_0

    .line 12
    goto :goto_1

    .line 14
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blursDisabledForAppLaunch:Z

    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->scheduleUpdate()V

    .line 17
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeExpansion:F

    .line 20
    const/4 v1, 0x0

    .line 22
    cmpg-float v0, v0, v1

    .line 23
    const/4 v1, 0x0

    .line 25
    if-nez v0, :cond_1

    .line 26
    const/4 v0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v0, v1

    .line 30
    :goto_0
    if-eqz v0, :cond_2

    .line 31
    goto :goto_1

    .line 33
    :cond_2
    if-nez p1, :cond_3

    .line 34
    goto :goto_1

    .line 36
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeAnimation:Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation;

    .line 37
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation;->animateTo(I)V

    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation;->finishIfRunning()V

    .line 42
    :goto_1
    return-void
    .line 45
.end method

.method public final setOccluded(ZZ)V
    .locals 3

    .line 1
    const-string v0, "KeyguardViewMediator"

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    const-string/jumbo v2, "setOccluded("

    .line 6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    const-string v2, ")"

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    monitor-enter p0

    .line 27
    :try_start_0
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTargetOccluded:Z

    .line 28
    const-class v0, Lcom/android/keyguard/KeyguardEditorHelper;

    .line 30
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 35
    check-cast v0, Lcom/android/keyguard/KeyguardEditorHelper;

    .line 36
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardEditorHelper;->isInEnterEditorMode()Z

    .line 38
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    monitor-exit p0

    .line 44
    return-void

    .line 45
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSendOccluded:Z

    .line 46
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    const-string v0, "KeyguardViewMediator#setOccluded"

    .line 49
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 51
    const-string v0, "KeyguardViewMediator"

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    const-string/jumbo v2, "setOccluded "

    .line 58
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v1

    .line 70
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/KeyguardViewMediator$12;

    .line 74
    const/16 v1, 0x9

    .line 76
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 78
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/KeyguardViewMediator$12;

    .line 81
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 83
    move-result-object p1

    .line 86
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/KeyguardViewMediator$12;

    .line 87
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 89
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 92
    return-void

    .line 95
    :catchall_0
    move-exception p1

    .line 96
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    throw p1
    .line 98
.end method

.method public final setPendingLock(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingLock:Z

    .line 2
    const-wide/16 v0, 0x1000

    .line 4
    const-string p0, "pendingLock"

    .line 6
    invoke-static {v0, v1, p0, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 8
    return-void
    .line 11
.end method

.method public final setShowingLocked(ZZ)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDozing:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    .line 8
    if-nez v0, :cond_0

    .line 10
    move v0, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v2

    .line 14
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 15
    if-ne p1, v3, :cond_2

    .line 17
    if-eqz p2, :cond_1

    .line 19
    goto :goto_1

    .line 21
    :cond_1
    move v4, v2

    .line 22
    goto :goto_2

    .line 23
    :cond_2
    :goto_1
    move v4, v1

    .line 24
    :goto_2
    if-ne p1, v3, :cond_4

    .line 25
    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAodShowing:Z

    .line 27
    if-ne v0, v3, :cond_4

    .line 29
    if-eqz p2, :cond_3

    .line 31
    goto :goto_3

    .line 33
    :cond_3
    move v1, v2

    .line 34
    :cond_4
    :goto_3
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 35
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAodShowing:Z

    .line 37
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    .line 39
    if-eqz v4, :cond_5

    .line 41
    new-instance v3, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda0;

    .line 43
    invoke-direct {v3, p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V

    .line 45
    invoke-static {v3}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/lang/Runnable;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateInputRestrictedLocked()V

    .line 51
    new-instance v3, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda1;

    .line 54
    invoke-direct {v3, p0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V

    .line 56
    invoke-interface {p2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 59
    :cond_5
    if-eqz v1, :cond_6

    .line 62
    new-instance p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda6;

    .line 64
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda6;-><init>(ZZ)V

    .line 66
    invoke-interface {p2, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 69
    :cond_6
    return-void
    .line 72
.end method

.method public final setupLocked()V
    .locals 12

    .line 1
    const-string/jumbo v0, "show keyguard"

    .line 2
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    .line 5
    const/4 v2, 0x1

    .line 7
    invoke-virtual {v1, v2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 8
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 12
    const/4 v3, 0x0

    .line 14
    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 15
    new-instance v0, Landroid/content/IntentFilter;

    .line 18
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 20
    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    .line 23
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBroadcastReceiver:Lcom/android/systemui/keyguard/KeyguardViewMediator$10;

    .line 28
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 30
    invoke-virtual {v5, v4, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 32
    new-instance v8, Landroid/content/IntentFilter;

    .line 35
    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 37
    const-string v0, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    .line 40
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 42
    const-string v0, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_LOCK"

    .line 45
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    const/16 v0, 0x3e8

    .line 50
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 52
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 55
    iget-object v7, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedLockBroadcastReceiver:Lcom/android/systemui/keyguard/KeyguardViewMediator$10;

    .line 57
    const-string v9, "com.android.systemui.permission.SELF"

    .line 59
    const/4 v10, 0x0

    .line 61
    const/4 v11, 0x2

    .line 62
    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 63
    const-string v0, "alarm"

    .line 66
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 68
    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    move-result-object v0

    .line 73
    check-cast v0, Landroid/app/AlarmManager;

    .line 74
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    .line 76
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 78
    move-object v5, v0

    .line 80
    check-cast v5, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 81
    invoke-virtual {v5}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 83
    move-result v5

    .line 86
    sget v6, Lcom/android/keyguard/KeyguardUpdateMonitor;->BIOMETRIC_HELP_FINGERPRINT_NOT_RECOGNIZED:I

    .line 87
    const-class v6, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 89
    monitor-enter v6

    .line 91
    :try_start_0
    sput v5, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit v6

    .line 94
    :try_start_1
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 95
    move-result-object v5

    .line 98
    new-instance v6, Landroid/content/ComponentName;

    .line 99
    const-class v7, Lcom/android/systemui/keyguard/KeyguardService;

    .line 101
    invoke-direct {v6, v4, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    invoke-virtual {v5, v6, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    .line 106
    move-result-object v5

    .line 109
    invoke-virtual {v5}, Landroid/content/pm/ServiceInfo;->isEnabled()Z

    .line 110
    move-result v5
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 113
    goto :goto_0

    .line 114
    :catch_0
    move v5, v2

    .line 115
    :goto_0
    if-eqz v5, :cond_1

    .line 116
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning()Z

    .line 118
    move-result v5

    .line 121
    if-nez v5, :cond_0

    .line 122
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 124
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 126
    move-result v6

    .line 129
    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    .line 130
    move-result v5

    .line 133
    if-nez v5, :cond_0

    .line 134
    move v3, v2

    .line 136
    :cond_0
    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(ZZ)V

    .line 137
    goto :goto_1

    .line 140
    :cond_1
    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(ZZ)V

    .line 141
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 144
    if-nez v3, :cond_2

    .line 146
    const-class v3, Landroid/app/WallpaperManager;

    .line 148
    invoke-virtual {v4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 150
    move-result-object v3

    .line 153
    check-cast v3, Landroid/app/WallpaperManager;

    .line 154
    iput-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 156
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 158
    invoke-virtual {v3}, Landroid/app/WallpaperManager;->isLockscreenLiveWallpaperEnabled()Z

    .line 160
    move-result v3

    .line 163
    new-instance v5, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;

    .line 164
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitAnimationRunner:Lcom/android/systemui/keyguard/KeyguardViewMediator$6;

    .line 166
    invoke-direct {v5, p0, v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/view/IRemoteAnimationRunner;)V

    .line 168
    sget v6, Lcom/android/systemui/keyguard/KeyguardService;->$r8$clinit:I

    .line 171
    new-instance v6, Lcom/android/systemui/keyguard/KeyguardService$1;

    .line 173
    invoke-direct {v6, v5, p0, v3}, Lcom/android/systemui/keyguard/KeyguardService$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator$7;Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V

    .line 175
    new-instance v5, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;

    .line 178
    iget-object v7, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccludeAnimationRunner:Lcom/android/systemui/keyguard/KeyguardViewMediator$OccludeActivityLaunchRemoteAnimationRunner;

    .line 180
    invoke-direct {v5, p0, v7}, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/view/IRemoteAnimationRunner;)V

    .line 182
    new-instance v7, Lcom/android/systemui/keyguard/KeyguardService$1;

    .line 185
    invoke-direct {v7, v5, p0, v3}, Lcom/android/systemui/keyguard/KeyguardService$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator$7;Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V

    .line 187
    new-instance v5, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;

    .line 190
    iget-object v8, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccludeByDreamAnimationRunner:Lcom/android/systemui/keyguard/KeyguardViewMediator$7;

    .line 192
    invoke-direct {v5, p0, v8}, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/view/IRemoteAnimationRunner;)V

    .line 194
    new-instance v8, Lcom/android/systemui/keyguard/KeyguardService$1;

    .line 197
    invoke-direct {v8, v5, p0, v3}, Lcom/android/systemui/keyguard/KeyguardService$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator$7;Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V

    .line 199
    new-instance v5, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;

    .line 202
    iget-object v9, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnoccludeAnimationRunner:Lcom/android/systemui/keyguard/KeyguardViewMediator$8;

    .line 204
    invoke-direct {v5, p0, v9}, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/view/IRemoteAnimationRunner;)V

    .line 206
    new-instance v9, Lcom/android/systemui/keyguard/KeyguardService$1;

    .line 209
    invoke-direct {v9, v5, p0, v3}, Lcom/android/systemui/keyguard/KeyguardService$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator$7;Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V

    .line 211
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardTransitions:Lcom/android/wm/shell/keyguard/KeyguardTransitions;

    .line 214
    invoke-interface {v3, v6, v7, v8, v9}, Lcom/android/wm/shell/keyguard/KeyguardTransitions;->register(Lcom/android/systemui/keyguard/KeyguardService$1;Lcom/android/systemui/keyguard/KeyguardService$1;Lcom/android/systemui/keyguard/KeyguardService$1;Lcom/android/systemui/keyguard/KeyguardService$1;)V

    .line 216
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 219
    move-result-object v3

    .line 222
    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    .line 223
    move-result v1

    .line 226
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    .line 227
    new-instance v1, Landroid/media/SoundPool$Builder;

    .line 229
    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 231
    invoke-virtual {v1, v2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    .line 234
    move-result-object v1

    .line 237
    new-instance v5, Landroid/media/AudioAttributes$Builder;

    .line 238
    invoke-direct {v5}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 240
    const/16 v6, 0xd

    .line 243
    invoke-virtual {v5, v6}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 245
    move-result-object v5

    .line 248
    const/4 v6, 0x4

    .line 249
    invoke-virtual {v5, v6}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 250
    move-result-object v5

    .line 253
    invoke-virtual {v5}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 254
    move-result-object v5

    .line 257
    invoke-virtual {v1, v5}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    .line 258
    move-result-object v1

    .line 261
    invoke-virtual {v1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    .line 262
    move-result-object v1

    .line 265
    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    .line 266
    const-string v1, "lock_sound"

    .line 268
    invoke-static {v3, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 270
    move-result-object v1

    .line 273
    if-eqz v1, :cond_3

    .line 274
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    .line 276
    invoke-virtual {v5, v1, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    .line 278
    move-result v5

    .line 281
    iput v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundId:I

    .line 282
    :cond_3
    const-string v5, "KeyguardViewMediator"

    .line 284
    if-eqz v1, :cond_4

    .line 286
    iget v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundId:I

    .line 288
    if-nez v6, :cond_5

    .line 290
    :cond_4
    const-string v6, "failed to load lock sound from "

    .line 292
    invoke-static {v6, v1, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_5
    const-string/jumbo v1, "unlock_sound"

    .line 297
    invoke-static {v3, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 300
    move-result-object v1

    .line 303
    if-eqz v1, :cond_6

    .line 304
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    .line 306
    invoke-virtual {v6, v1, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    .line 308
    move-result v6

    .line 311
    iput v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    .line 312
    :cond_6
    if-eqz v1, :cond_7

    .line 314
    iget v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    .line 316
    if-nez v6, :cond_8

    .line 318
    :cond_7
    const-string v6, "failed to load unlock sound from "

    .line 320
    invoke-static {v6, v1, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :cond_8
    const-string/jumbo v1, "trusted_sound"

    .line 325
    invoke-static {v3, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 328
    move-result-object v1

    .line 331
    if-eqz v1, :cond_9

    .line 332
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    .line 334
    invoke-virtual {v3, v1, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    .line 336
    move-result v2

    .line 339
    iput v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustedSoundId:I

    .line 340
    :cond_9
    if-eqz v1, :cond_a

    .line 342
    iget v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustedSoundId:I

    .line 344
    if-nez v2, :cond_b

    .line 346
    :cond_a
    const-string v2, "failed to load trusted sound from "

    .line 348
    invoke-static {v2, v1, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :cond_b
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 353
    move-result-object v1

    .line 356
    const v2, 0x10e009d    # @android:integer/config_lowMemoryKillerMinFreeKbytesAbsolute

    .line 357
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 360
    move-result v1

    .line 363
    int-to-float v1, v1

    .line 364
    const/high16 v2, 0x41a00000    # 20.0f

    .line 365
    div-float/2addr v1, v2

    .line 367
    float-to-double v1, v1

    .line 368
    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    .line 369
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->pow(DD)D

    .line 371
    move-result-wide v1

    .line 374
    double-to-float v1, v1

    .line 375
    iput v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    .line 376
    const v1, 0x10a0069    # @android:anim/options_panel_enter

    .line 378
    invoke-static {v4, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 381
    move-result-object v1

    .line 384
    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimation:Landroid/view/animation/Animation;

    .line 385
    new-instance v1, Lcom/android/systemui/keyguard/WorkLockActivityController;

    .line 387
    sget-object v2, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->INSTANCE:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    .line 389
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 391
    move-result-object v3

    .line 394
    invoke-direct {v1, v4, v0, v2, v3}, Lcom/android/systemui/keyguard/WorkLockActivityController;-><init>(Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/shared/system/TaskStackChangeListeners;Landroid/app/IActivityTaskManager;)V

    .line 395
    new-instance v0, Lcom/android/keyguard/MiuiBleUnlockHelper;

    .line 398
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 400
    invoke-direct {v0, v4, p0, v1}, Lcom/android/keyguard/MiuiBleUnlockHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/keyguard/KeyguardViewMediator;Ldagger/Lazy;)V

    .line 402
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBleUnlockHelper:Lcom/android/keyguard/MiuiBleUnlockHelper;

    .line 405
    sget-object v0, Lcom/android/keyguard/utils/MiuiKeyguardUtils;->sRegionSupportMiHomeList:Ljava/util/List;

    .line 407
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 409
    move-result-object v0

    .line 412
    const v1, 0x11050071

    .line 413
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 416
    move-result v0

    .line 419
    if-eqz v0, :cond_c

    .line 420
    new-instance v0, Lcom/android/keyguard/MiuiSmartCoverHelper;

    .line 422
    invoke-direct {v0, v4, p0}, Lcom/android/keyguard/MiuiSmartCoverHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 424
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSmartCoverHelper:Lcom/android/keyguard/MiuiSmartCoverHelper;

    .line 427
    :cond_c
    const-class p0, Lcom/android/keyguard/injector/KeyguardViewMediatorInjector;

    .line 429
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 431
    move-result-object p0

    .line 434
    check-cast p0, Lcom/android/keyguard/injector/KeyguardViewMediatorInjector;

    .line 435
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 437
    new-instance v2, Landroid/content/IntentFilter;

    .line 440
    const-string/jumbo v0, "xiaomi.intent.action.SHOW_SECURE_KEYGUARD"

    .line 442
    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardViewMediatorInjector;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 448
    iget-object v1, p0, Lcom/android/keyguard/injector/KeyguardViewMediatorInjector;->mShowPasswordScreenReceiver:Lcom/android/keyguard/injector/KeyguardViewMediatorInjector$mShowPasswordScreenReceiver$1;

    .line 450
    const/4 v3, 0x0

    .line 452
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 453
    const/4 v5, 0x0

    .line 455
    const/4 v6, 0x0

    .line 456
    const/16 v7, 0x34

    .line 457
    invoke-static/range {v0 .. v7}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    .line 459
    const-class p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 462
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 464
    move-result-object p0

    .line 467
    check-cast p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 468
    iget-boolean v0, p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->mKeyguardOccluded:Z

    .line 470
    if-eqz v0, :cond_d

    .line 472
    new-instance v0, Landroid/content/Intent;

    .line 474
    const-string/jumbo v1, "xiaomi.intent.action.SECURE_KEYGUARD_SHOWN"

    .line 476
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 479
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 482
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->mContext:Landroid/content/Context;

    .line 484
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 486
    :cond_d
    return-void

    .line 489
    :catchall_0
    move-exception p0

    .line 490
    monitor-exit v6

    .line 491
    throw p0
    .line 492
.end method

.method public final shouldWaitForProvisioning()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    .line 4
    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    .line 8
    move-result p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
    .line 17
.end method

.method public final showLocked(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "KeyguardViewMediator#showLocked acquiring mShowKeyguardWakeLock"

    .line 2
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    const-string v0, "KeyguardViewMediator"

    .line 7
    const-string/jumbo v1, "showLocked"

    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 15
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 17
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/KeyguardViewMediator$12;

    .line 20
    const/4 v0, 0x1

    .line 22
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 23
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 27
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 30
    return-void
    .line 33
.end method

.method public final start()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setupLocked()V

    .line 3
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    throw v0
    .line 10
.end method

.method public final startKeyguardExitAnimation(IJJ[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    const/16 v1, 0x14

    .line 3
    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/KeyguardViewMediator$12;

    .line 5
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7
    const-string v1, "KeyguardViewMediator#startKeyguardExitAnimation"

    .line 10
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 12
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 15
    const/16 v1, 0x17

    .line 17
    invoke-virtual {v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    .line 19
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;

    .line 22
    move-object v3, v0

    .line 24
    move-wide v4, p2

    .line 25
    move-wide/from16 v6, p4

    .line 26
    move-object/from16 v8, p6

    .line 28
    move-object/from16 v9, p7

    .line 30
    move-object/from16 v10, p8

    .line 32
    move-object/from16 v11, p9

    .line 34
    invoke-direct/range {v3 .. v11}, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;-><init>(JJ[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    .line 36
    const/16 v1, 0xc

    .line 39
    invoke-virtual {v2, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 41
    move-result-object v0

    .line 44
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 45
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 48
    return-void
    .line 51
.end method

.method public final tryKeyguardDone()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string/jumbo v1, "tryKeyguardDone: pending - "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", animRan - "

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, " animRunning - "

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRunning:Z

    .line 30
    const-string v2, "KeyguardViewMediator"

    .line 32
    invoke-static {v0, v1, v2}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 34
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 37
    if-nez v0, :cond_0

    .line 39
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 41
    if-eqz v0, :cond_0

    .line 43
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRunning:Z

    .line 45
    if-nez v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleKeyguardDone()V

    .line 49
    goto :goto_0

    .line 52
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 53
    if-nez v0, :cond_1

    .line 55
    const-string/jumbo v0, "tryKeyguardDone: starting pre-hide animation"

    .line 57
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 64
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRunning:Z

    .line 66
    const/16 v0, 0x15

    .line 68
    const-wide/16 v1, 0x190

    .line 70
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/KeyguardViewMediator$12;

    .line 72
    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 74
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 77
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 79
    move-result-object v0

    .line 82
    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    .line 83
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationFinishedRunnable:Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda1;

    .line 85
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 87
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->startPreHideAnimation(Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda1;)V

    .line 89
    :cond_1
    :goto_0
    return-void
    .line 92
.end method

.method public final updateInputRestrictedLocked()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_1

    .line 5
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 7
    if-eqz v0, :cond_0

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    goto :goto_1

    .line 13
    :cond_1
    :goto_0
    move v0, v1

    .line 14
    :goto_1
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInputRestricted:Z

    .line 15
    if-eq v2, v0, :cond_3

    .line 17
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInputRestricted:Z

    .line 19
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 23
    move-result v2

    .line 26
    sub-int/2addr v2, v1

    .line 27
    :goto_2
    if-ltz v2, :cond_3

    .line 28
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 33
    check-cast v1, Lcom/android/internal/policy/IKeyguardStateCallback;

    .line 34
    :try_start_0
    invoke-interface {v1, v0}, Lcom/android/internal/policy/IKeyguardStateCallback;->onInputRestrictedStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_3

    .line 39
    :catch_0
    move-exception v3

    .line 40
    const-string v4, "KeyguardViewMediator"

    .line 41
    const-string v5, "Failed to call onDeviceProvisioned"

    .line 43
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    instance-of v3, v3, Landroid/os/DeadObjectException;

    .line 48
    if-eqz v3, :cond_2

    .line 50
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 52
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, -0x1

    .line 55
    goto :goto_2

    .line 57
    :cond_3
    return-void
    .line 58
.end method

.method public final userActivity()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    move-result-wide v0

    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    .line 7
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 9
    return-void
    .line 12
.end method
