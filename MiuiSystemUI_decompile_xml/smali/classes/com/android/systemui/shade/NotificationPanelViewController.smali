.class public abstract Lcom/android/systemui/shade/NotificationPanelViewController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/shade/ShadeSurface;
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final ANIMATION_DELAY_ICON_FADE_IN:J

.field public static final EMPTY_RECT:Landroid/graphics/Rect;

.field public static final M_DUMMY_DIRTY_RECT:Landroid/graphics/Rect;


# instance fields
.field public final mAccessibilityDelegate:Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAccessibilityDelegate;

.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public mAllowExpandForSmallExpansion:Z

.field public final mAlternateBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;

.field public final mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

.field public mAnimateAfterExpanding:Z

.field public mAnimateNextPositionUpdate:Z

.field public mAnimatingOnDown:Z

.field public final mAuthController:Lcom/android/systemui/biometrics/AuthController;

.field public mBarState:I

.field public mBlockingExpansionForCurrentTouch:Z

.field public mBottomAreaShadeAlpha:F

.field public final mBottomAreaShadeAlphaAnimator:Landroid/animation/ValueAnimator;

.field public final mBounceInterpolator:Lcom/android/systemui/statusbar/phone/BounceInterpolator;

.field public mBouncerShowing:Z

.field public mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public final mClockPositionAlgorithm:Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;

.field public final mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

.field public mClosing:Z

.field public mClosingWithAlphaFadeOut:Z

.field public mCollapsedAndHeadsUpOnDown:Z

.field public mCollapsedOnDown:Z

.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/systemui/shade/MiuiNotificationPanelViewController$MiuiConfigurationListener;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mConversationNotificationManager:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

.field public mCurrentBackProgress:F

.field public mCurrentPanelState:I

.field public final mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

.field public final mDisplayId:I

.field public mDisplayLeftInset:I

.field public mDisplayRightInset:I

.field public mDisplayTopInset:I

.field public mDownTime:J

.field public mDownX:F

.field public mDownY:F

.field public final mDozeLog:Lcom/android/systemui/doze/DozeLog;

.field public final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field public mDozing:Z

.field public mDozingOnDown:Z

.field public final mDreamingToLockscreenTransition:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;

.field public mDreamingToLockscreenTransitionTranslationY:I

.field public final mDreamingToLockscreenTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel;

.field public mExpandAfterLayoutRunnable:Ljava/lang/Runnable;

.field public mExpandLatencyTracking:Z

.field public mExpandedFraction:F

.field public mExpandedHeight:F

.field public mExpanding:Z

.field public mExpandingFromHeadsUp:Z

.field public mExpansionDragDownAmountPx:F

.field public mExpectingSynthesizedDown:Z

.field public final mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field public final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public mFixedDuration:I

.field public mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

.field public final mFlingAnimationUtilsBuilder:Ljavax/inject/Provider;

.field public final mFlingAnimationUtilsClosing:Lcom/android/wm/shell/animation/FlingAnimationUtils;

.field public final mFlingAnimationUtilsDismissing:Lcom/android/wm/shell/animation/FlingAnimationUtils;

.field public final mFlingCollapseRunnable:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda0;

.field public final mFragmentService:Lcom/android/systemui/fragments/FragmentService;

.field public mGestureWaitForTouchSlop:Z

.field public final mGoneToDreamingTransition:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;

.field public mGoneToDreamingTransitionTranslationY:I

.field public final mGoneToDreamingTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/GoneToDreamingTransitionViewModel;

.field public final mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

.field public mHandlingPointerUp:Z

.field public mHasLayoutedSinceDown:Z

.field public mHasVibratedOnOpen:Z

.field public mHeadsUpAnimatingAway:Z

.field public mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

.field public final mHeadsUpExistenceChangedRunnable:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda0;

.field public mHeadsUpInset:I

.field public mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field public mHeadsUpPinnedMode:Z

.field public mHeadsUpStartHeight:I

.field public mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

.field public mHeightAnimator:Landroid/animation/ValueAnimator;

.field public mHideExpandedRunnable:Ljava/lang/Runnable;

.field public mHideIconsDuringLaunchAnimation:Z

.field public mHintAnimationRunning:Z

.field public mHintDistance:F

.field public mIgnoreXTouchSlop:Z

.field public mIndicationBottomPadding:I

.field public mInitialExpandX:F

.field public mInitialExpandY:F

.field public mInitialOffsetOnTouch:F

.field public mInitialTouchFromKeyguard:Z

.field public mInstantExpanding:Z

.field public mInterpolatedDarkAmount:F

.field public mIsAnyMultiShadeExpanded:Z

.field public mIsExpandingOrCollapsing:Z

.field public mIsFlinging:Z

.field public mIsFullWidth:Z

.field public mIsGestureNavigation:Z

.field public mIsLaunchAnimationRunning:Z

.field public mIsNeedUpdateTranslucency:Z

.field public mIsOcclusionTransitionRunning:Z

.field public mIsPanelCollapseOnQQS:Z

.field public mIsSpringBackAnimation:Z

.field public mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

.field public final mKeyguardBottomAreaInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;

.field public final mKeyguardBottomAreaViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;

.field public final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field public final mKeyguardFaceAuthInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardFaceAuthInteractor;

.field public final mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field public mKeyguardInfoLayer:Landroid/widget/FrameLayout;

.field public final mKeyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

.field public final mKeyguardMediaController:Lcom/android/systemui/media/controls/ui/KeyguardMediaController;

.field public mKeyguardNotificationBottomPadding:F

.field public mKeyguardNotificationTopPadding:F

.field public mKeyguardOnlyContentAlpha:F

.field public mKeyguardOnlyTransitionTranslationY:I

.field public final mKeyguardQsUserSwitchComponentFactory:Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent$Factory;

.field public mKeyguardQsUserSwitchController:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

.field public mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

.field public final mKeyguardStatusBarViewComponentFactory:Lcom/android/keyguard/dagger/KeyguardStatusBarViewComponent$Factory;

.field public mKeyguardStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

.field public final mKeyguardStatusViewComponentFactory:Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;

.field public mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

.field public final mKeyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

.field public mKeyguardTranslationInfo:Landroid/widget/FrameLayout;

.field public final mKeyguardUnfoldTransition:Ljava/util/Optional;

.field public final mKeyguardUserSwitcherComponentFactory:Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent$Factory;

.field public mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

.field public final mLastDownEvents:Lcom/android/systemui/shade/NPVCDownEventState$Buffer;

.field public mLastEventSynthesizedDown:Z

.field public mLastGesturedOverExpansion:F

.field public final mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field public final mLayoutInflater:Landroid/view/LayoutInflater;

.field public mLinearDarkAmount:F

.field public mListenForHeadsUp:Z

.field public final mLockIconViewController:Lcom/android/keyguard/LockIconViewController;

.field public final mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

.field public final mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

.field public final mLockscreenToDreamingTransition:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;

.field public mLockscreenToDreamingTransitionTranslationY:I

.field public final mLockscreenToDreamingTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToDreamingTransitionViewModel;

.field public final mLockscreenToOccludedTransition:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;

.field public mLockscreenToOccludedTransitionTranslationY:I

.field public final mLockscreenToOccludedTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToOccludedTransitionViewModel;

.field public final mMainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public mMaxAllowedKeyguardNotifications:I

.field public mMaxOverscrollAmountForPulse:I

.field public final mMaybeHideExpandedRunnable:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda0;

.field public final mMediaDataManager:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

.field public final mMediaHierarchyManager:Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public mMinExpandHeight:F

.field public mMinFraction:F

.field public mMotionAborted:Z

.field public final mMultiShadeExpansionConsumer:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;

.field public mNavigationBarBottomHeight:I

.field public final mNavigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

.field public mNextCollapseSpeedUpFactor:F

.field public mNotificationContainerParent:Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

.field public final mNotificationListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

.field public final mNotificationPanelUnfoldAnimationController:Ljava/util/Optional;

.field public final mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field public mNotificationShelfController:Lcom/android/systemui/statusbar/NotificationShelfController;

.field public final mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field public final mNotificationStackSizeCalculator:Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;

.field public final mNotificationsDragEnabled:Z

.field public final mNotificationsQSContainerController:Lcom/android/systemui/shade/NotificationsQSContainerController;

.field public final mOccludedToLockscreenTransition:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;

.field public mOccludedToLockscreenTransitionTranslationY:I

.field public final mOccludedToLockscreenTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/OccludedToLockscreenTransitionViewModel;

.field public mOldLayoutDirection:I

.field public final mOnEmptySpaceClickListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;

.field public final mOnHeadsUpChangedListener:Lcom/android/systemui/shade/NotificationPanelViewController$ShadeHeadsUpChangedListener;

.field public mOpenCloseListener:Lcom/android/systemui/shade/ShadeControllerImpl$2;

.field public mOverExpansion:F

.field public mOverStretchAmount:F

.field public mPanelAlpha:I

.field public final mPanelAlphaAnimator:Lcom/android/systemui/statusbar/notification/AnimatableProperty$6;

.field public mPanelAlphaEndAction:Ljava/lang/Runnable;

.field public final mPanelAlphaInPropertiesAnimator:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field public final mPanelAlphaOutPropertiesAnimator:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field public mPanelClosedOnDown:Z

.field public mPanelExpanded:Z

.field public mPanelFlingOvershootAmount:F

.field public mPanelUpdateWhenAnimatorEnds:Z

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

.field public mPulsing:Z

.field public final mQsController:Lcom/android/systemui/shade/QuickSettingsController;

.field public final mResources:Landroid/content/res/Resources;

.field public final mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

.field public final mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field public final mSettingsChangeObserver:Lcom/android/systemui/shade/NotificationPanelViewController$SettingsChangeObserver;

.field public final mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

.field public final mShadeFoldAnimator:Lcom/android/systemui/shade/NotificationPanelViewController$11;

.field public final mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

.field public final mShadeHeadsUpTracker:Lcom/android/systemui/shade/NotificationPanelViewController$11;

.field public final mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

.field public final mShadeNotificationPresenter:Lcom/android/systemui/shade/NotificationPanelViewController$11;

.field public final mShadeViewStateProvider:Lcom/android/systemui/shade/NotificationPanelViewController$11;

.field public mShowIconsWhenExpanded:Z

.field public mSlopMultiplier:F

.field public mSplitShadeEnabled:Z

.field public mSplitShadeFullTransitionDistance:I

.field public mSplitShadeScrimTransitionDistance:I

.field public mStackScrollerMeasuringPass:I

.field public mStatusBarHeaderHeightKeyguard:I

.field public final mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field public mStatusBarMinHeight:I

.field public final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public final mStatusBarStateListener:Lcom/android/systemui/shade/NotificationPanelViewController$StatusBarStateListener;

.field public final mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

.field public final mSysUiState:Lcom/android/systemui/model/SysUiState;

.field public final mSystemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final mTapAgainViewController:Lcom/android/systemui/statusbar/phone/TapAgainViewController;

.field public mTouchAboveFalsingThreshold:Z

.field public mTouchDisabled:Z

.field public final mTouchHandler:Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;

.field public mTouchSlop:I

.field public mTouchSlopExceeded:Z

.field public mTouchSlopExceededBeforeDown:Z

.field public mTouchStartedInEmptyArea:Z

.field public mTrackedHeadsUpNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field public mTracking:Z

.field public final mTrackingHeadsUpListeners:Ljava/util/ArrayList;

.field public mTrackingPointer:I

.field public mTrackingStartedListener:Lcom/android/systemui/shade/ShadeControllerImpl$$ExternalSyntheticLambda0;

.field public mUdfpsMaxYBurnInOffset:F

.field public mUnlockFalsingThreshold:I

.field public final mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

.field public mUpdateFlingOnLayout:Z

.field public mUpdateFlingVelocity:F

.field public final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mUpwardsWhenThresholdReached:Z

.field public final mUserManager:Landroid/os/UserManager;

.field public final mVelocityTracker:Landroid/view/VelocityTracker;

.field public final mVibrateOnOpening:Z

.field public final mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

.field public final mView:Lcom/android/systemui/shade/NotificationPanelView;

.field public mViewName:Ljava/lang/String;

.field public final mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

.field public mWillPlayDelayedDozeAmountAnimation:Z


