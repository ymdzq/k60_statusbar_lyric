.class public final Lcom/android/systemui/Dependency;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final BACKGROUND_EXECUTOR:Lcom/android/systemui/Dependency$DependencyKey;

.field public static final BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

.field public static final LEAK_REPORT_EMAIL:Lcom/android/systemui/Dependency$DependencyKey;

.field public static final MAIN_EXECUTOR:Lcom/android/systemui/Dependency$DependencyKey;

.field public static final MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

.field public static final MAIN_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

.field public static final TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

.field public static final UI_BACKGROUND_EXECUTOR:Lcom/android/systemui/Dependency$DependencyKey;

.field public static sDependency:Lcom/android/systemui/Dependency;


# instance fields
.field public mAccessibilityButtonListController:Ldagger/Lazy;

.field public mAccessibilityButtonModeObserver:Ldagger/Lazy;

.field public mAccessibilityController:Ldagger/Lazy;

.field public mAccessibilityFloatingMenuController:Ldagger/Lazy;

.field public mAccessibilityManagerWrapper:Ldagger/Lazy;

.field public mActivityManagerWrapper:Ldagger/Lazy;

.field public mActivityStarter:Ldagger/Lazy;

.field public mAlarmManager:Ldagger/Lazy;

.field public mAmbientStateLazy:Ldagger/Lazy;

.field public mAppIconsManager:Ldagger/Lazy;

.field public mAppMiniWindowManager:Ldagger/Lazy;

.field public mAppOpsController:Ldagger/Lazy;

.field public mAssistManager:Ldagger/Lazy;

.field public mAsyncSensorManager:Ldagger/Lazy;

.field public mAutoHideController:Ldagger/Lazy;

.field public mBackgroundExecutor:Ldagger/Lazy;

.field public mBadgeManager:Ldagger/Lazy;

.field public mBatteryController:Ldagger/Lazy;

.field public mBgLooper:Ldagger/Lazy;

.field public mBluetoothController:Ldagger/Lazy;

.field public mBlurUtils:Ldagger/Lazy;

.field public mBroadcastDispatcher:Ldagger/Lazy;

.field public mCallStateController:Ldagger/Lazy;

.field public mCarrierObserver:Ldagger/Lazy;

.field public mCastController:Ldagger/Lazy;

.field public mCentralSurfaces:Ldagger/Lazy;

.field public mClockManager:Ldagger/Lazy;

.field public mCloudDataManager:Ldagger/Lazy;

.field public mCommandQueue:Ldagger/Lazy;

.field public mConfigurationController:Ldagger/Lazy;

.field public mContentInsetsProviderLazy:Ldagger/Lazy;

.field public mControlPanelController:Ldagger/Lazy;

.field public mControlPanelWindowManager:Ldagger/Lazy;

.field public mCustomCarrierObserver:Ldagger/Lazy;

.field public mDarkIconDispatcher:Ldagger/Lazy;

.field public mDataSaverController:Ldagger/Lazy;

.field public final mDependencies:Landroid/util/ArrayMap;

.field public mDeviceConfigProxy:Ldagger/Lazy;

.field public mDevicePolicyManagerWrapper:Ldagger/Lazy;

.field public mDeviceProvisionedController:Ldagger/Lazy;

.field public mDialogLaunchAnimatorLazy:Ldagger/Lazy;

.field public mDismissNotificationHelper:Ldagger/Lazy;

.field public mDisplayMetrics:Ldagger/Lazy;

.field public mDockManager:Ldagger/Lazy;

.field public mDozeParameters:Ldagger/Lazy;

.field public mDozeServiceHost:Ldagger/Lazy;

.field public mDualClockObserver:Ldagger/Lazy;

.field public mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field public mEdgeBackGestureHandlerFactoryLazy:Ldagger/Lazy;

.field public mEnhancedEstimates:Ldagger/Lazy;

.field public mExtensionController:Ldagger/Lazy;

.field public mFakeStatusBarClockController:Ldagger/Lazy;

.field public mFakeStatusBarViewController:Ldagger/Lazy;

.field public mFeatureFlagsLazy:Ldagger/Lazy;

.field public mFiveGControllerImpl:Ldagger/Lazy;

.field public mFlashlightController:Ldagger/Lazy;

.field public mFocusedNotifPromptController:Ldagger/Lazy;

.field public mFoldNotifController:Ldagger/Lazy;

.field public mFoldNotifManager:Ldagger/Lazy;

.field public mForceBlackObserver:Ldagger/Lazy;

.field public mForegroundServiceController:Ldagger/Lazy;

.field public mFragmentService:Ldagger/Lazy;

.field public mGarbageMonitor:Ldagger/Lazy;

.field public mGestureObserver:Ldagger/Lazy;

.field public mGroupExpansionManagerLazy:Ldagger/Lazy;

.field public mGroupMembershipManagerLazy:Ldagger/Lazy;

.field public mHDController:Ldagger/Lazy;

.field public mHeadsUpManager:Ldagger/Lazy;

.field public mHotspotController:Ldagger/Lazy;

.field public mINotificationManager:Ldagger/Lazy;

.field public mIStatusBarService:Ldagger/Lazy;

.field public mIWindowManager:Ldagger/Lazy;

.field public mInternetDialogFactory:Ldagger/Lazy;

.field public mKeyguardBottomAreaInjector:Ldagger/Lazy;

.field public mKeyguardClockInjector:Ldagger/Lazy;

.field public mKeyguardCommonSettingObserver:Ldagger/Lazy;

.field public mKeyguardDismissUtil:Ldagger/Lazy;

.field public mKeyguardEditorHelper:Ldagger/Lazy;

.field public mKeyguardIndicationInjector:Ldagger/Lazy;

.field public mKeyguardMonitor:Ldagger/Lazy;

.field public mKeyguardNegative1PageInjector:Ldagger/Lazy;

.field public mKeyguardNotificationController:Ldagger/Lazy;

.field public mKeyguardNotificationLogger:Ldagger/Lazy;

.field public mKeyguardPanelViewInjector:Ldagger/Lazy;

.field public mKeyguardSecurityModel:Ldagger/Lazy;

.field public mKeyguardUpdateMonitor:Ldagger/Lazy;

.field public mKeyguardUpdateMonitorInjector:Ldagger/Lazy;

.field public mKeyguardViewMediatorInjector:Ldagger/Lazy;

.field public mLeakDetector:Ldagger/Lazy;

.field public mLeakReportEmail:Ldagger/Lazy;

.field public mLeakReporter:Ldagger/Lazy;

.field public mLightBarController:Ldagger/Lazy;

.field public mLocalBluetoothManager:Ldagger/Lazy;

.field public mLocationController:Ldagger/Lazy;

.field public mLockScreenMagazineController:Ldagger/Lazy;

.field public mLockscreenGestureLogger:Ldagger/Lazy;

.field public mMIUIStrongToastControl:Ldagger/Lazy;

.field public mMainExecutor:Ldagger/Lazy;

.field public mMainHandler:Ldagger/Lazy;

.field public mMainLooper:Ldagger/Lazy;

.field public mManagedProfileController:Ldagger/Lazy;

.field public mMediaLogger:Ldagger/Lazy;

.field public mMediaOutputDialogFactory:Ldagger/Lazy;

.field public mMetricsLogger:Ldagger/Lazy;

.field public mMiPlayPluginManager:Ldagger/Lazy;

.field public mMinimalismModeController:Ldagger/Lazy;

.field public mMiuiBubbleController:Ldagger/Lazy;

.field public mMiuiCarrierTextController:Ldagger/Lazy;

.field public mMiuiDemoModeController:Ldagger/Lazy;

.field public mMiuiHomePrivacyController:Ldagger/Lazy;

.field public mMiuiIconManagerFactory:Ldagger/Lazy;

.field public mMiuiKeyguardWallPaperManager:Ldagger/Lazy;

.field public mMiuiOperatorCustomizedPolicy:Ldagger/Lazy;

.field public mMiuiPrivacyController:Ldagger/Lazy;

.field public mMiuiStatusBarClockController:Ldagger/Lazy;

.field public mMiuiStatusBarLaunchController:Ldagger/Lazy;

.field public mMiuiUWBController:Ldagger/Lazy;

.field public mModalController:Ldagger/Lazy;

.field public mMultiTaskStatusBarDotsAreaControllerFactory:Ldagger/Lazy;

.field public mMultiUserController:Ldagger/Lazy;

.field public mNCSwitchController:Ldagger/Lazy;

.field public mNavBarModeController:Ldagger/Lazy;

.field public mNavigationBarController:Ldagger/Lazy;

.field public mNetworkController:Ldagger/Lazy;

.field public mNetworkSpeedController:Ldagger/Lazy;

.field public mNextAlarmController:Ldagger/Lazy;

.field public mNightDisplayListener:Ldagger/Lazy;

.field public mNotificationGutsManager:Ldagger/Lazy;

.field public mNotificationIconObserver:Ldagger/Lazy;

.field public mNotificationListener:Ldagger/Lazy;

.field public mNotificationLockscreenUserManager:Ldagger/Lazy;

.field public mNotificationLogger:Ldagger/Lazy;

.field public mNotificationMediaManager:Ldagger/Lazy;

.field public mNotificationNavigationCoordinator:Ldagger/Lazy;

.field public mNotificationRemoteInputManager:Ldagger/Lazy;

.field public mNotificationRemoteInputManagerCallback:Ldagger/Lazy;

.field public mNotificationSectionsManagerLazy:Ldagger/Lazy;

.field public mNotificationSensitiveController:Ldagger/Lazy;

.field public mNotificationSettingsManager:Ldagger/Lazy;

.field public mNotificationShadeWindowController:Ldagger/Lazy;

.field public mNotificationStat:Ldagger/Lazy;

.field public mOverviewProxyService:Ldagger/Lazy;

.field public mPackageManagerWrapper:Ldagger/Lazy;

.field public mPhoneSignalController:Ldagger/Lazy;

.field public mPluginDependencyProvider:Ldagger/Lazy;

.field public mPluginManager:Ldagger/Lazy;

.field public mPrivacyDotViewControllerLazy:Ldagger/Lazy;

.field public mPrivacyItemController:Ldagger/Lazy;

.field public mProtoTracer:Ldagger/Lazy;

.field public final mProviders:Landroid/util/ArrayMap;

.field public mRecordingController:Ldagger/Lazy;

.field public mReduceBrightColorsController:Ldagger/Lazy;

.field public mRegionController:Ldagger/Lazy;

.field public mRemoteInputQuickSettingsDisabler:Ldagger/Lazy;

.field public mRotationLockController:Ldagger/Lazy;

.field public mScreenLifecycle:Ldagger/Lazy;

.field public mScreenOffAnimationController:Ldagger/Lazy;

.field public mSecurityController:Ldagger/Lazy;

.field public mSensorPrivacyController:Ldagger/Lazy;

.field public mSensorPrivacyManager:Ldagger/Lazy;

.field public mSettingsManager:Ldagger/Lazy;

.field public mShadeController:Ldagger/Lazy;

.field public mSmartDarkObserver:Ldagger/Lazy;

.field public mSmartReplyConstants:Ldagger/Lazy;

.field public mSmartReplyController:Ldagger/Lazy;

.field public mStatusBarIconController:Ldagger/Lazy;

.field public mStatusBarStateController:Ldagger/Lazy;

.field public mSuperSaveModeController:Ldagger/Lazy;

.field public mSysUiStateFlagsContainer:Ldagger/Lazy;

.field public mSystemStatusAnimationSchedulerLazy:Ldagger/Lazy;

.field public mSystemUIDialogManagerLazy:Ldagger/Lazy;

.field public mSystemUIStat:Ldagger/Lazy;

.field public mSysuiColorExtractor:Ldagger/Lazy;

.field public mTelephonyListenerManager:Ldagger/Lazy;

.field public mTempStatusBarWindowController:Ldagger/Lazy;

.field public mTimeTickHandler:Ldagger/Lazy;

.field public mTunablePaddingService:Ldagger/Lazy;

.field public mTunerService:Ldagger/Lazy;

.field public mUiBackgroundExecutor:Ldagger/Lazy;

.field public mUiEventLogger:Ldagger/Lazy;

.field public mUiOffloadThread:Ldagger/Lazy;

.field public mUnimportantNotifLogger:Ldagger/Lazy;

.field public mUnimportantSdk:Ldagger/Lazy;

.field public mUserInfoController:Ldagger/Lazy;

.field public mUserSwitcherController:Ldagger/Lazy;

.field public mUserTrackerLazy:Ldagger/Lazy;

.field public mVibratorHelper:Ldagger/Lazy;

.field public mVolumeDialogController:Ldagger/Lazy;

.field public mWakefulnessLifecycle:Ldagger/Lazy;

.field public mWallpaperManager:Ldagger/Lazy;

.field public mWarningsUI:Ldagger/Lazy;

.field public mZenModeController:Ldagger/Lazy;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    .line 2
    const-string v1, "background_looper"

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    .line 6
    sput-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 9
    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    .line 11
    const-string v1, "main_looper"

    .line 13
    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    .line 15
    sput-object v0, Lcom/android/systemui/Dependency;->MAIN_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 18
    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    .line 20
    const-string/jumbo v1, "time_tick_handler"

    .line 22
    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    .line 25
    sput-object v0, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 28
    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    .line 30
    const-string v1, "main_handler"

    .line 32
    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    .line 34
    sput-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 37
    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    .line 39
    const-string v1, "main_executor"

    .line 41
    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    .line 43
    sput-object v0, Lcom/android/systemui/Dependency;->MAIN_EXECUTOR:Lcom/android/systemui/Dependency$DependencyKey;

    .line 46
    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    .line 48
    const-string v1, "background_executor"

    .line 50
    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    .line 52
    sput-object v0, Lcom/android/systemui/Dependency;->BACKGROUND_EXECUTOR:Lcom/android/systemui/Dependency$DependencyKey;

    .line 55
    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    .line 57
    const-string v1, "leak_report_email"

    .line 59
    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    .line 61
    sput-object v0, Lcom/android/systemui/Dependency;->LEAK_REPORT_EMAIL:Lcom/android/systemui/Dependency$DependencyKey;

    .line 64
    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    .line 66
    const-string/jumbo v1, "ui_background_executor"

    .line 68
    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    .line 71
    sput-object v0, Lcom/android/systemui/Dependency;->UI_BACKGROUND_EXECUTOR:Lcom/android/systemui/Dependency$DependencyKey;

    .line 74
    return-void
    .line 76
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    .line 10
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    .line 17
    return-void
    .line 19
.end method