# direct methods
.method public static $r8$lambda$Z29G_ltneyobwtTyuUoTV-hXNKI(Lcom/android/systemui/shade/NotificationPanelViewController;F)V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandLatencyTracking:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    cmpl-float v0, p1, v2

    .line 8
    if-eqz v0, :cond_0

    .line 10
    new-instance v0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda0;

    .line 12
    const/4 v3, 0x7

    .line 14
    invoke-direct {v0, p0, v3}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    .line 15
    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    .line 18
    iput-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandLatencyTracking:Z

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->getMaxPanelTransitionDistance()I

    .line 23
    move-result v0

    .line 26
    int-to-float v0, v0

    .line 27
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    .line 28
    const/4 v4, 0x1

    .line 30
    if-nez v3, :cond_1

    .line 31
    iget-boolean v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTracking:Z

    .line 33
    if-eqz v3, :cond_1

    .line 35
    sub-float v3, p1, v0

    .line 37
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    .line 39
    invoke-virtual {p0, v4}, Lcom/android/systemui/shade/NotificationPanelViewController;->setOverExpansionInternal(Z)V

    .line 42
    :cond_1
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    .line 45
    move-result v3

    .line 48
    iput v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    .line 49
    const/high16 v5, 0x3f800000    # 1.0f

    .line 51
    cmpg-float v6, v3, v5

    .line 53
    if-gez v6, :cond_2

    .line 55
    cmpl-float v3, v3, v2

    .line 57
    if-eqz v3, :cond_2

    .line 59
    iget-boolean v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mClosing:Z

    .line 61
    if-eqz v3, :cond_2

    .line 63
    iput v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    .line 65
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    .line 67
    if-eqz v3, :cond_2

    .line 69
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->end()V

    .line 71
    :cond_2
    cmpl-float v3, v0, v2

    .line 74
    if-nez v3, :cond_3

    .line 76
    move v3, v2

    .line 78
    goto :goto_0

    .line 79
    :cond_3
    iget v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    .line 80
    div-float/2addr v3, v0

    .line 82
    :goto_0
    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    .line 83
    move-result v8

    .line 86
    iput v8, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    .line 87
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    .line 89
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 91
    iput v0, v3, Lcom/android/systemui/shade/QuickSettingsController;->mShadeExpandedHeight:F

    .line 93
    iput v8, v3, Lcom/android/systemui/shade/QuickSettingsController;->mShadeExpandedFraction:F

    .line 95
    iput p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpansionDragDownAmountPx:F

    .line 97
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 99
    iput v8, p1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionFraction:F

    .line 101
    cmpg-float p1, v0, v2

    .line 103
    if-gtz p1, :cond_4

    .line 105
    iget-object v6, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 107
    const-string v7, "onHeightUpdated: fully collapsed."

    .line 109
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isExpanded()Z

    .line 111
    move-result v9

    .line 114
    iget-boolean v10, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTracking:Z

    .line 115
    iget v11, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpansionDragDownAmountPx:F

    .line 117
    invoke-virtual/range {v6 .. v11}, Lcom/android/systemui/shade/ShadeLogger;->logExpansionChanged(Ljava/lang/String;FZZF)V

    .line 119
    goto :goto_1

    .line 122
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyExpanded()Z

    .line 123
    move-result p1

    .line 126
    if-eqz p1, :cond_5

    .line 127
    iget-object v6, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 129
    const-string v7, "onHeightUpdated: fully expanded."

    .line 131
    iget v8, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    .line 133
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isExpanded()Z

    .line 135
    move-result v9

    .line 138
    iget-boolean v10, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTracking:Z

    .line 139
    iget v11, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpansionDragDownAmountPx:F

    .line 141
    invoke-virtual/range {v6 .. v11}, Lcom/android/systemui/shade/ShadeLogger;->logExpansionChanged(Ljava/lang/String;FZZF)V

    .line 143
    :cond_5
    :goto_1
    iget-boolean p1, v3, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 146
    if-eqz p1, :cond_6

    .line 148
    invoke-virtual {v3}, Lcom/android/systemui/shade/QuickSettingsController;->isExpandImmediate()Z

    .line 150
    move-result p1

    .line 153
    if-nez p1, :cond_6

    .line 154
    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsExpandingOrCollapsing:Z

    .line 156
    if-eqz p1, :cond_8

    .line 158
    iget-boolean p1, v3, Lcom/android/systemui/shade/QuickSettingsController;->mExpandedWhenExpandingStarted:Z

    .line 160
    if-eqz p1, :cond_8

    .line 162
    :cond_6
    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStackScrollerMeasuringPass:I

    .line 164
    const/4 v2, 0x2

    .line 166
    if-le p1, v2, :cond_7

    .line 167
    goto :goto_2

    .line 169
    :cond_7
    invoke-virtual {p0, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->positionClockAndNotifications(Z)V

    .line 170
    :cond_8
    :goto_2
    iget-boolean p1, v3, Lcom/android/systemui/shade/QuickSettingsController;->mExpandImmediate:Z

    .line 173
    if-nez p1, :cond_b

    .line 175
    iget-boolean p1, v3, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 177
    if-eqz p1, :cond_a

    .line 179
    iget-boolean p1, v3, Lcom/android/systemui/shade/QuickSettingsController;->mTracking:Z

    .line 181
    if-nez p1, :cond_a

    .line 183
    iget-object p1, v3, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionAnimator:Landroid/animation/ValueAnimator;

    .line 185
    if-eqz p1, :cond_9

    .line 187
    move p1, v4

    .line 189
    goto :goto_3

    .line 190
    :cond_9
    move p1, v1

    .line 191
    :goto_3
    if-nez p1, :cond_a

    .line 192
    iget-boolean p1, v3, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionFromOverscroll:Z

    .line 194
    if-nez p1, :cond_a

    .line 196
    goto :goto_4

    .line 198
    :cond_a
    move p1, v1

    .line 199
    goto :goto_5

    .line 200
    :cond_b
    :goto_4
    move p1, v4

    .line 201
    :goto_5
    iget-boolean v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSplitShadeEnabled:Z

    .line 202
    if-eqz v2, :cond_c

    .line 204
    iget-object v6, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 206
    iget-boolean v6, v6, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mTrackingHeadsUp:Z

    .line 208
    if-eqz v6, :cond_c

    .line 210
    iget v6, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpStartHeight:I

    .line 212
    int-to-float v6, v6

    .line 214
    cmpl-float v6, v0, v6

    .line 215
    if-lez v6, :cond_d

    .line 217
    :cond_c
    move v1, v4

    .line 219
    :cond_d
    if-eqz p1, :cond_10

    .line 220
    if-eqz v1, :cond_10

    .line 222
    if-eqz v2, :cond_e

    .line 224
    goto :goto_6

    .line 226
    :cond_e
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isKeyguardShowing()Z

    .line 227
    move-result p1

    .line 230
    if-eqz p1, :cond_f

    .line 231
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->getMaxPanelHeight()I

    .line 233
    move-result p1

    .line 236
    int-to-float p1, p1

    .line 237
    div-float v5, v0, p1

    .line 238
    goto :goto_6

    .line 240
    :cond_f
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 241
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 243
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getIntrinsicPadding()I

    .line 245
    move-result v1

    .line 248
    int-to-float v1, v1

    .line 249
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 250
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getLayoutMinHeight()I

    .line 252
    move-result p1

    .line 255
    int-to-float p1, p1

    .line 256
    add-float/2addr p1, v1

    .line 257
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    .line 258
    iget v1, v1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    .line 260
    invoke-virtual {v3, v1}, Lcom/android/systemui/shade/QuickSettingsController;->calculatePanelHeightExpanded(I)I

    .line 262
    move-result v1

    .line 265
    int-to-float v1, v1

    .line 266
    sub-float v2, v0, p1

    .line 267
    sub-float/2addr v1, p1

    .line 269
    div-float v5, v2, v1

    .line 270
    :goto_6
    iget p1, v3, Lcom/android/systemui/shade/QuickSettingsController;->mMinExpansionHeight:I

    .line 272
    int-to-float v1, p1

    .line 274
    iget v2, v3, Lcom/android/systemui/shade/QuickSettingsController;->mMaxExpansionHeight:I

    .line 275
    sub-int/2addr v2, p1

    .line 277
    int-to-float p1, v2

    .line 278
    mul-float/2addr v5, p1

    .line 279
    add-float/2addr v5, v1

    .line 280
    invoke-virtual {v3, v5}, Lcom/android/systemui/shade/QuickSettingsController;->setExpansionHeight(F)V

    .line 281
    :cond_10
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateExpandedHeight(F)V

    .line 284
    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 287
    if-ne p1, v4, :cond_11

    .line 289
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    .line 291
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->updateViewState()V

    .line 293
    :cond_11
    invoke-virtual {v3}, Lcom/android/systemui/shade/QuickSettingsController;->updateExpansion()V

    .line 296
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateNotificationTranslucency()V

    .line 299
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updatePanelExpanded()V

    .line 302
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateExpansionAndVisibility()V

    .line 305
    return-void
    .line 308
.end method

.method public static $r8$lambda$emnSzHjtVeCb7NG-TXbCA2cbjYw(Lcom/android/systemui/shade/NotificationPanelViewController;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpAnimatingAway:Z

    .line 3
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 5
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 7
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setHeadsUpAnimatingAway(Z)V

    .line 9
    move-object v0, p0

    .line 12
    check-cast v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 13
    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateVisibility(Z)V

    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateExpansionAndVisibility()V

    .line 19
    return-void
    .line 22
.end method

.method public static synthetic $r8$lambda$oTrOQyzWUQJQ_cXkfAHnaU-PI6A(Lcom/android/systemui/shade/NotificationPanelViewController;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->setListening(Z)V

    .line 3
    return-void
    .line 6
.end method

.method public static -$$Nest$maddMovement(Lcom/android/systemui/shade/NotificationPanelViewController;Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 5
    move-result v0

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 9
    move-result v1

    .line 12
    sub-float/2addr v0, v1

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 14
    move-result v1

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 18
    move-result v2

    .line 21
    sub-float/2addr v1, v2

    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 23
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 26
    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 28
    neg-float p0, v0

    .line 31
    neg-float v0, v1

    .line 32
    invoke-virtual {p1, p0, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 33
    return-void
    .line 36
.end method

.method public static -$$Nest$mendMotionEvent(Lcom/android/systemui/shade/NotificationPanelViewController;Landroid/view/MotionEvent;FFZ)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p2

    .line 4
    move/from16 v2, p3

    .line 6
    move/from16 v3, p4

    .line 8
    iget-object v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 10
    const-string v5, "endMotionEvent called"

    .line 12
    const/4 v6, 0x0

    .line 14
    invoke-virtual {v4, v5, v3, v6}, Lcom/android/systemui/shade/ShadeLogger;->logEndMotionEvent(Ljava/lang/String;ZZ)V

    .line 15
    const/4 v5, -0x1

    .line 18
    iput v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTrackingPointer:I

    .line 19
    iget-object v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 21
    iget-boolean v7, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsSwipingUp:Z

    .line 23
    const/4 v8, 0x1

    .line 25
    if-eqz v7, :cond_0

    .line 26
    iput-boolean v8, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsFlingRequiredAfterLockScreenSwipeUp:Z

    .line 28
    :cond_0
    iput-boolean v6, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsSwipingUp:Z

    .line 30
    iget-boolean v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTracking:Z

    .line 32
    iget-object v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 34
    const/4 v9, 0x3

    .line 36
    iget-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 37
    if-eqz v5, :cond_1

    .line 39
    iget-boolean v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchSlopExceeded:Z

    .line 41
    if-nez v5, :cond_5

    .line 43
    :cond_1
    iget v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandX:F

    .line 45
    sub-float v5, v1, v5

    .line 47
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 49
    move-result v5

    .line 52
    iget v11, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchSlop:I

    .line 53
    int-to-float v11, v11

    .line 55
    cmpl-float v5, v5, v11

    .line 56
    if-gtz v5, :cond_5

    .line 58
    iget v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandY:F

    .line 60
    sub-float v5, v2, v5

    .line 62
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 64
    move-result v5

    .line 67
    iget v11, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchSlop:I

    .line 68
    int-to-float v11, v11

    .line 70
    cmpl-float v5, v5, v11

    .line 71
    if-gtz v5, :cond_5

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyExpanded()Z

    .line 75
    move-result v5

    .line 78
    if-nez v5, :cond_2

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 81
    move-result v5

    .line 84
    if-eqz v5, :cond_5

    .line 85
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 87
    move-result v5

    .line 90
    if-eq v5, v9, :cond_5

    .line 91
    if-eqz v3, :cond_3

    .line 93
    goto :goto_0

    .line 95
    :cond_3
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 96
    check-cast v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 98
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBouncerShowing:Z

    .line 100
    if-nez v1, :cond_4

    .line 102
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAlternateBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;

    .line 104
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;->isVisibleState()Z

    .line 106
    move-result v1

    .line 109
    if-nez v1, :cond_4

    .line 110
    iget-boolean v1, v7, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    .line 112
    if-nez v1, :cond_4

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->onEmptySpaceClick()V

    .line 116
    invoke-virtual {v0, v8}, Lcom/android/systemui/shade/NotificationPanelViewController;->onTrackingStopped(Z)V

    .line 119
    :cond_4
    move-object/from16 v20, v10

    .line 122
    goto/16 :goto_13

    .line 124
    :cond_5
    :goto_0
    const/16 v5, 0x3e8

    .line 126
    invoke-virtual {v10, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 128
    invoke-virtual {v10}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 131
    move-result v5

    .line 134
    invoke-virtual {v10}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 135
    move-result v11

    .line 138
    float-to-double v11, v11

    .line 139
    invoke-virtual {v10}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 140
    move-result v13

    .line 143
    float-to-double v13, v13

    .line 144
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    .line 145
    move-result-wide v11

    .line 148
    double-to-float v11, v11

    .line 149
    iget-boolean v12, v7, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 150
    iget-boolean v13, v7, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAway:Z

    .line 152
    const-string/jumbo v14, "systemui.shade"

    .line 154
    const/16 v16, 0x4

    .line 157
    const/16 v17, 0x8

    .line 159
    const/4 v8, 0x0

    .line 161
    if-nez v13, :cond_16

    .line 162
    iget-boolean v13, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialTouchFromKeyguard:Z

    .line 164
    if-eqz v13, :cond_6

    .line 166
    if-nez v12, :cond_6

    .line 168
    goto/16 :goto_8

    .line 170
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 172
    move-result v13

    .line 175
    if-eq v13, v9, :cond_13

    .line 176
    if-eqz v3, :cond_7

    .line 178
    goto/16 :goto_7

    .line 180
    :cond_7
    move-object v9, v0

    .line 182
    check-cast v9, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 183
    iget-object v13, v9, Lcom/android/systemui/shade/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 185
    invoke-interface {v13}, Lcom/android/systemui/plugins/FalsingManager;->isUnlockingDisabled()Z

    .line 187
    move-result v13

    .line 190
    if-nez v13, :cond_f

    .line 191
    iget v13, v9, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandY:F

    .line 193
    sub-float v13, v2, v13

    .line 195
    cmpl-float v13, v13, v8

    .line 197
    if-lez v13, :cond_8

    .line 199
    move v13, v6

    .line 201
    goto :goto_1

    .line 202
    :cond_8
    iget-object v13, v9, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 203
    iget-boolean v13, v13, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    .line 205
    if-eqz v13, :cond_9

    .line 207
    move/from16 v13, v16

    .line 209
    goto :goto_1

    .line 211
    :cond_9
    move/from16 v13, v17

    .line 212
    :goto_1
    invoke-virtual {v9, v1, v2, v13}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->isFalseTouch(FFI)Z

    .line 214
    move-result v18

    .line 217
    if-nez v18, :cond_f

    .line 218
    iget-object v6, v9, Lcom/android/systemui/shade/NotificationPanelViewController;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    .line 220
    iget v6, v6, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    .line 222
    iget v8, v9, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    .line 224
    const/high16 v19, 0x3f000000    # 0.5f

    .line 226
    cmpl-float v8, v8, v19

    .line 228
    if-lez v8, :cond_a

    .line 230
    const/4 v8, 0x1

    .line 232
    goto :goto_2

    .line 233
    :cond_a
    const/4 v8, 0x0

    .line 234
    :goto_2
    iget-boolean v15, v9, Lcom/android/systemui/shade/NotificationPanelViewController;->mAllowExpandForSmallExpansion:Z

    .line 235
    move-object/from16 v20, v10

    .line 237
    iget-object v10, v9, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 239
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    sget-object v1, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 244
    move-object/from16 v21, v7

    .line 246
    sget-object v7, Lcom/android/systemui/shade/ShadeLogger$logFlingExpands$2;->INSTANCE:Lcom/android/systemui/shade/ShadeLogger$logFlingExpands$2;

    .line 248
    iget-object v10, v10, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 250
    const/4 v2, 0x0

    .line 252
    invoke-virtual {v10, v14, v1, v7, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 253
    move-result-object v1

    .line 256
    invoke-interface {v1, v13}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 257
    move-object v2, v14

    .line 260
    float-to-long v13, v5

    .line 261
    invoke-interface {v1, v13, v14}, Lcom/android/systemui/log/LogMessage;->setLong1(J)V

    .line 262
    float-to-long v13, v11

    .line 265
    invoke-interface {v1, v13, v14}, Lcom/android/systemui/log/LogMessage;->setLong2(J)V

    .line 266
    float-to-double v6, v6

    .line 269
    invoke-interface {v1, v6, v7}, Lcom/android/systemui/log/LogMessage;->setDouble1(D)V

    .line 270
    invoke-interface {v1, v8}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 273
    invoke-interface {v1, v15}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 276
    invoke-virtual {v10, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 279
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    .line 282
    move-result v1

    .line 285
    iget-object v6, v9, Lcom/android/systemui/shade/NotificationPanelViewController;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    .line 286
    iget v6, v6, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    .line 288
    cmpg-float v1, v1, v6

    .line 290
    if-gez v1, :cond_d

    .line 292
    invoke-virtual {v9}, Lcom/android/systemui/shade/NotificationPanelViewController;->isOnKeyguard()Z

    .line 294
    move-result v1

    .line 297
    if-eqz v1, :cond_b

    .line 298
    iget v1, v9, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    .line 300
    const v6, 0x3f4ccccd    # 0.8f

    .line 302
    cmpl-float v1, v1, v6

    .line 305
    if-lez v1, :cond_c

    .line 307
    goto :goto_3

    .line 309
    :cond_b
    iget v1, v9, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    .line 310
    cmpl-float v1, v1, v19

    .line 312
    if-lez v1, :cond_c

    .line 314
    goto :goto_3

    .line 316
    :cond_c
    iget-boolean v1, v9, Lcom/android/systemui/shade/NotificationPanelViewController;->mAllowExpandForSmallExpansion:Z

    .line 317
    if-eqz v1, :cond_e

    .line 319
    iget-object v1, v9, Lcom/android/systemui/shade/NotificationPanelViewController;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 321
    check-cast v1, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 323
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 325
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 328
    move-result-wide v6

    .line 331
    iget-wide v10, v9, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownTime:J

    .line 332
    sub-long/2addr v6, v10

    .line 334
    const-wide/16 v10, 0x12c

    .line 335
    cmp-long v1, v6, v10

    .line 337
    if-gtz v1, :cond_e

    .line 339
    goto :goto_3

    .line 341
    :cond_d
    const/4 v1, 0x0

    .line 342
    cmpl-float v6, v5, v1

    .line 343
    if-lez v6, :cond_e

    .line 345
    goto :goto_3

    .line 347
    :cond_e
    const/4 v1, 0x0

    .line 348
    goto :goto_4

    .line 349
    :cond_f
    move-object/from16 v21, v7

    .line 350
    move-object/from16 v20, v10

    .line 352
    move-object v2, v14

    .line 354
    :goto_3
    const/4 v1, 0x1

    .line 355
    :goto_4
    iget-object v6, v9, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 356
    iget-object v6, v6, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionAnimator:Landroid/animation/ValueAnimator;

    .line 358
    if-eqz v6, :cond_10

    .line 360
    const/4 v6, 0x1

    .line 362
    goto :goto_5

    .line 363
    :cond_10
    const/4 v6, 0x0

    .line 364
    :goto_5
    if-eqz v6, :cond_11

    .line 365
    const/4 v1, 0x1

    .line 367
    :cond_11
    iget-boolean v6, v9, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mHidePanelRequested:Z

    .line 368
    if-nez v6, :cond_12

    .line 370
    if-eqz v1, :cond_12

    .line 372
    const/4 v1, 0x1

    .line 374
    goto :goto_6

    .line 375
    :cond_12
    const/4 v1, 0x0

    .line 376
    :goto_6
    const/4 v6, 0x0

    .line 377
    iput-boolean v6, v9, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mHidePanelRequested:Z

    .line 378
    const-string v6, "endMotionEvent: flingExpands"

    .line 380
    invoke-virtual {v4, v6, v3, v1}, Lcom/android/systemui/shade/ShadeLogger;->logEndMotionEvent(Ljava/lang/String;ZZ)V

    .line 382
    goto :goto_a

    .line 385
    :cond_13
    :goto_7
    move-object/from16 v21, v7

    .line 386
    move-object/from16 v20, v10

    .line 388
    move-object v2, v14

    .line 390
    if-eqz v12, :cond_14

    .line 391
    const-string v1, "endMotionEvent: cancel while on keyguard"

    .line 393
    const/4 v6, 0x1

    .line 395
    invoke-virtual {v4, v1, v3, v6}, Lcom/android/systemui/shade/ShadeLogger;->logEndMotionEvent(Ljava/lang/String;ZZ)V

    .line 396
    move v1, v6

    .line 399
    goto :goto_a

    .line 400
    :cond_14
    const/4 v6, 0x1

    .line 401
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 402
    check-cast v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 404
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBouncerShowingOverDream:Z

    .line 406
    if-eqz v1, :cond_15

    .line 408
    goto :goto_9

    .line 410
    :cond_15
    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelClosedOnDown:Z

    .line 411
    xor-int/2addr v1, v6

    .line 413
    const-string v6, "endMotionEvent: cancel"

    .line 414
    invoke-virtual {v4, v6, v3, v1}, Lcom/android/systemui/shade/ShadeLogger;->logEndMotionEvent(Ljava/lang/String;ZZ)V

    .line 416
    goto :goto_a

    .line 419
    :cond_16
    :goto_8
    move-object/from16 v21, v7

    .line 420
    move-object/from16 v20, v10

    .line 422
    move-object v2, v14

    .line 424
    :goto_9
    const/4 v1, 0x0

    .line 425
    :goto_a
    iget-boolean v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchAboveFalsingThreshold:Z

    .line 426
    iget-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 428
    check-cast v6, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 430
    iget-boolean v6, v6, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWakeUpComingFromTouch:Z

    .line 432
    iget-object v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    .line 434
    invoke-virtual {v7, v1, v3, v6}, Lcom/android/systemui/doze/DozeLog;->traceFling(ZZZ)V

    .line 436
    if-nez v1, :cond_17

    .line 439
    if-eqz v12, :cond_17

    .line 441
    iget-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 443
    check-cast v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 445
    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 447
    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 449
    iget v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandY:F

    .line 451
    move/from16 v7, p3

    .line 453
    sub-float v6, v7, v6

    .line 455
    div-float/2addr v6, v3

    .line 457
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 458
    move-result v6

    .line 461
    float-to-int v6, v6

    .line 462
    div-float v3, v5, v3

    .line 463
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 465
    move-result v3

    .line 468
    float-to-int v3, v3

    .line 469
    iget-object v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    .line 470
    const/16 v9, 0xba

    .line 472
    invoke-virtual {v8, v9, v6, v3}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    .line 474
    sget-object v3, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_UNLOCK:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    .line 477
    new-instance v6, Lcom/android/internal/logging/UiEventLoggerImpl;

    .line 479
    invoke-direct {v6}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    .line 481
    invoke-virtual {v6, v3}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 484
    iget v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownX:F

    .line 487
    iget-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 489
    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;

    .line 491
    iget-object v6, v6, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepository;

    .line 493
    check-cast v6, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;

    .line 495
    iget-object v6, v6, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->_keyguardPosition:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 497
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 499
    move-result-object v3

    .line 502
    invoke-virtual {v6, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 503
    goto :goto_b

    .line 506
    :cond_17
    move/from16 v7, p3

    .line 507
    :goto_b
    const/4 v3, 0x0

    .line 509
    cmpl-float v6, v5, v3

    .line 510
    if-nez v6, :cond_18

    .line 512
    const/16 v16, 0x7

    .line 514
    :goto_c
    move/from16 v3, v16

    .line 516
    goto :goto_d

    .line 518
    :cond_18
    iget v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandY:F

    .line 519
    sub-float v6, v7, v6

    .line 521
    cmpl-float v6, v6, v3

    .line 523
    if-lez v6, :cond_19

    .line 525
    const/4 v3, 0x0

    .line 527
    goto :goto_d

    .line 528
    :cond_19
    move-object/from16 v3, v21

    .line 529
    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    .line 531
    if-eqz v3, :cond_1a

    .line 533
    goto :goto_c

    .line 535
    :cond_1a
    move/from16 v3, v17

    .line 536
    :goto_d
    iget v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 538
    const/4 v8, 0x1

    .line 540
    if-ne v6, v8, :cond_1b

    .line 541
    iget v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    .line 543
    float-to-double v8, v6

    .line 545
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 546
    cmpl-double v6, v8, v10

    .line 548
    if-ltz v6, :cond_1b

    .line 550
    const-string v2, "NPVC endMotionEvent - skipping fling on keyguard"

    .line 552
    invoke-virtual {v4, v2}, Lcom/android/systemui/shade/ShadeLogger;->d(Ljava/lang/String;)V

    .line 554
    goto/16 :goto_12

    .line 557
    :cond_1b
    move/from16 v4, p2

    .line 559
    invoke-virtual {v0, v4, v7, v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFalseTouch(FFI)Z

    .line 561
    move-result v3

    .line 564
    move-object v4, v0

    .line 565
    check-cast v4, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 566
    invoke-virtual {v4}, Lcom/android/systemui/shade/NotificationPanelViewController;->isOnKeyguard()Z

    .line 568
    move-result v6

    .line 571
    if-nez v6, :cond_1e

    .line 572
    iget-boolean v6, v4, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mExpandingFromHeadsUp:Z

    .line 574
    if-nez v6, :cond_1e

    .line 576
    iget v2, v4, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mSpringLength:F

    .line 578
    new-instance v3, Ljava/lang/StringBuilder;

    .line 580
    const-string v6, "flingSpring mSpringLength="

    .line 582
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 584
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 587
    const-string v2, ", expand="

    .line 590
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 595
    const-string v2, ", vel="

    .line 598
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 603
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 606
    move-result-object v2

    .line 609
    const-string v3, "PanelViewController"

    .line 610
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    if-eqz v1, :cond_1c

    .line 615
    iget v2, v4, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mSpringLength:F

    .line 617
    const/4 v3, 0x0

    .line 619
    cmpl-float v2, v2, v3

    .line 620
    if-lez v2, :cond_1d

    .line 622
    const-string v2, "PanelViewSpring"

    .line 624
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 626
    move-result-object v2

    .line 629
    invoke-static {v2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 630
    move-result-object v2

    .line 633
    iget v4, v4, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mSpringLength:F

    .line 634
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 636
    move-result-object v4

    .line 639
    const-string v6, "PanelSpringRatio"

    .line 640
    filled-new-array {v6, v4}, [Ljava/lang/Object;

    .line 642
    move-result-object v4

    .line 645
    invoke-interface {v2, v4}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 646
    move-result-object v2

    .line 649
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 650
    move-result-object v3

    .line 653
    sget-object v4, Lcom/android/systemui/shade/MiuiNotificationPanelViewControllerKt;->SPRING_ANIM_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 654
    filled-new-array {v6, v3, v4}, [Ljava/lang/Object;

    .line 656
    move-result-object v3

    .line 659
    invoke-interface {v2, v3}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 660
    goto/16 :goto_12

    .line 663
    :cond_1c
    const/4 v3, 0x0

    .line 665
    :cond_1d
    invoke-virtual {v4, v3}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setMSpringLength(F)V

    .line 666
    goto/16 :goto_12

    .line 669
    :cond_1e
    const/high16 v6, 0x3f800000    # 1.0f

    .line 671
    if-nez v1, :cond_24

    .line 673
    iget v7, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 675
    iget-object v8, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 677
    if-eqz v7, :cond_20

    .line 679
    iget-boolean v7, v8, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    .line 681
    if-nez v7, :cond_1f

    .line 683
    iget-boolean v7, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mTracking:Z

    .line 685
    if-nez v7, :cond_20

    .line 687
    :cond_1f
    const/4 v7, 0x1

    .line 689
    goto :goto_e

    .line 690
    :cond_20
    const/4 v7, 0x0

    .line 691
    :goto_e
    if-eqz v7, :cond_24

    .line 692
    const/4 v7, 0x1

    .line 694
    iput-boolean v7, v4, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->isGoingToDismissKeyguard:Z

    .line 695
    invoke-virtual {v4, v7}, Lcom/android/systemui/shade/NotificationPanelViewController;->setClosing(Z)V

    .line 697
    iget-object v3, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 700
    iput-boolean v1, v3, Lcom/android/systemui/shade/QuickSettingsController;->mLastShadeFlingWasExpanding:Z

    .line 702
    iget-object v3, v3, Lcom/android/systemui/shade/QuickSettingsController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 704
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 706
    sget-object v7, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 709
    sget-object v9, Lcom/android/systemui/shade/ShadeLogger$logLastFlingWasExpanding$2;->INSTANCE:Lcom/android/systemui/shade/ShadeLogger$logLastFlingWasExpanding$2;

    .line 711
    iget-object v3, v3, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 713
    const/4 v10, 0x0

    .line 715
    invoke-virtual {v3, v2, v7, v9, v10}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 716
    move-result-object v2

    .line 719
    invoke-interface {v2, v1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 720
    invoke-virtual {v3, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 723
    iget-object v2, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    .line 726
    xor-int/lit8 v3, v1, 0x1

    .line 728
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->notifyFling(Z)V

    .line 730
    iput-boolean v3, v8, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mFlingingToDismissKeyguard:Z

    .line 733
    if-eqz v3, :cond_21

    .line 735
    iget-boolean v2, v8, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mDismissingFromTouch:Z

    .line 737
    if-eqz v2, :cond_21

    .line 739
    const/4 v2, 0x1

    .line 741
    goto :goto_f

    .line 742
    :cond_21
    const/4 v2, 0x0

    .line 743
    :goto_f
    iput-boolean v2, v8, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mFlingingToDismissKeyguardDuringSwipeGesture:Z

    .line 744
    const/4 v2, 0x1

    .line 746
    xor-int/2addr v3, v2

    .line 747
    iput-boolean v3, v8, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSnappingKeyguardBackAfterSwipe:Z

    .line 748
    if-nez v1, :cond_23

    .line 750
    invoke-virtual {v4}, Lcom/android/systemui/shade/NotificationPanelViewController;->isOnKeyguard()Z

    .line 752
    move-result v2

    .line 755
    if-nez v2, :cond_23

    .line 756
    invoke-virtual {v4}, Lcom/android/systemui/shade/NotificationPanelViewController;->getFadeoutAlpha()F

    .line 758
    move-result v2

    .line 761
    cmpg-float v2, v2, v6

    .line 762
    if-nez v2, :cond_22

    .line 764
    const/4 v6, 0x1

    .line 766
    goto :goto_10

    .line 767
    :cond_22
    const/4 v6, 0x0

    .line 768
    :goto_10
    if-eqz v6, :cond_23

    .line 769
    const/4 v6, 0x1

    .line 771
    goto :goto_11

    .line 772
    :cond_23
    const/4 v6, 0x0

    .line 773
    :goto_11
    iput-boolean v6, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mClosingWithAlphaFadeOut:Z

    .line 774
    iget-object v2, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 776
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 778
    iput-boolean v6, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForceNoOverlappingRendering:Z

    .line 780
    const/4 v3, 0x1

    .line 782
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setPanelFlinging(Z)V

    .line 783
    const/4 v2, 0x0

    .line 786
    invoke-virtual {v4, v2}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setExpandedHeightInternal(F)V

    .line 787
    const/4 v2, 0x0

    .line 790
    invoke-virtual {v4, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->onFlingEnd(Z)V

    .line 791
    goto :goto_12

    .line 794
    :cond_24
    invoke-virtual {v4, v5, v6, v1, v3}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->fling(FFZZ)V

    .line 795
    :goto_12
    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->onTrackingStopped(Z)V

    .line 798
    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUpdateFlingOnLayout:Z

    .line 801
    if-eqz v1, :cond_25

    .line 803
    iput v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUpdateFlingVelocity:F

    .line 805
    :cond_25
    :goto_13
    invoke-virtual/range {v20 .. v20}, Landroid/view/VelocityTracker;->clear()V

    .line 807
    return-void
    .line 810
.end method

.method public static -$$Nest$minitDownStates(Lcom/android/systemui/shade/NotificationPanelViewController;Landroid/view/MotionEvent;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 5
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_6

    .line 10
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozing:Z

    .line 12
    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozingOnDown:Z

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 16
    move-result v0

    .line 19
    iput v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownX:F

    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 22
    move-result v0

    .line 25
    iput v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownY:F

    .line 26
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 28
    move-result v0

    .line 31
    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCollapsedOnDown:Z

    .line 32
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 34
    iput-boolean v0, v2, Lcom/android/systemui/shade/QuickSettingsController;->mCollapsedOnDown:Z

    .line 36
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownX:F

    .line 38
    iget v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownY:F

    .line 40
    const-class v4, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 42
    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 44
    move-result-object v4

    .line 47
    check-cast v4, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 48
    iget-boolean v4, v4, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->isShowingUnimportant:Z

    .line 50
    const/4 v5, 0x1

    .line 52
    if-eqz v4, :cond_0

    .line 53
    goto :goto_2

    .line 55
    :cond_0
    iget-boolean v4, v2, Lcom/android/systemui/shade/QuickSettingsController;->mCollapsedOnDown:Z

    .line 56
    if-nez v4, :cond_4

    .line 58
    iget v4, v2, Lcom/android/systemui/shade/QuickSettingsController;->mBarState:I

    .line 60
    if-eq v4, v5, :cond_4

    .line 62
    iget-boolean v6, v2, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 64
    if-eqz v6, :cond_1

    .line 66
    goto :goto_2

    .line 68
    :cond_1
    if-eq v4, v5, :cond_3

    .line 69
    iget-object v4, v2, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 71
    if-nez v4, :cond_2

    .line 73
    goto :goto_0

    .line 75
    :cond_2
    invoke-interface {v4}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    .line 76
    move-result-object v4

    .line 79
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 80
    move-result v4

    .line 83
    iget-object v6, v2, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 84
    invoke-interface {v6}, Lcom/android/systemui/plugins/qs/QS;->getQsMinExpansionHeight()I

    .line 86
    move-result v6

    .line 89
    add-int/2addr v6, v4

    .line 90
    goto :goto_1

    .line 91
    :cond_3
    :goto_0
    iget-object v4, v2, Lcom/android/systemui/shade/QuickSettingsController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 92
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getBottom()I

    .line 94
    move-result v6

    .line 97
    :goto_1
    iget-object v4, v2, Lcom/android/systemui/shade/QuickSettingsController;->mQsFrame:Landroid/widget/FrameLayout;

    .line 98
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getX()F

    .line 100
    move-result v7

    .line 103
    cmpl-float v7, v0, v7

    .line 104
    if-ltz v7, :cond_4

    .line 106
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getX()F

    .line 108
    move-result v7

    .line 111
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    .line 112
    move-result v4

    .line 115
    int-to-float v4, v4

    .line 116
    add-float/2addr v7, v4

    .line 117
    cmpg-float v0, v0, v7

    .line 118
    if-gtz v0, :cond_4

    .line 120
    int-to-float v0, v6

    .line 122
    cmpg-float v0, v3, v0

    .line 123
    if-gtz v0, :cond_4

    .line 125
    move v0, v5

    .line 127
    goto :goto_3

    .line 128
    :cond_4
    :goto_2
    move v0, v1

    .line 129
    :goto_3
    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsPanelCollapseOnQQS:Z

    .line 130
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCollapsedOnDown:Z

    .line 132
    if-eqz v0, :cond_5

    .line 134
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 136
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHasPinnedNotification:Z

    .line 138
    if-eqz v0, :cond_5

    .line 140
    move v1, v5

    .line 142
    :cond_5
    iput-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mListenForHeadsUp:Z

    .line 143
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpectingSynthesizedDown:Z

    .line 145
    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAllowExpandForSmallExpansion:Z

    .line 147
    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchSlopExceededBeforeDown:Z

    .line 149
    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLastEventSynthesizedDown:Z

    .line 151
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 153
    move-result-wide v0

    .line 156
    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownX:F

    .line 157
    iget v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownY:F

    .line 159
    iget-boolean v4, v2, Lcom/android/systemui/shade/QuickSettingsController;->mFullyExpanded:Z

    .line 161
    iput-boolean v4, v2, Lcom/android/systemui/shade/QuickSettingsController;->mTouchAboveFalsingThreshold:Z

    .line 163
    iget-boolean v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozingOnDown:Z

    .line 165
    iget-boolean v5, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCollapsedOnDown:Z

    .line 167
    iget-boolean v6, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsPanelCollapseOnQQS:Z

    .line 169
    iget-boolean v7, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mListenForHeadsUp:Z

    .line 171
    iget-boolean v8, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAllowExpandForSmallExpansion:Z

    .line 173
    iget-boolean v9, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchSlopExceededBeforeDown:Z

    .line 175
    iget-boolean v10, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLastEventSynthesizedDown:Z

    .line 177
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLastDownEvents:Lcom/android/systemui/shade/NPVCDownEventState$Buffer;

    .line 179
    iget-object p0, p0, Lcom/android/systemui/shade/NPVCDownEventState$Buffer;->buffer:Lcom/android/systemui/common/buffer/RingBuffer;

    .line 181
    invoke-virtual {p0}, Lcom/android/systemui/common/buffer/RingBuffer;->advance()Ljava/lang/Object;

    .line 183
    move-result-object p0

    .line 186
    check-cast p0, Lcom/android/systemui/shade/NPVCDownEventState;

    .line 187
    iput-wide v0, p0, Lcom/android/systemui/shade/NPVCDownEventState;->timeStamp:J

    .line 189
    iput p1, p0, Lcom/android/systemui/shade/NPVCDownEventState;->x:F

    .line 191
    iput v3, p0, Lcom/android/systemui/shade/NPVCDownEventState;->y:F

    .line 193
    iput-boolean v4, p0, Lcom/android/systemui/shade/NPVCDownEventState;->qsTouchAboveFalsingThreshold:Z

    .line 195
    iput-boolean v2, p0, Lcom/android/systemui/shade/NPVCDownEventState;->dozing:Z

    .line 197
    iput-boolean v5, p0, Lcom/android/systemui/shade/NPVCDownEventState;->collapsed:Z

    .line 199
    iput-boolean v6, p0, Lcom/android/systemui/shade/NPVCDownEventState;->canCollapseOnQQS:Z

    .line 201
    iput-boolean v7, p0, Lcom/android/systemui/shade/NPVCDownEventState;->listenForHeadsUp:Z

    .line 203
    iput-boolean v8, p0, Lcom/android/systemui/shade/NPVCDownEventState;->allowExpandForSmallExpansion:Z

    .line 205
    iput-boolean v9, p0, Lcom/android/systemui/shade/NPVCDownEventState;->touchSlopExceededBeforeDown:Z

    .line 207
    iput-boolean v10, p0, Lcom/android/systemui/shade/NPVCDownEventState;->lastEventSynthesized:Z

    .line 209
    goto :goto_4

    .line 211
    :cond_6
    iput-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLastEventSynthesizedDown:Z

    .line 212
    :goto_4
    return-void
    .line 214
.end method

.method public static -$$Nest$mresetBackTransformation(Lcom/android/systemui/shade/NotificationPanelViewController;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCurrentBackProgress:F

    .line 3
    invoke-direct {p0, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->applyBackScaling(F)V

    .line 5
    return-void
    .line 8
.end method

.method public static -$$Nest$msetHeadsUpAnimatingAway(Lcom/android/systemui/shade/NotificationPanelViewController;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpAnimatingAway:Z

    .line 3
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 5
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 7
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setHeadsUpAnimatingAway(Z)V

    .line 9
    check-cast p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateVisibility(Z)V

    .line 14
    return-void
    .line 17
.end method

.method public static -$$Nest$mstartExpandMotion(Lcom/android/systemui/shade/NotificationPanelViewController;FFZF)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHandlingPointerUp:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 6
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 8
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    .line 10
    if-nez v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 16
    move-result v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/QuickSettingsController;->beginJankMonitoring(Z)V

    .line 20
    :cond_0
    iput p4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialOffsetOnTouch:F

    .line 23
    iget-boolean p4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTracking:Z

    .line 25
    if-eqz p4, :cond_2

    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 29
    move-result p4

    .line 32
    if-eqz p4, :cond_1

    .line 33
    goto :goto_0

    .line 35
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 36
    const-string p2, "not setting mInitialExpandY in startExpandMotion"

    .line 38
    invoke-virtual {p1, p2}, Lcom/android/systemui/shade/ShadeLogger;->d(Ljava/lang/String;)V

    .line 40
    goto :goto_1

    .line 43
    :cond_2
    :goto_0
    iput p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandY:F

    .line 44
    iput p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandX:F

    .line 46
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 48
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 50
    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialTouchFromKeyguard:Z

    .line 52
    if-eqz p3, :cond_3

    .line 54
    const/4 p1, 0x1

    .line 56
    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchSlopExceeded:Z

    .line 57
    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialOffsetOnTouch:F

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->setExpandedHeight(F)V

    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->onTrackingStarted()V

    .line 64
    :cond_3
    return-void
    .line 67
.end method

.method public static -$$Nest$mupdateHeader(Lcom/android/systemui/shade/NotificationPanelViewController;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 2
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    .line 7
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->updateViewState()V

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->updateExpansion()V

    .line 14
    return-void
    .line 17
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lcom/android/systemui/shade/NotificationPanelView;

    .line 2
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    .line 6
    sget-object v2, Lcom/android/systemui/animation/ActivityLaunchAnimator;->TIMINGS:Lcom/android/systemui/animation/LaunchAnimator$Timings;

    .line 9
    const-wide/16 v2, 0x52

    .line 11
    sput-wide v2, Lcom/android/systemui/shade/NotificationPanelViewController;->ANIMATION_DELAY_ICON_FADE_IN:J

    .line 13
    new-instance v2, Landroid/graphics/Rect;

    .line 15
    invoke-direct {v2, v1, v1, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 17
    sput-object v2, Lcom/android/systemui/shade/NotificationPanelViewController;->M_DUMMY_DIRTY_RECT:Landroid/graphics/Rect;

    .line 20
    new-instance v0, Landroid/graphics/Rect;

    .line 22
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 24
    sput-object v0, Lcom/android/systemui/shade/NotificationPanelViewController;->EMPTY_RECT:Landroid/graphics/Rect;

    .line 27
    return-void
    .line 29
.end method

.method public constructor <init>(Lcom/android/systemui/shade/NotificationPanelView;Landroid/os/Handler;Landroid/view/LayoutInflater;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/internal/util/LatencyTracker;Landroid/os/PowerManager;Landroid/view/accessibility/AccessibilityManager;ILcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/shade/ShadeLogger;Lcom/android/systemui/statusbar/policy/ConfigurationController;Ljavax/inject/Provider;Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/shade/NotificationsQSContainerController;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent$Factory;Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent$Factory;Lcom/android/keyguard/dagger/KeyguardStatusBarViewComponent$Factory;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/os/UserManager;Lcom/android/systemui/media/controls/pipeline/MediaDataManager;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/keyguard/LockIconViewController;Lcom/android/systemui/media/controls/ui/KeyguardMediaController;Lcom/android/systemui/statusbar/phone/TapAgainViewController;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/navigationbar/NavigationBarController;Lcom/android/systemui/shade/QuickSettingsController;Lcom/android/systemui/fragments/FragmentService;Landroid/content/ContentResolver;Lcom/android/systemui/shade/ShadeHeaderController;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;Lcom/android/systemui/shade/ShadeExpansionStateManager;Ljava/util/Optional;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;Lcom/android/systemui/statusbar/KeyguardIndicationController;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Lcom/android/systemui/shade/transition/ShadeTransitionController;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/OccludedToLockscreenTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToDreamingTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/GoneToDreamingTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToOccludedTransitionViewModel;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/keyguard/domain/interactor/KeyguardFaceAuthInteractor;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p39

    move-object/from16 v3, p51

    move-object/from16 v4, p57

    move-object/from16 v5, p58

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v6, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOnEmptySpaceClickListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;

    .line 3
    new-instance v6, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeHeadsUpChangedListener;

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    invoke-direct {v6, v7}, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeHeadsUpChangedListener;-><init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;)V

    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOnHeadsUpChangedListener:Lcom/android/systemui/shade/NotificationPanelViewController$ShadeHeadsUpChangedListener;

    .line 4
    new-instance v6, Lcom/android/systemui/shade/NotificationPanelViewController$StatusBarStateListener;

    invoke-direct {v6, v7}, Lcom/android/systemui/shade/NotificationPanelViewController$StatusBarStateListener;-><init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;)V

    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateListener:Lcom/android/systemui/shade/NotificationPanelViewController$StatusBarStateListener;

    .line 5
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6
    new-instance v6, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAccessibilityDelegate;

    invoke-direct {v6, v7}, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAccessibilityDelegate;-><init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;)V

    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAccessibilityDelegate:Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAccessibilityDelegate;

    const/4 v6, 0x0

    .line 7
    iput v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    .line 8
    iput v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCurrentBackProgress:F

    const/4 v8, 0x0

    .line 9
    iput v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDisplayTopInset:I

    .line 10
    iput v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDisplayRightInset:I

    .line 11
    iput v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDisplayLeftInset:I

    .line 12
    new-instance v9, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;

    invoke-direct {v9}, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;-><init>()V

    iput-object v9, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mClockPositionAlgorithm:Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;

    .line 13
    new-instance v9, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    invoke-direct {v9}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;-><init>()V

    iput-object v9, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    .line 14
    new-instance v9, Lcom/android/systemui/shade/NotificationPanelViewController$11;

    invoke-direct {v9, p0}, Lcom/android/systemui/shade/NotificationPanelViewController$11;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    iput-object v9, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeHeadsUpTracker:Lcom/android/systemui/shade/NotificationPanelViewController$11;

    .line 15
    new-instance v9, Lcom/android/systemui/shade/NotificationPanelViewController$11;

    invoke-direct {v9, p0}, Lcom/android/systemui/shade/NotificationPanelViewController$11;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    iput-object v9, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeFoldAnimator:Lcom/android/systemui/shade/NotificationPanelViewController$11;

    .line 16
    new-instance v9, Lcom/android/systemui/shade/NotificationPanelViewController$11;

    invoke-direct {v9, p0}, Lcom/android/systemui/shade/NotificationPanelViewController$11;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    iput-object v9, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeNotificationPresenter:Lcom/android/systemui/shade/NotificationPanelViewController$11;

    const/4 v9, 0x1

    .line 17
    iput-boolean v9, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHideIconsDuringLaunchAnimation:Z

    .line 18
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTrackingHeadsUpListeners:Ljava/util/ArrayList;

    .line 19
    new-instance v10, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda7;

    invoke-direct {v10}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda7;-><init>()V

    new-instance v11, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;

    invoke-direct {v11, v8}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;-><init>(I)V

    sget-object v12, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 20
    new-instance v12, Lcom/android/systemui/statusbar/notification/AnimatableProperty$5;

    const-string v13, "panelAlpha"

    invoke-direct {v12, v13, v11, v10}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$5;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/BiConsumer;)V

    .line 21
    new-instance v10, Lcom/android/systemui/statusbar/notification/AnimatableProperty$6;

    const v11, 0x7f0a06e5    # @id/panel_alpha_animator_start_tag

    const v13, 0x7f0a06e4    # @id/panel_alpha_animator_end_tag

    const v14, 0x7f0a06e6    # @id/panel_alpha_animator_tag

    invoke-direct {v10, v11, v13, v14, v12}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$6;-><init>(IIILcom/android/systemui/statusbar/notification/AnimatableProperty$5;)V

    .line 22
    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelAlphaAnimator:Lcom/android/systemui/statusbar/notification/AnimatableProperty$6;

    .line 23
    new-instance v10, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {v10}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    const-wide/16 v13, 0x96

    .line 24
    iput-wide v13, v10, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 25
    sget-object v11, Lcom/android/app/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 26
    invoke-virtual {v10, v12, v11}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setCustomInterpolator(Landroid/util/Property;Landroid/view/animation/Interpolator;)V

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelAlphaOutPropertiesAnimator:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 27
    new-instance v10, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {v10}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    const-wide/16 v13, 0xc8

    .line 28
    iput-wide v13, v10, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 29
    new-instance v13, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;

    invoke-direct {v13, v8, p0}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;-><init>(ILjava/lang/Object;)V

    .line 30
    iput-object v13, v10, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mAnimationEndAction:Ljava/util/function/Consumer;

    .line 31
    sget-object v13, Lcom/android/app/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 32
    invoke-virtual {v10, v12, v13}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setCustomInterpolator(Landroid/util/Property;Landroid/view/animation/Interpolator;)V

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelAlphaInPropertiesAnimator:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 33
    iput v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCurrentPanelState:I

    const/high16 v10, 0x3f800000    # 1.0f

    .line 34
    iput v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardOnlyContentAlpha:F

    .line 35
    iput v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardOnlyTransitionTranslationY:I

    .line 36
    iput-boolean v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHasVibratedOnOpen:Z

    const/4 v12, -0x1

    .line 37
    iput v12, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFixedDuration:I

    const/high16 v12, -0x40800000    # -1.0f

    .line 38
    iput v12, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLastGesturedOverExpansion:F

    .line 39
    iput v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    .line 40
    iput v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpansionDragDownAmountPx:F

    .line 41
    iput v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNextCollapseSpeedUpFactor:F

    .line 42
    iput-boolean v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mWillPlayDelayedDozeAmountAnimation:Z

    .line 43
    iput-boolean v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsOcclusionTransitionRunning:Z

    .line 44
    new-instance v6, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda0;

    const/4 v10, 0x2

    invoke-direct {v6, p0, v10}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFlingCollapseRunnable:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda0;

    .line 45
    new-instance v6, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda0;

    const/4 v12, 0x4

    invoke-direct {v6, p0, v12}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpExistenceChangedRunnable:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda0;

    .line 46
    new-instance v6, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda0;

    const/4 v13, 0x5

    invoke-direct {v6, p0, v13}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMaybeHideExpandedRunnable:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda0;

    .line 47
    new-instance v6, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;

    const/4 v14, 0x6

    invoke-direct {v6, v14, p0}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;-><init>(ILjava/lang/Object;)V

    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMultiShadeExpansionConsumer:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;

    .line 48
    new-instance v6, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;

    invoke-direct {v6, v9, p0}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;-><init>(ILjava/lang/Object;)V

    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDreamingToLockscreenTransition:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;

    .line 49
    new-instance v6, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;

    invoke-direct {v6, v10, p0}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;-><init>(ILjava/lang/Object;)V

    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOccludedToLockscreenTransition:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;

    .line 50
    new-instance v6, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;

    const/4 v14, 0x3

    invoke-direct {v6, v14, p0}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;-><init>(ILjava/lang/Object;)V

    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenToDreamingTransition:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;

    .line 51
    new-instance v6, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;

    invoke-direct {v6, v12, p0}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;-><init>(ILjava/lang/Object;)V

    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mGoneToDreamingTransition:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;

    .line 52
    new-instance v6, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;

    invoke-direct {v6, v13, p0}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;-><init>(ILjava/lang/Object;)V

    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenToOccludedTransition:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;

    .line 53
    new-instance v6, Lcom/android/systemui/shade/NotificationPanelViewController$11;

    invoke-direct {v6, p0}, Lcom/android/systemui/shade/NotificationPanelViewController$11;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeViewStateProvider:Lcom/android/systemui/shade/NotificationPanelViewController$11;

    .line 54
    new-instance v6, Lcom/android/systemui/shade/NotificationPanelViewController$1;

    invoke-direct {v6, v7}, Lcom/android/systemui/shade/NotificationPanelViewController$1;-><init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;)V

    move-object/from16 v12, p11

    check-cast v12, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {v12, v6}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    move-object/from16 v6, p45

    .line 55
    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 56
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    move-object/from16 v6, p31

    .line 57
    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v6, p56

    .line 58
    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    .line 59
    iput-object v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    move-object/from16 v6, p25

    .line 60
    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    move-object/from16 v6, p32

    .line 61
    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    move-object/from16 v6, p70

    .line 62
    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDreamingToLockscreenTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel;

    move-object/from16 v6, p71

    .line 63
    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOccludedToLockscreenTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/OccludedToLockscreenTransitionViewModel;

    move-object/from16 v6, p72

    .line 64
    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenToDreamingTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToDreamingTransitionViewModel;

    move-object/from16 v6, p73

    .line 65
    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mGoneToDreamingTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/GoneToDreamingTransitionViewModel;

    move-object/from16 v6, p74

    .line 66
    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenToOccludedTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToOccludedTransitionViewModel;

    move-object/from16 v6, p76

    .line 67
    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    move-object/from16 v6, p78

    .line 68
    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    .line 69
    new-instance v6, Lcom/android/systemui/shade/NotificationPanelViewController$2;

    invoke-direct {v6, v7, v8}, Lcom/android/systemui/shade/NotificationPanelViewController$2;-><init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;I)V

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 70
    new-instance v6, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;

    invoke-direct {v6, v7}, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;-><init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;)V

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 71
    new-instance v6, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;

    invoke-direct {v6, v7}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;-><init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;)V

    .line 72
    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchHandler:Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;

    .line 73
    invoke-virtual {v1, v6}, Lcom/android/systemui/shade/NotificationPanelView;->setOnTouchListener(Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;)V

    .line 74
    new-instance v6, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    .line 75
    iput-object v6, v1, Lcom/android/systemui/shade/NotificationPanelView;->mOnConfigurationChangedListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;

    .line 76
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mResources:Landroid/content/res/Resources;

    .line 77
    iput-object v12, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 78
    iput-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    move-object/from16 v12, p61

    .line 79
    iput-object v12, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 80
    move-object/from16 v12, p12

    check-cast v12, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iput-object v12, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-object/from16 v12, p14

    .line 81
    iput-object v12, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 82
    invoke-interface/range {p27 .. p27}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;

    .line 83
    invoke-virtual {v12}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->reset()V

    const v13, 0x3f19999a    # 0.6f

    .line 84
    iput v13, v12, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->mMaxLengthSeconds:F

    .line 85
    iput v13, v12, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->mSpeedUpFactor:F

    .line 86
    invoke-virtual {v12}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->build()Lcom/android/wm/shell/animation/FlingAnimationUtils;

    move-result-object v14

    iput-object v14, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    .line 87
    invoke-virtual {v12}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->reset()V

    .line 88
    iput v13, v12, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->mMaxLengthSeconds:F

    .line 89
    iput v13, v12, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->mSpeedUpFactor:F

    .line 90
    invoke-virtual {v12}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->build()Lcom/android/wm/shell/animation/FlingAnimationUtils;

    move-result-object v14

    iput-object v14, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFlingAnimationUtilsClosing:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    .line 91
    invoke-virtual {v12}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->reset()V

    const/high16 v14, 0x3f000000    # 0.5f

    .line 92
    iput v14, v12, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->mMaxLengthSeconds:F

    .line 93
    iput v13, v12, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->mSpeedUpFactor:F

    .line 94
    iput v13, v12, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->mX2:F

    const v13, 0x3f570a3d    # 0.84f

    .line 95
    iput v13, v12, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->mY2:F

    .line 96
    invoke-virtual {v12}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->build()Lcom/android/wm/shell/animation/FlingAnimationUtils;

    move-result-object v12

    iput-object v12, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFlingAnimationUtilsDismissing:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    move-object/from16 v12, p19

    .line 97
    iput-object v12, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 98
    new-instance v12, Lcom/android/systemui/statusbar/phone/BounceInterpolator;

    invoke-direct {v12}, Lcom/android/systemui/statusbar/phone/BounceInterpolator;-><init>()V

    iput-object v12, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBounceInterpolator:Lcom/android/systemui/statusbar/phone/BounceInterpolator;

    move-object/from16 v12, p9

    .line 99
    iput-object v12, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object/from16 v12, p15

    .line 100
    iput-object v12, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    const v12, 0x7f05002a    # @bool/config_enableNotificationShadeDrag 'true'

    .line 101
    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    iput-boolean v12, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationsDragEnabled:Z

    move-object/from16 v12, p18

    .line 102
    iput-object v12, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    const v12, 0x7f05006e    # @bool/config_vibrateOnIconAnimation 'false'

    .line 103
    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    iput-boolean v12, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mVibrateOnOpening:Z

    move-object/from16 v12, p28

    .line 104
    iput-object v12, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    move-object/from16 v12, p66

    .line 105
    iput-object v12, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    move-object/from16 v12, p47

    .line 106
    iput-object v12, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardMediaController:Lcom/android/systemui/media/controls/ui/KeyguardMediaController;

    move-object/from16 v12, p24

    .line 107
    iput-object v12, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move-object/from16 v12, p26

    .line 108
    iput-object v12, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object/from16 v12, p27

    .line 109
    iput-object v12, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFlingAnimationUtilsBuilder:Ljavax/inject/Provider;

    move-object/from16 v12, p30

    .line 110
    iput-object v12, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMediaHierarchyManager:Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;

    move-object/from16 v12, p33

    .line 111
    iput-object v12, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationsQSContainerController:Lcom/android/systemui/shade/NotificationsQSContainerController;

    move-object/from16 v13, p62

    .line 112
    iput-object v13, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    move-object/from16 v13, p63

    .line 113
    iput-object v13, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackSizeCalculator:Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;

    move-object/from16 v13, p50

    .line 114
    iput-object v13, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNavigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    .line 115
    invoke-virtual/range {p33 .. p33}, Lcom/android/systemui/util/ViewController;->init()V

    move-object/from16 v12, p34

    .line 116
    iput-object v12, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    move-object/from16 v12, p35

    .line 117
    iput-object v12, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewComponentFactory:Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;

    move-object/from16 v12, p38

    .line 118
    iput-object v12, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBarViewComponentFactory:Lcom/android/keyguard/dagger/KeyguardStatusBarViewComponent$Factory;

    move-object/from16 v12, p44

    .line 119
    iput-object v12, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    move-object/from16 v12, p53

    .line 120
    iput-object v12, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v12, p36

    .line 121
    iput-object v12, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardQsUserSwitchComponentFactory:Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent$Factory;

    move-object/from16 v12, p37

    .line 122
    iput-object v12, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardUserSwitcherComponentFactory:Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent$Factory;

    move-object/from16 v12, p52

    .line 123
    iput-object v12, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFragmentService:Lcom/android/systemui/fragments/FragmentService;

    .line 124
    new-instance v12, Lcom/android/systemui/shade/NotificationPanelViewController$SettingsChangeObserver;

    move-object/from16 v13, p2

    invoke-direct {v12, v7, v13}, Lcom/android/systemui/shade/NotificationPanelViewController$SettingsChangeObserver;-><init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;Landroid/os/Handler;)V

    iput-object v12, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSettingsChangeObserver:Lcom/android/systemui/shade/NotificationPanelViewController$SettingsChangeObserver;

    .line 125
    invoke-static {v6}, Lcom/android/systemui/util/LargeScreenUtils;->shouldUseSplitNotificationShade(Landroid/content/res/Resources;)Z

    move-result v6

    iput-boolean v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSplitShadeEnabled:Z

    .line 126
    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    move-object/from16 v6, p54

    .line 127
    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    move-object/from16 v6, p3

    .line 128
    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v6, p4

    .line 129
    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 130
    sget-object v12, Lcom/android/systemui/flags/Flags;->NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v6, p10

    .line 131
    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    move-object/from16 v6, p20

    .line 132
    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v6, p5

    .line 133
    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    move-object/from16 v6, p75

    .line 134
    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object/from16 v6, p21

    .line 135
    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 136
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->determineAccessibilityPaneTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    const/16 v6, 0xff

    .line 137
    invoke-virtual {p0, v6, v8}, Lcom/android/systemui/shade/NotificationPanelViewController;->setAlpha(IZ)V

    move-object/from16 v6, p17

    .line 138
    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move/from16 v6, p22

    .line 139
    iput v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDisplayId:I

    move-object/from16 v6, p6

    .line 140
    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    move-object/from16 v6, p16

    .line 141
    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-object/from16 v6, p41

    .line 142
    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    move-object/from16 v6, p42

    .line 143
    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v6, p43

    .line 144
    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMediaDataManager:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    move-object/from16 v6, p48

    .line 145
    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTapAgainViewController:Lcom/android/systemui/statusbar/phone/TapAgainViewController;

    move-object/from16 v6, p59

    .line 146
    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    .line 147
    new-instance v6, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda2;

    invoke-direct {v6, v7}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;)V

    move-object/from16 v12, p13

    .line 148
    iget-object v12, v12, Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;->listeners:Ljava/util/Set;

    .line 149
    check-cast v12, Ljava/util/HashSet;

    invoke-virtual {v12, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v6, p8

    .line 150
    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-object/from16 v6, p23

    .line 151
    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 152
    iput-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    .line 153
    iput-object v0, v2, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->shadeViewController:Lcom/android/systemui/shade/ShadeViewController;

    move-object/from16 v2, p65

    .line 154
    iput-object v0, v2, Lcom/android/systemui/shade/transition/ShadeTransitionController;->shadeViewController:Lcom/android/systemui/shade/ShadeViewController;

    .line 155
    new-instance v2, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda3;

    invoke-direct {v2, v7}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;)V

    move-object/from16 v6, p7

    .line 156
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mListeners:Landroid/util/ArraySet;

    .line 157
    invoke-virtual {v6, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v2, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    .line 159
    iput-object v2, v3, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeightListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;

    .line 160
    new-instance v2, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    .line 161
    iput-object v2, v3, Lcom/android/systemui/shade/QuickSettingsController;->mQsStateUpdateListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;

    .line 162
    new-instance v2, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    .line 163
    iput-object v2, v3, Lcom/android/systemui/shade/QuickSettingsController;->mApplyClippingImmediatelyListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;

    .line 164
    new-instance v2, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    .line 165
    iput-object v2, v3, Lcom/android/systemui/shade/QuickSettingsController;->mFlingQsWithoutClickListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;

    .line 166
    new-instance v2, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    .line 167
    iput-object v2, v3, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeightSetToMaxListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;

    .line 168
    new-instance v2, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda4;

    invoke-direct {v2, v7}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;)V

    .line 169
    iget-object v3, v4, Lcom/android/systemui/shade/ShadeExpansionStateManager;->stateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 170
    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-array v2, v10, [F

    .line 171
    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBottomAreaShadeAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 172
    new-instance v3, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda15;

    invoke-direct {v3, v9, p0}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda15;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 173
    new-instance v3, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$MiuiConfigurationListener;

    invoke-direct {v3, v7}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$MiuiConfigurationListener;-><init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;)V

    .line 174
    iput-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mConfigurationListener:Lcom/android/systemui/shade/MiuiNotificationPanelViewController$MiuiConfigurationListener;

    const-wide/16 v3, 0xa0

    .line 175
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 176
    invoke-virtual {v2, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v2, p29

    .line 177
    iput-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mConversationNotificationManager:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    move-object/from16 v2, p40

    .line 178
    iput-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    move-object/from16 v2, p46

    .line 179
    iput-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockIconViewController:Lcom/android/keyguard/LockIconViewController;

    move-object/from16 v2, p55

    .line 180
    iput-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    move-object/from16 v2, p64

    .line 181
    iput-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    .line 182
    new-instance v2, Lcom/android/systemui/shade/NPVCDownEventState$Buffer;

    invoke-direct {v2}, Lcom/android/systemui/shade/NPVCDownEventState$Buffer;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLastDownEvents:Lcom/android/systemui/shade/NPVCDownEventState$Buffer;

    move-object/from16 v2, p80

    .line 183
    iput-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardFaceAuthInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardFaceAuthInteractor;

    .line 184
    new-instance v2, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda5;

    invoke-direct {v2, v7}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;)V

    move-object/from16 v3, p49

    invoke-virtual {v3, v2}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    move-result v2

    .line 185
    invoke-static {v2}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsGestureNavigation:Z

    .line 186
    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 187
    new-instance v2, Lcom/android/systemui/shade/NotificationPanelViewController$2;

    invoke-direct {v2, v7}, Lcom/android/systemui/shade/NotificationPanelViewController$2;-><init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;)V

    .line 188
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 189
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 190
    invoke-virtual {v2, v1}, Lcom/android/systemui/shade/NotificationPanelViewController$2;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 191
    :cond_0
    new-instance v2, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda6;

    invoke-direct {v2, v7}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 192
    new-instance v1, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;

    invoke-direct {v1, v9}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;-><init>(I)V

    invoke-virtual {v5, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardUnfoldTransition:Ljava/util/Optional;

    .line 193
    new-instance v1, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;

    invoke-direct {v1, v10}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;-><init>(I)V

    invoke-virtual {v5, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationPanelUnfoldAnimationController:Ljava/util/Optional;

    move-object/from16 v1, p67

    .line 194
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomAreaViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;

    move-object/from16 v1, p68

    .line 195
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomAreaInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;

    move-object/from16 v1, p79

    .line 196
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 197
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->onFinishInflate()V

    .line 198
    new-instance v1, Lcom/android/systemui/shade/NotificationPanelViewController$3;

    invoke-direct {v1, v7}, Lcom/android/systemui/shade/NotificationPanelViewController$3;-><init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;)V

    move-object/from16 v2, p60

    .line 199
    iget-object v2, v2, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->listeners:Ljava/util/ArrayList;

    .line 200
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p69

    .line 201
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAlternateBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;

    move-object/from16 v1, p77

    .line 202
    invoke-virtual {v1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private applyBackScaling(F)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    const v1, 0x3f666666    # 0.9f

    .line 9
    invoke-static {v0, v1, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 12
    move-result p1

    .line 15
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    .line 16
    iget-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSplitShadeEnabled:Z

    .line 18
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mStackScroller:Landroid/view/View;

    .line 20
    if-eqz v2, :cond_3

    .line 22
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mQSContainer:Landroid/view/View;

    .line 24
    if-nez v2, :cond_1

    .line 26
    goto :goto_0

    .line 28
    :cond_1
    iget-object v3, v0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mUpperRect:Landroid/graphics/Rect;

    .line 29
    invoke-virtual {v2, v3}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 31
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mStackScroller:Landroid/view/View;

    .line 34
    iget-object v3, v0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mBoundingBoxRect:Landroid/graphics/Rect;

    .line 36
    invoke-virtual {v2, v3}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 38
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mBoundingBoxRect:Landroid/graphics/Rect;

    .line 41
    iget-object v3, v0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mUpperRect:Landroid/graphics/Rect;

    .line 43
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 45
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mBoundingBoxRect:Landroid/graphics/Rect;

    .line 48
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    .line 50
    move-result v2

    .line 53
    int-to-float v2, v2

    .line 54
    iget-object v3, v0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mBoundingBoxRect:Landroid/graphics/Rect;

    .line 55
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    .line 57
    move-result v3

    .line 60
    int-to-float v3, v3

    .line 61
    iget-object v4, v0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mQSContainer:Landroid/view/View;

    .line 62
    invoke-virtual {v4, v2}, Landroid/view/View;->setPivotX(F)V

    .line 64
    iget-object v4, v0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mQSContainer:Landroid/view/View;

    .line 67
    invoke-virtual {v4, v3}, Landroid/view/View;->setPivotY(F)V

    .line 69
    iget-object v4, v0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mQSContainer:Landroid/view/View;

    .line 72
    invoke-virtual {v4, p1}, Landroid/view/View;->setScaleX(F)V

    .line 74
    iget-object v4, v0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mQSContainer:Landroid/view/View;

    .line 77
    invoke-virtual {v4, p1}, Landroid/view/View;->setScaleY(F)V

    .line 79
    iget-object v4, v0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mStackScroller:Landroid/view/View;

    .line 82
    if-eqz v1, :cond_2

    .line 84
    const/4 v2, 0x0

    .line 86
    :cond_2
    invoke-virtual {v4, v2}, Landroid/view/View;->setPivotX(F)V

    .line 87
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mStackScroller:Landroid/view/View;

    .line 90
    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotY(F)V

    .line 92
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mStackScroller:Landroid/view/View;

    .line 95
    invoke-virtual {v1, p1}, Landroid/view/View;->setScaleX(F)V

    .line 97
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;->mStackScroller:Landroid/view/View;

    .line 100
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 102
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    .line 107
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 109
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    .line 112
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 114
    return-void
    .line 117
.end method

.method private setListening(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    .line 2
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mBatteryListening:Z

    .line 4
    if-ne p1, v1, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mBatteryListening:Z

    .line 9
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mBatteryStateChangeCallback:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$4;

    .line 11
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 13
    if-eqz p1, :cond_1

    .line 15
    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 17
    goto :goto_0

    .line 20
    :cond_1
    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    .line 21
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 23
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 26
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 28
    if-eqz p0, :cond_2

    .line 30
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/qs/QS;->setListening(Z)V

    .line 32
    :cond_2
    return-void
    .line 35
.end method

.method private setPanelScrimMinFraction(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMinFraction:F

    .line 2
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMinFraction:F

    .line 9
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 16
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPanelScrimMinFraction:F

    .line 22
    return-void

    .line 24
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 25
    const-string p1, "minFraction should not be NaN"

    .line 27
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    throw p0
    .line 32
.end method

.method private updateClock()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsOcclusionTransitionRunning:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    .line 7
    iget v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockAlpha:F

    .line 9
    iget v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardOnlyContentAlpha:F

    .line 11
    mul-float/2addr v0, v1

    .line 13
    const-class v1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 14
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 19
    check-cast v1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 20
    iget-object v1, v1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardMoveHelper:Lcom/android/keyguard/KeyguardMoveHelper;

    .line 22
    const/4 v2, 0x1

    .line 24
    const/4 v3, 0x0

    .line 25
    if-eqz v1, :cond_1

    .line 26
    iget-boolean v4, v1, Lcom/android/keyguard/KeyguardMoveHelper;->mSwipingInProgress:Z

    .line 28
    if-ne v4, v2, :cond_1

    .line 30
    move v4, v2

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move v4, v3

    .line 34
    :goto_0
    if-nez v4, :cond_4

    .line 35
    if-eqz v1, :cond_3

    .line 37
    iget v1, v1, Lcom/android/keyguard/KeyguardMoveHelper;->mCurrentScreen:I

    .line 39
    if-nez v1, :cond_2

    .line 41
    move v1, v2

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move v1, v3

    .line 45
    :goto_1
    if-ne v1, v2, :cond_3

    .line 46
    move v1, v2

    .line 48
    goto :goto_2

    .line 49
    :cond_3
    move v1, v3

    .line 50
    :goto_2
    if-eqz v1, :cond_5

    .line 51
    :cond_4
    move v3, v2

    .line 53
    :cond_5
    if-nez v3, :cond_6

    .line 54
    const-class v1, Lcom/android/keyguard/injector/KeyguardClockInjector;

    .line 56
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 58
    move-result-object v1

    .line 61
    check-cast v1, Lcom/android/keyguard/injector/KeyguardClockInjector;

    .line 62
    iget-object v1, v1, Lcom/android/keyguard/injector/KeyguardClockInjector;->mKeyguardClockView:Lcom/android/keyguard/clock/KeyguardClockContainer;

    .line 64
    if-eqz v1, :cond_6

    .line 66
    invoke-virtual {v1, v0}, Lcom/android/keyguard/clock/KeyguardClockContainer;->setAlpha(F)V

    .line 68
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    .line 71
    iget-object v3, v1, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    .line 73
    iget-boolean v3, v3, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    .line 75
    if-nez v3, :cond_7

    .line 77
    iget-object v1, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 79
    check-cast v1, Lcom/android/keyguard/KeyguardStatusView;

    .line 81
    invoke-virtual {v1, v0}, Landroid/widget/GridLayout;->setAlpha(F)V

    .line 83
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    .line 86
    iget v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardOnlyTransitionTranslationY:I

    .line 88
    int-to-float v3, v3

    .line 90
    iget-object v1, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 91
    check-cast v1, Lcom/android/keyguard/KeyguardStatusView;

    .line 93
    invoke-virtual {v1, v3, v2}, Lcom/android/keyguard/KeyguardStatusView;->setChildrenTranslationY(FZ)V

    .line 95
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardQsUserSwitchController:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    .line 98
    if-eqz v1, :cond_8

    .line 100
    iget-object v2, v1, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    .line 102
    iget-boolean v2, v2, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    .line 104
    if-nez v2, :cond_8

    .line 106
    iget-object v1, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 108
    check-cast v1, Landroid/widget/FrameLayout;

    .line 110
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 112
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    .line 115
    if-eqz p0, :cond_9

    .line 117
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    .line 119
    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    .line 121
    if-nez v1, :cond_9

    .line 123
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 125
    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;

    .line 127
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 129
    :cond_9
    return-void
    .line 132
.end method


# virtual methods
.method public final animateCollapseQs(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSplitShadeEnabled:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    const/high16 p1, 0x3f800000    # 1.0f

    .line 8
    invoke-virtual {p0, p1, v2, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->collapse(FZZ)V

    .line 10
    goto :goto_0

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 14
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionAnimator:Landroid/animation/ValueAnimator;

    .line 16
    if-eqz v0, :cond_2

    .line 18
    iget-boolean v3, p0, Lcom/android/systemui/shade/QuickSettingsController;->mAnimatorExpand:Z

    .line 20
    if-nez v3, :cond_1

    .line 22
    goto :goto_0

    .line 24
    :cond_1
    iget v3, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeight:F

    .line 25
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 27
    invoke-virtual {p0, v3}, Lcom/android/systemui/shade/QuickSettingsController;->setExpansionHeight(F)V

    .line 30
    :cond_2
    if-eqz p1, :cond_3

    .line 33
    const/4 v2, 0x2

    .line 35
    :cond_3
    const/4 p1, 0x0

    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/android/systemui/shade/QuickSettingsController;->flingQs(FILcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda3;Z)V

    .line 38
    :goto_0
    return-void
    .line 41
.end method

.method public calculateNotificationsTopPadding()F
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsExpandingOrCollapsing:Z

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->getKeyguardNotificationStaticPadding()I

    .line 4
    move-result v1

    .line 7
    iget v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    .line 8
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 10
    iget v3, p0, Lcom/android/systemui/shade/QuickSettingsController;->mBarState:I

    .line 12
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x1

    .line 15
    if-ne v3, v5, :cond_0

    .line 16
    move v3, v5

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v3, v4

    .line 20
    :goto_0
    iget-boolean v6, p0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 21
    if-eqz v6, :cond_2

    .line 23
    if-eqz v3, :cond_1

    .line 25
    int-to-float p0, v1

    .line 27
    goto :goto_2

    .line 28
    :cond_1
    const/4 p0, 0x0

    .line 29
    goto :goto_2

    .line 30
    :cond_2
    if-eqz v3, :cond_5

    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->isExpandImmediate()Z

    .line 33
    move-result v6

    .line 36
    if-nez v6, :cond_3

    .line 37
    if-eqz v0, :cond_5

    .line 39
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpandedWhenExpandingStarted:Z

    .line 41
    if-eqz v0, :cond_5

    .line 43
    :cond_3
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMaxExpansionHeight:I

    .line 45
    if-eqz v3, :cond_4

    .line 47
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 49
    move-result v0

    .line 52
    :cond_4
    iget p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMinExpansionHeight:I

    .line 53
    int-to-float p0, p0

    .line 55
    int-to-float v0, v0

    .line 56
    invoke-static {p0, v0, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 57
    move-result p0

    .line 60
    float-to-int p0, p0

    .line 61
    goto :goto_1

    .line 62
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    .line 63
    if-eqz v0, :cond_6

    .line 65
    move v4, v5

    .line 67
    :cond_6
    if-eqz v4, :cond_7

    .line 68
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 70
    move-result-object p0

    .line 73
    check-cast p0, Ljava/lang/Integer;

    .line 74
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 76
    move-result p0

    .line 79
    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    .line 80
    move-result p0

    .line 83
    :goto_1
    int-to-float p0, p0

    .line 84
    goto :goto_2

    .line 85
    :cond_7
    if-eqz v3, :cond_8

    .line 86
    int-to-float v0, v1

    .line 88
    iget v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMaxExpansionHeight:I

    .line 89
    int-to-float v1, v1

    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->computeExpansionFraction()F

    .line 92
    move-result p0

    .line 95
    invoke-static {v0, v1, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 96
    move-result p0

    .line 99
    goto :goto_2

    .line 100
    :cond_8
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeight:F

    .line 101
    iget-object v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQsFrameTranslateController:Lcom/android/systemui/statusbar/QsFrameTranslateImpl;

    .line 103
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    iget p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQuickQsHeaderHeight:F

    .line 108
    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    .line 110
    move-result p0

    .line 113
    :goto_2
    return p0
    .line 114
.end method

.method public final canBeCollapsed()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTracking:Z

    .line 8
    if-nez v0, :cond_0

    .line 10
    iget-boolean p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mClosing:Z

    .line 12
    if-nez p0, :cond_0

    .line 14
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
    .line 19
.end method

.method public canCollapsePanelOnTouch()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 2
    iget-boolean v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 4
    const/4 v2, 0x1

    .line 6
    if-nez v1, :cond_0

    .line 7
    iget v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 9
    if-ne v1, v2, :cond_0

    .line 11
    return v2

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 14
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 16
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrollAdapter:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;

    .line 18
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 20
    iget v3, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 22
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange()I

    .line 24
    move-result v1

    .line 27
    const/4 v4, 0x0

    .line 28
    if-lt v3, v1, :cond_1

    .line 29
    move v1, v2

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move v1, v4

    .line 33
    :goto_0
    if-eqz v1, :cond_2

    .line 34
    return v2

    .line 36
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSplitShadeEnabled:Z

    .line 37
    if-nez v1, :cond_3

    .line 39
    iget-boolean v0, v0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 41
    if-nez v0, :cond_4

    .line 43
    iget-boolean p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsPanelCollapseOnQQS:Z

    .line 45
    if-eqz p0, :cond_3

    .line 47
    goto :goto_1

    .line 49
    :cond_3
    move v2, v4

    .line 50
    :cond_4
    :goto_1
    return v2
    .line 51
.end method

.method public cancelHeightAnimator()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelUpdateWhenAnimatorEnds:Z

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 17
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->endClosing()V

    .line 20
    return-void
    .line 23
.end method

.method public abstract collapse(FZ)V
.end method

.method public final collapse(FZZ)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result p2

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p0, p1, p3}, Lcom/android/systemui/shade/NotificationPanelViewController;->collapse(FZ)V

    const/4 p1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->resetViews(Z)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->setExpandedFraction(F)V

    move p1, v0

    :goto_0
    if-nez p1, :cond_1

    .line 5
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    iget p1, p0, Lcom/android/systemui/shade/ShadeExpansionStateManager;->state:I

    .line 6
    invoke-static {p1}, Lcom/android/systemui/shade/ShadeExpansionStateManagerKt;->panelStateToString(I)Ljava/lang/String;

    invoke-static {v0}, Lcom/android/systemui/shade/ShadeExpansionStateManagerKt;->panelStateToString(I)Ljava/lang/String;

    .line 7
    iget p1, p0, Lcom/android/systemui/shade/ShadeExpansionStateManager;->state:I

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->updateStateInternal(I)V

    :cond_1
    return-void
.end method

.method public computeMaxKeyguardNotifications()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 2
    iget v0, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mFractionToShade:F

    .line 4
    const/4 v1, 0x0

    .line 6
    cmpl-float v0, v0, v1

    .line 7
    if-lez v0, :cond_0

    .line 9
    iget p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMaxAllowedKeyguardNotifications:I

    .line 11
    return p0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 14
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->getVerticalSpaceForLockscreenNotifications()F

    .line 18
    move-result v1

    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->getVerticalSpaceForLockscreenShelf()F

    .line 22
    move-result v2

    .line 25
    sget-object v3, Lcom/android/systemui/flags/Flags;->NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 26
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 28
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationShelfController:Lcom/android/systemui/statusbar/NotificationShelfController;

    .line 33
    invoke-interface {v3}, Lcom/android/systemui/statusbar/NotificationShelfController;->getIntrinsicHeight()I

    .line 35
    move-result v3

    .line 38
    int-to-float v3, v3

    .line 39
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackSizeCalculator:Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;

    .line 40
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->computeMaxKeyguardNotifications(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;FFF)I

    .line 42
    move-result p0

    .line 45
    return p0
    .line 46
.end method

.method public final createHeightAnimator(FF)Landroid/animation/ValueAnimator;
    .locals 8

    .line 1
    iget v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOverExpansion:F

    .line 2
    const/4 v0, 0x2

    .line 4
    new-array v0, v0, [F

    .line 5
    const/4 v1, 0x0

    .line 7
    iget v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    .line 8
    aput v2, v0, v1

    .line 10
    const/4 v1, 0x1

    .line 12
    aput p1, v0, v1

    .line 13
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 15
    move-result-object v6

    .line 18
    new-instance v7, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;

    .line 19
    move-object v0, v7

    .line 21
    move v1, p2

    .line 22
    move v2, p1

    .line 23
    move-object v4, v6

    .line 24
    move-object v5, p0

    .line 25
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;-><init>(FFFLandroid/animation/ValueAnimator;Lcom/android/systemui/shade/NotificationPanelViewController;)V

    .line 26
    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 29
    return-object v6
    .line 32
.end method

.method public final determineAccessibilityPaneTitle()Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mResources:Landroid/content/res/Resources;

    .line 3
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 5
    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v2}, Lcom/android/systemui/shade/QuickSettingsController;->isQsFragmentCreated()Z

    .line 9
    move-result v3

    .line 12
    if-eqz v3, :cond_0

    .line 13
    iget-object v3, v2, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 15
    invoke-interface {v3}, Lcom/android/systemui/plugins/qs/QS;->isCustomizing()Z

    .line 17
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    move v3, v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v3, 0x0

    .line 25
    :goto_0
    if-eqz v3, :cond_1

    .line 26
    const p0, 0x7f13006f    # @string/accessibility_desc_quick_settings_edit 'Quick settings editor.'

    .line 28
    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :cond_1
    if-eqz v2, :cond_3

    .line 36
    iget v3, v2, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeight:F

    .line 38
    const/4 v4, 0x0

    .line 40
    cmpl-float v3, v3, v4

    .line 41
    if-eqz v3, :cond_3

    .line 43
    iget-boolean v2, v2, Lcom/android/systemui/shade/QuickSettingsController;->mFullyExpanded:Z

    .line 45
    if-eqz v2, :cond_3

    .line 47
    iget-boolean p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSplitShadeEnabled:Z

    .line 49
    if-eqz p0, :cond_2

    .line 51
    const p0, 0x7f13006d    # @string/accessibility_desc_qs_notification_shade 'Quick settings and Notification shade.'

    .line 53
    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 56
    move-result-object p0

    .line 59
    return-object p0

    .line 60
    :cond_2
    const p0, 0x7f13006e    # @string/accessibility_desc_quick_settings 'Quick settings.'

    .line 61
    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    :cond_3
    iget p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 69
    if-ne p0, v0, :cond_4

    .line 71
    const p0, 0x7f13006a    # @string/accessibility_desc_lock_screen 'Lock screen.'

    .line 73
    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 76
    move-result-object p0

    .line 79
    return-object p0

    .line 80
    :cond_4
    const p0, 0x7f13006c    # @string/accessibility_desc_notification_shade 'Notification shade.'

    .line 81
    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 84
    move-result-object p0

    .line 87
    return-object p0
    .line 88
.end method

.method public final endClosing()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mClosing:Z

    .line 2
    if-eqz v0, :cond_1

    .line 4
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->setClosing(Z)V

    .line 7
    check-cast p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 10
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOpenCloseListener:Lcom/android/systemui/shade/ShadeControllerImpl$2;

    .line 12
    iget-object v1, v1, Lcom/android/systemui/shade/ShadeControllerImpl$2;->this$0:Lcom/android/systemui/shade/ShadeControllerImpl;

    .line 14
    invoke-virtual {v1}, Lcom/android/systemui/shade/ShadeControllerImpl;->onClosingFinished()V

    .line 16
    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mClosingWithAlphaFadeOut:Z

    .line 19
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 21
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 23
    iput-boolean v0, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForceNoOverlappingRendering:Z

    .line 25
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMediaHierarchyManager:Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;

    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    sget-object v2, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->TRANSFORM_BEZIER:Landroid/view/animation/PathInterpolator;

    .line 32
    iget-object v1, v1, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/controls/ui/MediaCarouselController;

    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    sget-object v1, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/MediaPlayerData;

    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    invoke-static {}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->players()Ljava/util/Collection;

    .line 44
    move-result-object v1

    .line 47
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 48
    move-result-object v1

    .line 51
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    move-result v2

    .line 55
    if-eqz v2, :cond_0

    .line 56
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object v2

    .line 61
    check-cast v2, Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    .line 62
    const/4 v3, 0x1

    .line 64
    invoke-virtual {v2, v3}, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->closeGuts(Z)V

    .line 65
    goto :goto_0

    .line 68
    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mStretchingFromHeadsUp:Z

    .line 69
    iget-object v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 71
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getAmbientState()Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 73
    move-result-object v1

    .line 76
    iput-boolean v0, v1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->panelStretchingFromHeadsUp:Z

    .line 77
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->ncSwitchController:Lcom/android/systemui/controlcenter/policy/NCSwitchController;

    .line 79
    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0, v0}, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->requestNCSwitchingEnd(Ljava/lang/Boolean;)V

    .line 82
    :cond_1
    return-void
    .line 85
.end method

.method public expand(Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isCollapsing()Z

    .line 9
    move-result v0

    .line 12
    if-eqz v0, :cond_3

    .line 13
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInstantExpanding:Z

    .line 15
    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAnimateAfterExpanding:Z

    .line 17
    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUpdateFlingOnLayout:Z

    .line 20
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->cancelHeightAnimator()V

    .line 22
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFlingCollapseRunnable:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda0;

    .line 25
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 27
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 29
    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTracking:Z

    .line 32
    if-eqz p1, :cond_1

    .line 34
    invoke-virtual {p0, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->onTrackingStopped(Z)V

    .line 36
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpanding:Z

    .line 39
    if-eqz p1, :cond_2

    .line 41
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->notifyExpandingFinished()V

    .line 43
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateExpansionAndVisibility()V

    .line 46
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 49
    move-result-object p1

    .line 52
    new-instance v2, Lcom/android/systemui/shade/NotificationPanelViewController$7;

    .line 53
    move-object v3, p0

    .line 55
    check-cast v3, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 56
    invoke-direct {v2, v3}, Lcom/android/systemui/shade/NotificationPanelViewController$7;-><init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;)V

    .line 58
    invoke-virtual {p1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 61
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 64
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->setListening(Z)V

    .line 67
    return-void
    .line 70
.end method

.method public final expandToQs()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/shade/QuickSettingsController;->isExpansionEnabled()Z

    .line 4
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v0, v2}, Lcom/android/systemui/shade/QuickSettingsController;->setExpandImmediate(Z)V

    .line 11
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSplitShadeEnabled:Z

    .line 19
    const/4 v3, 0x0

    .line 21
    if-eqz v1, :cond_1

    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isOnKeyguard()Z

    .line 24
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    .line 30
    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->goToLockedShade(Landroid/view/View;Z)V

    .line 32
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 36
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    invoke-virtual {p0, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->expand(Z)V

    .line 42
    goto :goto_0

    .line 45
    :cond_2
    const/4 p0, 0x0

    .line 46
    invoke-virtual {v0, v2, p0}, Lcom/android/systemui/shade/QuickSettingsController;->traceQsJank(ZZ)V

    .line 47
    const/4 v1, 0x0

    .line 50
    invoke-virtual {v0, v1, p0, v3, p0}, Lcom/android/systemui/shade/QuickSettingsController;->flingQs(FILcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda3;Z)V

    .line 51
    :goto_0
    return-void
    .line 54
.end method

.method public abstract fling(FFZZ)V
.end method

.method public flingToHeight(FZFFZ)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p2

    .line 4
    move/from16 v4, p3

    .line 6
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 8
    iput-boolean v1, v2, Lcom/android/systemui/shade/QuickSettingsController;->mLastShadeFlingWasExpanding:Z

    .line 10
    iget-object v2, v2, Lcom/android/systemui/shade/QuickSettingsController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    sget-object v3, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 17
    sget-object v5, Lcom/android/systemui/shade/ShadeLogger$logLastFlingWasExpanding$2;->INSTANCE:Lcom/android/systemui/shade/ShadeLogger$logLastFlingWasExpanding$2;

    .line 19
    const/4 v6, 0x0

    .line 21
    iget-object v2, v2, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 22
    const-string/jumbo v7, "systemui.shade"

    .line 24
    invoke-virtual {v2, v7, v3, v5, v6}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 27
    move-result-object v3

    .line 30
    invoke-interface {v3, v1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 31
    invoke-virtual {v2, v3}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 34
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    .line 37
    xor-int/lit8 v3, v1, 0x1

    .line 39
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->notifyFling(Z)V

    .line 41
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 44
    iput-boolean v3, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mFlingingToDismissKeyguard:Z

    .line 46
    const/4 v5, 0x0

    .line 48
    const/4 v6, 0x1

    .line 49
    if-eqz v3, :cond_0

    .line 50
    iget-boolean v7, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mDismissingFromTouch:Z

    .line 52
    if-eqz v7, :cond_0

    .line 54
    move v7, v6

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    move v7, v5

    .line 58
    :goto_0
    iput-boolean v7, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mFlingingToDismissKeyguardDuringSwipeGesture:Z

    .line 59
    xor-int/2addr v3, v6

    .line 61
    iput-boolean v3, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSnappingKeyguardBackAfterSwipe:Z

    .line 62
    const/high16 v3, 0x3f800000    # 1.0f

    .line 64
    if-nez v1, :cond_1

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isOnKeyguard()Z

    .line 68
    move-result v7

    .line 71
    if-nez v7, :cond_1

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->getFadeoutAlpha()F

    .line 74
    move-result v7

    .line 77
    cmpl-float v7, v7, v3

    .line 78
    if-nez v7, :cond_1

    .line 80
    move v7, v6

    .line 82
    goto :goto_1

    .line 83
    :cond_1
    move v7, v5

    .line 84
    :goto_1
    iput-boolean v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mClosingWithAlphaFadeOut:Z

    .line 85
    iget-object v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 87
    iget-object v8, v8, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 89
    iput-boolean v7, v8, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForceNoOverlappingRendering:Z

    .line 91
    invoke-virtual {v8, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setPanelFlinging(Z)V

    .line 93
    iget v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    .line 96
    cmpl-float v7, v4, v7

    .line 98
    const/4 v8, 0x0

    .line 100
    if-nez v7, :cond_2

    .line 101
    iget v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOverExpansion:F

    .line 103
    cmpl-float v7, v7, v8

    .line 105
    if-nez v7, :cond_2

    .line 107
    invoke-virtual {v0, v5}, Lcom/android/systemui/shade/NotificationPanelViewController;->onFlingEnd(Z)V

    .line 109
    return-void

    .line 112
    :cond_2
    iput-boolean v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsFlinging:Z

    .line 113
    if-eqz v1, :cond_3

    .line 115
    iget-object v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 117
    check-cast v7, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 119
    iget v7, v7, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 121
    if-eq v7, v6, :cond_3

    .line 123
    iget v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOverExpansion:F

    .line 125
    cmpl-float v7, v7, v8

    .line 127
    if-nez v7, :cond_3

    .line 129
    cmpl-float v7, p1, v8

    .line 131
    if-ltz v7, :cond_3

    .line 133
    move v7, v6

    .line 135
    goto :goto_2

    .line 136
    :cond_3
    move v7, v5

    .line 137
    :goto_2
    if-nez v7, :cond_5

    .line 138
    iget v9, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOverExpansion:F

    .line 140
    cmpl-float v9, v9, v8

    .line 142
    if-eqz v9, :cond_4

    .line 144
    if-eqz v1, :cond_4

    .line 146
    goto :goto_3

    .line 148
    :cond_4
    move v9, v5

    .line 149
    goto :goto_4

    .line 150
    :cond_5
    :goto_3
    move v9, v6

    .line 151
    :goto_4
    if-eqz v7, :cond_6

    .line 152
    iget-object v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    .line 154
    iget v7, v7, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mHighVelocityPxPerSecond:F

    .line 156
    const/high16 v10, 0x3f000000    # 0.5f

    .line 158
    mul-float/2addr v7, v10

    .line 160
    div-float v7, p1, v7

    .line 161
    invoke-static {v7}, Landroid/util/MathUtils;->saturate(F)F

    .line 163
    move-result v7

    .line 166
    const v10, 0x3e4ccccd    # 0.2f

    .line 167
    invoke-static {v10, v3, v7}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 170
    move-result v3

    .line 173
    iget v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOverExpansion:F

    .line 174
    iget v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelFlingOvershootAmount:F

    .line 176
    div-float/2addr v7, v10

    .line 178
    add-float/2addr v7, v3

    .line 179
    goto :goto_5

    .line 180
    :cond_6
    move v7, v8

    .line 181
    :goto_5
    invoke-virtual {v0, v4, v7}, Lcom/android/systemui/shade/NotificationPanelViewController;->createHeightAnimator(FF)Landroid/animation/ValueAnimator;

    .line 182
    move-result-object v3

    .line 185
    iget-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 186
    if-eqz v1, :cond_9

    .line 188
    invoke-virtual {v0, v6}, Lcom/android/systemui/shade/NotificationPanelViewController;->maybeVibrateOnOpening(Z)V

    .line 190
    if-eqz p5, :cond_7

    .line 193
    cmpg-float v1, p1, v8

    .line 195
    if-gez v1, :cond_7

    .line 197
    move v1, v8

    .line 199
    goto :goto_6

    .line 200
    :cond_7
    move/from16 v1, p1

    .line 201
    :goto_6
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    .line 203
    iget v12, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    .line 205
    iget v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelFlingOvershootAmount:F

    .line 207
    mul-float/2addr v7, v5

    .line 209
    add-float v13, v7, v4

    .line 210
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getHeight()I

    .line 212
    move-result v4

    .line 215
    int-to-float v15, v4

    .line 216
    move-object v10, v2

    .line 217
    move-object v11, v3

    .line 218
    move v14, v1

    .line 219
    invoke-virtual/range {v10 .. v15}, Lcom/android/wm/shell/animation/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    .line 220
    cmpl-float v1, v1, v8

    .line 223
    if-nez v1, :cond_8

    .line 225
    const-wide/16 v1, 0x15e

    .line 227
    invoke-virtual {v3, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 229
    :cond_8
    move-object v7, v3

    .line 232
    goto/16 :goto_8

    .line 233
    :cond_9
    iput-boolean v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHasVibratedOnOpen:Z

    .line 235
    iget v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 237
    if-eqz v1, :cond_b

    .line 239
    iget-boolean v1, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    .line 241
    if-nez v1, :cond_a

    .line 243
    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTracking:Z

    .line 245
    if-nez v1, :cond_b

    .line 247
    :cond_a
    move v5, v6

    .line 249
    :cond_b
    if-eqz v5, :cond_d

    .line 250
    cmpl-float v1, p1, v8

    .line 252
    if-nez v1, :cond_c

    .line 254
    sget-object v1, Lcom/android/app/animation/Interpolators;->PANEL_CLOSE_ACCELERATED:Landroid/view/animation/Interpolator;

    .line 256
    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 258
    iget v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    .line 261
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getHeight()I

    .line 263
    move-result v2

    .line 266
    int-to-float v2, v2

    .line 267
    const/high16 v4, 0x42c80000    # 100.0f

    .line 268
    const/high16 v5, 0x43480000    # 200.0f

    .line 270
    invoke-static {v1, v2, v4, v5}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 272
    move-result v1

    .line 275
    float-to-long v1, v1

    .line 276
    invoke-virtual {v3, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 277
    move-object v7, v3

    .line 280
    goto :goto_7

    .line 281
    :cond_c
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFlingAnimationUtilsDismissing:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    .line 282
    iget v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    .line 284
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getHeight()I

    .line 286
    move-result v2

    .line 289
    int-to-float v6, v2

    .line 290
    move-object v2, v3

    .line 291
    move-object v7, v3

    .line 292
    move v3, v5

    .line 293
    move/from16 v4, p3

    .line 294
    move/from16 v5, p1

    .line 296
    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/animation/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    .line 298
    goto :goto_7

    .line 301
    :cond_d
    move-object v7, v3

    .line 302
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFlingAnimationUtilsClosing:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    .line 303
    iget v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    .line 305
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getHeight()I

    .line 307
    move-result v2

    .line 310
    int-to-float v6, v2

    .line 311
    move-object v2, v7

    .line 312
    move/from16 v4, p3

    .line 313
    move/from16 v5, p1

    .line 315
    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/animation/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    .line 317
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isOnKeyguard()Z

    .line 320
    move-result v1

    .line 323
    if-eqz v1, :cond_e

    .line 324
    const-wide/16 v1, 0x64

    .line 326
    invoke-virtual {v7, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 328
    :cond_e
    :goto_7
    cmpl-float v1, p1, v8

    .line 331
    if-nez v1, :cond_f

    .line 333
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getDuration()J

    .line 335
    move-result-wide v1

    .line 338
    long-to-float v1, v1

    .line 339
    div-float v1, v1, p4

    .line 340
    float-to-long v1, v1

    .line 342
    invoke-virtual {v7, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 343
    :cond_f
    iget v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFixedDuration:I

    .line 346
    const/4 v2, -0x1

    .line 348
    if-eq v1, v2, :cond_10

    .line 349
    int-to-long v1, v1

    .line 351
    invoke-virtual {v7, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 352
    :cond_10
    new-instance v1, Lcom/android/systemui/shade/NotificationPanelViewController$5;

    .line 355
    invoke-direct {v1, v0}, Lcom/android/systemui/shade/NotificationPanelViewController$5;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    .line 357
    invoke-virtual {v7, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 360
    :goto_8
    new-instance v1, Lcom/android/systemui/shade/NotificationPanelViewController$6;

    .line 363
    invoke-direct {v1, v0, v9}, Lcom/android/systemui/shade/NotificationPanelViewController$6;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;Z)V

    .line 365
    invoke-virtual {v7, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 368
    invoke-virtual {v0, v7}, Lcom/android/systemui/shade/NotificationPanelViewController;->setAnimator(Landroid/animation/ValueAnimator;)V

    .line 371
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isKeyguardShowing()Z

    .line 374
    move-result v0

    .line 377
    if-nez v0, :cond_11

    .line 378
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getDuration()J

    .line 380
    move-result-wide v0

    .line 383
    const-wide/16 v2, 0xc8

    .line 384
    add-long/2addr v0, v2

    .line 386
    invoke-virtual {v7, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 387
    :cond_11
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 390
    return-void
.end method

.method public final getFadeoutAlpha()F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 2
    iget v0, v0, Lcom/android/systemui/shade/QuickSettingsController;->mMinExpansionHeight:I

    .line 4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 10
    :cond_0
    iget p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    .line 11
    int-to-float v0, v0

    .line 13
    div-float/2addr p0, v0

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    .line 16
    move-result p0

    .line 19
    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    .line 20
    move-result p0

    .line 23
    float-to-double v0, p0

    .line 24
    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    .line 25
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 27
    move-result-wide v0

    .line 30
    double-to-float p0, v0

    .line 31
    return p0
    .line 32
.end method

.method public final getKeyguardNotificationStaticPadding()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isKeyguardShowing()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 10
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 12
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    .line 16
    if-nez v0, :cond_1

    .line 18
    iget p0, v1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    .line 20
    return p0

    .line 22
    :cond_1
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpInset:I

    .line 23
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 25
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 27
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 29
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPulseExpanding()Z

    .line 31
    move-result v2

    .line 34
    if-nez v2, :cond_2

    .line 35
    return v0

    .line 37
    :cond_2
    iget v1, v1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    .line 38
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 40
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getPulseHeight()F

    .line 42
    move-result v2

    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getIntrinsicPadding()I

    .line 46
    move-result p0

    .line 49
    int-to-float p0, p0

    .line 50
    const/4 v3, 0x0

    .line 51
    invoke-static {v3, p0, v2}, Landroid/util/MathUtils;->smoothStep(FFF)F

    .line 52
    move-result p0

    .line 55
    invoke-static {v0, v1, p0}, Landroid/util/MathUtils;->lerp(IIF)F

    .line 56
    move-result p0

    .line 59
    float-to-int p0, p0

    .line 60
    return p0
    .line 61
.end method

.method public abstract getLockIconPadding()F
.end method

.method public final getMaxPanelHeight()I
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarMinHeight:I

    .line 2
    iget v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 4
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 6
    const/4 v3, 0x1

    .line 8
    iget-object v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 9
    if-eq v1, v3, :cond_0

    .line 11
    iget-object v1, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 13
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    .line 15
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    iget v1, v4, Lcom/android/systemui/shade/QuickSettingsController;->mMinExpansionHeight:I

    .line 21
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 23
    move-result v0

    .line 26
    :cond_0
    invoke-virtual {v4}, Lcom/android/systemui/shade/QuickSettingsController;->isExpandImmediate()Z

    .line 27
    move-result v1

    .line 30
    iget-object v5, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 31
    iget-object v6, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    .line 33
    if-nez v1, :cond_3

    .line 35
    iget-boolean v1, v4, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 37
    if-nez v1, :cond_3

    .line 39
    iget-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsExpandingOrCollapsing:Z

    .line 41
    if-eqz v1, :cond_1

    .line 43
    iget-boolean v1, v4, Lcom/android/systemui/shade/QuickSettingsController;->mExpandedWhenExpandingStarted:Z

    .line 45
    if-nez v1, :cond_3

    .line 47
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPulsing:Z

    .line 49
    if-nez v1, :cond_3

    .line 51
    iget-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSplitShadeEnabled:Z

    .line 53
    if-eqz v1, :cond_2

    .line 55
    goto :goto_0

    .line 57
    :cond_2
    iget-object v1, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 58
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getEmptyBottomMargin()I

    .line 60
    move-result v1

    .line 63
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getHeight()I

    .line 64
    move-result v7

    .line 67
    sub-int/2addr v7, v1

    .line 68
    iget v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 69
    if-ne v1, v3, :cond_4

    .line 71
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    .line 73
    move-result v7

    .line 76
    goto :goto_1

    .line 77
    :cond_3
    :goto_0
    iget v1, v6, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    .line 78
    invoke-virtual {v4, v1}, Lcom/android/systemui/shade/QuickSettingsController;->calculatePanelHeightExpanded(I)I

    .line 80
    move-result v7

    .line 83
    :cond_4
    :goto_1
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    .line 84
    move-result v0

    .line 87
    if-nez v0, :cond_6

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    .line 90
    const-string v7, "maxPanelHeight is invalid. mOverExpansion: "

    .line 92
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    iget v7, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOverExpansion:F

    .line 97
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 99
    const-string v7, ", calculatePanelHeightQsExpanded: "

    .line 102
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget v6, v6, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    .line 107
    invoke-virtual {v4, v6}, Lcom/android/systemui/shade/QuickSettingsController;->calculatePanelHeightExpanded(I)I

    .line 109
    move-result v6

    .line 112
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    const-string v6, ", calculatePanelHeightShade: "

    .line 116
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-object v6, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 121
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getEmptyBottomMargin()I

    .line 123
    move-result v6

    .line 126
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getHeight()I

    .line 127
    move-result v2

    .line 130
    sub-int/2addr v2, v6

    .line 131
    iget v6, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 132
    if-ne v6, v3, :cond_5

    .line 134
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    .line 136
    move-result v2

    .line 139
    :cond_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    const-string v2, ", mStatusBarMinHeight = "

    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarMinHeight:I

    .line 148
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    const-string p0, ", mQsMinExpansionHeight = "

    .line 153
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget p0, v4, Lcom/android/systemui/shade/QuickSettingsController;->mMinExpansionHeight:I

    .line 158
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    move-result-object p0

    .line 166
    const-string v1, "NotificationPanelView"

    .line 167
    invoke-static {v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_6
    return v0
    .line 172
.end method

.method public getMaxPanelTransitionDistance()I
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSplitShadeEnabled:Z

    .line 2
    if-eqz v0, :cond_4

    .line 4
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 6
    if-nez v0, :cond_4

    .line 8
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 10
    if-eqz v0, :cond_0

    .line 12
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mTrackingHeadsUp:Z

    .line 14
    if-nez v0, :cond_1

    .line 16
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandingFromHeadsUp:Z

    .line 18
    if-eqz v0, :cond_2

    .line 20
    :cond_1
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_2
    const/4 v0, 0x0

    .line 24
    :goto_0
    if-eqz v0, :cond_3

    .line 25
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSplitShadeFullTransitionDistance:I

    .line 27
    int-to-double v0, v0

    .line 29
    iget v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpStartHeight:I

    .line 30
    int-to-double v2, v2

    .line 32
    const-wide/high16 v4, 0x4004000000000000L    # 2.5

    .line 33
    mul-double/2addr v2, v4

    .line 35
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    .line 36
    move-result-wide v0

    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->getMaxPanelHeight()I

    .line 40
    move-result p0

    .line 43
    int-to-double v2, p0

    .line 44
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    .line 45
    move-result-wide v0

    .line 48
    double-to-int p0, v0

    .line 49
    return p0

    .line 50
    :cond_3
    iget p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSplitShadeFullTransitionDistance:I

    .line 51
    return p0

    .line 53
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->getMaxPanelHeight()I

    .line 54
    move-result p0

    .line 57
    return p0
    .line 58
.end method

.method getStatusBarStateController()Lcom/android/systemui/plugins/statusbar/StatusBarStateController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 2
    return-object p0
    .line 4
.end method

.method public getStatusBarStateListener()Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateListener:Lcom/android/systemui/shade/NotificationPanelViewController$StatusBarStateListener;

    .line 2
    return-object p0
    .line 4
.end method

.method public getTouchHandler()Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;

    .line 2
    invoke-direct {v0, p0}, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    .line 4
    return-object v0
    .line 7
.end method

.method public getVerticalSpaceForLockscreenNotifications()F
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->getLockIconPadding()F

    .line 2
    move-result v0

    .line 5
    iget v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIndicationBottomPadding:I

    .line 6
    const/4 v2, 0x0

    .line 8
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 9
    move-result v1

    .line 12
    int-to-float v1, v1

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 14
    move-result v0

    .line 17
    iput v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardNotificationBottomPadding:F

    .line 18
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 20
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 22
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    .line 24
    move-result v2

    .line 27
    int-to-float v2, v2

    .line 28
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mClockPositionAlgorithm:Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;

    .line 29
    iget-boolean v4, v3, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mBypassEnabled:Z

    .line 31
    if-eqz v4, :cond_0

    .line 33
    iget v3, v3, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mUnlockedStackScrollerPadding:I

    .line 35
    int-to-float v3, v3

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-boolean v4, v3, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mIsSplitShade:Z

    .line 39
    if-eqz v4, :cond_1

    .line 41
    iget v4, v3, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mSplitShadeTargetTopMargin:I

    .line 43
    iget v3, v3, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mUserSwitchHeight:I

    .line 45
    add-int/2addr v4, v3

    .line 47
    int-to-float v3, v4

    .line 48
    :goto_0
    sub-float/2addr v3, v2

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    iget v3, v3, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mClockBottom:F

    .line 51
    :goto_1
    iput v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardNotificationTopPadding:F

    .line 53
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getHeight()I

    .line 55
    move-result p0

    .line 58
    int-to-float p0, p0

    .line 59
    sub-float/2addr p0, v3

    .line 60
    sub-float/2addr p0, v0

    .line 61
    return p0
    .line 62
.end method

.method public getVerticalSpaceForLockscreenShelf()F
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->getLockIconPadding()F

    .line 2
    move-result v0

    .line 5
    iget v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIndicationBottomPadding:I

    .line 6
    const/4 v2, 0x0

    .line 8
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 9
    move-result v1

    .line 12
    int-to-float v1, v1

    .line 13
    sub-float/2addr v0, v1

    .line 14
    const/4 v1, 0x0

    .line 15
    cmpl-float v2, v0, v1

    .line 16
    if-lez v2, :cond_0

    .line 18
    sget-object v1, Lcom/android/systemui/flags/Flags;->NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 20
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationShelfController:Lcom/android/systemui/statusbar/NotificationShelfController;

    .line 27
    invoke-interface {p0}, Lcom/android/systemui/statusbar/NotificationShelfController;->getIntrinsicHeight()I

    .line 29
    move-result p0

    .line 32
    int-to-float p0, p0

    .line 33
    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    .line 34
    move-result p0

    .line 37
    return p0

    .line 38
    :cond_0
    return v1
    .line 39
.end method

.method public final hasVisibleNotifications()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotifStats:Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;

    .line 4
    iget v0, v0, Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;->numActiveNotifs:I

    .line 6
    if-nez v0, :cond_1

    .line 8
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMediaDataManager:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->hasActiveMediaOrRecommendation()Z

    .line 12
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    return p0
    .line 22
.end method

.method isClosing()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mClosing:Z

    .line 2
    return p0
    .line 4
.end method

.method public final isCollapsing()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mClosing:Z

    .line 2
    if-nez v0, :cond_1

    .line 4
    iget-boolean p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsLaunchAnimationRunning:Z

    .line 6
    if-eqz p0, :cond_0

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

.method public final isExpanded()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    .line 2
    const/4 v1, 0x0

    .line 4
    cmpl-float v0, v0, v1

    .line 5
    const/4 v1, 0x1

    .line 7
    if-gtz v0, :cond_3

    .line 8
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInstantExpanding:Z

    .line 10
    if-nez v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 14
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHasPinnedNotification:Z

    .line 16
    const/4 v2, 0x0

    .line 18
    if-nez v0, :cond_0

    .line 19
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpAnimatingAway:Z

    .line 21
    if-eqz v0, :cond_1

    .line 23
    :cond_0
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 25
    if-nez v0, :cond_1

    .line 27
    move v0, v1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move v0, v2

    .line 31
    :goto_0
    if-nez v0, :cond_3

    .line 32
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTracking:Z

    .line 34
    if-nez v0, :cond_3

    .line 36
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    .line 38
    if-nez v0, :cond_3

    .line 40
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    .line 42
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->isAnimationPlaying()Z

    .line 44
    move-result v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    iget-boolean p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsSpringBackAnimation:Z

    .line 50
    if-nez p0, :cond_2

    .line 52
    goto :goto_1

    .line 54
    :cond_2
    move v1, v2

    .line 55
    :cond_3
    :goto_1
    return v1
    .line 56
.end method

.method public final isExpandingOrCollapsing()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/shade/QuickSettingsController;->getLockscreenShadeDragProgress()F

    .line 4
    move-result v0

    .line 7
    iget-boolean p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsExpandingOrCollapsing:Z

    .line 8
    if-nez p0, :cond_1

    .line 10
    const/4 p0, 0x0

    .line 12
    cmpg-float p0, p0, v0

    .line 13
    if-gez p0, :cond_0

    .line 15
    const/high16 p0, 0x3f800000    # 1.0f

    .line 17
    cmpg-float p0, v0, p0

    .line 19
    if-gez p0, :cond_0

    .line 21
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 26
    :goto_1
    return p0
    .line 27
.end method

.method public abstract isFalseTouch(FFI)Z
.end method

.method public isFlinging()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsFlinging:Z

    .line 2
    return p0
    .line 4
.end method

.method public final isFullyCollapsed()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    .line 2
    const/4 v0, 0x0

    .line 4
    cmpg-float p0, p0, v0

    .line 5
    if-gtz p0, :cond_0

    .line 7
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
    .line 12
.end method

.method public final isFullyExpanded()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->getMaxPanelTransitionDistance()I

    .line 4
    move-result p0

    .line 7
    int-to-float p0, p0

    .line 8
    cmpl-float p0, v0, p0

    .line 9
    if-ltz p0, :cond_0

    .line 11
    const/4 p0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return p0
    .line 16
.end method

.method public isHintAnimationRunning()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHintAnimationRunning:Z

    .line 2
    return p0
    .line 4
.end method

.method public final isInContentBounds(FF)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getX()F

    .line 6
    move-result v0

    .line 9
    sub-float v1, p1, v0

    .line 10
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 12
    invoke-virtual {p0, v1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isBelowLastNotification(FF)Z

    .line 14
    move-result p2

    .line 17
    if-nez p2, :cond_0

    .line 18
    cmpg-float p2, v0, p1

    .line 20
    if-gez p2, :cond_0

    .line 22
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 24
    move-result p0

    .line 27
    int-to-float p0, p0

    .line 28
    add-float/2addr p0, v0

    .line 29
    cmpg-float p0, p1, p0

    .line 30
    if-gez p0, :cond_0

    .line 32
    const/4 p0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p0, 0x0

    .line 36
    :goto_0
    return p0
    .line 37
.end method

.method final isKeyguardShowing()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 2
    const/4 v0, 0x1

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
    .line 9
.end method

.method public final isOnKeyguard()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 2
    const/4 v0, 0x1

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
    .line 9
.end method

.method public final isShadeFullyExpanded()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyExpanded()Z

    .line 6
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 v1, 0x2

    .line 11
    const/4 v2, 0x1

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    return v2

    .line 15
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->computeExpansionFraction()F

    .line 18
    move-result p0

    .line 21
    const/high16 v0, 0x3f800000    # 1.0f

    .line 22
    cmpl-float p0, p0, v0

    .line 24
    if-nez p0, :cond_2

    .line 26
    goto :goto_0

    .line 28
    :cond_2
    const/4 v2, 0x0

    .line 29
    :goto_0
    return v2
    .line 30
.end method

.method public abstract isStatusBarExpandable()Z
.end method

.method loadDimens()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v1

    .line 7
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 8
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 12
    move-result v2

    .line 15
    iput v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchSlop:I

    .line 16
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledAmbiguousGestureMultiplier()F

    .line 18
    move-result v1

    .line 21
    iput v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSlopMultiplier:F

    .line 22
    const v1, 0x7f070404    # @dimen/hint_move_distance '75.0dp'

    .line 24
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mResources:Landroid/content/res/Resources;

    .line 27
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 29
    move-result v1

    .line 32
    iput v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHintDistance:F

    .line 33
    const v1, 0x7f070e5a    # @dimen/panel_overshoot_amount '16.0dp'

    .line 35
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 38
    move-result v1

    .line 41
    iput v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelFlingOvershootAmount:F

    .line 42
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFlingAnimationUtilsBuilder:Ljavax/inject/Provider;

    .line 44
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 46
    move-result-object v1

    .line 49
    check-cast v1, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;

    .line 50
    const v3, 0x3ecccccd    # 0.4f

    .line 52
    iput v3, v1, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->mMaxLengthSeconds:F

    .line 55
    invoke-virtual {v1}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->build()Lcom/android/wm/shell/animation/FlingAnimationUtils;

    .line 57
    move-result-object v1

    .line 60
    iput-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    .line 61
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 63
    move-result-object v1

    .line 66
    invoke-static {v1}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    .line 67
    move-result v1

    .line 70
    iput v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarMinHeight:I

    .line 71
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 73
    move-result-object v1

    .line 76
    invoke-static {v1}, Lcom/android/systemui/util/Utils;->getStatusBarHeaderHeightKeyguard(Landroid/content/Context;)I

    .line 77
    move-result v1

    .line 80
    iput v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarHeaderHeightKeyguard:I

    .line 81
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mClockPositionAlgorithm:Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;

    .line 83
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    const v3, 0x7f0704b2    # @dimen/keyguard_status_view_bottom_margin '20.0dp'

    .line 88
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 91
    move-result v3

    .line 94
    iput v3, v1, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mStatusViewBottomMargin:I

    .line 95
    const v3, 0x7f0704c6    # @dimen/large_screen_shade_header_height '48.0dp'

    .line 97
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 100
    const v3, 0x7f0704b1    # @dimen/keyguard_split_shade_top_margin '68.0dp'

    .line 103
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 106
    move-result v3

    .line 109
    iput v3, v1, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mSplitShadeTargetTopMargin:I

    .line 110
    const v3, 0x7f070466    # @dimen/keyguard_clock_top_margin '0.0dp'

    .line 112
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 115
    move-result v3

    .line 118
    iput v3, v1, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mContainerTopPadding:I

    .line 119
    const v3, 0x7f07017d    # @dimen/burn_in_prevention_offset_x '8.0dp'

    .line 121
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 124
    move-result v3

    .line 127
    iput v3, v1, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mMaxBurnInPreventionOffsetX:I

    .line 128
    const v3, 0x7f07017f    # @dimen/burn_in_prevention_offset_y_clock '42.0dp'

    .line 130
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 133
    move-result v3

    .line 136
    iput v3, v1, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mMaxBurnInPreventionOffsetYClock:I

    .line 137
    const v1, 0x7f070892    # @dimen/miui_keyguard_notification_stack_scroller_padding_top '80.0dp'

    .line 139
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 142
    const v1, 0x7f070480    # @dimen/keyguard_indication_bottom_padding '16.0sp'

    .line 145
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 148
    move-result v1

    .line 151
    iput v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIndicationBottomPadding:I

    .line 152
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 154
    move-result-object v0

    .line 157
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManagerInjector;->miuiHeadsUpInset(Landroid/content/Context;)I

    .line 158
    move-result v0

    .line 161
    iput v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpInset:I

    .line 162
    const v0, 0x7f070ec5    # @dimen/pulse_expansion_max_top_overshoot '32.0dp'

    .line 164
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 167
    move-result v0

    .line 170
    iput v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMaxOverscrollAmountForPulse:I

    .line 171
    const v0, 0x7f071220    # @dimen/udfps_burn_in_offset_y '20.0px'

    .line 173
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 176
    move-result v0

    .line 179
    int-to-float v0, v0

    .line 180
    iput v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUdfpsMaxYBurnInOffset:F

    .line 181
    const v0, 0x7f0710c5    # @dimen/split_shade_scrim_transition_distance '600.0dp'

    .line 183
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 186
    move-result v0

    .line 189
    iput v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSplitShadeScrimTransitionDistance:I

    .line 190
    const v0, 0x7f07032c    # @dimen/dreaming_to_lockscreen_transition_lockscreen_translation_y '40.0dp'

    .line 192
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 195
    move-result v0

    .line 198
    iput v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDreamingToLockscreenTransitionTranslationY:I

    .line 199
    const v0, 0x7f070e23    # @dimen/occluded_to_lockscreen_transition_lockscreen_translation_y '40.0dp'

    .line 201
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 204
    move-result v0

    .line 207
    iput v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOccludedToLockscreenTransitionTranslationY:I

    .line 208
    const v0, 0x7f07063e    # @dimen/lockscreen_to_dreaming_transition_lockscreen_translation_y '-40.0dp'

    .line 210
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 213
    move-result v0

    .line 216
    iput v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenToDreamingTransitionTranslationY:I

    .line 217
    const v0, 0x7f0703ae    # @dimen/gone_to_dreaming_transition_lockscreen_translation_y '-40.0dp'

    .line 219
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 222
    move-result v0

    .line 225
    iput v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mGoneToDreamingTransitionTranslationY:I

    .line 226
    const v0, 0x7f07063f    # @dimen/lockscreen_to_occluded_transition_lockscreen_translation_y '-40.0dp'

    .line 228
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 231
    move-result v0

    .line 234
    iput v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenToOccludedTransitionTranslationY:I

    .line 235
    const v0, 0x7f071223    # @dimen/unlock_falsing_threshold '80.0dp'

    .line 237
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 240
    move-result v0

    .line 243
    iput v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUnlockFalsingThreshold:I

    .line 244
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 246
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mPanelView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 248
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 250
    move-result-object v1

    .line 253
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 254
    move-result-object v1

    .line 257
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 258
    move-result v2

    .line 261
    iput v2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mTouchSlop:I

    .line 262
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledAmbiguousGestureMultiplier()F

    .line 264
    move-result v1

    .line 267
    iput v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mSlopMultiplier:F

    .line 268
    iget-object v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mResources:Landroid/content/res/Resources;

    .line 270
    const v2, 0x7f070fe0    # @dimen/qs_peek_height '0.0dp'

    .line 272
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 275
    move-result v2

    .line 278
    iput v2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mPeekHeight:I

    .line 279
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 281
    move-result-object v2

    .line 284
    invoke-static {v2}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    .line 285
    move-result v2

    .line 288
    iput v2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mStatusBarMinHeight:I

    .line 289
    const v2, 0x7f070deb    # @dimen/notification_scrim_corner_radius '32.0dp'

    .line 291
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 294
    move-result v2

    .line 297
    iput v2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mScrimCornerRadius:I

    .line 298
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 300
    move-result-object v0

    .line 303
    invoke-static {v0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/Context;)F

    .line 304
    move-result v0

    .line 307
    float-to-int v0, v0

    .line 308
    iput v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mScreenCornerRadius:I

    .line 309
    const v0, 0x7f070f90    # @dimen/qs_falsing_threshold '60.0dp'

    .line 311
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 314
    move-result v0

    .line 317
    iput v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mFalsingThreshold:I

    .line 318
    const v0, 0x7f070dfa    # @dimen/notification_side_paddings '14.0dp'

    .line 320
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 323
    move-result v0

    .line 326
    iput v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mLockscreenNotificationPadding:I

    .line 327
    const v0, 0x7f070639    # @dimen/lockscreen_shade_qs_transition_distance '@dimen/lockscreen_shade_full_transition_distance'

    .line 329
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 332
    move-result v0

    .line 335
    iput v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mDistanceForFullShadeTransition:I

    .line 336
    return-void
    .line 338
.end method

.method public final maybeVibrateOnOpening(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mVibrateOnOpening:Z

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 6
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    const/4 v2, 0x2

    .line 11
    if-eq v0, v2, :cond_1

    .line 12
    if-eqz p1, :cond_0

    .line 14
    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHasVibratedOnOpen:Z

    .line 16
    if-nez p1, :cond_1

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 20
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(I)V

    .line 22
    iput-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHasVibratedOnOpen:Z

    .line 25
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 27
    const-string p1, "Vibrating on opening, mHasVibratedOnOpen=true"

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/ShadeLogger;->v(Ljava/lang/String;)V

    .line 31
    :cond_1
    return-void
    .line 34
.end method

.method public final notifyExpandingFinished()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->endClosing()V

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpanding:Z

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpanding:Z

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->onExpandingFinished()V

    .line 12
    :cond_0
    return-void
    .line 15
.end method

.method public notifyExpandingStarted()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpanding:Z

    .line 2
    if-nez v0, :cond_4

    .line 4
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 6
    const-string v1, "notifyExpandingStarted"

    .line 8
    invoke-static {v0, v1}, Lcom/android/systemui/DejankUtils;->notifyRendererOfExpensiveFrame(Landroid/view/View;Ljava/lang/String;)V

    .line 10
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpanding:Z

    .line 14
    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsExpandingOrCollapsing:Z

    .line 16
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 18
    iget-boolean v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mFullyExpanded:Z

    .line 20
    iget-object v2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 22
    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 24
    iput-boolean v0, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpansionChanging:Z

    .line 26
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 28
    iput-boolean v0, v3, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionChanging:Z

    .line 30
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->checkSnoozeLeavebehind()V

    .line 32
    iput-boolean v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpandedWhenExpandingStarted:Z

    .line 35
    if-eqz v1, :cond_0

    .line 37
    iget-boolean v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mAnimating:Z

    .line 39
    if-nez v1, :cond_0

    .line 41
    move v1, v0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 v1, 0x0

    .line 45
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMediaHierarchyManager:Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;

    .line 46
    iget-boolean v3, v2, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->collapsingShadeFromQS:Z

    .line 48
    if-eq v3, v1, :cond_1

    .line 50
    iput-boolean v1, v2, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->collapsingShadeFromQS:Z

    .line 52
    const/4 v1, 0x2

    .line 54
    invoke-static {v2, v0, v1}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->updateDesiredLocation$default(Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;ZI)V

    .line 55
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 58
    if-eqz v1, :cond_2

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->onExpansionStarted()V

    .line 62
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 65
    if-nez p0, :cond_3

    .line 67
    goto :goto_1

    .line 69
    :cond_3
    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/qs/QS;->setHeaderListening(Z)V

    .line 70
    :cond_4
    :goto_1
    return-void
    .line 73
.end method

.method public final onBackProgressed(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCurrentBackProgress:F

    .line 2
    invoke-direct {p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->applyBackScaling(F)V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->setClippingBounds()V

    .line 9
    return-void
    .line 12
.end method

.method public final onEmptySpaceClick()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHintAnimationRunning:Z

    .line 2
    if-nez v0, :cond_5

    .line 4
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 6
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_3

    .line 9
    const/4 v2, 0x1

    .line 11
    if-eq v0, v2, :cond_1

    .line 12
    const/4 v3, 0x2

    .line 14
    if-eq v0, v3, :cond_0

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 18
    iget-boolean v0, v0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 20
    if-nez v0, :cond_5

    .line 22
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    check-cast p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 29
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->setState(IZ)Z

    .line 31
    goto :goto_0

    .line 34
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozingOnDown:Z

    .line 35
    if-nez v0, :cond_5

    .line 37
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 39
    const-string v2, "onMiddleClicked on Keyguard, mDozingOnDown: false"

    .line 41
    invoke-virtual {v0, v2}, Lcom/android/systemui/shade/ShadeLogger;->v(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardFaceAuthInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardFaceAuthInteractor;

    .line 46
    check-cast v0, Lcom/android/systemui/keyguard/domain/interactor/SystemUIKeyguardFaceAuthInteractor;

    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    sget-object v2, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_NOTIFICATION_PANEL_CLICKED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 53
    invoke-virtual {v0, v2}, Lcom/android/systemui/keyguard/domain/interactor/SystemUIKeyguardFaceAuthInteractor;->runFaceAuth(Lcom/android/keyguard/FaceAuthUiEvent;)V

    .line 55
    const-string v0, "Face auth due to notification panel click."

    .line 58
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 60
    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestFaceAuth(Ljava/lang/String;)Z

    .line 62
    move-result v0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    sget-object p0, Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;->UNLOCK_INTENT:Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;

    .line 68
    const-string v0, "lockScreenEmptySpaceTap"

    .line 70
    invoke-virtual {v2, p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestActiveUnlock(Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;Ljava/lang/String;)V

    .line 72
    goto :goto_0

    .line 75
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    .line 76
    const/16 v0, 0xbc

    .line 78
    invoke-virtual {p0, v0, v1, v1}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    .line 80
    sget-object p0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_LOCK_SHOW_HINT:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    .line 83
    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    .line 85
    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    .line 87
    invoke-virtual {v0, p0}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 90
    goto :goto_0

    .line 93
    :cond_3
    const-class v0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 94
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 96
    move-result-object v2

    .line 99
    check-cast v2, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 100
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->isShowingUnimportant:Z

    .line 102
    if-eqz v2, :cond_4

    .line 104
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 106
    move-result-object p0

    .line 109
    check-cast p0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 110
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->setShowingUnimportant(Z)V

    .line 112
    goto :goto_0

    .line 115
    :cond_4
    new-instance v0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda0;

    .line 116
    const/16 v1, 0x9

    .line 118
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    .line 120
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 123
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 125
    :cond_5
    :goto_0
    return-void
    .line 128
.end method

.method public onExpandingFinished()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 4
    const/4 v2, 0x0

    .line 6
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    .line 7
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpansionChanging:Z

    .line 9
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 11
    iput-boolean v2, v3, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionChanging:Z

    .line 13
    iget-boolean v3, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    .line 15
    if-nez v3, :cond_4

    .line 17
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    .line 19
    invoke-virtual {v3}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 21
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 24
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 27
    check-cast v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 29
    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    .line 31
    invoke-interface {v3}, Lcom/android/systemui/statusbar/notification/init/NotificationsController;->resetUserExpandedStates()V

    .line 33
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->clearTemporaryViewsInGroup(Landroid/view/ViewGroup;)V

    .line 36
    move v3, v2

    .line 39
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 40
    move-result v4

    .line 43
    if-ge v3, v4, :cond_1

    .line 44
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getChildAtIndex(I)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 46
    move-result-object v4

    .line 49
    instance-of v5, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 50
    if-eqz v5, :cond_0

    .line 52
    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 54
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 56
    move-result-object v4

    .line 59
    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->clearTemporaryViewsInGroup(Landroid/view/ViewGroup;)V

    .line 60
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 63
    goto :goto_0

    .line 65
    :cond_1
    move v3, v2

    .line 66
    :goto_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 67
    move-result v4

    .line 70
    if-ge v3, v4, :cond_3

    .line 71
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getChildAtIndex(I)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 73
    move-result-object v4

    .line 76
    instance-of v5, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 77
    if-eqz v5, :cond_2

    .line 79
    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 81
    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 83
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 86
    goto :goto_1

    .line 88
    :cond_3
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->resetAllSwipeState()V

    .line 89
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 92
    iget-boolean v3, v1, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mReleaseOnExpandFinish:Z

    .line 94
    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mEntriesToRemoveAfterExpand:Ljava/util/HashSet;

    .line 96
    if-eqz v3, :cond_5

    .line 98
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->releaseAllImmediately()V

    .line 100
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mReleaseOnExpandFinish:Z

    .line 103
    goto :goto_3

    .line 105
    :cond_5
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 106
    move-result-object v3

    .line 109
    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    move-result v5

    .line 113
    if-eqz v5, :cond_7

    .line 114
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    move-result-object v5

    .line 119
    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 120
    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 122
    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->isAlerting(Ljava/lang/String;)Z

    .line 124
    move-result v6

    .line 127
    if-eqz v6, :cond_6

    .line 128
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 130
    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->removeAlertEntry(Ljava/lang/String;)V

    .line 132
    goto :goto_2

    .line 135
    :cond_7
    :goto_3
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 136
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mConversationNotificationManager:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    .line 139
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 141
    move-result v3

    .line 144
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->onNotificationPanelExpandStateChanged(Z)V

    .line 145
    iput-boolean v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsExpandingOrCollapsing:Z

    .line 148
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMediaHierarchyManager:Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;

    .line 150
    iget-boolean v3, v1, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->collapsingShadeFromQS:Z

    .line 152
    const/4 v4, 0x1

    .line 154
    if-eqz v3, :cond_8

    .line 155
    iput-boolean v2, v1, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->collapsingShadeFromQS:Z

    .line 157
    const/4 v3, 0x2

    .line 159
    invoke-static {v1, v4, v3}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->updateDesiredLocation$default(Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;ZI)V

    .line 160
    :cond_8
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 163
    iget-boolean v5, v3, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 165
    invoke-virtual {v1, v5}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->setQsExpanded(Z)V

    .line 167
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 170
    move-result v1

    .line 173
    if-eqz v1, :cond_9

    .line 174
    new-instance v1, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda0;

    .line 176
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    .line 178
    invoke-static {v1}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    .line 181
    new-instance v1, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda0;

    .line 184
    invoke-direct {v1, p0, v4}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    .line 186
    iget-object v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 189
    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 191
    goto :goto_4

    .line 194
    :cond_9
    invoke-direct {p0, v4}, Lcom/android/systemui/shade/NotificationPanelViewController;->setListening(Z)V

    .line 195
    :goto_4
    iget v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 198
    if-eqz v1, :cond_a

    .line 200
    invoke-virtual {v3, v2}, Lcom/android/systemui/shade/QuickSettingsController;->setExpandImmediate(Z)V

    .line 202
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    iput-boolean v2, v3, Lcom/android/systemui/shade/QuickSettingsController;->mTwoFingerExpandPossible:Z

    .line 208
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeHeadsUpTracker:Lcom/android/systemui/shade/NotificationPanelViewController$11;

    .line 210
    const/4 v1, 0x0

    .line 212
    invoke-static {v0, v1}, Lcom/android/systemui/shade/NotificationPanelViewController$11;->-$$Nest$mupdateTrackingHeadsUp(Lcom/android/systemui/shade/NotificationPanelViewController$11;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 213
    iput-boolean v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandingFromHeadsUp:Z

    .line 216
    const/4 v0, 0x0

    .line 218
    invoke-direct {p0, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->setPanelScrimMinFraction(F)V

    .line 219
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    .line 222
    const/high16 v0, -0x40800000    # -1.0f

    .line 224
    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mExplicitAlpha:F

    .line 226
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->updateViewState()V

    .line 228
    return-void
    .line 231
.end method

.method onFinishInflate()V
    .locals 14

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->loadDimens()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 5
    const v1, 0x7f0a0481    # @id/keyguard_header

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v1

    .line 13
    check-cast v1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 14
    iput-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 16
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeViewStateProvider:Lcom/android/systemui/shade/NotificationPanelViewController$11;

    .line 18
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBarViewComponentFactory:Lcom/android/keyguard/dagger/KeyguardStatusBarViewComponent$Factory;

    .line 20
    invoke-interface {v3, v1, v2}, Lcom/android/keyguard/dagger/KeyguardStatusBarViewComponent$Factory;->build(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Lcom/android/systemui/shade/ShadeViewStateProvider;)Lcom/android/keyguard/dagger/KeyguardStatusBarViewComponent;

    .line 22
    move-result-object v1

    .line 25
    invoke-interface {v1}, Lcom/android/keyguard/dagger/KeyguardStatusBarViewComponent;->getKeyguardStatusBarViewController()Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    .line 26
    move-result-object v1

    .line 29
    iput-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    .line 30
    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->init()V

    .line 32
    const v1, 0x7f0a06a7    # @id/notification_container_parent

    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object v1

    .line 41
    check-cast v1, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    .line 42
    iput-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    .line 44
    const v1, 0x7f0a04a3    # @id/keyguard_status_view

    .line 46
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object v1

    .line 52
    check-cast v1, Lcom/android/keyguard/KeyguardStatusView;

    .line 53
    const/4 v2, 0x0

    .line 55
    invoke-virtual {p0, v1, v2, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateViewControllers(Lcom/android/keyguard/KeyguardStatusView;Landroid/widget/FrameLayout;Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;)V

    .line 56
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 59
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setUpView()V

    .line 61
    new-instance v2, Lcom/android/systemui/shade/NotificationPanelViewController$11;

    .line 64
    invoke-direct {v2, p0}, Lcom/android/systemui/shade/NotificationPanelViewController$11;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    .line 66
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 69
    iput-object v2, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;

    .line 71
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOnEmptySpaceClickListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;

    .line 73
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOnEmptySpaceClickListener(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;)V

    .line 75
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 78
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    new-instance v4, Lcom/android/systemui/shade/QuickSettingsController$NsslOverscrollTopChangedListener;

    .line 83
    invoke-direct {v4, v2}, Lcom/android/systemui/shade/QuickSettingsController$NsslOverscrollTopChangedListener;-><init>(Lcom/android/systemui/shade/QuickSettingsController;)V

    .line 85
    iget-object v5, v2, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 88
    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 90
    invoke-virtual {v6, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverscrollTopChangedListener(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;)V

    .line 92
    new-instance v4, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda5;

    .line 95
    const/4 v6, 0x0

    .line 97
    invoke-direct {v4, v6, v2}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 98
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 101
    iput-object v4, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOnStackYChanged:Ljava/util/function/Consumer;

    .line 103
    new-instance v4, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda5;

    .line 105
    const/4 v7, 0x1

    .line 107
    invoke-direct {v4, v7, v2}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 108
    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOnScrollListener(Ljava/util/function/Consumer;)V

    .line 111
    new-instance v2, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda13;

    .line 114
    invoke-direct {v2, p0}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda13;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    .line 116
    iget-object v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    .line 119
    invoke-virtual {v4, v2}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->addQsExpansionListener(Lcom/android/systemui/shade/ShadeQsExpansionListener;)V

    .line 121
    new-instance v2, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;

    .line 124
    const/16 v4, 0xb

    .line 126
    invoke-direct {v2, v4, v1}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;-><init>(ILjava/lang/Object;)V

    .line 128
    iget-object v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeHeadsUpTracker:Lcom/android/systemui/shade/NotificationPanelViewController$11;

    .line 131
    iget-object v4, v4, Lcom/android/systemui/shade/NotificationPanelViewController$11;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 133
    iget-object v4, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mTrackingHeadsUpListeners:Ljava/util/ArrayList;

    .line 135
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    const v2, 0x7f0a0471    # @id/keyguard_bottom_area

    .line 140
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 143
    move-result-object v2

    .line 146
    check-cast v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 147
    invoke-virtual {p0, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->setKeyguardBottomArea(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 149
    const v2, 0x7f0a0488    # @id/keyguard_info_layer

    .line 152
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 155
    move-result-object v2

    .line 158
    check-cast v2, Landroid/widget/FrameLayout;

    .line 159
    iput-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardInfoLayer:Landroid/widget/FrameLayout;

    .line 161
    const v4, 0x7f0a04a4    # @id/keyguard_translation_info

    .line 163
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 166
    move-result-object v2

    .line 169
    check-cast v2, Landroid/widget/FrameLayout;

    .line 170
    iput-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardTranslationInfo:Landroid/widget/FrameLayout;

    .line 172
    iget-object v8, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 174
    iget-object v9, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomAreaViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;

    .line 176
    iget-object v10, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockIconViewController:Lcom/android/keyguard/LockIconViewController;

    .line 178
    new-instance v11, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;

    .line 180
    invoke-direct {v11, p0}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    .line 182
    iget-object v12, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 185
    iget-object v13, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 187
    invoke-virtual/range {v8 .. v13}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->init(Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;Lcom/android/keyguard/LockIconViewController;Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/plugins/ActivityStarter;)V

    .line 189
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    .line 192
    iput-object v1, v2, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 194
    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 196
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPulseExpanding()Z

    .line 198
    move-result v4

    .line 201
    iput-boolean v4, v2, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->pulseExpanding:Z

    .line 202
    new-instance v4, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$setStackScroller$1;

    .line 204
    invoke-direct {v4, v2}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$setStackScroller$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;)V

    .line 206
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOnPulseHeightChangedListener(Ljava/lang/Runnable;)V

    .line 209
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    .line 212
    iput-object v1, v3, Lcom/android/systemui/statusbar/PulseExpansionHandler;->stackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 214
    new-instance v3, Lcom/android/systemui/shade/NotificationPanelViewController$4;

    .line 216
    invoke-direct {v3, p0}, Lcom/android/systemui/shade/NotificationPanelViewController$4;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    .line 218
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->wakeUpListeners:Ljava/util/ArrayList;

    .line 221
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance v2, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;

    .line 226
    invoke-direct {v2, p0}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    .line 228
    iput-object v2, v0, Lcom/android/systemui/shade/NotificationPanelView;->mRtlChangeListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;

    .line 231
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAccessibilityDelegate:Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAccessibilityDelegate;

    .line 233
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 235
    iget-boolean v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSplitShadeEnabled:Z

    .line 238
    if-eqz v2, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateResources()V

    .line 242
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTapAgainViewController:Lcom/android/systemui/statusbar/phone/TapAgainViewController;

    .line 245
    invoke-virtual {v2}, Lcom/android/systemui/util/ViewController;->init()V

    .line 247
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    .line 250
    invoke-virtual {v2}, Lcom/android/systemui/util/ViewController;->init()V

    .line 252
    new-instance v2, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;

    .line 255
    const/16 v3, 0x9

    .line 257
    invoke-direct {v2, v3, p0}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;-><init>(ILjava/lang/Object;)V

    .line 259
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardUnfoldTransition:Ljava/util/Optional;

    .line 262
    invoke-virtual {v3, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 264
    new-instance v2, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;

    .line 267
    const/16 v3, 0xa

    .line 269
    invoke-direct {v2, v3, p0}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;-><init>(ILjava/lang/Object;)V

    .line 271
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationPanelUnfoldAnimationController:Ljava/util/Optional;

    .line 274
    invoke-virtual {v3, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 276
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    .line 279
    iget-object v3, v2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->dreamingToLockscreenTransition:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1;

    .line 281
    iget-object v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDreamingToLockscreenTransition:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;

    .line 283
    iget-object v5, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 285
    invoke-static {v0, v3, v4, v5}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlinx/coroutines/CoroutineDispatcher;)V

    .line 287
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDreamingToLockscreenTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel;

    .line 290
    iget-object v4, v3, Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel;->lockscreenAlpha:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 292
    new-instance v8, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda16;

    .line 294
    invoke-direct {v8, p0, v1, v7}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda16;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;I)V

    .line 296
    invoke-static {v0, v4, v8, v5}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlinx/coroutines/CoroutineDispatcher;)V

    .line 299
    iget v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDreamingToLockscreenTransitionTranslationY:I

    .line 302
    invoke-virtual {v3, v4}, Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel;->lockscreenTranslationY(I)Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 304
    move-result-object v3

    .line 307
    new-instance v4, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda16;

    .line 308
    invoke-direct {v4, p0, v1, v6}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda16;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;I)V

    .line 310
    invoke-static {v0, v3, v4, v5}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlinx/coroutines/CoroutineDispatcher;)V

    .line 313
    iget-object v3, v2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->occludedToLockscreenTransition:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1;

    .line 316
    iget-object v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOccludedToLockscreenTransition:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;

    .line 318
    invoke-static {v0, v3, v4, v5}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlinx/coroutines/CoroutineDispatcher;)V

    .line 320
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOccludedToLockscreenTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/OccludedToLockscreenTransitionViewModel;

    .line 323
    iget-object v4, v3, Lcom/android/systemui/keyguard/ui/viewmodel/OccludedToLockscreenTransitionViewModel;->lockscreenAlpha:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 325
    new-instance v8, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda16;

    .line 327
    invoke-direct {v8, p0, v1, v7}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda16;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;I)V

    .line 329
    invoke-static {v0, v4, v8, v5}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlinx/coroutines/CoroutineDispatcher;)V

    .line 332
    iget v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOccludedToLockscreenTransitionTranslationY:I

    .line 335
    invoke-virtual {v3, v4}, Lcom/android/systemui/keyguard/ui/viewmodel/OccludedToLockscreenTransitionViewModel;->lockscreenTranslationY(I)Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 337
    move-result-object v3

    .line 340
    new-instance v4, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda16;

    .line 341
    invoke-direct {v4, p0, v1, v6}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda16;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;I)V

    .line 343
    invoke-static {v0, v3, v4, v5}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlinx/coroutines/CoroutineDispatcher;)V

    .line 346
    iget-object v3, v2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->lockscreenToDreamingTransition:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1;

    .line 349
    iget-object v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenToDreamingTransition:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;

    .line 351
    invoke-static {v0, v3, v4, v5}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlinx/coroutines/CoroutineDispatcher;)V

    .line 353
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenToDreamingTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToDreamingTransitionViewModel;

    .line 356
    iget-object v4, v3, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToDreamingTransitionViewModel;->lockscreenAlpha:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 358
    new-instance v8, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda16;

    .line 360
    invoke-direct {v8, p0, v1, v7}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda16;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;I)V

    .line 362
    invoke-static {v0, v4, v8, v5}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlinx/coroutines/CoroutineDispatcher;)V

    .line 365
    iget v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenToDreamingTransitionTranslationY:I

    .line 368
    invoke-virtual {v3, v4}, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToDreamingTransitionViewModel;->lockscreenTranslationY(I)Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 370
    move-result-object v3

    .line 373
    new-instance v4, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda16;

    .line 374
    invoke-direct {v4, p0, v1, v6}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda16;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;I)V

    .line 376
    invoke-static {v0, v3, v4, v5}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlinx/coroutines/CoroutineDispatcher;)V

    .line 379
    iget-object v3, v2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->goneToDreamingTransition:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1;

    .line 382
    iget-object v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mGoneToDreamingTransition:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;

    .line 384
    invoke-static {v0, v3, v4, v5}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlinx/coroutines/CoroutineDispatcher;)V

    .line 386
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mGoneToDreamingTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/GoneToDreamingTransitionViewModel;

    .line 389
    iget-object v4, v3, Lcom/android/systemui/keyguard/ui/viewmodel/GoneToDreamingTransitionViewModel;->lockscreenAlpha:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 391
    new-instance v8, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda16;

    .line 393
    invoke-direct {v8, p0, v1, v7}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda16;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;I)V

    .line 395
    invoke-static {v0, v4, v8, v5}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlinx/coroutines/CoroutineDispatcher;)V

    .line 398
    iget v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mGoneToDreamingTransitionTranslationY:I

    .line 401
    invoke-virtual {v3, v4}, Lcom/android/systemui/keyguard/ui/viewmodel/GoneToDreamingTransitionViewModel;->lockscreenTranslationY(I)Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 403
    move-result-object v3

    .line 406
    new-instance v4, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda16;

    .line 407
    invoke-direct {v4, p0, v1, v6}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda16;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;I)V

    .line 409
    invoke-static {v0, v3, v4, v5}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlinx/coroutines/CoroutineDispatcher;)V

    .line 412
    iget-object v2, v2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->lockscreenToOccludedTransition:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1;

    .line 415
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenToOccludedTransition:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;

    .line 417
    invoke-static {v0, v2, v3, v5}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlinx/coroutines/CoroutineDispatcher;)V

    .line 419
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenToOccludedTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToOccludedTransitionViewModel;

    .line 422
    iget-object v3, v2, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToOccludedTransitionViewModel;->lockscreenAlpha:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 424
    new-instance v4, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda16;

    .line 426
    invoke-direct {v4, p0, v1, v7}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda16;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;I)V

    .line 428
    invoke-static {v0, v3, v4, v5}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlinx/coroutines/CoroutineDispatcher;)V

    .line 431
    iget v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenToOccludedTransitionTranslationY:I

    .line 434
    invoke-virtual {v2, v3}, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToOccludedTransitionViewModel;->lockscreenTranslationY(I)Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 436
    move-result-object v2

    .line 439
    new-instance v3, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda16;

    .line 440
    invoke-direct {v3, p0, v1, v6}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda16;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;I)V

    .line 442
    invoke-static {v0, v2, v3, v5}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlinx/coroutines/CoroutineDispatcher;)V

    .line 445
    return-void
    .line 448
.end method

.method public onFlingEnd(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsFlinging:Z

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->setOverExpansionInternal(Z)V

    .line 5
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->setAnimator(Landroid/animation/ValueAnimator;)V

    .line 9
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 12
    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mFlingingToDismissKeyguard:Z

    .line 14
    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mFlingingToDismissKeyguardDuringSwipeGesture:Z

    .line 16
    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSnappingKeyguardBackAfterSwipe:Z

    .line 18
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 20
    if-nez p1, :cond_1

    .line 22
    iget-object p1, v1, Lcom/android/systemui/shade/QuickSettingsController;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 24
    if-nez p1, :cond_0

    .line 26
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    .line 29
    move-result-object p1

    .line 32
    invoke-virtual {p1, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    .line 33
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->notifyExpandingFinished()V

    .line 36
    goto :goto_1

    .line 39
    :cond_1
    iget-object p1, v1, Lcom/android/systemui/shade/QuickSettingsController;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 40
    if-nez p1, :cond_2

    .line 42
    goto :goto_1

    .line 44
    :cond_2
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    .line 45
    move-result-object p1

    .line 48
    invoke-virtual {p1, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    .line 49
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateExpansionAndVisibility()V

    .line 52
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 55
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 57
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setPanelFlinging(Z)V

    .line 59
    invoke-virtual {v1, v0}, Lcom/android/systemui/shade/QuickSettingsController;->setExpandImmediate(Z)V

    .line 62
    return-void
    .line 65
.end method

.method public onQsSetExpansionHeightCalled(Z)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->requestScrollerTopPaddingUpdate(Z)V

    .line 3
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    .line 6
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->updateViewState()V

    .line 8
    iget v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 11
    const/4 v2, 0x2

    .line 13
    if-eq v1, v2, :cond_0

    .line 14
    const/4 v2, 0x1

    .line 16
    if-ne v1, v2, :cond_1

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateKeyguardBottomAreaAlpha()V

    .line 19
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->positionClockAndNotifications(Z)V

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 25
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 27
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->determineAccessibilityPaneTitle()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    .line 39
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 42
    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->isUnlockingDisabled()Z

    .line 44
    move-result v0

    .line 47
    if-nez v0, :cond_3

    .line 48
    if-eqz p1, :cond_3

    .line 50
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    :cond_3
    return-void
    .line 57
.end method

.method public abstract onTrackingStarted()V
.end method

.method public final onTrackingStopped(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTracking:Z

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateExpansionAndVisibility()V

    .line 10
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 13
    if-eqz p1, :cond_0

    .line 15
    iget-object p1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 17
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-virtual {p1, v2, v3, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 21
    :cond_0
    iget-object p1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 24
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPanelTracking:Z

    .line 26
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 28
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPanelTracking:Z

    .line 30
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 32
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blursDisabledForUnlock:Z

    .line 34
    if-nez p1, :cond_1

    .line 36
    goto :goto_0

    .line 38
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blursDisabledForUnlock:Z

    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->scheduleUpdate()V

    .line 41
    :goto_0
    return-void
    .line 44
.end method

.method public onUnlockHintFinished()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHideTransientMessageHandler:Lcom/android/systemui/util/AlarmTimeout;

    .line 4
    const/4 v1, 0x2

    .line 6
    const-wide/16 v2, 0x4b0

    .line 7
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/util/AlarmTimeout;->schedule(IJ)Z

    .line 9
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 12
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionAffectsAlpha:Z

    .line 15
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 17
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 19
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setUnlockHintRunning(Z)V

    .line 22
    return-void
    .line 25
.end method

.method public onUnlockHintStarted()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 12
    const/4 v1, 0x0

    .line 14
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionAffectsAlpha:Z

    .line 15
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 17
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 19
    const/4 v0, 0x1

    .line 21
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setUnlockHintRunning(Z)V

    .line 22
    return-void
    .line 25
.end method

.method public final positionClockAndNotifications(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->isAddOrRemoveAnimationPending()Z

    .line 4
    move-result v1

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isOnKeyguard()Z

    .line 8
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    if-eqz p1, :cond_1

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateClockAppearance()V

    .line 16
    :cond_1
    const/4 p1, 0x0

    .line 19
    if-nez v2, :cond_4

    .line 20
    iget-boolean v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSplitShadeEnabled:Z

    .line 22
    if-eqz v2, :cond_2

    .line 24
    move v3, p1

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 28
    iget-object v3, v2, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 30
    if-eqz v3, :cond_3

    .line 32
    invoke-interface {v3}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    .line 34
    move-result-object v3

    .line 37
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 38
    move-result v3

    .line 41
    goto :goto_0

    .line 42
    :cond_3
    move v3, p1

    .line 43
    :goto_0
    iget v2, v2, Lcom/android/systemui/shade/QuickSettingsController;->mPeekHeight:I

    .line 44
    add-int/2addr v3, v2

    .line 46
    goto :goto_1

    .line 47
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    .line 48
    iget v3, v2, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPaddingExpanded:I

    .line 50
    :goto_1
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 52
    iput v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    .line 54
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStackScrollerMeasuringPass:I

    .line 56
    add-int/lit8 v0, v0, 0x1

    .line 58
    iput v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStackScrollerMeasuringPass:I

    .line 60
    invoke-virtual {p0, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->requestScrollerTopPaddingUpdate(Z)V

    .line 62
    iput p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStackScrollerMeasuringPass:I

    .line 65
    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAnimateNextPositionUpdate:Z

    .line 67
    return-void
    .line 69
.end method

.method public final reInflateStub(III)Landroid/view/View;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    .line 10
    move-result v0

    .line 13
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 14
    new-instance p1, Landroid/view/ViewStub;

    .line 17
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v1

    .line 22
    invoke-direct {p1, v1, p3}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;I)V

    .line 23
    invoke-virtual {p1, p2}, Landroid/view/ViewStub;->setId(I)V

    .line 26
    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 29
    const/4 p1, 0x0

    .line 32
    :cond_0
    return-object p1
    .line 33
.end method

.method reInflateViews()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    .line 2
    const v1, 0x7f0a04a3    # @id/keyguard_status_view

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/keyguard/KeyguardStatusView;

    .line 11
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    .line 13
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 15
    move-result v2

    .line 18
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    .line 19
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 21
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    .line 24
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 26
    const v4, 0x7f0d0115    # @layout/keyguard_status_view 'res/layout/keyguard_status_view.xml'

    .line 28
    const/4 v5, 0x0

    .line 31
    invoke-virtual {v3, v4, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 35
    check-cast v0, Lcom/android/keyguard/KeyguardStatusView;

    .line 36
    iget-object v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    .line 38
    invoke-virtual {v4, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 40
    const v2, 0x7f0a08f1    # @id/status_view_media_container

    .line 43
    invoke-virtual {v0, v2}, Landroid/widget/GridLayout;->findViewById(I)Landroid/view/View;

    .line 46
    move-result-object v0

    .line 49
    check-cast v0, Landroid/widget/FrameLayout;

    .line 50
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardMediaController:Lcom/android/systemui/media/controls/ui/KeyguardMediaController;

    .line 52
    iput-object v0, v2, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->splitShadeContainer:Landroid/view/ViewGroup;

    .line 54
    invoke-virtual {v2}, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->reattachHostView()V

    .line 56
    invoke-virtual {v2}, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->refreshMediaPosition()V

    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateResources()V

    .line 62
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mResources:Landroid/content/res/Resources;

    .line 65
    const v2, 0x7f05009c    # @bool/qs_show_user_switcher_for_single_user 'false'

    .line 67
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 70
    move-result v0

    .line 73
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUserManager:Landroid/os/UserManager;

    .line 74
    invoke-virtual {v2, v0}, Landroid/os/UserManager;->isUserSwitcherEnabled(Z)Z

    .line 76
    const v0, 0x7f0d010e    # @layout/keyguard_qs_user_switch 'res/layout/keyguard_qs_user_switch.xml'

    .line 79
    const v2, 0x7f0a0496    # @id/keyguard_qs_user_switch_view

    .line 82
    const v4, 0x7f0a0495    # @id/keyguard_qs_user_switch_stub

    .line 85
    invoke-virtual {p0, v2, v4, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->reInflateStub(III)Landroid/view/View;

    .line 88
    move-result-object v0

    .line 91
    check-cast v0, Landroid/widget/FrameLayout;

    .line 92
    const v2, 0x7f0d0116    # @layout/keyguard_user_switcher 'res/layout/keyguard_user_switcher.xml'

    .line 94
    const v4, 0x7f0a04a8    # @id/keyguard_user_switcher_view

    .line 97
    const v6, 0x7f0a04a7    # @id/keyguard_user_switcher_stub

    .line 100
    invoke-virtual {p0, v4, v6, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->reInflateStub(III)Landroid/view/View;

    .line 103
    move-result-object v2

    .line 106
    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;

    .line 107
    iget-object v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 109
    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 111
    move-result-object v1

    .line 114
    check-cast v1, Lcom/android/keyguard/KeyguardStatusView;

    .line 115
    invoke-virtual {p0, v1, v0, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateViewControllers(Lcom/android/keyguard/KeyguardStatusView;Landroid/widget/FrameLayout;Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;)V

    .line 117
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardTranslationInfo:Landroid/widget/FrameLayout;

    .line 120
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 122
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    .line 124
    move-result v0

    .line 127
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardTranslationInfo:Landroid/widget/FrameLayout;

    .line 128
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 130
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 132
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 135
    const v2, 0x7f0d00fa    # @layout/keyguard_bottom_area 'res/layout/keyguard_bottom_area.xml'

    .line 137
    iget-object v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardTranslationInfo:Landroid/widget/FrameLayout;

    .line 140
    invoke-virtual {v3, v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 142
    move-result-object v2

    .line 145
    check-cast v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 146
    iput-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 148
    invoke-virtual {p0, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->setKeyguardBottomArea(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 150
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 153
    iget-object v3, v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->ambientIndicationArea:Landroid/view/View;

    .line 155
    if-eqz v3, :cond_0

    .line 157
    const v4, 0x7f0a00b5    # @id/ambient_indication_container

    .line 159
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 162
    move-result-object v1

    .line 165
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 166
    move-result-object v4

    .line 169
    check-cast v4, Landroid/view/ViewGroup;

    .line 170
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 172
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 175
    move-result-object v4

    .line 178
    check-cast v4, Landroid/view/ViewGroup;

    .line 179
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 181
    move-result v6

    .line 184
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 185
    invoke-virtual {v4, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 188
    iput-object v1, v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->ambientIndicationArea:Landroid/view/View;

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardTranslationInfo:Landroid/widget/FrameLayout;

    .line 193
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 195
    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 197
    iget-object v6, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 200
    iget-object v7, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomAreaViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;

    .line 202
    iget-object v8, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockIconViewController:Lcom/android/keyguard/LockIconViewController;

    .line 204
    new-instance v9, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;

    .line 206
    invoke-direct {v9, p0}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    .line 208
    iget-object v10, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 211
    iget-object v11, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 213
    invoke-virtual/range {v6 .. v11}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->init(Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;Lcom/android/keyguard/LockIconViewController;Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/plugins/ActivityStarter;)V

    .line 215
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 218
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 220
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setIndicationArea(Landroid/view/ViewGroup;)V

    .line 222
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 225
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 227
    iget v1, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDozeAmount:F

    .line 229
    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDozeInterpolator:Landroid/view/animation/Interpolator;

    .line 231
    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 233
    move-result v0

    .line 236
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateListener:Lcom/android/systemui/shade/NotificationPanelViewController$StatusBarStateListener;

    .line 237
    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/shade/NotificationPanelViewController$StatusBarStateListener;->onDozeAmountChanged(FF)V

    .line 239
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    .line 242
    iget v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 244
    iget-object v0, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    .line 246
    invoke-virtual {v0, v1, v1, v5, v5}, Lcom/android/keyguard/KeyguardVisibilityHelper;->setViewVisibility(IIZZ)V

    .line 248
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardQsUserSwitchController:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    .line 251
    if-eqz v0, :cond_1

    .line 253
    iget v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 255
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    .line 257
    invoke-virtual {v0, v1, v1, v5, v5}, Lcom/android/keyguard/KeyguardVisibilityHelper;->setViewVisibility(IIZZ)V

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    .line 262
    if-eqz v0, :cond_2

    .line 264
    iget v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 266
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    .line 268
    invoke-virtual {v0, v1, v1, v5, v5}, Lcom/android/keyguard/KeyguardVisibilityHelper;->setViewVisibility(IIZZ)V

    .line 270
    :cond_2
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 273
    invoke-virtual {p0, v0, v5}, Lcom/android/systemui/shade/NotificationPanelViewController;->setKeyguardBottomAreaVisibility(IZ)V

    .line 275
    new-instance v0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;

    .line 278
    const/4 v1, 0x7

    .line 280
    invoke-direct {v0, v1, p0}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;-><init>(ILjava/lang/Object;)V

    .line 281
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardUnfoldTransition:Ljava/util/Optional;

    .line 284
    invoke-virtual {v1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 286
    new-instance v0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;

    .line 289
    const/16 v1, 0x8

    .line 291
    invoke-direct {v0, v1, p0}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;-><init>(ILjava/lang/Object;)V

    .line 293
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationPanelUnfoldAnimationController:Ljava/util/Optional;

    .line 296
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 298
    return-void
    .line 301
.end method

.method public final requestScrollerTopPaddingUpdate(Z)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->calculateNotificationsTopPadding()F

    .line 2
    move-result v0

    .line 5
    float-to-int v0, v0

    .line 6
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 7
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 9
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getLayoutMinHeight()I

    .line 11
    move-result v2

    .line 14
    add-int/2addr v2, v0

    .line 15
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    .line 16
    move-result v3

    .line 19
    if-le v2, v3, :cond_0

    .line 20
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    .line 22
    move-result v3

    .line 25
    sub-int/2addr v2, v3

    .line 26
    int-to-float v2, v2

    .line 27
    iput v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    .line 28
    goto :goto_0

    .line 30
    :cond_0
    const/4 v2, 0x0

    .line 31
    iput v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    .line 32
    :goto_0
    const/4 v2, 0x1

    .line 34
    const/4 v3, 0x0

    .line 35
    if-eqz p1, :cond_1

    .line 36
    iget-boolean p1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mKeyguardBypassEnabled:Z

    .line 38
    if-nez p1, :cond_1

    .line 40
    move p1, v2

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move p1, v3

    .line 44
    :goto_1
    iget v4, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPadding:I

    .line 45
    if-eq v4, v0, :cond_5

    .line 47
    if-nez p1, :cond_3

    .line 49
    iget-boolean p1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimateNextTopPaddingChange:Z

    .line 51
    if-eqz p1, :cond_2

    .line 53
    goto :goto_2

    .line 55
    :cond_2
    move p1, v3

    .line 56
    goto :goto_3

    .line 57
    :cond_3
    :goto_2
    move p1, v2

    .line 58
    :goto_3
    iput v0, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPadding:I

    .line 59
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateAlgorithmHeightAndPadding()V

    .line 61
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 64
    if-eqz p1, :cond_4

    .line 67
    iget-boolean v0, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    .line 69
    if-eqz v0, :cond_4

    .line 71
    iget-boolean v0, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    .line 73
    if-eqz v0, :cond_4

    .line 75
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPaddingNeedsAnimation:Z

    .line 77
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 79
    :cond_4
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateStackPosition(Z)V

    .line 81
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 84
    const/4 v0, 0x0

    .line 87
    invoke-virtual {v1, v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    .line 88
    iput-boolean v3, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimateNextTopPaddingChange:Z

    .line 91
    :cond_5
    iget p1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedHeight:F

    .line 93
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setExpandedHeight(F)V

    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isKeyguardShowing()Z

    .line 98
    move-result p1

    .line 101
    if-eqz p1, :cond_6

    .line 102
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 104
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 106
    move-result p1

    .line 109
    if-eqz p1, :cond_6

    .line 110
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 112
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->updateExpansion()V

    .line 114
    :cond_6
    return-void
    .line 117
.end method

.method public final resetViewGroupFade()V
    .locals 12

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 2
    const v0, 0x7f0a0a5c    # @id/view_group_fade_helper_modified_views

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    .line 7
    move-result-object v1

    .line 10
    instance-of v2, v1, Lkotlin/jvm/internal/markers/KMappedMarker;

    .line 11
    const/4 v3, 0x0

    .line 13
    if-eqz v2, :cond_1

    .line 14
    instance-of v2, v1, Lkotlin/jvm/internal/markers/KMutableSet;

    .line 16
    if-eqz v2, :cond_0

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    const-string p0, "kotlin.collections.MutableSet"

    .line 21
    invoke-static {v1, p0}, Lkotlin/jvm/internal/TypeIntrinsics;->throwCce(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    throw v3

    .line 26
    :cond_1
    :goto_0
    :try_start_0
    check-cast v1, Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    const v2, 0x7f0a0a5a    # @id/view_group_fade_helper_animator

    .line 29
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    .line 32
    move-result-object v4

    .line 35
    check-cast v4, Landroid/animation/Animator;

    .line 36
    if-eqz v1, :cond_8

    .line 38
    if-nez v4, :cond_2

    .line 40
    goto :goto_3

    .line 42
    :cond_2
    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    .line 43
    const v4, 0x7f0a0a5d    # @id/view_group_fade_helper_previous_value_tag

    .line 46
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    .line 49
    move-result-object v5

    .line 52
    check-cast v5, Ljava/lang/Float;

    .line 53
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 55
    move-result-object v1

    .line 58
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    move-result v6

    .line 62
    if-eqz v6, :cond_7

    .line 63
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    move-result-object v6

    .line 68
    check-cast v6, Landroid/view/View;

    .line 69
    const v7, 0x7f0a0a5e    # @id/view_group_fade_helper_restore_tag

    .line 71
    invoke-virtual {v6, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 74
    move-result-object v8

    .line 77
    check-cast v8, Ljava/lang/Float;

    .line 78
    if-nez v8, :cond_3

    .line 80
    goto :goto_1

    .line 82
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    .line 83
    move-result v9

    .line 86
    const/4 v10, 0x0

    .line 87
    if-eqz v5, :cond_4

    .line 88
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 90
    move-result v11

    .line 93
    cmpl-float v9, v11, v9

    .line 94
    if-nez v9, :cond_4

    .line 96
    const/4 v9, 0x1

    .line 98
    goto :goto_2

    .line 99
    :cond_4
    move v9, v10

    .line 100
    :goto_2
    if-eqz v9, :cond_5

    .line 101
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    .line 103
    move-result v8

    .line 106
    invoke-virtual {v6, v8}, Landroid/view/View;->setAlpha(F)V

    .line 107
    :cond_5
    const v8, 0x7f0a0a5b    # @id/view_group_fade_helper_hardware_layer

    .line 110
    invoke-virtual {v6, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 113
    move-result-object v9

    .line 116
    check-cast v9, Ljava/lang/Boolean;

    .line 117
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 119
    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 121
    move-result v9

    .line 124
    if-eqz v9, :cond_6

    .line 125
    invoke-virtual {v6, v10, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 127
    invoke-virtual {v6, v8, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 130
    :cond_6
    invoke-virtual {v6, v7, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 133
    goto :goto_1

    .line 136
    :cond_7
    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 137
    invoke-virtual {p0, v4, v3}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 140
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 143
    :cond_8
    :goto_3
    return-void

    .line 146
    :catch_0
    move-exception p0

    .line 147
    const-class v0, Lkotlin/jvm/internal/TypeIntrinsics;

    .line 148
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 150
    move-result-object v0

    .line 153
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->sanitizeStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    throw p0
    .line 157
.end method

.method public abstract resetViews(Z)V
.end method

.method public final setAlpha(IZ)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelAlpha:I

    .line 2
    if-eq v0, p1, :cond_1

    .line 4
    iput p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelAlpha:I

    .line 6
    int-to-float v0, p1

    .line 8
    const/16 v1, 0xff

    .line 9
    if-ne p1, v1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelAlphaInPropertiesAnimator:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelAlphaOutPropertiesAnimator:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 16
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 18
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelAlphaAnimator:Lcom/android/systemui/statusbar/notification/AnimatableProperty$6;

    .line 20
    invoke-static {v1, p0, v0, p1, p2}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    .line 22
    :cond_1
    return-void
    .line 25
.end method

.method public final setAnimator(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    .line 2
    if-nez p1, :cond_0

    .line 4
    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelUpdateWhenAnimatorEnds:Z

    .line 6
    if-eqz p1, :cond_0

    .line 8
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelUpdateWhenAnimatorEnds:Z

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateExpandedHeightToMaxHeight()V

    .line 13
    :cond_0
    return-void
    .line 16
.end method

.method public setClosing(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mClosing:Z

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mClosing:Z

    .line 6
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    .line 8
    iget-object v0, v0, Lcom/android/systemui/shade/ShadeExpansionStateManager;->shadeStateEventsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 25
    check-cast v1, Lcom/android/systemui/shade/ShadeStateEvents$ShadeStateEventsListener;

    .line 26
    invoke-interface {v1, p1}, Lcom/android/systemui/shade/ShadeStateEvents$ShadeStateEventsListener;->onPanelCollapsingChanged(Z)V

    .line 28
    goto :goto_0

    .line 31
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 32
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsClosing:Z

    .line 34
    return-void
    .line 36
.end method

.method public final setDozing(ZZ)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozing:Z

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 7
    invoke-virtual {v0, p1}, Lcom/android/systemui/shade/NotificationPanelView;->setDozing(Z)V

    .line 9
    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozing:Z

    .line 12
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 14
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 16
    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setDozing(ZZ)V

    .line 18
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomAreaInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;

    .line 21
    iget-object v2, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    .line 23
    check-cast v2, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    .line 25
    iget-object v2, v2, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->_animateBottomAreaDozingTransitions:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 27
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    move-result-object v3

    .line 32
    invoke-virtual {v2, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 33
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    .line 36
    iget-boolean v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozing:Z

    .line 38
    iput-boolean v3, v2, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mDozing:Z

    .line 40
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 42
    iput-boolean v3, v2, Lcom/android/systemui/shade/QuickSettingsController;->mDozing:Z

    .line 44
    if-eqz p1, :cond_1

    .line 46
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBottomAreaShadeAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 48
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 50
    :cond_1
    iget v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 53
    const/4 v3, 0x1

    .line 55
    if-eq v2, v3, :cond_2

    .line 56
    const/4 v3, 0x2

    .line 58
    if-ne v2, v3, :cond_3

    .line 59
    :cond_2
    iget-object v1, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    .line 61
    check-cast v1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    .line 63
    iget-object v1, v1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->_animateBottomAreaDozingTransitions:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 65
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 67
    move-result-object v2

    .line 70
    invoke-virtual {v1, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 71
    iget-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozing:Z

    .line 74
    if-nez v1, :cond_3

    .line 76
    if-eqz p2, :cond_3

    .line 78
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    .line 80
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->animateKeyguardStatusBarIn()V

    .line 82
    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 85
    const/4 v2, 0x0

    .line 87
    if-eqz p1, :cond_4

    .line 88
    move p1, v1

    .line 90
    goto :goto_0

    .line 91
    :cond_4
    move p1, v2

    .line 92
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 93
    check-cast v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 95
    iget-object v4, v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDarkAnimator:Landroid/animation/ValueAnimator;

    .line 97
    if-eqz v4, :cond_6

    .line 99
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 101
    move-result v4

    .line 104
    if-eqz v4, :cond_6

    .line 105
    if-eqz p2, :cond_5

    .line 107
    iget v4, v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDozeAmountTarget:F

    .line 109
    cmpl-float v4, v4, p1

    .line 111
    if-nez v4, :cond_5

    .line 113
    goto :goto_2

    .line 115
    :cond_5
    iget-object v4, v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDarkAnimator:Landroid/animation/ValueAnimator;

    .line 116
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 118
    :cond_6
    iget-object v4, v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mView:Landroid/view/View;

    .line 121
    if-eqz v4, :cond_7

    .line 123
    invoke-virtual {v4}, Landroid/view/View;->isAttachedToWindow()Z

    .line 125
    move-result v4

    .line 128
    if-nez v4, :cond_8

    .line 129
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 131
    move-result v4

    .line 134
    if-eqz v4, :cond_8

    .line 135
    iput-object v0, v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mView:Landroid/view/View;

    .line 137
    :cond_8
    iput p1, v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDozeAmountTarget:F

    .line 139
    if-eqz p2, :cond_d

    .line 141
    iget p1, v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDozeAmount:F

    .line 143
    cmpl-float v0, p1, v2

    .line 145
    if-eqz v0, :cond_9

    .line 147
    cmpl-float v0, p1, v1

    .line 149
    if-nez v0, :cond_b

    .line 151
    :cond_9
    iget-boolean v0, v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    .line 153
    if-eqz v0, :cond_a

    .line 155
    sget-object v0, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 157
    goto :goto_1

    .line 159
    :cond_a
    sget-object v0, Lcom/android/app/animation/Interpolators;->TOUCH_RESPONSE_REVERSE:Landroid/view/animation/Interpolator;

    .line 160
    :goto_1
    iput-object v0, v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDozeInterpolator:Landroid/view/animation/Interpolator;

    .line 162
    :cond_b
    cmpl-float p1, p1, v1

    .line 164
    if-nez p1, :cond_c

    .line 166
    iget-boolean p1, v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    .line 168
    if-nez p1, :cond_c

    .line 170
    const p1, 0x3f7d70a4    # 0.99f

    .line 172
    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->setDozeAmountInternal(F)V

    .line 175
    :cond_c
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->createDarkAnimator()Landroid/animation/ObjectAnimator;

    .line 178
    move-result-object p1

    .line 181
    iput-object p1, v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDarkAnimator:Landroid/animation/ValueAnimator;

    .line 182
    goto :goto_2

    .line 184
    :cond_d
    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->setDozeAmountInternal(F)V

    .line 185
    :goto_2
    invoke-virtual {p0, p2}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateKeyguardStatusViewAlignment(Z)V

    .line 188
    return-void
    .line 191
.end method

.method public setExpandedFraction(F)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->getMaxPanelTransitionDistance()I

    .line 2
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    mul-float/2addr v0, p1

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->setExpandedHeight(F)V

    .line 8
    return-void
    .line 11
.end method

.method setExpandedHeight(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->setExpandedHeightInternal(F)V

    .line 2
    return-void
    .line 5
.end method

.method public setExpandedHeightInternal(F)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    const-string v0, "NotificationPanelView"

    .line 8
    const-string v1, "ExpandedHeight set to NaN"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_0
    new-instance v0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda12;

    .line 15
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda12;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;F)V

    .line 17
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 20
    check-cast p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 22
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->batchApplyWindowLayoutParams(Ljava/lang/Runnable;)V

    .line 24
    return-void
    .line 27
.end method

.method public setHeadsUpDraggingStartingHeight(I)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpStartHeight:I

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSplitShadeEnabled:Z

    .line 4
    if-eqz v0, :cond_3

    .line 6
    int-to-double v0, p1

    .line 8
    const-wide/high16 v2, 0x4004000000000000L    # 2.5

    .line 9
    mul-double/2addr v0, v2

    .line 11
    sget-object p1, Lcom/android/systemui/flags/Flags;->LARGE_SHADE_GRANULAR_ALPHA_INTERPOLATION:Lcom/android/systemui/flags/ReleasedFlag;

    .line 12
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 14
    check-cast v2, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 16
    invoke-virtual {v2, p1}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 18
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSplitShadeFullTransitionDistance:I

    .line 24
    goto :goto_0

    .line 26
    :cond_0
    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSplitShadeScrimTransitionDistance:I

    .line 27
    :goto_0
    int-to-double v2, p1

    .line 29
    cmpl-double p1, v0, v2

    .line 30
    if-lez p1, :cond_1

    .line 32
    const/4 p1, 0x1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/4 p1, 0x0

    .line 36
    :goto_1
    if-eqz p1, :cond_2

    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->getMaxPanelTransitionDistance()I

    .line 39
    move-result p1

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSplitShadeFullTransitionDistance:I

    .line 44
    :goto_2
    int-to-float p1, p1

    .line 46
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpStartHeight:I

    .line 47
    :goto_3
    int-to-float v0, v0

    .line 49
    div-float/2addr v0, p1

    .line 50
    goto :goto_4

    .line 51
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->getMaxPanelHeight()I

    .line 52
    move-result p1

    .line 55
    int-to-float p1, p1

    .line 56
    const/4 v0, 0x0

    .line 57
    cmpl-float v1, p1, v0

    .line 58
    if-lez v1, :cond_4

    .line 60
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpStartHeight:I

    .line 62
    goto :goto_3

    .line 64
    :cond_4
    :goto_4
    invoke-direct {p0, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->setPanelScrimMinFraction(F)V

    .line 65
    return-void
    .line 68
.end method

.method public final setIsLaunchAnimationRunning(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsLaunchAnimationRunning:Z

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsLaunchAnimationRunning:Z

    .line 4
    if-eq v0, p1, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeExpansionStateManager;->shadeStateEventsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object p0

    .line 15
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 25
    check-cast v0, Lcom/android/systemui/shade/ShadeStateEvents$ShadeStateEventsListener;

    .line 26
    invoke-interface {v0, p1}, Lcom/android/systemui/shade/ShadeStateEvents$ShadeStateEventsListener;->onLaunchingActivityChanged(Z)V

    .line 28
    goto :goto_0

    .line 31
    :cond_0
    return-void
    .line 32
.end method

.method public final setKeyguardBottomArea(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setIndicationArea(Landroid/view/ViewGroup;)V

    .line 6
    const-class p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;

    .line 9
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    move-result-object p0

    .line 14
    check-cast p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;

    .line 15
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mKeyguardBottomAreaView:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 18
    iget-object v1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mLeftButton:Landroid/widget/ImageView;

    .line 20
    if-eqz v1, :cond_0

    .line 22
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mRightButton:Landroid/widget/ImageView;

    .line 27
    if-eqz v1, :cond_1

    .line 29
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    :cond_1
    iput-object p1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mKeyguardBottomAreaView:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 34
    const v1, 0x7f0a08cc    # @id/start_button

    .line 36
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object v1

    .line 42
    check-cast v1, Landroid/widget/ImageView;

    .line 43
    iput-object v1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mLeftButton:Landroid/widget/ImageView;

    .line 45
    iget-object v1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mKeyguardBottomAreaView:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 47
    if-eqz v1, :cond_2

    .line 49
    const v2, 0x7f0a0329    # @id/end_button

    .line 51
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object v1

    .line 57
    check-cast v1, Landroid/widget/ImageView;

    .line 58
    goto :goto_0

    .line 60
    :cond_2
    move-object v1, v0

    .line 61
    :goto_0
    iput-object v1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mRightButton:Landroid/widget/ImageView;

    .line 62
    iget-object v1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mKeyguardBottomAreaView:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 64
    if-eqz v1, :cond_3

    .line 66
    const v2, 0x7f0a07ad    # @id/right_button_layout

    .line 68
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 71
    move-result-object v1

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    move-object v1, v0

    .line 76
    :goto_1
    check-cast v1, Landroid/widget/LinearLayout;

    .line 77
    iput-object v1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mRightAffordanceViewLayout:Landroid/widget/LinearLayout;

    .line 79
    iget-object v1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mKeyguardBottomAreaView:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 81
    if-eqz v1, :cond_4

    .line 83
    const v2, 0x7f0a04dd    # @id/left_button_layout

    .line 85
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 88
    move-result-object v1

    .line 91
    goto :goto_2

    .line 92
    :cond_4
    move-object v1, v0

    .line 93
    :goto_2
    check-cast v1, Landroid/widget/LinearLayout;

    .line 94
    iput-object v1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mLeftAffordanceViewLayout:Landroid/widget/LinearLayout;

    .line 96
    iget-object v1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mKeyguardBottomAreaView:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 98
    if-eqz v1, :cond_5

    .line 100
    const v2, 0x7f0a07ae    # @id/right_button_tips

    .line 102
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 105
    move-result-object v1

    .line 108
    goto :goto_3

    .line 109
    :cond_5
    move-object v1, v0

    .line 110
    :goto_3
    check-cast v1, Landroid/widget/TextView;

    .line 111
    iput-object v1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mRightAffordanceViewTips:Landroid/widget/TextView;

    .line 113
    iget-object v1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mKeyguardBottomAreaView:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 115
    if-eqz v1, :cond_6

    .line 117
    const v2, 0x7f0a04de    # @id/left_button_tips

    .line 119
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 122
    move-result-object v1

    .line 125
    goto :goto_4

    .line 126
    :cond_6
    move-object v1, v0

    .line 127
    :goto_4
    check-cast v1, Landroid/widget/TextView;

    .line 128
    iput-object v1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mLeftAffordanceViewTips:Landroid/widget/TextView;

    .line 130
    iget-object v1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mKeyguardBottomAreaView:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 132
    if-eqz v1, :cond_7

    .line 134
    const v2, 0x7f0a0487    # @id/keyguard_indication_text_bottom

    .line 136
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 139
    move-result-object v1

    .line 142
    check-cast v1, Landroid/widget/TextView;

    .line 143
    goto :goto_5

    .line 145
    :cond_7
    move-object v1, v0

    .line 146
    :goto_5
    iput-object v1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mIndicationTextBottom:Landroid/widget/TextView;

    .line 147
    iget-object v1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mKeyguardBottomAreaView:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 149
    if-eqz v1, :cond_8

    .line 151
    const v2, 0x7f0a0485    # @id/keyguard_indication_area

    .line 153
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 156
    move-result-object v1

    .line 159
    goto :goto_6

    .line 160
    :cond_8
    move-object v1, v0

    .line 161
    :goto_6
    check-cast v1, Landroid/widget/LinearLayout;

    .line 162
    iput-object v1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mIndicationArea:Landroid/widget/LinearLayout;

    .line 164
    iget-object v1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mLeftButton:Landroid/widget/ImageView;

    .line 166
    if-eqz v1, :cond_9

    .line 168
    new-instance v2, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$setView$1;

    .line 170
    const/4 v3, 0x0

    .line 172
    invoke-direct {v2, p0, v3}, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$setView$1;-><init>(Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;I)V

    .line 173
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    :cond_9
    iget-object v1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mRightButton:Landroid/widget/ImageView;

    .line 179
    if-eqz v1, :cond_a

    .line 181
    new-instance v2, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$setView$1;

    .line 183
    const/4 v3, 0x1

    .line 185
    invoke-direct {v2, p0, v3}, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$setView$1;-><init>(Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;I)V

    .line 186
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    :cond_a
    iget-object v1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mKeyguardBottomAreaView:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 192
    if-eqz v1, :cond_b

    .line 194
    const v0, 0x7f0a04a5    # @id/keyguard_up_arrow

    .line 196
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 199
    move-result-object v0

    .line 202
    :cond_b
    check-cast v0, Landroid/widget/ImageView;

    .line 203
    iput-object v0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mUpArrow:Landroid/widget/ImageView;

    .line 205
    sget v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->$r8$clinit:I

    .line 207
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->isGxzwLowPosition()Z

    .line 209
    move-result v0

    .line 212
    if-nez v0, :cond_c

    .line 213
    goto :goto_7

    .line 215
    :cond_c
    invoke-virtual {p0}, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->updateAffordanceViewTipsLayoutParams()V

    .line 216
    invoke-virtual {p0}, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->updateIndicationTextLayoutParams()V

    .line 219
    new-instance v0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$initGxzwLowPosition$1;

    .line 222
    invoke-direct {v0, p0}, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$initGxzwLowPosition$1;-><init>(Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;)V

    .line 224
    iput-object v0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mGxzwCallback:Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$initGxzwLowPosition$1;

    .line 227
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 229
    move-result-object v0

    .line 232
    iget-object v1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mGxzwCallback:Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$initGxzwLowPosition$1;

    .line 233
    invoke-interface {v0, v1}, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;->registerCallback(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwCallback;)V

    .line 235
    :goto_7
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mLockScreenMagazineController:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 238
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    iget-object v0, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    .line 243
    if-eqz v0, :cond_d

    .line 245
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getElevation()F

    .line 247
    move-result v1

    .line 250
    const/high16 v2, 0x3f800000    # 1.0f

    .line 251
    add-float/2addr v1, v2

    .line 253
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setElevation(F)V

    .line 254
    :cond_d
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mKeyguardPanelViewInjector:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 257
    iget-object v1, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardMoveHelper:Lcom/android/keyguard/KeyguardMoveHelper;

    .line 259
    if-eqz v1, :cond_e

    .line 261
    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardMoveHelper;->updateBottomIcons(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 263
    :cond_e
    iget-object p1, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mMobileKeyGuardViews:Ljava/util/List;

    .line 266
    check-cast p1, Ljava/util/ArrayList;

    .line 268
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 270
    move-result v1

    .line 273
    if-lez v1, :cond_f

    .line 274
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 276
    invoke-virtual {v0}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->initKeyguardViewCollection()V

    .line 279
    :cond_f
    invoke-virtual {p0}, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->updateIcons()V

    .line 282
    return-void
    .line 285
.end method

.method public abstract setKeyguardBottomAreaVisibility(IZ)V
.end method

.method setMaxDisplayedNotifications(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMaxAllowedKeyguardNotifications:I

    .line 2
    return-void
    .line 4
.end method

.method setOverExpansion(F)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOverExpansion:F

    .line 2
    cmpl-float v0, p1, v0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iput p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOverExpansion:F

    .line 9
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSplitShadeEnabled:Z

    .line 11
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 13
    if-eqz v0, :cond_2

    .line 15
    float-to-int v0, p1

    .line 17
    iget-object v1, v1, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 18
    if-eqz v1, :cond_1

    .line 20
    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/qs/QS;->setOverScrollAmount(I)V

    .line 22
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 25
    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    .line 27
    int-to-float v0, v0

    .line 29
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 30
    goto :goto_0

    .line 33
    :cond_2
    iget-object v0, v1, Lcom/android/systemui/shade/QuickSettingsController;->mPanelViewControllerLazy:Ldagger/Lazy;

    .line 34
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 39
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 40
    iget v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNavigationBarBottomHeight:I

    .line 42
    iget-object v0, v1, Lcom/android/systemui/shade/QuickSettingsController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 44
    iget v0, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTopMargin:I

    .line 46
    iget-object v0, v1, Lcom/android/systemui/shade/QuickSettingsController;->mQsFrameTranslateController:Lcom/android/systemui/statusbar/QsFrameTranslateImpl;

    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 53
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 57
    iput p1, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mOverExpansion:F

    .line 59
    const/4 p1, 0x0

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateStackPosition(Z)V

    .line 62
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 65
    return-void
    .line 68
.end method

.method public final setOverExpansionInternal(Z)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    const/high16 p1, -0x40800000    # -1.0f

    .line 5
    iput p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLastGesturedOverExpansion:F

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->setOverExpansion(F)V

    .line 9
    goto :goto_1

    .line 12
    :cond_0
    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLastGesturedOverExpansion:F

    .line 13
    cmpl-float p1, p1, v0

    .line 15
    if-eqz p1, :cond_2

    .line 17
    iput v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLastGesturedOverExpansion:F

    .line 19
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 21
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    .line 23
    move-result p1

    .line 26
    int-to-float p1, p1

    .line 27
    const/high16 v1, 0x40400000    # 3.0f

    .line 28
    div-float/2addr p1, v1

    .line 30
    div-float p1, v0, p1

    .line 31
    invoke-static {p1}, Landroid/util/MathUtils;->saturate(F)F

    .line 33
    move-result p1

    .line 36
    sget-object v1, Lcom/android/app/animation/Interpolators;->EMPHASIZED:Landroid/view/animation/Interpolator;

    .line 37
    const/high16 v1, -0x3f800000    # -4.0f

    .line 39
    mul-float/2addr p1, v1

    .line 41
    float-to-double v1, p1

    .line 42
    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    .line 43
    move-result-wide v1

    .line 46
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 47
    sub-double/2addr v3, v1

    .line 49
    double-to-float p1, v3

    .line 50
    cmpl-float v1, v0, p1

    .line 51
    if-lez v1, :cond_1

    .line 53
    goto :goto_0

    .line 55
    :cond_1
    move v0, p1

    .line 56
    :goto_0
    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelFlingOvershootAmount:F

    .line 57
    mul-float/2addr v0, p1

    .line 59
    const/high16 p1, 0x40000000    # 2.0f

    .line 60
    mul-float/2addr v0, p1

    .line 62
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->setOverExpansion(F)V

    .line 63
    :cond_2
    :goto_1
    return-void
    .line 66
.end method

.method public setTouchSlopExceeded(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchSlopExceeded:Z

    .line 2
    return-void
    .line 4
.end method

.method public startUnlockHintAnimation()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPowerManager:Landroid/os/PowerManager;

    .line 2
    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_4

    .line 8
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 10
    iget v0, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozeAmount:F

    .line 12
    const/4 v1, 0x0

    .line 14
    cmpl-float v0, v0, v1

    .line 15
    if-lez v0, :cond_0

    .line 17
    goto :goto_2

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    .line 20
    if-nez v0, :cond_3

    .line 22
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTracking:Z

    .line 24
    if-eqz v0, :cond_1

    .line 26
    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->notifyExpandingStarted()V

    .line 29
    new-instance v0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda0;

    .line 32
    const/4 v2, 0x6

    .line 34
    invoke-direct {v0, p0, v2}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    .line 35
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->getMaxPanelHeight()I

    .line 38
    move-result v2

    .line 41
    int-to-float v2, v2

    .line 42
    iget v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHintDistance:F

    .line 43
    sub-float/2addr v2, v3

    .line 45
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    .line 46
    move-result v2

    .line 49
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->createHeightAnimator(FF)Landroid/animation/ValueAnimator;

    .line 50
    move-result-object v1

    .line 53
    const-wide/16 v2, 0xfa

    .line 54
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 56
    sget-object v4, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 59
    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 61
    new-instance v4, Lcom/android/systemui/shade/NotificationPanelViewController$9;

    .line 64
    invoke-direct {v4, p0, v0}, Lcom/android/systemui/shade/NotificationPanelViewController$9;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda0;)V

    .line 66
    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 69
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 72
    invoke-virtual {p0, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->setAnimator(Landroid/animation/ValueAnimator;)V

    .line 75
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 78
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getIndicationAreaAnimators()Ljava/util/List;

    .line 80
    move-result-object v0

    .line 83
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 84
    move-result-object v0

    .line 87
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    move-result v1

    .line 91
    if-eqz v1, :cond_2

    .line 92
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    move-result-object v1

    .line 97
    check-cast v1, Landroid/view/ViewPropertyAnimator;

    .line 98
    iget v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHintDistance:F

    .line 100
    neg-float v4, v4

    .line 102
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 103
    move-result-object v4

    .line 106
    invoke-virtual {v4, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 107
    move-result-object v4

    .line 110
    sget-object v5, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 111
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 113
    move-result-object v4

    .line 116
    new-instance v5, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda14;

    .line 117
    invoke-direct {v5, p0, v1}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda14;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;Landroid/view/ViewPropertyAnimator;)V

    .line 119
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 122
    move-result-object v1

    .line 125
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 126
    goto :goto_0

    .line 129
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->onUnlockHintStarted()V

    .line 130
    const/4 v0, 0x1

    .line 133
    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHintAnimationRunning:Z

    .line 134
    :cond_3
    :goto_1
    return-void

    .line 136
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->onUnlockHintStarted()V

    .line 137
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->onUnlockHintFinished()V

    .line 140
    return-void
    .line 143
.end method

.method public final transitionToExpandedShade(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 4
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mGoToFullShadeNeedsAnimation:Z

    .line 7
    iput-wide p1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mGoToFullShadeDelay:J

    .line 9
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 11
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 13
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 16
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 18
    iput-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAnimateNextPositionUpdate:Z

    .line 21
    return-void
    .line 23
.end method

.method public final updateClockAppearance()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarHeaderHeightKeyguard:I

    .line 4
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 6
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 8
    move-result v8

    .line 11
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    .line 12
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->animations:Ljava/util/List;

    .line 14
    instance-of v3, v2, Ljava/util/Collection;

    .line 16
    const/4 v15, 0x1

    .line 18
    const/4 v14, 0x0

    .line 19
    if-eqz v3, :cond_0

    .line 20
    move-object v3, v2

    .line 22
    check-cast v3, Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 25
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    goto :goto_0

    .line 31
    :cond_0
    check-cast v2, Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object v2

    .line 37
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v3

    .line 41
    if-eqz v3, :cond_2

    .line 42
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v3

    .line 47
    check-cast v3, Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;

    .line 48
    invoke-interface {v3}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;->shouldAnimateClockChange()Z

    .line 50
    move-result v3

    .line 53
    if-nez v3, :cond_1

    .line 54
    move v13, v14

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    :goto_0
    move v13, v15

    .line 58
    :goto_1
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    .line 59
    iget-boolean v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSplitShadeEnabled:Z

    .line 61
    if-eqz v3, :cond_9

    .line 63
    iget-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMediaDataManager:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 65
    invoke-virtual {v3}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->hasActiveMediaOrRecommendation()Z

    .line 67
    move-result v3

    .line 70
    iget-object v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 71
    if-eqz v3, :cond_4

    .line 73
    iget-boolean v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozing:Z

    .line 75
    if-eqz v3, :cond_3

    .line 77
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    .line 79
    move-result v3

    .line 82
    if-eqz v3, :cond_3

    .line 83
    move v3, v15

    .line 85
    goto :goto_2

    .line 86
    :cond_3
    move v3, v14

    .line 87
    :goto_2
    if-nez v3, :cond_4

    .line 88
    move v3, v15

    .line 90
    goto :goto_3

    .line 91
    :cond_4
    move v3, v14

    .line 92
    :goto_3
    if-eqz v3, :cond_5

    .line 93
    goto :goto_6

    .line 95
    :cond_5
    iget-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    .line 96
    iget-object v3, v3, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    .line 98
    iget-object v3, v3, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockEventController:Lcom/android/keyguard/ClockEventController;

    .line 100
    iget-object v3, v3, Lcom/android/keyguard/ClockEventController;->clock:Lcom/android/systemui/plugins/ClockController;

    .line 102
    if-eqz v3, :cond_6

    .line 104
    invoke-interface {v3}, Lcom/android/systemui/plugins/ClockController;->getLargeClock()Lcom/android/systemui/plugins/ClockFaceController;

    .line 106
    move-result-object v3

    .line 109
    invoke-interface {v3}, Lcom/android/systemui/plugins/ClockFaceController;->getConfig()Lcom/android/systemui/plugins/ClockFaceConfig;

    .line 110
    move-result-object v3

    .line 113
    invoke-virtual {v3}, Lcom/android/systemui/plugins/ClockFaceConfig;->getHasCustomWeatherDataDisplay()Z

    .line 114
    move-result v3

    .line 117
    if-eqz v3, :cond_6

    .line 118
    move v3, v15

    .line 120
    goto :goto_4

    .line 121
    :cond_6
    move v3, v14

    .line 122
    :goto_4
    if-eqz v3, :cond_8

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->hasVisibleNotifications()Z

    .line 125
    move-result v3

    .line 128
    if-eqz v3, :cond_8

    .line 129
    iget-boolean v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozing:Z

    .line 131
    if-eqz v3, :cond_7

    .line 133
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    .line 135
    move-result v3

    .line 138
    if-eqz v3, :cond_7

    .line 139
    move v3, v15

    .line 141
    goto :goto_5

    .line 142
    :cond_7
    move v3, v14

    .line 143
    :goto_5
    if-eqz v3, :cond_8

    .line 144
    :goto_6
    move v3, v15

    .line 146
    goto :goto_7

    .line 147
    :cond_8
    move v3, v14

    .line 148
    goto :goto_7

    .line 149
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->hasVisibleNotifications()Z

    .line 150
    move-result v3

    .line 153
    :goto_7
    iget-object v2, v2, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    .line 154
    invoke-virtual {v2, v3, v13}, Lcom/android/keyguard/KeyguardClockSwitchController;->displayClock(IZ)V

    .line 156
    invoke-virtual {v0, v15}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateKeyguardStatusViewAlignment(Z)V

    .line 159
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardQsUserSwitchController:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    .line 162
    if-eqz v2, :cond_a

    .line 164
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->getUserIconHeight()I

    .line 166
    move-result v2

    .line 169
    goto :goto_8

    .line 170
    :cond_a
    move v2, v14

    .line 171
    :goto_8
    iget-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    .line 172
    if-eqz v3, :cond_b

    .line 174
    iget-object v2, v3, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    .line 176
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    .line 178
    move-result v2

    .line 181
    :cond_b
    move v4, v2

    .line 182
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->shouldExpandNotifications()Z

    .line 183
    move-result v1

    .line 186
    if-eqz v1, :cond_c

    .line 187
    const/high16 v6, 0x3f800000    # 1.0f

    .line 189
    goto :goto_9

    .line 191
    :cond_c
    iget v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInterpolatedDarkAmount:F

    .line 192
    move v6, v1

    .line 194
    :goto_9
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 195
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUdfpsEnrolled()Z

    .line 197
    move-result v1

    .line 200
    const/high16 v2, -0x40800000    # -1.0f

    .line 201
    if-eqz v1, :cond_f

    .line 203
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    .line 205
    invoke-virtual {v1}, Lcom/android/systemui/biometrics/AuthController;->getUdfpsLocation()Landroid/graphics/Point;

    .line 207
    move-result-object v3

    .line 210
    if-eqz v3, :cond_f

    .line 211
    invoke-virtual {v1}, Lcom/android/systemui/biometrics/AuthController;->getUdfpsLocation()Landroid/graphics/Point;

    .line 213
    move-result-object v3

    .line 216
    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 217
    int-to-float v3, v3

    .line 219
    iget-object v7, v1, Lcom/android/systemui/biometrics/AuthController;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    .line 220
    if-eqz v7, :cond_e

    .line 222
    iget-object v1, v1, Lcom/android/systemui/biometrics/AuthController;->mUdfpsBounds:Landroid/graphics/Rect;

    .line 224
    if-nez v1, :cond_d

    .line 226
    goto :goto_a

    .line 228
    :cond_d
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 229
    move-result v1

    .line 232
    int-to-float v1, v1

    .line 233
    const/high16 v2, 0x40000000    # 2.0f

    .line 234
    div-float v2, v1, v2

    .line 236
    :cond_e
    :goto_a
    sub-float/2addr v3, v2

    .line 238
    iget v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUdfpsMaxYBurnInOffset:F

    .line 239
    sub-float/2addr v3, v1

    .line 241
    move/from16 v16, v3

    .line 242
    goto :goto_b

    .line 244
    :cond_f
    move/from16 v16, v2

    .line 245
    :goto_b
    iget-object v11, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mClockPositionAlgorithm:Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;

    .line 247
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 249
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 251
    iget v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarHeaderHeightKeyguard:I

    .line 254
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    .line 256
    iget-object v3, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 258
    check-cast v3, Lcom/android/keyguard/KeyguardStatusView;

    .line 260
    invoke-virtual {v3}, Landroid/widget/GridLayout;->getHeight()I

    .line 262
    move-result v3

    .line 265
    iget-object v1, v1, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    .line 266
    iget-object v1, v1, Lcom/android/keyguard/KeyguardClockSwitchController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    .line 268
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    add-int/2addr v3, v14

    .line 273
    iget v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOverStretchAmount:F

    .line 274
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 276
    iget-object v9, v1, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 278
    if-eqz v9, :cond_10

    .line 280
    invoke-interface {v9}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    .line 282
    move-result-object v9

    .line 285
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    .line 286
    move-result v9

    .line 289
    goto :goto_c

    .line 290
    :cond_10
    move v9, v14

    .line 291
    :goto_c
    iget v10, v1, Lcom/android/systemui/shade/QuickSettingsController;->mPeekHeight:I

    .line 292
    add-int/2addr v9, v10

    .line 294
    invoke-virtual {v1}, Lcom/android/systemui/shade/QuickSettingsController;->computeExpansionFraction()F

    .line 295
    move-result v10

    .line 298
    iget v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDisplayTopInset:I

    .line 299
    iget-boolean v12, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSplitShadeEnabled:Z

    .line 301
    const-class v18, Lcom/android/keyguard/injector/KeyguardClockInjector;

    .line 303
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 305
    move-result-object v18

    .line 308
    move-object/from16 v14, v18

    .line 309
    check-cast v14, Lcom/android/keyguard/injector/KeyguardClockInjector;

    .line 311
    iget-object v14, v14, Lcom/android/keyguard/injector/KeyguardClockInjector;->mKeyguardClockView:Lcom/android/keyguard/clock/KeyguardClockContainer;

    .line 313
    invoke-virtual {v14}, Lcom/android/keyguard/clock/KeyguardClockContainer;->getClockBottom()I

    .line 315
    move-result v14

    .line 318
    int-to-float v14, v14

    .line 319
    iget-object v15, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    .line 320
    iget-object v15, v15, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    .line 322
    iget-object v15, v15, Lcom/android/keyguard/KeyguardClockSwitchController;->mLargeClockFrame:Landroid/widget/FrameLayout;

    .line 324
    invoke-virtual {v15}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 326
    move-result v15

    .line 329
    move/from16 v19, v1

    .line 330
    if-eqz v15, :cond_11

    .line 332
    const/4 v15, 0x1

    .line 334
    goto :goto_d

    .line 335
    :cond_11
    const/4 v15, 0x0

    .line 336
    :goto_d
    move-object v1, v11

    .line 337
    move-object v0, v11

    .line 338
    move/from16 v11, v19

    .line 339
    move/from16 v17, v13

    .line 341
    move/from16 v13, v16

    .line 343
    invoke-virtual/range {v1 .. v15}, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->setup$com$android$systemui$statusbar$phone$KeyguardClockPositionAlgorithm(IIIIFFZIFIZFFZ)V

    .line 345
    const/4 v1, 0x0

    .line 348
    iput v1, v0, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mDarkAmount:F

    .line 349
    const/4 v2, 0x0

    .line 351
    iput v2, v0, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mMinTopMargin:I

    .line 352
    move-object/from16 v0, p0

    .line 354
    iget-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mClockPositionAlgorithm:Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;

    .line 356
    iget v4, v3, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mPanelExpansion:F

    .line 358
    iget v5, v3, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mDarkAmount:F

    .line 360
    invoke-virtual {v3, v4, v5}, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->getClockY(FF)I

    .line 362
    move-result v4

    .line 365
    iget-object v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    .line 366
    iput v4, v5, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockY:I

    .line 368
    iget v6, v3, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mPanelExpansion:F

    .line 370
    iget v7, v3, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mUserSwitchPreferredY:I

    .line 372
    int-to-float v7, v7

    .line 374
    iget v8, v3, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    .line 375
    neg-int v8, v8

    .line 377
    iget v9, v3, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mUserSwitchHeight:I

    .line 378
    sub-int/2addr v8, v9

    .line 380
    int-to-float v8, v8

    .line 381
    sget-object v9, Lcom/android/app/animation/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    .line 382
    check-cast v9, Landroid/view/animation/PathInterpolator;

    .line 384
    invoke-virtual {v9, v6}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 386
    move-result v6

    .line 389
    invoke-static {v8, v7, v6}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 390
    move-result v6

    .line 393
    iget v7, v3, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mOverStretchAmount:F

    .line 394
    add-float/2addr v6, v7

    .line 396
    float-to-int v6, v6

    .line 397
    iput v6, v5, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->userSwitchY:I

    .line 398
    const/high16 v6, 0x3f800000    # 1.0f

    .line 400
    invoke-virtual {v3, v6, v6}, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->getClockY(FF)I

    .line 402
    move-result v7

    .line 405
    iput v7, v5, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockYFullyDozing:I

    .line 406
    iget v7, v3, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mDarkAmount:F

    .line 408
    invoke-virtual {v3, v6, v7}, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->getClockY(FF)I

    .line 410
    move-result v7

    .line 413
    int-to-float v7, v7

    .line 414
    int-to-float v4, v4

    .line 415
    cmpl-float v7, v7, v4

    .line 416
    if-nez v7, :cond_12

    .line 418
    move v12, v6

    .line 420
    goto :goto_e

    .line 421
    :cond_12
    iget v7, v3, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mDarkAmount:F

    .line 422
    invoke-virtual {v3, v6, v7}, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->getClockY(FF)I

    .line 424
    move-result v7

    .line 427
    int-to-float v7, v7

    .line 428
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    .line 429
    move-result v7

    .line 432
    div-float/2addr v4, v7

    .line 433
    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    .line 434
    move-result v12

    .line 437
    :goto_e
    iget v4, v3, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mQsExpansion:F

    .line 438
    sub-float v4, v6, v4

    .line 440
    mul-float/2addr v4, v12

    .line 442
    invoke-static {v4, v1, v6}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 443
    move-result v4

    .line 446
    iput v4, v5, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockAlpha:F

    .line 447
    iget v4, v3, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mClockBottom:F

    .line 449
    float-to-int v4, v4

    .line 451
    iput v4, v5, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    .line 452
    iget-boolean v4, v3, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mBypassEnabled:Z

    .line 454
    if-eqz v4, :cond_13

    .line 456
    iget v4, v3, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mUnlockedStackScrollerPadding:I

    .line 458
    goto :goto_10

    .line 460
    :cond_13
    iget-boolean v4, v3, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mIsSplitShade:Z

    .line 461
    if-eqz v4, :cond_14

    .line 463
    iget v4, v3, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mDarkAmount:F

    .line 465
    invoke-virtual {v3, v6, v4}, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->getClockY(FF)I

    .line 467
    move-result v4

    .line 470
    iget v7, v3, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mUserSwitchHeight:I

    .line 471
    goto :goto_f

    .line 473
    :cond_14
    iget v4, v3, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mDarkAmount:F

    .line 474
    invoke-virtual {v3, v6, v4}, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->getClockY(FF)I

    .line 476
    move-result v4

    .line 479
    iget v7, v3, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    .line 480
    :goto_f
    add-int/2addr v4, v7

    .line 482
    :goto_10
    iput v4, v5, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPaddingExpanded:I

    .line 483
    iget v4, v3, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mMaxBurnInPreventionOffsetX:I

    .line 485
    const/4 v7, 0x1

    .line 487
    invoke-static {v4, v7}, Lcom/android/systemui/doze/util/BurnInHelperKt;->getBurnInOffset(IZ)I

    .line 488
    move-result v4

    .line 491
    int-to-float v4, v4

    .line 492
    iget v8, v3, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mDarkAmount:F

    .line 493
    invoke-static {v1, v4, v8}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    .line 495
    move-result v1

    .line 498
    float-to-int v1, v1

    .line 499
    iput v1, v5, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockX:I

    .line 500
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 502
    move-result-wide v8

    .line 505
    long-to-float v1, v8

    .line 506
    const v4, 0x476a6000    # 60000.0f

    .line 507
    div-float/2addr v1, v4

    .line 510
    const v4, 0x3e4ccccd    # 0.2f

    .line 511
    const/high16 v8, 0x43350000    # 181.0f

    .line 514
    invoke-static {v1, v4, v8}, Lcom/android/systemui/doze/util/BurnInHelperKt;->zigzag(FFF)F

    .line 516
    move-result v1

    .line 519
    const v4, 0x3f4ccccd    # 0.8f

    .line 520
    add-float/2addr v1, v4

    .line 523
    iget v4, v3, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mDarkAmount:F

    .line 524
    sub-float v12, v6, v4

    .line 526
    invoke-static {v1, v6, v12}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    .line 528
    move-result v1

    .line 531
    iput v1, v5, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockScale:F

    .line 532
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    .line 534
    iget-boolean v4, v3, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mIsSplitShade:Z

    .line 536
    if-eqz v4, :cond_15

    .line 538
    iget v3, v3, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mSplitShadeTargetTopMargin:I

    .line 540
    goto :goto_11

    .line 542
    :cond_15
    iget v3, v3, Lcom/android/keyguard/clock/MiuiKeyguardClockPositionAlgorithm;->mMinTopMargin:I

    .line 543
    :goto_11
    iget-object v1, v1, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    .line 545
    iget-object v1, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 547
    check-cast v1, Lcom/android/keyguard/KeyguardClockSwitch;

    .line 549
    iget v4, v1, Lcom/android/keyguard/KeyguardClockSwitch;->screenOffsetYPadding:I

    .line 551
    if-eq v4, v3, :cond_16

    .line 553
    iput v3, v1, Lcom/android/keyguard/KeyguardClockSwitch;->screenOffsetYPadding:I

    .line 555
    :cond_16
    iget v1, v5, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockX:I

    .line 557
    iget v3, v5, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockY:I

    .line 559
    iget-object v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomAreaInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;

    .line 561
    iget-object v4, v4, Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    .line 563
    check-cast v4, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    .line 565
    iget-object v4, v4, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->_clockPosition:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 567
    new-instance v6, Lcom/android/systemui/common/shared/model/Position;

    .line 569
    invoke-direct {v6, v1, v3}, Lcom/android/systemui/common/shared/model/Position;-><init>(II)V

    .line 571
    invoke-virtual {v4, v6}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 574
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 577
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->isAddOrRemoveAnimationPending()Z

    .line 579
    move-result v1

    .line 582
    if-nez v1, :cond_17

    .line 583
    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAnimateNextPositionUpdate:Z

    .line 585
    if-eqz v1, :cond_18

    .line 587
    :cond_17
    if-eqz v17, :cond_18

    .line 589
    move v15, v7

    .line 591
    goto :goto_12

    .line 592
    :cond_18
    move v15, v2

    .line 593
    :goto_12
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    .line 594
    iget v2, v5, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockX:I

    .line 596
    iget v3, v5, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockY:I

    .line 598
    iget v4, v5, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockScale:F

    .line 600
    invoke-virtual {v1, v4, v2, v3, v15}, Lcom/android/keyguard/KeyguardStatusViewController;->updatePosition(FIIZ)V

    .line 602
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardQsUserSwitchController:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    .line 605
    if-eqz v1, :cond_19

    .line 607
    iget v2, v5, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockX:I

    .line 609
    iget v3, v5, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->userSwitchY:I

    .line 611
    iget-object v1, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 613
    check-cast v1, Landroid/widget/FrameLayout;

    .line 615
    sget-object v4, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 617
    int-to-float v3, v3

    .line 619
    sget-object v6, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 620
    invoke-static {v1, v4, v3, v6, v15}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    .line 622
    sget-object v3, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->TRANSLATION_X:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 625
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 627
    move-result v2

    .line 630
    neg-int v2, v2

    .line 631
    int-to-float v2, v2

    .line 632
    invoke-static {v1, v3, v2, v6, v15}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    .line 633
    :cond_19
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    .line 636
    if-eqz v1, :cond_1a

    .line 638
    iget v2, v5, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockX:I

    .line 640
    iget v3, v5, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->userSwitchY:I

    .line 642
    iget-object v4, v1, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    .line 644
    sget-object v5, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 646
    int-to-float v3, v3

    .line 648
    sget-object v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 649
    invoke-static {v4, v5, v3, v6, v15}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    .line 651
    iget-object v3, v1, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    .line 654
    sget-object v4, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->TRANSLATION_X:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 656
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 658
    move-result v2

    .line 661
    neg-int v2, v2

    .line 662
    int-to-float v2, v2

    .line 663
    invoke-static {v3, v4, v2, v6, v15}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    .line 664
    new-instance v2, Landroid/graphics/Rect;

    .line 667
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 669
    iget-object v3, v1, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    .line 672
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 674
    iget-object v3, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 677
    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;

    .line 679
    iget-object v4, v1, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    .line 681
    invoke-virtual {v3, v4, v2}, Landroid/widget/FrameLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 683
    iget-object v3, v1, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    .line 686
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getTranslationX()F

    .line 688
    move-result v3

    .line 691
    iget v4, v2, Landroid/graphics/Rect;->left:I

    .line 692
    int-to-float v4, v4

    .line 694
    add-float/2addr v3, v4

    .line 695
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 696
    move-result v4

    .line 699
    div-int/lit8 v4, v4, 0x2

    .line 700
    int-to-float v4, v4

    .line 702
    add-float/2addr v3, v4

    .line 703
    float-to-int v3, v3

    .line 704
    iget-object v4, v1, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    .line 705
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getTranslationY()F

    .line 707
    move-result v4

    .line 710
    iget v5, v2, Landroid/graphics/Rect;->top:I

    .line 711
    int-to-float v5, v5

    .line 713
    add-float/2addr v4, v5

    .line 714
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 715
    move-result v2

    .line 718
    div-int/lit8 v2, v2, 0x2

    .line 719
    int-to-float v2, v2

    .line 721
    add-float/2addr v4, v2

    .line 722
    float-to-int v2, v4

    .line 723
    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBackground:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

    .line 724
    iput v3, v1, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mCircleX:I

    .line 726
    iput v2, v1, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mCircleY:I

    .line 728
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->updatePaint()V

    .line 730
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateNotificationTranslucency()V

    .line 733
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateClock()V

    .line 736
    return-void
    .line 739
.end method

.method public final updateExpandedHeight(F)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTracking:Z

    .line 2
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    const/16 v0, 0x3e8

    .line 8
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 10
    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 12
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 15
    move-result v0

    .line 18
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 19
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setExpandingVelocity(F)V

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 24
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 26
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isOnKeyguard()Z

    .line 32
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->getMaxPanelHeight()I

    .line 38
    move-result p1

    .line 41
    int-to-float p1, p1

    .line 42
    :cond_1
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 43
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setExpandedHeight(F)V

    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateKeyguardBottomAreaAlpha()V

    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isOnKeyguard()Z

    .line 51
    move-result p1

    .line 54
    xor-int/lit8 p1, p1, 0x1

    .line 55
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShowIconsWhenExpanded:Z

    .line 57
    if-eq p1, v0, :cond_2

    .line 59
    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShowIconsWhenExpanded:Z

    .line 61
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 63
    iget p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDisplayId:I

    .line 65
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(I)V

    .line 67
    :cond_2
    return-void
    .line 70
.end method

.method public final updateExpandedHeightToMaxHeight()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->getMaxPanelHeight()I

    .line 2
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 7
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    return-void

    .line 13
    :cond_0
    iget v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    .line 14
    cmpl-float v1, v0, v1

    .line 16
    if-nez v1, :cond_1

    .line 18
    return-void

    .line 20
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTracking:Z

    .line 21
    if-eqz v1, :cond_2

    .line 23
    iget-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBlockingExpansionForCurrentTouch:Z

    .line 25
    if-nez v1, :cond_2

    .line 27
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 29
    invoke-virtual {v1}, Lcom/android/systemui/shade/QuickSettingsController;->isTrackingBlocked()Z

    .line 31
    move-result v1

    .line 34
    if-nez v1, :cond_2

    .line 35
    return-void

    .line 37
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    .line 38
    if-eqz v1, :cond_3

    .line 40
    iget-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsSpringBackAnimation:Z

    .line 42
    if-nez v1, :cond_3

    .line 44
    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelUpdateWhenAnimatorEnds:Z

    .line 47
    return-void

    .line 49
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->setExpandedHeight(F)V

    .line 50
    return-void
    .line 53
.end method

.method public abstract updateExpansionAndVisibility()V
.end method

.method public abstract updateKeyguardBottomAreaAlpha()V
.end method

.method public final updateKeyguardStatusViewAlignment(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSplitShadeEnabled:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->hasVisibleNotifications()Z

    .line 7
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 14
    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;

    .line 16
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 18
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 20
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPulsing:Z

    .line 22
    const/4 v2, 0x0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    :cond_1
    move v1, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mWillPlayDelayedDozeAmountAnimation:Z

    .line 29
    if-eqz v0, :cond_3

    .line 31
    goto :goto_0

    .line 33
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozing:Z

    .line 34
    if-eqz v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 38
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    .line 40
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    .line 46
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    .line 48
    iget-boolean v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSplitShadeEnabled:Z

    .line 50
    invoke-virtual {v0, v2, v3, v1, p1}, Lcom/android/keyguard/KeyguardStatusViewController;->updateAlignment(Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;ZZZ)V

    .line 52
    new-instance p1, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda10;

    .line 55
    invoke-direct {p1, v1}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda10;-><init>(Z)V

    .line 57
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardUnfoldTransition:Ljava/util/Optional;

    .line 60
    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 62
    return-void
    .line 65
.end method

.method public final updateMaxDisplayedNotifications(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->computeMaxKeyguardNotifications()I

    .line 4
    move-result p1

    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 9
    move-result p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->setMaxDisplayedNotifications(I)V

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isKeyguardShowing()Z

    .line 16
    move-result p1

    .line 19
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 20
    if-eqz p1, :cond_1

    .line 22
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 24
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 26
    move-result p1

    .line 29
    if-nez p1, :cond_1

    .line 30
    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMaxAllowedKeyguardNotifications:I

    .line 32
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;

    .line 34
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 36
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 38
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setMaxDisplayedNotifications(I)V

    .line 40
    iget p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardNotificationBottomPadding:F

    .line 43
    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 45
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setKeyguardBottomPadding(F)V

    .line 47
    goto :goto_0

    .line 50
    :cond_1
    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;

    .line 51
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 53
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 55
    const/4 p1, -0x1

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setMaxDisplayedNotifications(I)V

    .line 58
    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 61
    const/high16 p1, -0x40800000    # -1.0f

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setKeyguardBottomPadding(F)V

    .line 65
    :goto_0
    return-void
    .line 68
.end method

.method public final updateNotificationTranslucency()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsNeedUpdateTranslucency:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsOcclusionTransitionRunning:Z

    .line 7
    if-eqz v0, :cond_1

    .line 9
    return-void

    .line 11
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mClosingWithAlphaFadeOut:Z

    .line 12
    if-eqz v0, :cond_2

    .line 14
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandingFromHeadsUp:Z

    .line 16
    if-nez v0, :cond_2

    .line 18
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 20
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHasPinnedNotification:Z

    .line 22
    if-nez v0, :cond_2

    .line 24
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->getFadeoutAlpha()F

    .line 26
    move-result v0

    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 31
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 33
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mAlpha:F

    .line 35
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 37
    if-eqz v1, :cond_3

    .line 39
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mMagazineAlpha:F

    .line 41
    mul-float/2addr p0, v0

    .line 43
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 44
    :cond_3
    if-eqz v1, :cond_4

    .line 47
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 49
    :cond_4
    return-void
    .line 52
.end method

.method public abstract updatePanelExpanded()V
.end method

.method public abstract updateResources()V
.end method

.method public final updateSystemUiStateFlags()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 8
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPanelExpanded:Z

    .line 10
    if-eqz v0, :cond_0

    .line 12
    move v0, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v2

    .line 16
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    .line 17
    const/high16 v4, 0x40000000    # 2.0f

    .line 19
    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)V

    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyExpanded()Z

    .line 24
    move-result v0

    .line 27
    iget-object v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 28
    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, v4, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 32
    if-nez v0, :cond_1

    .line 34
    move v0, v1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move v0, v2

    .line 38
    :goto_1
    const/4 v5, 0x4

    .line 39
    invoke-virtual {v3, v5, v0}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)V

    .line 40
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyExpanded()Z

    .line 43
    move-result v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    iget-boolean v0, v4, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 49
    if-eqz v0, :cond_2

    .line 51
    goto :goto_2

    .line 53
    :cond_2
    move v1, v2

    .line 54
    :goto_2
    const/16 v0, 0x800

    .line 55
    invoke-virtual {v3, v0, v1}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)V

    .line 57
    iget p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDisplayId:I

    .line 60
    invoke-virtual {v3, p0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    .line 62
    return-void
    .line 65
.end method

.method public final updateViewControllers(Lcom/android/keyguard/KeyguardStatusView;Landroid/widget/FrameLayout;Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewComponentFactory:Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;

    .line 2
    invoke-interface {v0, p1}, Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;->build(Lcom/android/keyguard/KeyguardStatusView;)Lcom/android/keyguard/dagger/KeyguardStatusViewComponent;

    .line 4
    move-result-object p1

    .line 7
    invoke-interface {p1}, Lcom/android/keyguard/dagger/KeyguardStatusViewComponent;->getKeyguardStatusViewController()Lcom/android/keyguard/KeyguardStatusViewController;

    .line 8
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    .line 12
    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->init()V

    .line 14
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    .line 17
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSplitShadeEnabled:Z

    .line 19
    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardStatusViewController;->setSplitShadeEnabled(Z)V

    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateClockAppearance()V

    .line 24
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    .line 27
    const/4 v0, 0x0

    .line 29
    if-eqz p1, :cond_0

    .line 30
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->closeSwitcherIfOpenAndNotSimple(Z)Z

    .line 32
    :cond_0
    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardQsUserSwitchController:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    .line 36
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    .line 38
    const/4 p1, 0x1

    .line 40
    if-eqz p2, :cond_1

    .line 41
    iget-object p3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardQsUserSwitchComponentFactory:Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent$Factory;

    .line 43
    invoke-interface {p3, p2}, Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent$Factory;->build(Landroid/widget/FrameLayout;)Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent;

    .line 45
    move-result-object p2

    .line 48
    invoke-interface {p2}, Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent;->getKeyguardQsUserSwitchController()Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    .line 49
    move-result-object p2

    .line 52
    iput-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardQsUserSwitchController:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    .line 53
    invoke-virtual {p2}, Lcom/android/systemui/util/ViewController;->init()V

    .line 55
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    .line 58
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 60
    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 62
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcherEnabled:Z

    .line 64
    goto :goto_0

    .line 66
    :cond_1
    if-eqz p3, :cond_2

    .line 67
    iget-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardUserSwitcherComponentFactory:Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent$Factory;

    .line 69
    invoke-interface {p2, p3}, Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent$Factory;->build(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;)Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent;

    .line 71
    move-result-object p2

    .line 74
    invoke-interface {p2}, Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent;->getKeyguardUserSwitcherController()Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    .line 75
    move-result-object p2

    .line 78
    iput-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    .line 79
    invoke-virtual {p2}, Lcom/android/systemui/util/ViewController;->init()V

    .line 81
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    .line 84
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 86
    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 88
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcherEnabled:Z

    .line 90
    goto :goto_0

    .line 92
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    .line 93
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 95
    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 97
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcherEnabled:Z

    .line 99
    :goto_0
    return-void
    .line 101
.end method