.method public static get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;
    .locals 3

    .line 7
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, v0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 10
    invoke-virtual {v0, p0}, Lcom/android/systemui/Dependency;->createDependency(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 11
    iget-object v2, v0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v2, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, v0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {v0, p0}, Lcom/android/systemui/Dependency;->createDependency(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    iget-object v2, v0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v2, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setInstance(Lcom/android/systemui/Dependency;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    .line 2
    return-void
    .line 4
.end method


# virtual methods
.method public createDependency(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/android/systemui/Dependency$DependencyKey;

    .line 2
    if-nez v0, :cond_1

    .line 4
    instance-of v0, p1, Ljava/lang/Class;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 14
    iget-object p0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    .line 17
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Lcom/android/systemui/Dependency$LazyDependencyCreator;

    .line 23
    if-eqz v0, :cond_2

    .line 25
    invoke-interface {v0}, Lcom/android/systemui/Dependency$LazyDependencyCreator;->createDependency()Ljava/lang/Object;

    .line 27
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 32
    const-string v1, "Unsupported dependency "

    .line 34
    const-string v2, ". "

    .line 36
    invoke-static {v1, p1, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    move-result-object p1

    .line 41
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    .line 42
    move-result p0

    .line 45
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    const-string p0, " providers known."

    .line 49
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 57
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    throw v0
    .line 61
.end method

.method public final start()V
    .locals 15

    .line 1
    sget-object v0, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mTimeTickHandler:Ldagger/Lazy;

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v2, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda6;

    .line 9
    const/4 v3, 0x0

    .line 11
    invoke-direct {v2, v1, v3}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda6;-><init>(Ldagger/Lazy;I)V

    .line 12
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    .line 15
    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 20
    iget-object v2, p0, Lcom/android/systemui/Dependency;->mBgLooper:Ldagger/Lazy;

    .line 22
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    new-instance v4, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda9;

    .line 27
    invoke-direct {v4, v2, v3}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda9;-><init>(Ldagger/Lazy;I)V

    .line 29
    invoke-virtual {v1, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 35
    iget-object v2, p0, Lcom/android/systemui/Dependency;->mMainLooper:Ldagger/Lazy;

    .line 37
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    new-instance v4, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda9;

    .line 42
    const/16 v5, 0x15

    .line 44
    invoke-direct {v4, v2, v5}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda9;-><init>(Ldagger/Lazy;I)V

    .line 46
    invoke-virtual {v1, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 52
    iget-object v2, p0, Lcom/android/systemui/Dependency;->mMainHandler:Ldagger/Lazy;

    .line 54
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance v4, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda10;

    .line 59
    invoke-direct {v4, v2, v3}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda10;-><init>(Ldagger/Lazy;I)V

    .line 61
    invoke-virtual {v1, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_EXECUTOR:Lcom/android/systemui/Dependency$DependencyKey;

    .line 67
    iget-object v2, p0, Lcom/android/systemui/Dependency;->mMainExecutor:Ldagger/Lazy;

    .line 69
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance v4, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda10;

    .line 74
    const/16 v5, 0xd

    .line 76
    invoke-direct {v4, v2, v5}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda10;-><init>(Ldagger/Lazy;I)V

    .line 78
    invoke-virtual {v1, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/android/systemui/Dependency;->BACKGROUND_EXECUTOR:Lcom/android/systemui/Dependency$DependencyKey;

    .line 84
    iget-object v2, p0, Lcom/android/systemui/Dependency;->mBackgroundExecutor:Ldagger/Lazy;

    .line 86
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v4, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda10;

    .line 91
    const/16 v6, 0x18

    .line 93
    invoke-direct {v4, v2, v6}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda10;-><init>(Ldagger/Lazy;I)V

    .line 95
    invoke-virtual {v1, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mActivityStarter:Ldagger/Lazy;

    .line 101
    const-class v2, Lcom/android/systemui/plugins/ActivityStarter;

    .line 103
    invoke-static {v0, v0, v3, v1, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 105
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mBroadcastDispatcher:Ldagger/Lazy;

    .line 108
    const/16 v2, 0x10

    .line 110
    const-class v4, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 112
    invoke-static {v0, v0, v2, v1, v4}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 114
    const-class v0, Lcom/android/systemui/util/sensors/AsyncSensorManager;

    .line 117
    iget-object v4, p0, Lcom/android/systemui/Dependency;->mAsyncSensorManager:Ldagger/Lazy;

    .line 119
    const/16 v7, 0x1b

    .line 121
    invoke-static {v4, v4, v7, v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 123
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mBluetoothController:Ldagger/Lazy;

    .line 126
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    new-instance v4, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda12;

    .line 131
    invoke-direct {v4, v0, v3}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda12;-><init>(Ldagger/Lazy;I)V

    .line 133
    const-class v0, Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 136
    invoke-virtual {v1, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-class v0, Landroid/hardware/SensorPrivacyManager;

    .line 141
    iget-object v4, p0, Lcom/android/systemui/Dependency;->mSensorPrivacyManager:Ldagger/Lazy;

    .line 143
    const/16 v8, 0xb

    .line 145
    invoke-static {v4, v4, v8, v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 147
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mLocationController:Ldagger/Lazy;

    .line 150
    const/16 v4, 0x16

    .line 152
    const-class v9, Lcom/android/systemui/statusbar/policy/LocationController;

    .line 154
    invoke-static {v0, v0, v4, v1, v9}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 156
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mRotationLockController:Ldagger/Lazy;

    .line 159
    const-class v9, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

    .line 161
    invoke-static {v0, v0, v3, v1, v9}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 163
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mZenModeController:Ldagger/Lazy;

    .line 166
    const/16 v9, 0xe

    .line 168
    const-class v10, Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 170
    invoke-static {v0, v0, v9, v1, v10}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 172
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mHotspotController:Ldagger/Lazy;

    .line 175
    const/16 v10, 0x19

    .line 177
    const-class v11, Lcom/android/systemui/statusbar/policy/HotspotController;

    .line 179
    invoke-static {v0, v0, v10, v1, v11}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 181
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mCastController:Ldagger/Lazy;

    .line 184
    const-class v11, Lcom/android/systemui/statusbar/policy/CastController;

    .line 186
    invoke-static {v0, v0, v3, v1, v11}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 188
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mFlashlightController:Ldagger/Lazy;

    .line 191
    const/16 v3, 0x11

    .line 193
    const-class v11, Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 195
    invoke-static {v0, v0, v3, v1, v11}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 197
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mKeyguardMonitor:Ldagger/Lazy;

    .line 200
    const/16 v11, 0x1c

    .line 202
    const-class v12, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 204
    invoke-static {v0, v0, v11, v1, v12}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 206
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 209
    iget-object v12, p0, Lcom/android/systemui/Dependency;->mKeyguardUpdateMonitor:Ldagger/Lazy;

    .line 211
    const/16 v13, 0x9

    .line 213
    invoke-static {v12, v12, v13, v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 215
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mUserSwitcherController:Ldagger/Lazy;

    .line 218
    const/16 v12, 0xa

    .line 220
    const-class v14, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 222
    invoke-static {v0, v0, v12, v1, v14}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 224
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mUserInfoController:Ldagger/Lazy;

    .line 227
    const-class v12, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    .line 229
    invoke-static {v0, v0, v8, v1, v12}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 231
    const-class v0, Landroid/hardware/display/NightDisplayListener;

    .line 234
    iget-object v8, p0, Lcom/android/systemui/Dependency;->mNightDisplayListener:Ldagger/Lazy;

    .line 236
    const/16 v12, 0xc

    .line 238
    invoke-static {v8, v8, v12, v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 240
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mReduceBrightColorsController:Ldagger/Lazy;

    .line 243
    const-class v8, Lcom/android/systemui/qs/ReduceBrightColorsController;

    .line 245
    invoke-static {v0, v0, v5, v1, v8}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 247
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mManagedProfileController:Ldagger/Lazy;

    .line 250
    const-class v5, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;

    .line 252
    invoke-static {v0, v0, v9, v1, v5}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 254
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mNextAlarmController:Ldagger/Lazy;

    .line 257
    const/16 v5, 0xf

    .line 259
    const-class v8, Lcom/android/systemui/statusbar/policy/NextAlarmController;

    .line 261
    invoke-static {v0, v0, v5, v1, v8}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 263
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mDataSaverController:Ldagger/Lazy;

    .line 266
    const-class v5, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;

    .line 268
    invoke-static {v0, v0, v2, v1, v5}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 270
    const-class v0, Lcom/android/systemui/statusbar/policy/AccessibilityController;

    .line 273
    iget-object v5, p0, Lcom/android/systemui/Dependency;->mAccessibilityController:Ldagger/Lazy;

    .line 275
    invoke-static {v5, v5, v3, v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 277
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mDeviceProvisionedController:Ldagger/Lazy;

    .line 280
    const/16 v5, 0x12

    .line 282
    const-class v8, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 284
    invoke-static {v0, v0, v5, v1, v8}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 286
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mPluginManager:Ldagger/Lazy;

    .line 289
    const/16 v5, 0x13

    .line 291
    const-class v8, Lcom/android/systemui/plugins/PluginManager;

    .line 293
    invoke-static {v0, v0, v5, v1, v8}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 295
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mAssistManager:Ldagger/Lazy;

    .line 298
    const/16 v5, 0x14

    .line 300
    const-class v8, Lcom/android/systemui/assist/AssistManager;

    .line 302
    invoke-static {v0, v0, v5, v1, v8}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 304
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mSecurityController:Ldagger/Lazy;

    .line 307
    const-class v5, Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 309
    invoke-static {v0, v0, v4, v1, v5}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 311
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mLeakDetector:Ldagger/Lazy;

    .line 314
    const/16 v5, 0x17

    .line 316
    const-class v8, Lcom/android/systemui/util/leak/LeakDetector;

    .line 318
    invoke-static {v0, v0, v5, v1, v8}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 320
    sget-object v0, Lcom/android/systemui/Dependency;->LEAK_REPORT_EMAIL:Lcom/android/systemui/Dependency$DependencyKey;

    .line 323
    iget-object v5, p0, Lcom/android/systemui/Dependency;->mLeakReportEmail:Ldagger/Lazy;

    .line 325
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    new-instance v8, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda9;

    .line 330
    invoke-direct {v8, v5, v6}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda9;-><init>(Ldagger/Lazy;I)V

    .line 332
    invoke-virtual {v1, v0, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mLeakReporter:Ldagger/Lazy;

    .line 338
    const-class v5, Lcom/android/systemui/util/leak/LeakReporter;

    .line 340
    invoke-static {v0, v0, v10, v1, v5}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 342
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mGarbageMonitor:Ldagger/Lazy;

    .line 345
    const/16 v5, 0x1a

    .line 347
    const-class v6, Lcom/android/systemui/util/leak/GarbageMonitor;

    .line 349
    invoke-static {v0, v0, v5, v1, v6}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 351
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mTunerService:Ldagger/Lazy;

    .line 354
    const-class v5, Lcom/android/systemui/tuner/TunerService;

    .line 356
    invoke-static {v0, v0, v7, v1, v5}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 358
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mNotificationShadeWindowController:Ldagger/Lazy;

    .line 361
    const-class v5, Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 363
    invoke-static {v0, v0, v11, v1, v5}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 365
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mTempStatusBarWindowController:Ldagger/Lazy;

    .line 368
    const/16 v5, 0x1d

    .line 370
    const-class v6, Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    .line 372
    invoke-static {v0, v0, v5, v1, v6}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 374
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mDarkIconDispatcher:Ldagger/Lazy;

    .line 377
    const/4 v5, 0x1

    .line 379
    const-class v6, Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 380
    invoke-static {v0, v0, v5, v1, v6}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 382
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mStatusBarIconController:Ldagger/Lazy;

    .line 385
    const/4 v6, 0x2

    .line 387
    const-class v8, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 388
    invoke-static {v0, v0, v6, v1, v8}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 390
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mScreenLifecycle:Ldagger/Lazy;

    .line 393
    const/4 v8, 0x3

    .line 395
    const-class v12, Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 396
    invoke-static {v0, v0, v8, v1, v12}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 398
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mWakefulnessLifecycle:Ldagger/Lazy;

    .line 401
    const/4 v12, 0x4

    .line 403
    const-class v14, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 404
    invoke-static {v0, v0, v12, v1, v14}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 406
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mFragmentService:Ldagger/Lazy;

    .line 409
    const/4 v12, 0x5

    .line 411
    const-class v14, Lcom/android/systemui/fragments/FragmentService;

    .line 412
    invoke-static {v0, v0, v12, v1, v14}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 414
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mExtensionController:Ldagger/Lazy;

    .line 417
    const/4 v12, 0x6

    .line 419
    const-class v14, Lcom/android/systemui/statusbar/policy/ExtensionController;

    .line 420
    invoke-static {v0, v0, v12, v1, v14}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 422
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mPluginDependencyProvider:Ldagger/Lazy;

    .line 425
    const/4 v12, 0x7

    .line 427
    const-class v14, Lcom/android/systemui/plugins/PluginDependencyProvider;

    .line 428
    invoke-static {v0, v0, v12, v1, v14}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 430
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mLocalBluetoothManager:Ldagger/Lazy;

    .line 433
    const/16 v12, 0x8

    .line 435
    const-class v14, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 437
    invoke-static {v0, v0, v12, v1, v14}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 439
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mVolumeDialogController:Ldagger/Lazy;

    .line 442
    const-class v12, Lcom/android/systemui/plugins/VolumeDialogController;

    .line 444
    invoke-static {v0, v0, v13, v1, v12}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 446
    const-class v0, Lcom/android/internal/logging/MetricsLogger;

    .line 449
    iget-object v12, p0, Lcom/android/systemui/Dependency;->mMetricsLogger:Ldagger/Lazy;

    .line 451
    const/16 v13, 0xa

    .line 453
    invoke-static {v12, v12, v13, v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 455
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mAccessibilityManagerWrapper:Ldagger/Lazy;

    .line 458
    const/16 v12, 0xb

    .line 460
    const-class v13, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    .line 462
    invoke-static {v0, v0, v12, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 464
    const-class v0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 467
    iget-object v12, p0, Lcom/android/systemui/Dependency;->mSysuiColorExtractor:Ldagger/Lazy;

    .line 469
    const/16 v13, 0xc

    .line 471
    invoke-static {v12, v12, v13, v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 473
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mTunablePaddingService:Ldagger/Lazy;

    .line 476
    const-class v12, Lcom/android/systemui/tuner/TunablePadding$TunablePaddingService;

    .line 478
    invoke-static {v0, v0, v9, v1, v12}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 480
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mForegroundServiceController:Ldagger/Lazy;

    .line 483
    const/16 v12, 0xf

    .line 485
    const-class v13, Lcom/android/systemui/ForegroundServiceController;

    .line 487
    invoke-static {v0, v0, v12, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 489
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mUiOffloadThread:Ldagger/Lazy;

    .line 492
    const-class v12, Lcom/android/systemui/UiOffloadThread;

    .line 494
    invoke-static {v0, v0, v2, v1, v12}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 496
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mWarningsUI:Ldagger/Lazy;

    .line 499
    const-class v12, Lcom/android/systemui/power/PowerUI$WarningsUI;

    .line 501
    invoke-static {v0, v0, v3, v1, v12}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 503
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mLightBarController:Ldagger/Lazy;

    .line 506
    const/16 v12, 0x12

    .line 508
    const-class v13, Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 510
    invoke-static {v0, v0, v12, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 512
    const-class v0, Landroid/view/IWindowManager;

    .line 515
    iget-object v12, p0, Lcom/android/systemui/Dependency;->mIWindowManager:Ldagger/Lazy;

    .line 517
    const/16 v13, 0x13

    .line 519
    invoke-static {v12, v12, v13, v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 521
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mOverviewProxyService:Ldagger/Lazy;

    .line 524
    const/16 v12, 0x14

    .line 526
    const-class v13, Lcom/android/systemui/recents/OverviewProxyService;

    .line 528
    invoke-static {v0, v0, v12, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 530
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mNavBarModeController:Ldagger/Lazy;

    .line 533
    const/16 v12, 0x15

    .line 535
    const-class v13, Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 537
    invoke-static {v0, v0, v12, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 539
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mAccessibilityButtonModeObserver:Ldagger/Lazy;

    .line 542
    const-class v12, Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;

    .line 544
    invoke-static {v0, v0, v4, v1, v12}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 546
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mAccessibilityButtonListController:Ldagger/Lazy;

    .line 549
    const/16 v12, 0x17

    .line 551
    const-class v13, Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver;

    .line 553
    invoke-static {v0, v0, v12, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 555
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mEnhancedEstimates:Ldagger/Lazy;

    .line 558
    const-class v12, Lcom/android/systemui/power/EnhancedEstimates;

    .line 560
    invoke-static {v0, v0, v10, v1, v12}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 562
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mVibratorHelper:Ldagger/Lazy;

    .line 565
    const/16 v12, 0x1a

    .line 567
    const-class v13, Lcom/android/systemui/statusbar/VibratorHelper;

    .line 569
    invoke-static {v0, v0, v12, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 571
    const-class v0, Lcom/android/internal/statusbar/IStatusBarService;

    .line 574
    iget-object v12, p0, Lcom/android/systemui/Dependency;->mIStatusBarService:Ldagger/Lazy;

    .line 576
    invoke-static {v12, v12, v7, v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 578
    const-class v0, Landroid/util/DisplayMetrics;

    .line 581
    iget-object v12, p0, Lcom/android/systemui/Dependency;->mDisplayMetrics:Ldagger/Lazy;

    .line 583
    invoke-static {v12, v12, v11, v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 585
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mLockscreenGestureLogger:Ldagger/Lazy;

    .line 588
    const/16 v12, 0x1d

    .line 590
    const-class v13, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    .line 592
    invoke-static {v0, v0, v12, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$4(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 594
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mShadeController:Ldagger/Lazy;

    .line 597
    const-class v12, Lcom/android/systemui/shade/ShadeController;

    .line 599
    invoke-static {v0, v0, v5, v1, v12}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 601
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mNotificationRemoteInputManagerCallback:Ldagger/Lazy;

    .line 604
    const-class v12, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;

    .line 606
    invoke-static {v0, v0, v6, v1, v12}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 608
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mAppOpsController:Ldagger/Lazy;

    .line 611
    const-class v12, Lcom/android/systemui/appops/AppOpsController;

    .line 613
    invoke-static {v0, v0, v8, v1, v12}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 615
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mNavigationBarController:Ldagger/Lazy;

    .line 618
    const/4 v12, 0x4

    .line 620
    const-class v13, Lcom/android/systemui/navigationbar/NavigationBarController;

    .line 621
    invoke-static {v0, v0, v12, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 623
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mAccessibilityFloatingMenuController:Ldagger/Lazy;

    .line 626
    const/4 v12, 0x5

    .line 628
    const-class v13, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;

    .line 629
    invoke-static {v0, v0, v12, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 631
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mStatusBarStateController:Ldagger/Lazy;

    .line 634
    const/4 v12, 0x6

    .line 636
    const-class v13, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 637
    invoke-static {v0, v0, v12, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 639
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mNotificationLockscreenUserManager:Ldagger/Lazy;

    .line 642
    const/4 v12, 0x7

    .line 644
    const-class v13, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 645
    invoke-static {v0, v0, v12, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 647
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mNotificationMediaManager:Ldagger/Lazy;

    .line 650
    const/16 v12, 0x8

    .line 652
    const-class v13, Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 654
    invoke-static {v0, v0, v12, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 656
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mNotificationGutsManager:Ldagger/Lazy;

    .line 659
    const/16 v12, 0x9

    .line 661
    const-class v13, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    .line 663
    invoke-static {v0, v0, v12, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 665
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mNotificationRemoteInputManager:Ldagger/Lazy;

    .line 668
    const/16 v12, 0xa

    .line 670
    const-class v13, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 672
    invoke-static {v0, v0, v12, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 674
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mSmartReplyConstants:Ldagger/Lazy;

    .line 677
    const/16 v12, 0xb

    .line 679
    const-class v13, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    .line 681
    invoke-static {v0, v0, v12, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 683
    const-class v0, Lcom/android/systemui/statusbar/NotificationListener;

    .line 686
    iget-object v12, p0, Lcom/android/systemui/Dependency;->mNotificationListener:Ldagger/Lazy;

    .line 688
    const/16 v13, 0xc

    .line 690
    invoke-static {v12, v12, v13, v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 692
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mNotificationLogger:Ldagger/Lazy;

    .line 695
    const/16 v12, 0xd

    .line 697
    const-class v13, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    .line 699
    invoke-static {v0, v0, v12, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 701
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mKeyguardDismissUtil:Ldagger/Lazy;

    .line 704
    const-class v12, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    .line 706
    invoke-static {v0, v0, v9, v1, v12}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 708
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mSmartReplyController:Ldagger/Lazy;

    .line 711
    const/16 v12, 0xf

    .line 713
    const-class v13, Lcom/android/systemui/statusbar/SmartReplyController;

    .line 715
    invoke-static {v0, v0, v12, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 717
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mRemoteInputQuickSettingsDisabler:Ldagger/Lazy;

    .line 720
    const-class v12, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    .line 722
    invoke-static {v0, v0, v3, v1, v12}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 724
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mClockManager:Ldagger/Lazy;

    .line 727
    const/16 v12, 0x12

    .line 729
    const-class v13, Lcom/android/keyguard/clock/ClockManager;

    .line 731
    invoke-static {v0, v0, v12, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 733
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mPrivacyItemController:Ldagger/Lazy;

    .line 736
    const/16 v12, 0x13

    .line 738
    const-class v13, Lcom/android/systemui/privacy/PrivacyItemController;

    .line 740
    invoke-static {v0, v0, v12, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 742
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mActivityManagerWrapper:Ldagger/Lazy;

    .line 745
    const/16 v12, 0x14

    .line 747
    const-class v13, Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    .line 749
    invoke-static {v0, v0, v12, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 751
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mDevicePolicyManagerWrapper:Ldagger/Lazy;

    .line 754
    const/16 v12, 0x15

    .line 756
    const-class v13, Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;

    .line 758
    invoke-static {v0, v0, v12, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 760
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mPackageManagerWrapper:Ldagger/Lazy;

    .line 763
    const-class v12, Lcom/android/systemui/shared/system/PackageManagerWrapper;

    .line 765
    invoke-static {v0, v0, v4, v1, v12}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 767
    const-class v0, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;

    .line 770
    iget-object v12, p0, Lcom/android/systemui/Dependency;->mSensorPrivacyController:Ldagger/Lazy;

    .line 772
    const/16 v13, 0x17

    .line 774
    invoke-static {v12, v12, v13, v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 776
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mDockManager:Ldagger/Lazy;

    .line 779
    const/16 v12, 0x18

    .line 781
    const-class v13, Lcom/android/systemui/dock/DockManager;

    .line 783
    invoke-static {v0, v0, v12, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 785
    const-class v0, Landroid/app/INotificationManager;

    .line 788
    iget-object v12, p0, Lcom/android/systemui/Dependency;->mINotificationManager:Ldagger/Lazy;

    .line 790
    invoke-static {v12, v12, v10, v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 792
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mSysUiStateFlagsContainer:Ldagger/Lazy;

    .line 795
    const/16 v12, 0x1a

    .line 797
    const-class v13, Lcom/android/systemui/model/SysUiState;

    .line 799
    invoke-static {v0, v0, v12, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 801
    const-class v0, Landroid/app/AlarmManager;

    .line 804
    iget-object v12, p0, Lcom/android/systemui/Dependency;->mAlarmManager:Ldagger/Lazy;

    .line 806
    invoke-static {v12, v12, v11, v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 808
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mKeyguardSecurityModel:Ldagger/Lazy;

    .line 811
    const/16 v12, 0x1d

    .line 813
    const-class v13, Lcom/android/keyguard/KeyguardSecurityModel;

    .line 815
    invoke-static {v0, v0, v12, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$5(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 817
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mDozeParameters:Ldagger/Lazy;

    .line 820
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    new-instance v12, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda12;

    .line 825
    invoke-direct {v12, v0, v5}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda12;-><init>(Ldagger/Lazy;I)V

    .line 827
    const-class v0, Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 830
    invoke-virtual {v1, v0, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    const-class v0, Landroid/app/IWallpaperManager;

    .line 835
    iget-object v12, p0, Lcom/android/systemui/Dependency;->mWallpaperManager:Ldagger/Lazy;

    .line 837
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    new-instance v13, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda12;

    .line 842
    invoke-direct {v13, v12, v6}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda12;-><init>(Ldagger/Lazy;I)V

    .line 844
    invoke-virtual {v1, v0, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    .line 850
    iget-object v12, p0, Lcom/android/systemui/Dependency;->mCommandQueue:Ldagger/Lazy;

    .line 852
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    new-instance v13, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda12;

    .line 857
    invoke-direct {v13, v12, v8}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda12;-><init>(Ldagger/Lazy;I)V

    .line 859
    invoke-virtual {v1, v0, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProtoTracer:Ldagger/Lazy;

    .line 865
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    new-instance v12, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda12;

    .line 870
    const/4 v13, 0x4

    .line 872
    invoke-direct {v12, v0, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda12;-><init>(Ldagger/Lazy;I)V

    .line 873
    const-class v0, Lcom/android/systemui/tracing/ProtoTracer;

    .line 876
    invoke-virtual {v1, v0, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mDeviceConfigProxy:Ldagger/Lazy;

    .line 881
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    new-instance v12, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda12;

    .line 886
    const/4 v13, 0x5

    .line 888
    invoke-direct {v12, v0, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda12;-><init>(Ldagger/Lazy;I)V

    .line 889
    const-class v0, Lcom/android/systemui/util/DeviceConfigProxy;

    .line 892
    invoke-virtual {v1, v0, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mTelephonyListenerManager:Ldagger/Lazy;

    .line 897
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    new-instance v12, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda12;

    .line 902
    const/4 v13, 0x6

    .line 904
    invoke-direct {v12, v0, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda12;-><init>(Ldagger/Lazy;I)V

    .line 905
    const-class v0, Lcom/android/systemui/telephony/TelephonyListenerManager;

    .line 908
    invoke-virtual {v1, v0, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mAutoHideController:Ldagger/Lazy;

    .line 913
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    new-instance v12, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda12;

    .line 918
    const/4 v13, 0x7

    .line 920
    invoke-direct {v12, v0, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda12;-><init>(Ldagger/Lazy;I)V

    .line 921
    const-class v0, Lcom/android/systemui/statusbar/phone/AutoHideController;

    .line 924
    invoke-virtual {v1, v0, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mRecordingController:Ldagger/Lazy;

    .line 929
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    new-instance v12, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda12;

    .line 934
    const/16 v13, 0x8

    .line 936
    invoke-direct {v12, v0, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda12;-><init>(Ldagger/Lazy;I)V

    .line 938
    const-class v0, Lcom/android/systemui/screenrecord/RecordingController;

    .line 941
    invoke-virtual {v1, v0, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mMediaOutputDialogFactory:Ldagger/Lazy;

    .line 946
    const-class v12, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;

    .line 948
    invoke-static {v0, v0, v5, v1, v12}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 950
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mSystemStatusAnimationSchedulerLazy:Ldagger/Lazy;

    .line 953
    const-class v12, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    .line 955
    invoke-static {v0, v0, v6, v1, v12}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 957
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mPrivacyDotViewControllerLazy:Ldagger/Lazy;

    .line 960
    const-class v12, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    .line 962
    invoke-static {v0, v0, v8, v1, v12}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 964
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mInternetDialogFactory:Ldagger/Lazy;

    .line 967
    const/4 v12, 0x4

    .line 969
    const-class v13, Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;

    .line 970
    invoke-static {v0, v0, v12, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 972
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mEdgeBackGestureHandlerFactoryLazy:Ldagger/Lazy;

    .line 975
    const/4 v12, 0x5

    .line 977
    const-class v13, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;

    .line 978
    invoke-static {v0, v0, v12, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 980
    const-class v0, Lcom/android/internal/logging/UiEventLogger;

    .line 983
    iget-object v12, p0, Lcom/android/systemui/Dependency;->mUiEventLogger:Ldagger/Lazy;

    .line 985
    const/4 v13, 0x6

    .line 987
    invoke-static {v12, v12, v13, v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 988
    const-class v0, Lcom/android/systemui/flags/FeatureFlags;

    .line 991
    iget-object v12, p0, Lcom/android/systemui/Dependency;->mFeatureFlagsLazy:Ldagger/Lazy;

    .line 993
    const/4 v13, 0x7

    .line 995
    invoke-static {v12, v12, v13, v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 996
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mContentInsetsProviderLazy:Ldagger/Lazy;

    .line 999
    const/16 v12, 0x8

    .line 1001
    const-class v13, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    .line 1003
    invoke-static {v0, v0, v12, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1005
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mNotificationSectionsManagerLazy:Ldagger/Lazy;

    .line 1008
    const/16 v12, 0x9

    .line 1010
    const-class v13, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    .line 1012
    invoke-static {v0, v0, v12, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1014
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mScreenOffAnimationController:Ldagger/Lazy;

    .line 1017
    const/16 v12, 0xa

    .line 1019
    const-class v13, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    .line 1021
    invoke-static {v0, v0, v12, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1023
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mAmbientStateLazy:Ldagger/Lazy;

    .line 1026
    const/16 v12, 0xc

    .line 1028
    const-class v13, Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 1030
    invoke-static {v0, v0, v12, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1032
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mGroupMembershipManagerLazy:Ldagger/Lazy;

    .line 1035
    const/16 v12, 0xd

    .line 1037
    const-class v13, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    .line 1039
    invoke-static {v0, v0, v12, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1041
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mGroupExpansionManagerLazy:Ldagger/Lazy;

    .line 1044
    const-class v12, Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManagerImpl;

    .line 1046
    invoke-static {v0, v0, v9, v1, v12}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1048
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mSystemUIDialogManagerLazy:Ldagger/Lazy;

    .line 1051
    const/16 v12, 0xf

    .line 1053
    const-class v13, Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;

    .line 1055
    invoke-static {v0, v0, v12, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1057
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mDialogLaunchAnimatorLazy:Ldagger/Lazy;

    .line 1060
    const-class v12, Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 1062
    invoke-static {v0, v0, v2, v1, v12}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1064
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mUserTrackerLazy:Ldagger/Lazy;

    .line 1067
    const-class v12, Lcom/android/systemui/settings/UserTracker;

    .line 1069
    invoke-static {v0, v0, v3, v1, v12}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1071
    sget-object v0, Lcom/android/systemui/Dependency;->UI_BACKGROUND_EXECUTOR:Lcom/android/systemui/Dependency$DependencyKey;

    .line 1074
    iget-object v12, p0, Lcom/android/systemui/Dependency;->mUiBackgroundExecutor:Ldagger/Lazy;

    .line 1076
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    new-instance v13, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda6;

    .line 1081
    const/16 v14, 0x12

    .line 1083
    invoke-direct {v13, v12, v14}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda6;-><init>(Ldagger/Lazy;I)V

    .line 1085
    invoke-virtual {v1, v0, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mSettingsManager:Ldagger/Lazy;

    .line 1091
    const/16 v12, 0x13

    .line 1093
    const-class v13, Lcom/miui/systemui/SettingsManager;

    .line 1095
    invoke-static {v0, v0, v12, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1097
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mControlPanelWindowManager:Ldagger/Lazy;

    .line 1100
    const/16 v12, 0x14

    .line 1102
    const-class v13, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;

    .line 1104
    invoke-static {v0, v0, v12, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1106
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mControlPanelController:Ldagger/Lazy;

    .line 1109
    const/16 v12, 0x15

    .line 1111
    const-class v13, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 1113
    invoke-static {v0, v0, v12, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1115
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mNetworkController:Ldagger/Lazy;

    .line 1118
    const/16 v12, 0x17

    .line 1120
    const-class v13, Lcom/android/systemui/statusbar/connectivity/NetworkController;

    .line 1122
    invoke-static {v0, v0, v12, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1124
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mNotificationSettingsManager:Ldagger/Lazy;

    .line 1127
    const/16 v12, 0x18

    .line 1129
    const-class v13, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;

    .line 1131
    invoke-static {v0, v0, v12, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1133
    const-class v0, Lcom/miui/systemui/graphics/AppIconsManager;

    .line 1136
    iget-object v12, p0, Lcom/android/systemui/Dependency;->mAppIconsManager:Ldagger/Lazy;

    .line 1138
    invoke-static {v12, v12, v10, v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1140
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mModalController:Ldagger/Lazy;

    .line 1143
    const/16 v12, 0x1a

    .line 1145
    const-class v13, Lcom/android/systemui/statusbar/notification/modal/ModalController;

    .line 1147
    invoke-static {v0, v0, v12, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1149
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mCentralSurfaces:Ldagger/Lazy;

    .line 1152
    const-class v12, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 1154
    invoke-static {v0, v0, v7, v1, v12}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1156
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mNetworkSpeedController:Ldagger/Lazy;

    .line 1159
    const-class v12, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    .line 1161
    invoke-static {v0, v0, v11, v1, v12}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1163
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mRegionController:Ldagger/Lazy;

    .line 1166
    const/16 v12, 0x1d

    .line 1168
    const-class v13, Lcom/miui/systemui/controller/RegionController;

    .line 1170
    invoke-static {v0, v0, v12, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1172
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mNotificationIconObserver:Ldagger/Lazy;

    .line 1175
    const-class v12, Lcom/android/systemui/statusbar/policy/NotificationIconObserver;

    .line 1177
    invoke-static {v0, v0, v5, v1, v12}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1179
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mBatteryController:Ldagger/Lazy;

    .line 1182
    const-class v12, Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 1184
    invoke-static {v0, v0, v6, v1, v12}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1186
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mDualClockObserver:Ldagger/Lazy;

    .line 1189
    const-class v12, Lcom/android/systemui/statusbar/policy/DualClockObserver;

    .line 1191
    invoke-static {v0, v0, v8, v1, v12}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1193
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mMiuiCarrierTextController:Ldagger/Lazy;

    .line 1196
    const/4 v12, 0x4

    .line 1198
    const-class v13, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;

    .line 1199
    invoke-static {v0, v0, v12, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1201
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mForceBlackObserver:Ldagger/Lazy;

    .line 1204
    const/4 v12, 0x5

    .line 1206
    const-class v13, Lcom/miui/systemui/controller/ForceBlackObserver;

    .line 1207
    invoke-static {v0, v0, v12, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1209
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mCarrierObserver:Ldagger/Lazy;

    .line 1212
    const/4 v12, 0x6

    .line 1214
    const-class v13, Lcom/android/systemui/statusbar/policy/CarrierObserver;

    .line 1215
    invoke-static {v0, v0, v12, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1217
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mCustomCarrierObserver:Ldagger/Lazy;

    .line 1220
    const/4 v12, 0x7

    .line 1222
    const-class v13, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver;

    .line 1223
    invoke-static {v0, v0, v12, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1225
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mSmartDarkObserver:Ldagger/Lazy;

    .line 1228
    const/16 v12, 0x8

    .line 1230
    const-class v13, Lcom/android/systemui/statusbar/policy/SmartDarkObserver;

    .line 1232
    invoke-static {v0, v0, v12, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1234
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mCallStateController:Ldagger/Lazy;

    .line 1237
    const/16 v12, 0x9

    .line 1239
    const-class v13, Lcom/android/systemui/util/CallStateControllerImpl;

    .line 1241
    invoke-static {v0, v0, v12, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1243
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mMiuiStatusBarClockController:Ldagger/Lazy;

    .line 1246
    const/16 v12, 0xa

    .line 1248
    const-class v13, Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;

    .line 1250
    invoke-static {v0, v0, v12, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1252
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mMiuiDemoModeController:Ldagger/Lazy;

    .line 1255
    const/16 v12, 0xb

    .line 1257
    const-class v13, Lcom/android/systemui/statusbar/policy/MiuiDemoModeController;

    .line 1259
    invoke-static {v0, v0, v12, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1261
    const-class v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

    .line 1264
    iget-object v12, p0, Lcom/android/systemui/Dependency;->mMiuiPrivacyController:Ldagger/Lazy;

    .line 1266
    const/16 v13, 0xc

    .line 1268
    invoke-static {v12, v12, v13, v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1270
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mMiuiOperatorCustomizedPolicy:Ldagger/Lazy;

    .line 1273
    const/16 v12, 0xd

    .line 1275
    const-class v13, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;

    .line 1277
    invoke-static {v0, v0, v12, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1279
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mFiveGControllerImpl:Ldagger/Lazy;

    .line 1282
    const/16 v12, 0xf

    .line 1284
    const-class v13, Lcom/android/systemui/statusbar/policy/FiveGControllerImpl;

    .line 1286
    invoke-static {v0, v0, v12, v1, v13}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1288
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mHDController:Ldagger/Lazy;

    .line 1291
    const-class v12, Lcom/android/systemui/statusbar/policy/HDController;

    .line 1293
    invoke-static {v0, v0, v2, v1, v12}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1295
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mMinimalismModeController:Ldagger/Lazy;

    .line 1298
    const-class v12, Lcom/android/systemui/statusbar/policy/MinimalismModeController;

    .line 1300
    invoke-static {v0, v0, v3, v1, v12}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1302
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mMiuiIconManagerFactory:Ldagger/Lazy;

    .line 1305
    const/16 v3, 0x12

    .line 1307
    const-class v12, Lcom/android/systemui/statusbar/phone/MiuiIconManagerFactory;

    .line 1309
    invoke-static {v0, v0, v3, v1, v12}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1311
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mPhoneSignalController:Ldagger/Lazy;

    .line 1314
    const/16 v3, 0x13

    .line 1316
    const-class v12, Lcom/android/keyguard/PhoneSignalControllerImpl;

    .line 1318
    invoke-static {v0, v0, v3, v1, v12}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1320
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mMultiUserController:Ldagger/Lazy;

    .line 1323
    const/16 v3, 0x14

    .line 1325
    const-class v12, Lcom/miui/systemui/MultiUserController;

    .line 1327
    invoke-static {v0, v0, v3, v1, v12}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1329
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mLockScreenMagazineController:Ldagger/Lazy;

    .line 1332
    const/16 v3, 0x15

    .line 1334
    const-class v12, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 1336
    invoke-static {v0, v0, v3, v1, v12}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1338
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mKeyguardUpdateMonitorInjector:Ldagger/Lazy;

    .line 1341
    const-class v3, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 1343
    invoke-static {v0, v0, v4, v1, v3}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1345
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mMiuiKeyguardWallPaperManager:Ldagger/Lazy;

    .line 1348
    const/16 v3, 0x17

    .line 1350
    const-class v12, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 1352
    invoke-static {v0, v0, v3, v1, v12}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1354
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mSuperSaveModeController:Ldagger/Lazy;

    .line 1357
    const/16 v3, 0x18

    .line 1359
    const-class v12, Lcom/miui/systemui/controller/SuperSaveModeController;

    .line 1361
    invoke-static {v0, v0, v3, v1, v12}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1363
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mNCSwitchController:Ldagger/Lazy;

    .line 1366
    const/16 v3, 0x1a

    .line 1368
    const-class v12, Lcom/android/systemui/controlcenter/policy/NCSwitchController;

    .line 1370
    invoke-static {v0, v0, v3, v1, v12}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1372
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mBlurUtils:Ldagger/Lazy;

    .line 1375
    const-class v3, Lcom/android/systemui/statusbar/BlurUtils;

    .line 1377
    invoke-static {v0, v0, v7, v1, v3}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1379
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mKeyguardIndicationInjector:Ldagger/Lazy;

    .line 1382
    const-class v3, Lcom/android/keyguard/injector/KeyguardIndicationInjector;

    .line 1384
    invoke-static {v0, v0, v11, v1, v3}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1386
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mKeyguardCommonSettingObserver:Ldagger/Lazy;

    .line 1389
    const/16 v3, 0x1d

    .line 1391
    const-class v11, Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 1393
    invoke-static {v0, v0, v3, v1, v11}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1395
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mNotificationNavigationCoordinator:Ldagger/Lazy;

    .line 1398
    const-class v3, Lcom/android/systemui/statusbar/notification/NotificationPanelNavigationBarCoordinator;

    .line 1400
    invoke-static {v0, v0, v5, v1, v3}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1402
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mKeyguardPanelViewInjector:Ldagger/Lazy;

    .line 1405
    const-class v3, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 1407
    invoke-static {v0, v0, v6, v1, v3}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1409
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mKeyguardBottomAreaInjector:Ldagger/Lazy;

    .line 1412
    const-class v3, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;

    .line 1414
    invoke-static {v0, v0, v8, v1, v3}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1416
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mKeyguardNegative1PageInjector:Ldagger/Lazy;

    .line 1419
    const/4 v3, 0x4

    .line 1421
    const-class v11, Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;

    .line 1422
    invoke-static {v0, v0, v3, v1, v11}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1424
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mMiuiUWBController:Ldagger/Lazy;

    .line 1427
    const/4 v3, 0x5

    .line 1429
    const-class v11, Lcom/android/keyguard/negative/MiuiUWBController;

    .line 1430
    invoke-static {v0, v0, v3, v1, v11}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1432
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mDozeServiceHost:Ldagger/Lazy;

    .line 1435
    const/4 v3, 0x6

    .line 1437
    const-class v11, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 1438
    invoke-static {v0, v0, v3, v1, v11}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1440
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mKeyguardViewMediatorInjector:Ldagger/Lazy;

    .line 1443
    const/4 v3, 0x7

    .line 1445
    const-class v11, Lcom/android/keyguard/injector/KeyguardViewMediatorInjector;

    .line 1446
    invoke-static {v0, v0, v3, v1, v11}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1448
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mMiuiBubbleController:Ldagger/Lazy;

    .line 1451
    const/16 v3, 0x8

    .line 1453
    const-class v11, Lcom/android/systemui/statusbar/notification/interruption/MiuiBubbleController;

    .line 1455
    invoke-static {v0, v0, v3, v1, v11}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1457
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mHeadsUpManager:Ldagger/Lazy;

    .line 1460
    const/16 v3, 0x9

    .line 1462
    const-class v11, Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 1464
    invoke-static {v0, v0, v3, v1, v11}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1466
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mAppMiniWindowManager:Ldagger/Lazy;

    .line 1469
    const/16 v3, 0xa

    .line 1471
    const-class v11, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowManager;

    .line 1473
    invoke-static {v0, v0, v3, v1, v11}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1475
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mMediaLogger:Ldagger/Lazy;

    .line 1478
    const/16 v3, 0xb

    .line 1480
    const-class v11, Lcom/android/systemui/log/NotificationMediaLogger;

    .line 1482
    invoke-static {v0, v0, v3, v1, v11}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1484
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mMiPlayPluginManager:Ldagger/Lazy;

    .line 1487
    const/16 v3, 0xc

    .line 1489
    const-class v11, Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;

    .line 1491
    invoke-static {v0, v0, v3, v1, v11}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1493
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mSystemUIStat:Ldagger/Lazy;

    .line 1496
    const/16 v3, 0xd

    .line 1498
    const-class v11, Lcom/miui/systemui/analytics/SystemUIStat;

    .line 1500
    invoke-static {v0, v0, v3, v1, v11}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1502
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mKeyguardClockInjector:Ldagger/Lazy;

    .line 1505
    const-class v3, Lcom/android/keyguard/injector/KeyguardClockInjector;

    .line 1507
    invoke-static {v0, v0, v9, v1, v3}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1509
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mUnimportantNotifLogger:Ldagger/Lazy;

    .line 1512
    const/16 v3, 0xf

    .line 1514
    const-class v9, Lcom/android/systemui/log/UnimportantNotifLogger;

    .line 1516
    invoke-static {v0, v0, v3, v1, v9}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1518
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mFoldNotifController:Ldagger/Lazy;

    .line 1521
    const-class v3, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifController;

    .line 1523
    invoke-static {v0, v0, v2, v1, v3}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1525
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mFoldNotifManager:Ldagger/Lazy;

    .line 1528
    const/16 v2, 0x12

    .line 1530
    const-class v3, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 1532
    invoke-static {v0, v0, v2, v1, v3}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1534
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mUnimportantSdk:Ldagger/Lazy;

    .line 1537
    const/16 v2, 0x13

    .line 1539
    const-class v3, Lcom/android/systemui/statusbar/notification/unimportant/UnimportantSdk;

    .line 1541
    invoke-static {v0, v0, v2, v1, v3}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1543
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mCloudDataManager:Ldagger/Lazy;

    .line 1546
    const/16 v2, 0x14

    .line 1548
    const-class v3, Lcom/miui/systemui/CloudDataManager;

    .line 1550
    invoke-static {v0, v0, v2, v1, v3}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1552
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mKeyguardNotificationLogger:Ldagger/Lazy;

    .line 1555
    const/16 v2, 0x15

    .line 1557
    const-class v3, Lcom/android/systemui/log/KeyguardNotificationLogger;

    .line 1559
    invoke-static {v0, v0, v2, v1, v3}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1561
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mKeyguardNotificationController:Ldagger/Lazy;

    .line 1564
    const-class v2, Lcom/android/systemui/statusbar/notification/policy/KeyguardNotificationController;

    .line 1566
    invoke-static {v0, v0, v4, v1, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1568
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mNotificationSensitiveController:Ldagger/Lazy;

    .line 1571
    const/16 v2, 0x17

    .line 1573
    const-class v3, Lcom/android/systemui/statusbar/notification/policy/NotificationSensitiveController;

    .line 1575
    invoke-static {v0, v0, v2, v1, v3}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1577
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mNotificationStat:Ldagger/Lazy;

    .line 1580
    const/16 v2, 0x18

    .line 1582
    const-class v3, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 1584
    invoke-static {v0, v0, v2, v1, v3}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1586
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mDismissNotificationHelper:Ldagger/Lazy;

    .line 1589
    const-class v2, Lcom/android/systemui/statusbar/policy/DismissNotificationHelper;

    .line 1591
    invoke-static {v0, v0, v10, v1, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1593
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mKeyguardEditorHelper:Ldagger/Lazy;

    .line 1596
    const/16 v2, 0x1a

    .line 1598
    const-class v3, Lcom/android/keyguard/KeyguardEditorHelper;

    .line 1600
    invoke-static {v0, v0, v2, v1, v3}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1602
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mConfigurationController:Ldagger/Lazy;

    .line 1605
    const-class v2, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 1607
    invoke-static {v0, v0, v7, v1, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1609
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mMultiTaskStatusBarDotsAreaControllerFactory:Ldagger/Lazy;

    .line 1612
    const/16 v2, 0x1d

    .line 1614
    const-class v3, Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaControllerFactory;

    .line 1616
    invoke-static {v0, v0, v2, v1, v3}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1618
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mMIUIStrongToastControl:Ldagger/Lazy;

    .line 1621
    const-class v2, Lcom/android/systemui/toast/MIUIStrongToastControl;

    .line 1623
    invoke-static {v0, v0, v5, v1, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1625
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mFocusedNotifPromptController:Ldagger/Lazy;

    .line 1628
    const-class v2, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

    .line 1630
    invoke-static {v0, v0, v6, v1, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1632
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mFakeStatusBarViewController:Ldagger/Lazy;

    .line 1635
    const-class v2, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;

    .line 1637
    invoke-static {v0, v0, v8, v1, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1639
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mFakeStatusBarClockController:Ldagger/Lazy;

    .line 1642
    const/4 v2, 0x4

    .line 1644
    const-class v3, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;

    .line 1645
    invoke-static {v0, v0, v2, v1, v3}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1647
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mGestureObserver:Ldagger/Lazy;

    .line 1650
    const/4 v2, 0x5

    .line 1652
    const-class v3, Lcom/miui/systemui/controller/GestureObserver;

    .line 1653
    invoke-static {v0, v0, v2, v1, v3}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1655
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mMiuiStatusBarLaunchController:Ldagger/Lazy;

    .line 1658
    const/4 v2, 0x6

    .line 1660
    const-class v3, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchController;

    .line 1661
    invoke-static {v0, v0, v2, v1, v3}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1663
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mBadgeManager:Ldagger/Lazy;

    .line 1666
    const/4 v2, 0x7

    .line 1668
    const-class v3, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager;

    .line 1669
    invoke-static {v0, v0, v2, v1, v3}, Lcom/android/systemui/Dependency$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    .line 1671
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mMiuiHomePrivacyController:Ldagger/Lazy;

    .line 1674
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1676
    new-instance v2, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda9;

    .line 1679
    const/16 v3, 0x8

    .line 1681
    invoke-direct {v2, v0, v3}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda9;-><init>(Ldagger/Lazy;I)V

    .line 1683
    const-class v0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;

    .line 1686
    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1688
    invoke-static {p0}, Lcom/android/systemui/Dependency;->setInstance(Lcom/android/systemui/Dependency;)V

    .line 1691
    return-void
    .line 1694
.end method
