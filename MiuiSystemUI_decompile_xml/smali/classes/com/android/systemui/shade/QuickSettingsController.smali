.class public final Lcom/android/systemui/shade/QuickSettingsController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

.field public mAnimateNextNotificationBounds:Z

.field public mAnimating:Z

.field public mAnimatingHiddenFromCollapsed:Z

.field public mAnimatorExpand:Z

.field public mApplyClippingImmediatelyListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;

.field public mBarState:I

.field public mCachedGestureInsets:Landroid/graphics/Insets;

.field public final mCastController:Lcom/android/systemui/statusbar/policy/CastController;

.field public final mClippingAnimationEndBounds:Landroid/graphics/Rect;

.field public mClippingAnimator:Landroid/animation/ValueAnimator;

.field public mCollapsedOnDown:Z

.field public mConflictingExpansionGesture:Z

.field public final mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

.field public mDisplayLeftInset:I

.field public mDisplayRightInset:I

.field public mDistanceForFullShadeTransition:I

.field public mDozing:Z

.field public mEnableClipping:Z

.field public mExpandImmediate:Z

.field public mExpanded:Z

.field public mExpandedWhenExpandingStarted:Z

.field public mExpansionAnimator:Landroid/animation/ValueAnimator;

.field public mExpansionEnabledAmbient:Z

.field public mExpansionEnabledPolicy:Z

.field public mExpansionFromOverscroll:Z

.field public mExpansionHeight:F

.field public mExpansionHeightListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;

.field public mExpansionHeightSetToMaxListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;

.field public final mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field public final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public mFalsingThreshold:I

.field public mFlingQsWithoutClickListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;

.field public mFullyExpanded:Z

.field public mInitialHeightOnTouch:F

.field public mInitialTouchX:F

.field public mInitialTouchY:F

.field public final mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

.field public final mInterceptRegion:Landroid/graphics/Region;

.field public mIsFullWidth:Z

.field public mIsPulseExpansionResettingAnimator:Z

.field public mIsTranslationResettingAnimator:Z

.field public final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field public final mKeyguardFaceAuthInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardFaceAuthInteractor;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mLargeScreenShadeHeaderHeight:I

.field public final mLastClipBounds:Landroid/graphics/Rect;

.field public mLastOverscroll:F

.field public mLastShadeFlingWasExpanding:Z

.field public final mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

.field public final mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

.field public mLockscreenNotificationPadding:I

.field public final mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

.field public mMaxExpansionHeight:I

.field public final mMediaDataManager:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

.field public final mMediaHierarchyManager:Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public mMinExpansionHeight:I

.field public mNotificationBoundsAnimationDelay:J

.field public mNotificationBoundsAnimationDuration:J

.field public final mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field public final mPanelView:Lcom/android/systemui/shade/NotificationPanelView;

.field public final mPanelViewControllerLazy:Ldagger/Lazy;

.field public mPanelViewSpringLength:F

.field public mPeekHeight:I

.field public final mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

.field public mQs:Lcom/android/systemui/plugins/qs/QS;

.field public final mQsCollapseExpandAction:Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda3;

.field public final mQsFrame:Landroid/widget/FrameLayout;

.field public final mQsFrameTranslateController:Lcom/android/systemui/statusbar/QsFrameTranslateImpl;

.field public final mQsHeightListener:Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda2;

.field public final mQsScrollListener:Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda2;

.field public mQsStateUpdateListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;

.field public mQsVelocityTracker:Landroid/view/VelocityTracker;

.field public mQuickQsHeaderHeight:F

.field public final mRecordingController:Lcom/android/systemui/screenrecord/RecordingController;

.field public final mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field public final mResources:Landroid/content/res/Resources;

.field public mScreenCornerRadius:I

.field public final mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field public mScrimCornerRadius:I

.field public mScrimEnabled:Z

.field public mShadeExpandedFraction:F

.field public mShadeExpandedHeight:F

.field public final mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

.field public final mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

.field public final mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

.field public final mShadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

.field public final mShadeTransitionController:Lcom/android/systemui/shade/transition/ShadeTransitionController;

.field public mSizeChangeAnimator:Landroid/animation/ValueAnimator;

.field public mSlopMultiplier:F

.field public mSplitShadeEnabled:Z

.field public mSplitShadeNotificationsScrimMarginBottom:I

.field public mStackScrollerOverscrolling:Z

.field public final mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field public mStatusBarMinHeight:I

.field public mTouchAboveFalsingThreshold:Z

.field public mTouchSlop:I

.field public mTracking:Z

.field public mTrackingPointer:I

.field public mTransitionToFullShadePosition:I

.field public mTransitioningToFullShadeProgress:F

.field public mTranslationForFullShadeTransition:F

.field public mTwoFingerExpandPossible:Z

.field public mUseLargeScreenShadeHeader:Z

.field public mVisible:Z

.field public ncSwitching:Z


# direct methods
.method public static -$$Nest$mgetEdgePosition(Lcom/android/systemui/shade/QuickSettingsController;)F
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    const-class v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 5
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 11
    iget-boolean v0, v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->useControlCenter:Z

    .line 13
    iget-object v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 15
    if-eqz v0, :cond_0

    .line 17
    iget p0, v1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTopPadding:I

    .line 19
    int-to-float p0, p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQuickQsHeaderHeight:F

    .line 23
    iget v0, v1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionFraction:F

    .line 25
    mul-float/2addr p0, v0

    .line 27
    iget v2, v1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackY:F

    .line 28
    iget v3, v1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTopMargin:I

    .line 30
    int-to-float v3, v3

    .line 32
    mul-float/2addr v3, v0

    .line 33
    add-float/2addr v3, v2

    .line 34
    iget v0, v1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mScrollY:I

    .line 35
    int-to-float v0, v0

    .line 37
    sub-float/2addr v3, v0

    .line 38
    invoke-static {p0, v3}, Ljava/lang/Math;->max(FF)F

    .line 39
    move-result p0

    .line 42
    :goto_0
    return p0
    .line 43
.end method

.method public constructor <init>(Ldagger/Lazy;Lcom/android/systemui/shade/NotificationPanelView;Lcom/android/systemui/statusbar/QsFrameTranslateImpl;Lcom/android/systemui/shade/transition/ShadeTransitionController;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/shade/ShadeHeaderController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/media/controls/pipeline/MediaDataManager;Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/screenrecord/RecordingController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/classifier/FalsingCollector;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/systemui/shade/ShadeLogger;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/keyguard/domain/interactor/KeyguardFaceAuthInteractor;Lcom/android/systemui/shade/data/repository/ShadeRepository;Lcom/android/systemui/statusbar/policy/CastController;)V
    .locals 8

    move-object v0, p0

    move-object v1, p2

    move-object v2, p5

    move-object/from16 v3, p11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x1

    .line 2
    iput-boolean v4, v0, Lcom/android/systemui/shade/QuickSettingsController;->mScrimEnabled:Z

    const/4 v5, 0x0

    .line 3
    iput v5, v0, Lcom/android/systemui/shade/QuickSettingsController;->mDisplayRightInset:I

    .line 4
    iput v5, v0, Lcom/android/systemui/shade/QuickSettingsController;->mDisplayLeftInset:I

    const/4 v6, 0x0

    .line 5
    iput v6, v0, Lcom/android/systemui/shade/QuickSettingsController;->mShadeExpandedHeight:F

    .line 6
    iput-boolean v4, v0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionEnabledPolicy:Z

    .line 7
    iput-boolean v4, v0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionEnabledAmbient:Z

    .line 8
    new-instance v7, Landroid/graphics/Region;

    invoke-direct {v7}, Landroid/graphics/Region;-><init>()V

    iput-object v7, v0, Lcom/android/systemui/shade/QuickSettingsController;->mInterceptRegion:Landroid/graphics/Region;

    .line 9
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v0, Lcom/android/systemui/shade/QuickSettingsController;->mClippingAnimationEndBounds:Landroid/graphics/Rect;

    .line 10
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v0, Lcom/android/systemui/shade/QuickSettingsController;->mLastClipBounds:Landroid/graphics/Rect;

    const/4 v7, 0x0

    .line 11
    iput-object v7, v0, Lcom/android/systemui/shade/QuickSettingsController;->mClippingAnimator:Landroid/animation/ValueAnimator;

    .line 12
    new-instance v7, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/shade/QuickSettingsController;)V

    iput-object v7, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQsHeightListener:Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda2;

    .line 13
    new-instance v7, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda3;

    invoke-direct {v7, v5, p0}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    iput-object v7, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQsCollapseExpandAction:Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda3;

    .line 14
    new-instance v7, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/shade/QuickSettingsController;)V

    iput-object v7, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQsScrollListener:Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda2;

    .line 15
    iput-boolean v5, v0, Lcom/android/systemui/shade/QuickSettingsController;->ncSwitching:Z

    .line 16
    iput v6, v0, Lcom/android/systemui/shade/QuickSettingsController;->mPanelViewSpringLength:F

    move-object v5, p1

    .line 17
    iput-object v5, v0, Lcom/android/systemui/shade/QuickSettingsController;->mPanelViewControllerLazy:Ldagger/Lazy;

    .line 18
    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mPanelView:Lcom/android/systemui/shade/NotificationPanelView;

    const v5, 0x7f0a0761    # @id/qs_frame

    .line 19
    invoke-virtual {p2, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQsFrame:Landroid/widget/FrameLayout;

    const v5, 0x7f0a0481    # @id/keyguard_header

    .line 20
    invoke-virtual {p2, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iput-object v5, v0, Lcom/android/systemui/shade/QuickSettingsController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 21
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mResources:Landroid/content/res/Resources;

    .line 22
    invoke-static {v1}, Lcom/android/systemui/util/LargeScreenUtils;->shouldUseSplitNotificationShade(Landroid/content/res/Resources;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    move-object v1, p3

    .line 23
    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQsFrameTranslateController:Lcom/android/systemui/statusbar/QsFrameTranslateImpl;

    move-object v1, p4

    .line 24
    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mShadeTransitionController:Lcom/android/systemui/shade/transition/ShadeTransitionController;

    .line 25
    iput-object v2, v0, Lcom/android/systemui/shade/QuickSettingsController;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    .line 26
    new-instance v1, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda3;

    invoke-direct {v1, v4, p0}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 27
    iput-object v1, v2, Lcom/android/systemui/statusbar/PulseExpansionHandler;->pulseExpandAbortListener:Ljava/lang/Runnable;

    move-object v1, p6

    .line 28
    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    move-object v1, p7

    .line 29
    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    move-object/from16 v1, p8

    .line 30
    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v1, p9

    .line 31
    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    move-object/from16 v1, p10

    .line 32
    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 33
    iput-object v3, v0, Lcom/android/systemui/shade/QuickSettingsController;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    move-object/from16 v1, p12

    .line 34
    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    move-object/from16 v1, p13

    .line 35
    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    move-object/from16 v1, p14

    .line 36
    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 v1, p15

    .line 37
    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-object/from16 v1, p16

    .line 38
    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v1, p17

    .line 39
    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    move-object/from16 v1, p18

    .line 40
    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mMediaDataManager:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    move-object/from16 v1, p19

    .line 41
    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mMediaHierarchyManager:Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;

    move-object/from16 v1, p20

    .line 42
    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    move-object/from16 v1, p21

    .line 43
    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mRecordingController:Lcom/android/systemui/screenrecord/RecordingController;

    move-object/from16 v1, p22

    .line 44
    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object/from16 v1, p23

    .line 45
    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    move-object/from16 v1, p24

    .line 46
    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v1, p25

    .line 47
    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    move-object/from16 v1, p26

    .line 48
    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move-object/from16 v1, p28

    .line 49
    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    move-object/from16 v1, p30

    .line 50
    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mKeyguardFaceAuthInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardFaceAuthInteractor;

    move-object/from16 v1, p32

    .line 51
    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mCastController:Lcom/android/systemui/statusbar/policy/CastController;

    move-object/from16 v1, p27

    .line 52
    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    move-object/from16 v1, p31

    .line 53
    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mShadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    .line 54
    new-instance v1, Lcom/android/systemui/shade/QuickSettingsController$LockscreenShadeTransitionCallback;

    invoke-direct {v1, p0}, Lcom/android/systemui/shade/QuickSettingsController$LockscreenShadeTransitionCallback;-><init>(Lcom/android/systemui/shade/QuickSettingsController;)V

    .line 55
    iget-object v2, v3, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->callbacks:Ljava/util/List;

    .line 56
    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 57
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object/from16 v1, p29

    .line 58
    invoke-virtual {v1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    return-void
.end method


# virtual methods
.method public final applyClippingImmediately(IIIIZ)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    move/from16 v2, p2

    .line 6
    move/from16 v3, p3

    .line 8
    move/from16 v4, p4

    .line 10
    move/from16 v5, p5

    .line 12
    iget v6, v0, Lcom/android/systemui/shade/QuickSettingsController;->mScrimCornerRadius:I

    .line 14
    iget-object v7, v0, Lcom/android/systemui/shade/QuickSettingsController;->mLastClipBounds:Landroid/graphics/Rect;

    .line 16
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 18
    iget-boolean v8, v0, Lcom/android/systemui/shade/QuickSettingsController;->mIsFullWidth:Z

    .line 21
    iget-object v9, v0, Lcom/android/systemui/shade/QuickSettingsController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 23
    const/4 v10, 0x0

    .line 25
    const/4 v11, 0x0

    .line 26
    if-eqz v8, :cond_4

    .line 27
    iget-boolean v6, v0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 29
    if-eqz v6, :cond_1

    .line 31
    iget-object v6, v0, Lcom/android/systemui/shade/QuickSettingsController;->mRecordingController:Lcom/android/systemui/screenrecord/RecordingController;

    .line 33
    monitor-enter v6

    .line 35
    :try_start_0
    iget-boolean v8, v6, Lcom/android/systemui/screenrecord/RecordingController;->mIsRecording:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit v6

    .line 38
    if-nez v8, :cond_1

    .line 39
    iget-object v6, v0, Lcom/android/systemui/shade/QuickSettingsController;->mCastController:Lcom/android/systemui/statusbar/policy/CastController;

    .line 41
    check-cast v6, Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    .line 43
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->getCastDevices()Ljava/util/List;

    .line 45
    move-result-object v6

    .line 48
    invoke-interface {v6}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 49
    move-result-object v6

    .line 52
    new-instance v8, Lcom/android/systemui/statusbar/policy/CastControllerImpl$$ExternalSyntheticLambda0;

    .line 53
    invoke-direct {v8}, Lcom/android/systemui/statusbar/policy/CastControllerImpl$$ExternalSyntheticLambda0;-><init>()V

    .line 55
    invoke-interface {v6, v8}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 58
    move-result v6

    .line 61
    if-eqz v6, :cond_0

    .line 62
    goto :goto_0

    .line 64
    :cond_0
    iget v6, v0, Lcom/android/systemui/shade/QuickSettingsController;->mScreenCornerRadius:I

    .line 65
    int-to-float v6, v6

    .line 67
    goto :goto_1

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    move-object v1, v0

    .line 70
    monitor-exit v6

    .line 71
    throw v1

    .line 72
    :cond_1
    :goto_0
    move v6, v10

    .line 73
    :goto_1
    iget v8, v0, Lcom/android/systemui/shade/QuickSettingsController;->mScrimCornerRadius:I

    .line 74
    int-to-float v8, v8

    .line 76
    int-to-float v12, v2

    .line 77
    div-float/2addr v12, v8

    .line 78
    const/high16 v13, 0x3f800000    # 1.0f

    .line 79
    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    .line 81
    move-result v12

    .line 84
    invoke-static {v6, v8, v12}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 85
    move-result v8

    .line 88
    float-to-int v8, v8

    .line 89
    iget-boolean v12, v0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 90
    if-eqz v12, :cond_2

    .line 92
    goto :goto_2

    .line 94
    :cond_2
    invoke-virtual {v0, v6}, Lcom/android/systemui/shade/QuickSettingsController;->calculateBottomCornerRadius(F)I

    .line 95
    move-result v6

    .line 98
    int-to-float v6, v6

    .line 99
    :goto_2
    iget-object v12, v9, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    .line 100
    if-nez v12, :cond_3

    .line 102
    goto :goto_3

    .line 104
    :cond_3
    invoke-virtual {v12, v6}, Lcom/android/systemui/scrim/ScrimView;->setBottomEdgeRadius(F)V

    .line 105
    :goto_3
    move v6, v8

    .line 108
    move v8, v5

    .line 109
    goto :goto_4

    .line 110
    :cond_4
    move v8, v11

    .line 111
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/QuickSettingsController;->isQsFragmentCreated()Z

    .line 112
    move-result v12

    .line 115
    if-eqz v12, :cond_c

    .line 116
    iget-object v12, v0, Lcom/android/systemui/shade/QuickSettingsController;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    .line 118
    iget-boolean v12, v12, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isExpanding:Z

    .line 120
    iget v13, v0, Lcom/android/systemui/shade/QuickSettingsController;->mTransitioningToFullShadeProgress:F

    .line 122
    cmpl-float v13, v13, v10

    .line 124
    if-gtz v13, :cond_5

    .line 126
    if-nez v12, :cond_5

    .line 128
    iget-object v13, v0, Lcom/android/systemui/shade/QuickSettingsController;->mClippingAnimator:Landroid/animation/ValueAnimator;

    .line 130
    if-eqz v13, :cond_8

    .line 132
    iget-boolean v13, v0, Lcom/android/systemui/shade/QuickSettingsController;->mIsTranslationResettingAnimator:Z

    .line 134
    if-nez v13, :cond_5

    .line 136
    iget-boolean v13, v0, Lcom/android/systemui/shade/QuickSettingsController;->mIsPulseExpansionResettingAnimator:Z

    .line 138
    if-eqz v13, :cond_8

    .line 140
    :cond_5
    if-nez v12, :cond_7

    .line 142
    iget-boolean v12, v0, Lcom/android/systemui/shade/QuickSettingsController;->mIsPulseExpansionResettingAnimator:Z

    .line 144
    if-eqz v12, :cond_6

    .line 146
    goto :goto_5

    .line 148
    :cond_6
    iget-boolean v12, v0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 149
    if-nez v12, :cond_8

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/QuickSettingsController;->getHeaderHeight()I

    .line 153
    move-result v10

    .line 156
    sub-int v10, v2, v10

    .line 157
    int-to-float v10, v10

    .line 159
    const v12, 0x3e333333    # 0.175f

    .line 160
    mul-float/2addr v10, v12

    .line 163
    goto :goto_6

    .line 164
    :cond_7
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/QuickSettingsController;->getHeaderHeight()I

    .line 165
    move-result v12

    .line 168
    sub-int v12, v2, v12

    .line 169
    int-to-float v12, v12

    .line 171
    const/high16 v13, 0x40000000    # 2.0f

    .line 172
    div-float/2addr v12, v13

    .line 174
    invoke-static {v10, v12}, Ljava/lang/Math;->max(FF)F

    .line 175
    move-result v10

    .line 178
    :cond_8
    :goto_6
    iput v10, v0, Lcom/android/systemui/shade/QuickSettingsController;->mTranslationForFullShadeTransition:F

    .line 179
    iget-object v10, v0, Lcom/android/systemui/shade/QuickSettingsController;->mPanelViewControllerLazy:Ldagger/Lazy;

    .line 181
    invoke-interface {v10}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 183
    move-result-object v10

    .line 186
    check-cast v10, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 187
    iget v10, v10, Lcom/android/systemui/shade/NotificationPanelViewController;->mNavigationBarBottomHeight:I

    .line 189
    iget-object v10, v0, Lcom/android/systemui/shade/QuickSettingsController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 191
    iget v10, v10, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTopMargin:I

    .line 193
    iget-object v10, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQsFrameTranslateController:Lcom/android/systemui/statusbar/QsFrameTranslateImpl;

    .line 195
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    iget-object v10, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQsFrame:Landroid/widget/FrameLayout;

    .line 200
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 202
    move-result v12

    .line 205
    iget-boolean v13, v0, Lcom/android/systemui/shade/QuickSettingsController;->mEnableClipping:Z

    .line 206
    if-eqz v13, :cond_9

    .line 208
    int-to-float v13, v2

    .line 210
    sub-float/2addr v13, v12

    .line 211
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getTop()I

    .line 212
    move-result v14

    .line 215
    int-to-float v14, v14

    .line 216
    sub-float/2addr v13, v14

    .line 217
    float-to-int v13, v13

    .line 218
    move v15, v13

    .line 219
    goto :goto_7

    .line 220
    :cond_9
    move v15, v11

    .line 221
    :goto_7
    iget-boolean v13, v0, Lcom/android/systemui/shade/QuickSettingsController;->mEnableClipping:Z

    .line 222
    if-eqz v13, :cond_a

    .line 224
    int-to-float v13, v4

    .line 226
    sub-float/2addr v13, v12

    .line 227
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getTop()I

    .line 228
    move-result v10

    .line 231
    int-to-float v10, v10

    .line 232
    sub-float/2addr v13, v10

    .line 233
    float-to-int v10, v13

    .line 234
    move/from16 v17, v10

    .line 235
    goto :goto_8

    .line 237
    :cond_a
    move/from16 v17, v11

    .line 238
    :goto_8
    iput-boolean v5, v0, Lcom/android/systemui/shade/QuickSettingsController;->mVisible:Z

    .line 240
    iget-object v10, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 242
    invoke-interface {v10, v5}, Lcom/android/systemui/plugins/qs/QS;->setQsVisible(Z)V

    .line 244
    iget-object v13, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 247
    iget v14, v0, Lcom/android/systemui/shade/QuickSettingsController;->mDisplayLeftInset:I

    .line 249
    iget v10, v0, Lcom/android/systemui/shade/QuickSettingsController;->mDisplayRightInset:I

    .line 251
    if-eqz v5, :cond_b

    .line 253
    iget-boolean v5, v0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 255
    if-nez v5, :cond_b

    .line 257
    const/4 v5, 0x1

    .line 259
    move/from16 v19, v5

    .line 260
    goto :goto_9

    .line 262
    :cond_b
    move/from16 v19, v11

    .line 263
    :goto_9
    iget-boolean v5, v0, Lcom/android/systemui/shade/QuickSettingsController;->mIsFullWidth:Z

    .line 265
    move/from16 v16, v10

    .line 267
    move/from16 v18, v6

    .line 269
    move/from16 v20, v5

    .line 271
    invoke-interface/range {v13 .. v20}, Lcom/android/systemui/plugins/qs/QS;->setFancyClipping(IIIIIZZ)V

    .line 273
    :cond_c
    iget-boolean v5, v0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 276
    if-eqz v5, :cond_d

    .line 278
    move v5, v4

    .line 280
    goto :goto_a

    .line 281
    :cond_d
    add-int v5, v4, v6

    .line 282
    :goto_a
    int-to-float v10, v1

    .line 284
    int-to-float v12, v2

    .line 285
    int-to-float v13, v3

    .line 286
    int-to-float v5, v5

    .line 287
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    iget-object v14, v9, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    .line 291
    invoke-virtual {v14, v10, v12, v13, v5}, Lcom/android/systemui/scrim/ScrimView;->setDrawableBounds(FFFF)V

    .line 293
    iget-object v5, v0, Lcom/android/systemui/shade/QuickSettingsController;->mApplyClippingImmediatelyListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;

    .line 296
    if-eqz v5, :cond_12

    .line 298
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/QuickSettingsController;->isQsFragmentCreated()Z

    .line 300
    move-result v10

    .line 303
    iget-boolean v12, v0, Lcom/android/systemui/shade/QuickSettingsController;->mVisible:Z

    .line 304
    iget-object v5, v5, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 306
    if-eqz v10, :cond_e

    .line 308
    iget-object v10, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    .line 310
    iget-object v10, v10, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    .line 312
    check-cast v10, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    .line 314
    iget-object v10, v10, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->_isQuickSettingsVisible:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 316
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 318
    move-result-object v12

    .line 321
    invoke-virtual {v10, v12}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 322
    :cond_e
    iget-object v10, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    .line 325
    const/4 v12, 0x0

    .line 327
    if-eqz v8, :cond_f

    .line 328
    goto :goto_b

    .line 330
    :cond_f
    move-object v7, v12

    .line 331
    :goto_b
    iget-object v8, v10, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 332
    if-eqz v7, :cond_10

    .line 334
    iget v12, v7, Landroid/graphics/Rect;->left:I

    .line 336
    iget v13, v7, Landroid/graphics/Rect;->top:I

    .line 338
    int-to-float v13, v13

    .line 340
    check-cast v8, Lcom/android/keyguard/KeyguardStatusView;

    .line 341
    invoke-virtual {v8}, Landroid/widget/GridLayout;->getY()F

    .line 343
    move-result v14

    .line 346
    sub-float/2addr v13, v14

    .line 347
    float-to-int v13, v13

    .line 348
    iget v14, v7, Landroid/graphics/Rect;->right:I

    .line 349
    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    .line 351
    int-to-float v7, v7

    .line 353
    invoke-virtual {v8}, Landroid/widget/GridLayout;->getY()F

    .line 354
    move-result v15

    .line 357
    sub-float/2addr v7, v15

    .line 358
    float-to-int v7, v7

    .line 359
    iget-object v10, v10, Lcom/android/keyguard/KeyguardStatusViewController;->mClipBounds:Landroid/graphics/Rect;

    .line 360
    invoke-virtual {v10, v12, v13, v14, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 362
    invoke-virtual {v8, v10}, Landroid/widget/GridLayout;->setClipBounds(Landroid/graphics/Rect;)V

    .line 365
    goto :goto_c

    .line 368
    :cond_10
    check-cast v8, Lcom/android/keyguard/KeyguardStatusView;

    .line 369
    invoke-virtual {v8, v12}, Landroid/widget/GridLayout;->setClipBounds(Landroid/graphics/Rect;)V

    .line 371
    :goto_c
    iget-boolean v7, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mSplitShadeEnabled:Z

    .line 374
    if-eqz v7, :cond_11

    .line 376
    iget-object v5, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    .line 378
    iget-object v5, v5, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 380
    check-cast v5, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 382
    invoke-virtual {v5, v11}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setTopClipping(I)V

    .line 384
    goto :goto_d

    .line 387
    :cond_11
    iget-object v5, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    .line 388
    iget-object v5, v5, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 390
    check-cast v5, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 392
    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getTop()I

    .line 394
    move-result v7

    .line 397
    sub-int v7, v2, v7

    .line 398
    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setTopClipping(I)V

    .line 400
    :cond_12
    :goto_d
    iget-object v5, v9, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    .line 403
    if-eqz v5, :cond_14

    .line 405
    iget-object v7, v9, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    .line 407
    if-nez v7, :cond_13

    .line 409
    goto :goto_e

    .line 411
    :cond_13
    invoke-virtual {v5, v6}, Lcom/android/systemui/scrim/ScrimView;->setCornerRadius(I)V

    .line 412
    iget-object v5, v9, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    .line 415
    invoke-virtual {v5, v6}, Lcom/android/systemui/scrim/ScrimView;->setCornerRadius(I)V

    .line 417
    :cond_14
    :goto_e
    iget-object v5, v0, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 420
    iget-object v7, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 422
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLeft()I

    .line 424
    move-result v7

    .line 427
    sub-int/2addr v1, v7

    .line 428
    iget-boolean v7, v0, Lcom/android/systemui/shade/QuickSettingsController;->mIsFullWidth:Z

    .line 429
    if-eqz v7, :cond_15

    .line 431
    goto :goto_f

    .line 433
    :cond_15
    iget v7, v0, Lcom/android/systemui/shade/QuickSettingsController;->mDisplayLeftInset:I

    .line 434
    sub-int/2addr v1, v7

    .line 436
    :goto_f
    move v13, v1

    .line 437
    iget-object v1, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 438
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    .line 440
    move-result v1

    .line 443
    sub-int v1, v3, v1

    .line 444
    iget-boolean v3, v0, Lcom/android/systemui/shade/QuickSettingsController;->mIsFullWidth:Z

    .line 446
    if-eqz v3, :cond_16

    .line 448
    goto :goto_10

    .line 450
    :cond_16
    iget v3, v0, Lcom/android/systemui/shade/QuickSettingsController;->mDisplayLeftInset:I

    .line 451
    sub-int/2addr v1, v3

    .line 453
    :goto_10
    move v15, v1

    .line 454
    iget-boolean v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 455
    iget-object v3, v0, Lcom/android/systemui/shade/QuickSettingsController;->mPanelViewControllerLazy:Ldagger/Lazy;

    .line 457
    if-eqz v1, :cond_17

    .line 459
    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 461
    move-result-object v1

    .line 464
    check-cast v1, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 465
    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandingFromHeadsUp:Z

    .line 467
    if-eqz v1, :cond_17

    .line 469
    iget-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 471
    iget v1, v1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTopMargin:I

    .line 473
    neg-int v1, v1

    .line 475
    goto :goto_11

    .line 476
    :cond_17
    iget-object v1, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 477
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    .line 479
    move-result v1

    .line 482
    sub-int v1, v2, v1

    .line 483
    :goto_11
    move v14, v1

    .line 485
    iget-object v1, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 486
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    .line 488
    move-result v1

    .line 491
    sub-int v16, v4, v1

    .line 492
    iget-boolean v0, v0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 494
    if-eqz v0, :cond_18

    .line 496
    move/from16 v18, v6

    .line 498
    goto :goto_12

    .line 500
    :cond_18
    move/from16 v18, v11

    .line 501
    :goto_12
    if-eqz v0, :cond_19

    .line 503
    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 505
    move-result-object v0

    .line 508
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 509
    iget-boolean v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandingFromHeadsUp:Z

    .line 511
    if-eqz v0, :cond_19

    .line 513
    move/from16 v17, v11

    .line 515
    goto :goto_13

    .line 517
    :cond_19
    move/from16 v17, v6

    .line 518
    :goto_13
    iget-object v12, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 520
    invoke-virtual/range {v12 .. v18}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setRoundedClippingBounds(IIIIII)V

    .line 522
    return-void
    .line 525
.end method

.method public final beginJankMonitoring(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mPanelView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 8
    invoke-static {v1, p0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->withView(ILandroid/view/View;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    .line 10
    move-result-object p0

    .line 13
    if-eqz p1, :cond_1

    .line 14
    const-string p1, "Expand"

    .line 16
    goto :goto_0

    .line 18
    :cond_1
    const-string p1, "Collapse"

    .line 19
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setTag(Ljava/lang/String;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    .line 21
    move-result-object p0

    .line 24
    invoke-virtual {v0, p0}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z

    .line 25
    return-void
    .line 28
.end method

.method public calculateBottomCornerRadius(F)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mScrimCornerRadius:I

    .line 2
    int-to-float v0, v0

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->calculateBottomRadiusProgress()F

    .line 5
    move-result p0

    .line 8
    const/high16 v1, 0x3f800000    # 1.0f

    .line 9
    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    .line 11
    move-result p0

    .line 14
    invoke-static {p1, v0, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 15
    move-result p0

    .line 18
    float-to-int p0, p0

    .line 19
    return p0
    .line 20
.end method

.method public calculateBottomRadiusProgress()F
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    .line 6
    move-result p0

    .line 9
    const/high16 v0, 0x3f800000    # 1.0f

    .line 10
    sub-float/2addr v0, p0

    .line 12
    const/high16 p0, 0x42c80000    # 100.0f

    .line 13
    mul-float/2addr v0, p0

    .line 15
    return v0
    .line 16
.end method

.method public final calculatePanelHeightExpanded(I)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getHeight()I

    .line 4
    move-result v1

    .line 7
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 8
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getEmptyBottomMargin()I

    .line 10
    move-result v3

    .line 13
    sub-int/2addr v1, v3

    .line 14
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getTopPadding()I

    .line 15
    move-result v3

    .line 18
    sub-int/2addr v1, v3

    .line 19
    int-to-float v1, v1

    .line 20
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    .line 21
    move-result v3

    .line 24
    if-nez v3, :cond_0

    .line 25
    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    .line 27
    iget-boolean v3, v3, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mIsVisible:Z

    .line 29
    if-eqz v3, :cond_0

    .line 31
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getEmptyShadeViewHeight()I

    .line 33
    move-result v1

    .line 36
    int-to-float v1, v1

    .line 37
    :cond_0
    iget v3, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMaxExpansionHeight:I

    .line 38
    iget-object v4, p0, Lcom/android/systemui/shade/QuickSettingsController;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    .line 40
    if-eqz v4, :cond_1

    .line 42
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 44
    move-result-object v3

    .line 47
    check-cast v3, Ljava/lang/Integer;

    .line 48
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 50
    move-result v3

    .line 53
    :cond_1
    iget p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mBarState:I

    .line 54
    const/4 v4, 0x1

    .line 56
    if-ne p0, v4, :cond_2

    .line 57
    goto :goto_0

    .line 59
    :cond_2
    const/4 p1, 0x0

    .line 60
    :goto_0
    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    .line 61
    move-result p0

    .line 64
    int-to-float p0, p0

    .line 65
    add-float/2addr p0, v1

    .line 66
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getTopPaddingOverflow()F

    .line 67
    move-result p1

    .line 70
    add-float/2addr p1, p0

    .line 71
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getHeight()I

    .line 72
    move-result p0

    .line 75
    int-to-float p0, p0

    .line 76
    cmpl-float p0, p1, p0

    .line 77
    if-lez p0, :cond_3

    .line 79
    int-to-float p0, v3

    .line 81
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getLayoutMinHeight()I

    .line 82
    move-result p1

    .line 85
    int-to-float p1, p1

    .line 86
    add-float/2addr p1, p0

    .line 87
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getHeight()I

    .line 88
    move-result p0

    .line 91
    int-to-float p0, p0

    .line 92
    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    .line 93
    move-result p1

    .line 96
    :cond_3
    float-to-int p0, p1

    .line 97
    return p0
    .line 98
.end method

.method public final closeQs()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 6
    const-string v1, "Closing QS while in split shade"

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/ShadeLogger;->d(Ljava/lang/String;)V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionAnimator:Landroid/animation/ValueAnimator;

    .line 13
    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 17
    :cond_1
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMinExpansionHeight:I

    .line 20
    int-to-float v0, v0

    .line 22
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/QuickSettingsController;->setExpansionHeight(F)V

    .line 23
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/QuickSettingsController;->setExpandImmediate(Z)V

    .line 27
    return-void
    .line 30
.end method

.method public final computeExpansionFraction()F
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mAnimatingHiddenFromCollapsed:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeight:F

    .line 8
    iget v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMinExpansionHeight:I

    .line 10
    int-to-float v2, v1

    .line 12
    sub-float/2addr v0, v2

    .line 13
    iget p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMaxExpansionHeight:I

    .line 14
    sub-int/2addr p0, v1

    .line 16
    int-to-float p0, p0

    .line 17
    div-float/2addr v0, p0

    .line 18
    const/high16 p0, 0x3f800000    # 1.0f

    .line 19
    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    .line 21
    move-result p0

    .line 24
    return p0
    .line 25
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string p2, "QuickSettingsController:"

    .line 2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Lcom/android/systemui/util/DumpUtilsKt;->asIndenting(Ljava/io/PrintWriter;)Landroid/util/IndentingPrintWriter;

    .line 7
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 11
    const-string p2, "mIsFullWidth="

    .line 14
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 16
    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mIsFullWidth:Z

    .line 19
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 21
    const-string p2, "mTouchSlop="

    .line 24
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 26
    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mTouchSlop:I

    .line 29
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 31
    const-string p2, "mSlopMultiplier="

    .line 34
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 36
    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mSlopMultiplier:F

    .line 39
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 41
    const-string p2, "mBarState="

    .line 44
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 46
    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mBarState:I

    .line 49
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 51
    const-string p2, "mStatusBarMinHeight="

    .line 54
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 56
    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mStatusBarMinHeight:I

    .line 59
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 61
    const-string p2, "mScrimEnabled="

    .line 64
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 66
    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mScrimEnabled:Z

    .line 69
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 71
    const-string p2, "mScrimCornerRadius="

    .line 74
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 76
    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mScrimCornerRadius:I

    .line 79
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 81
    const-string p2, "mScreenCornerRadius="

    .line 84
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 86
    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mScreenCornerRadius:I

    .line 89
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 91
    const-string p2, "mUseLargeScreenShadeHeader="

    .line 94
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 96
    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mUseLargeScreenShadeHeader:Z

    .line 99
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 101
    const-string p2, "mLargeScreenShadeHeaderHeight="

    .line 104
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 106
    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mLargeScreenShadeHeaderHeight:I

    .line 109
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 111
    const-string p2, "mDisplayRightInset="

    .line 114
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 116
    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mDisplayRightInset:I

    .line 119
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 121
    const-string p2, "mDisplayLeftInset="

    .line 124
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 126
    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mDisplayLeftInset:I

    .line 129
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 131
    const-string p2, "mSplitShadeEnabled="

    .line 134
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 136
    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 139
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 141
    const-string p2, "mLockscreenNotificationPadding="

    .line 144
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 146
    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mLockscreenNotificationPadding:I

    .line 149
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 151
    const-string p2, "mSplitShadeNotificationsScrimMarginBottom="

    .line 154
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 156
    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeNotificationsScrimMarginBottom:I

    .line 159
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 161
    const-string p2, "mDozing="

    .line 164
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 166
    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mDozing:Z

    .line 169
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 171
    const-string p2, "mEnableClipping="

    .line 174
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 176
    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mEnableClipping:Z

    .line 179
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 181
    const-string p2, "mFalsingThreshold="

    .line 184
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 186
    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mFalsingThreshold:I

    .line 189
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 191
    const-string p2, "mTransitionToFullShadePosition="

    .line 194
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 196
    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mTransitionToFullShadePosition:I

    .line 199
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 201
    const-string p2, "mCollapsedOnDown="

    .line 204
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 206
    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mCollapsedOnDown:Z

    .line 209
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 211
    const-string p2, "mShadeExpandedHeight="

    .line 214
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 216
    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mShadeExpandedHeight:F

    .line 219
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 221
    const-string p2, "mLastShadeFlingWasExpanding="

    .line 224
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 226
    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mLastShadeFlingWasExpanding:Z

    .line 229
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 231
    const-string p2, "mInitialHeightOnTouch="

    .line 234
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 236
    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mInitialHeightOnTouch:F

    .line 239
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 241
    const-string p2, "mInitialTouchX="

    .line 244
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 246
    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchX:F

    .line 249
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 251
    const-string p2, "mInitialTouchY="

    .line 254
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 256
    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchY:F

    .line 259
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 261
    const-string p2, "mTouchAboveFalsingThreshold="

    .line 264
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 266
    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mTouchAboveFalsingThreshold:Z

    .line 269
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 271
    const-string p2, "mTracking="

    .line 274
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 276
    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mTracking:Z

    .line 279
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 281
    const-string p2, "mTrackingPointer="

    .line 284
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 286
    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mTrackingPointer:I

    .line 289
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 291
    const-string p2, "mExpanded="

    .line 294
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 296
    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 299
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 301
    const-string p2, "mFullyExpanded="

    .line 304
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 306
    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mFullyExpanded:Z

    .line 309
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 311
    const-string p2, "mExpandImmediate="

    .line 314
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 316
    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpandImmediate:Z

    .line 319
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 321
    const-string p2, "mExpandedWhenExpandingStarted="

    .line 324
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 326
    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpandedWhenExpandingStarted:Z

    .line 329
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 331
    const-string p2, "mAnimatingHiddenFromCollapsed="

    .line 334
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 336
    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mAnimatingHiddenFromCollapsed:Z

    .line 339
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 341
    const-string p2, "mVisible="

    .line 344
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 346
    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mVisible:Z

    .line 349
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 351
    const-string p2, "mExpansionHeight="

    .line 354
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 356
    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeight:F

    .line 359
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 361
    const-string p2, "mMinExpansionHeight="

    .line 364
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 366
    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMinExpansionHeight:I

    .line 369
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 371
    const-string p2, "mMaxExpansionHeight="

    .line 374
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 376
    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMaxExpansionHeight:I

    .line 379
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 381
    const-string p2, "mShadeExpandedFraction="

    .line 384
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 386
    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mShadeExpandedFraction:F

    .line 389
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 391
    const-string p2, "mPeekHeight="

    .line 394
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 396
    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mPeekHeight:I

    .line 399
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 401
    const-string p2, "mLastOverscroll="

    .line 404
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 406
    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mLastOverscroll:F

    .line 409
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 411
    const-string p2, "mExpansionFromOverscroll="

    .line 414
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 416
    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionFromOverscroll:Z

    .line 419
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 421
    const-string p2, "mExpansionEnabledPolicy="

    .line 424
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 426
    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionEnabledPolicy:Z

    .line 429
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 431
    const-string p2, "mExpansionEnabledAmbient="

    .line 434
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 436
    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionEnabledAmbient:Z

    .line 439
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 441
    const-string p2, "mQuickQsHeaderHeight="

    .line 444
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 446
    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQuickQsHeaderHeight:F

    .line 449
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 451
    const-string p2, "mTwoFingerExpandPossible="

    .line 454
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 456
    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mTwoFingerExpandPossible:Z

    .line 459
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 461
    const-string p2, "mConflictingExpansionGesture="

    .line 464
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 466
    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mConflictingExpansionGesture:Z

    .line 469
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 471
    const-string p2, "mAnimatorExpand="

    .line 474
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 476
    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mAnimatorExpand:Z

    .line 479
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 481
    const-string p2, "mCachedGestureInsets="

    .line 484
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 486
    iget-object p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mCachedGestureInsets:Landroid/graphics/Insets;

    .line 489
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 491
    const-string p2, "mTransitioningToFullShadeProgress="

    .line 494
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 496
    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mTransitioningToFullShadeProgress:F

    .line 499
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 501
    const-string p2, "mDistanceForFullShadeTransition="

    .line 504
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 506
    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mDistanceForFullShadeTransition:I

    .line 509
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 511
    const-string p2, "mStackScrollerOverscrolling="

    .line 514
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 516
    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mStackScrollerOverscrolling:Z

    .line 519
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 521
    const-string p2, "mAnimating="

    .line 524
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 526
    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mAnimating:Z

    .line 529
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 531
    const-string p2, "mIsTranslationResettingAnimator="

    .line 534
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 536
    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mIsTranslationResettingAnimator:Z

    .line 539
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 541
    const-string p2, "mIsPulseExpansionResettingAnimator="

    .line 544
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 546
    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mIsPulseExpansionResettingAnimator:Z

    .line 549
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 551
    const-string p2, "mTranslationForFullShadeTransition="

    .line 554
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 556
    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mTranslationForFullShadeTransition:F

    .line 559
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 561
    const-string p2, "mAnimateNextNotificationBounds="

    .line 564
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 566
    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mAnimateNextNotificationBounds:Z

    .line 569
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 571
    const-string p2, "mNotificationBoundsAnimationDelay="

    .line 574
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 576
    iget-wide v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationBoundsAnimationDelay:J

    .line 579
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 581
    const-string p2, "mNotificationBoundsAnimationDuration="

    .line 584
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 586
    iget-wide v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationBoundsAnimationDuration:J

    .line 589
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 591
    const-string p2, "mLastClippingTopBound="

    .line 594
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 596
    const/4 p2, 0x0

    .line 599
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 600
    const-string v0, "mLastNotificationsTopPadding="

    .line 603
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 605
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 608
    const-string v0, "mLastNotificationsClippingTopBound="

    .line 611
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 613
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 616
    const-string v0, "mLastNotificationsClippingTopBoundNssl="

    .line 619
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 621
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 624
    const-string p2, "mInterceptRegion="

    .line 627
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 629
    iget-object p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mInterceptRegion:Landroid/graphics/Region;

    .line 632
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 634
    const-string p2, "mClippingAnimationEndBounds="

    .line 637
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 639
    iget-object p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mClippingAnimationEndBounds:Landroid/graphics/Rect;

    .line 642
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 644
    const-string p2, "mLastClipBounds="

    .line 647
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 649
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mLastClipBounds:Landroid/graphics/Rect;

    .line 652
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 654
    return-void
    .line 657
.end method

.method public final flingQs(FILcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda3;Z)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object v1, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 7
    new-instance v2, Lcom/android/systemui/shade/ShadeLogger$flingQs$2;

    .line 9
    invoke-direct {v2, p4}, Lcom/android/systemui/shade/ShadeLogger$flingQs$2;-><init>(Z)V

    .line 11
    const/4 v3, 0x0

    .line 14
    iget-object v0, v0, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 15
    const-string/jumbo v4, "systemui.shade"

    .line 17
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 20
    move-result-object v1

    .line 23
    const/4 v2, 0x2

    .line 24
    const/4 v3, 0x1

    .line 25
    if-eqz p2, :cond_2

    .line 26
    if-eq p2, v3, :cond_1

    .line 28
    if-eq p2, v2, :cond_0

    .line 30
    const-string v4, "UNKNOWN"

    .line 32
    goto :goto_0

    .line 34
    :cond_0
    const-string v4, "FLING_HIDE"

    .line 35
    goto :goto_0

    .line 37
    :cond_1
    const-string v4, "FLING_COLLAPSE"

    .line 38
    goto :goto_0

    .line 40
    :cond_2
    const-string v4, "FLING_EXPAND"

    .line 41
    :goto_0
    invoke-interface {v1, v4}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 43
    invoke-interface {v1, p4}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 46
    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 49
    const/4 v0, 0x0

    .line 52
    const/4 v1, 0x0

    .line 53
    if-eqz p2, :cond_6

    .line 54
    if-eq p2, v3, :cond_4

    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->isQsFragmentCreated()Z

    .line 58
    move-result v4

    .line 61
    if-eqz v4, :cond_3

    .line 62
    iget-object v4, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 64
    invoke-interface {v4}, Lcom/android/systemui/plugins/qs/QS;->closeDetail()V

    .line 66
    :cond_3
    move v4, v0

    .line 69
    goto :goto_2

    .line 70
    :cond_4
    iget-boolean v4, p0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 71
    if-eqz v4, :cond_5

    .line 73
    const-string v4, "QuickSettingsController"

    .line 75
    const-string v5, "FLING_COLLAPSE called in split shade"

    .line 77
    invoke-static {v4, v5}, Landroid/util/Log;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/systemui/shade/QuickSettingsController;->setExpandImmediate(Z)V

    .line 82
    iget v4, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMinExpansionHeight:I

    .line 85
    goto :goto_1

    .line 87
    :cond_6
    iget v4, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMaxExpansionHeight:I

    .line 88
    :goto_1
    int-to-float v4, v4

    .line 90
    :goto_2
    iget v5, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeight:F

    .line 91
    cmpl-float v6, v4, v5

    .line 93
    if-nez v6, :cond_9

    .line 95
    if-eqz p3, :cond_7

    .line 97
    invoke-virtual {p3}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda3;->run()V

    .line 99
    :cond_7
    if-eqz p2, :cond_8

    .line 102
    goto :goto_3

    .line 104
    :cond_8
    move v3, v1

    .line 105
    :goto_3
    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/shade/QuickSettingsController;->traceQsJank(ZZ)V

    .line 106
    return-void

    .line 109
    :cond_9
    if-nez p2, :cond_a

    .line 110
    move p2, v3

    .line 112
    goto :goto_4

    .line 113
    :cond_a
    move p2, v1

    .line 114
    :goto_4
    cmpl-float v6, p1, v0

    .line 115
    if-lez v6, :cond_b

    .line 117
    if-eqz p2, :cond_c

    .line 119
    :cond_b
    cmpg-float v6, p1, v0

    .line 121
    if-gez v6, :cond_d

    .line 123
    if-eqz p2, :cond_d

    .line 125
    :cond_c
    move v9, v0

    .line 127
    move p1, v3

    .line 128
    goto :goto_5

    .line 129
    :cond_d
    move v9, p1

    .line 130
    move p1, v1

    .line 131
    :goto_5
    new-array v2, v2, [F

    .line 132
    aput v5, v2, v1

    .line 134
    aput v4, v2, v3

    .line 136
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 138
    move-result-object v2

    .line 141
    if-eqz p4, :cond_e

    .line 142
    sget-object p4, Lcom/android/app/animation/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    .line 144
    invoke-virtual {v2, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 146
    const-wide/16 v5, 0x170

    .line 149
    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 151
    goto :goto_6

    .line 154
    :cond_e
    iget-object p4, p0, Lcom/android/systemui/shade/QuickSettingsController;->mFlingQsWithoutClickListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;

    .line 155
    if-eqz p4, :cond_f

    .line 157
    iget v7, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeight:F

    .line 159
    iget-object p4, p4, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 161
    iget-object v5, p4, Lcom/android/systemui/shade/NotificationPanelViewController;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    .line 163
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    sub-float p4, v4, v7

    .line 168
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    .line 170
    move-result v10

    .line 173
    move-object v6, v2

    .line 174
    move v8, v4

    .line 175
    invoke-virtual/range {v5 .. v10}, Lcom/android/wm/shell/animation/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    .line 176
    :cond_f
    :goto_6
    if-eqz p1, :cond_10

    .line 179
    const-wide/16 v5, 0x15e

    .line 181
    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 183
    :cond_10
    new-instance p1, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda4;

    .line 186
    invoke-direct {p1, p0, v1}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/shade/QuickSettingsController;I)V

    .line 188
    invoke-virtual {v2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 191
    new-instance p1, Lcom/android/systemui/shade/QuickSettingsController$3;

    .line 194
    invoke-direct {p1, p0, p3}, Lcom/android/systemui/shade/QuickSettingsController$3;-><init>(Lcom/android/systemui/shade/QuickSettingsController;Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda3;)V

    .line 196
    invoke-virtual {v2, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 199
    iput-boolean v3, p0, Lcom/android/systemui/shade/QuickSettingsController;->mAnimating:Z

    .line 202
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 204
    iput-object v2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionAnimator:Landroid/animation/ValueAnimator;

    .line 207
    iput-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mAnimatorExpand:Z

    .line 209
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->computeExpansionFraction()F

    .line 211
    move-result p1

    .line 214
    cmpl-float p1, p1, v0

    .line 215
    if-nez p1, :cond_11

    .line 217
    cmpl-float p1, v4, v0

    .line 219
    if-nez p1, :cond_11

    .line 221
    goto :goto_7

    .line 223
    :cond_11
    move v3, v1

    .line 224
    :goto_7
    iput-boolean v3, p0, Lcom/android/systemui/shade/QuickSettingsController;->mAnimatingHiddenFromCollapsed:Z

    .line 225
    return-void
    .line 227
.end method

.method public final getCurrentVelocity$1()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    const/16 v1, 0x3e8

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 10
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    .line 13
    invoke-virtual {p0}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 15
    move-result p0

    .line 18
    return p0
    .line 19
.end method

.method public final getHeaderHeight()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 2
    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method

.method public final getHeaderTranslation()F
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->ncSwitching:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    return v1

    .line 7
    :cond_0
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mPanelViewSpringLength:F

    .line 8
    cmpl-float v2, v0, v1

    .line 10
    if-lez v2, :cond_1

    .line 12
    return v0

    .line 14
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 15
    if-eqz v0, :cond_2

    .line 17
    return v1

    .line 19
    :cond_2
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mBarState:I

    .line 20
    iget-object v2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 22
    const/4 v3, 0x1

    .line 24
    if-ne v0, v3, :cond_3

    .line 25
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 27
    move-result v0

    .line 30
    if-nez v0, :cond_3

    .line 31
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 33
    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->getQsMinExpansionHeight()I

    .line 35
    move-result p0

    .line 38
    neg-int p0, p0

    .line 39
    int-to-float p0, p0

    .line 40
    return p0

    .line 41
    :cond_3
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mShadeExpandedHeight:F

    .line 42
    iget-object v4, p0, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 44
    iget-object v5, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 46
    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->calculateAppearFraction(F)F

    .line 48
    move-result v0

    .line 51
    iget v5, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeight:F

    .line 52
    neg-float v5, v5

    .line 54
    iget v6, p0, Lcom/android/systemui/shade/QuickSettingsController;->mBarState:I

    .line 55
    if-nez v6, :cond_4

    .line 57
    const v6, 0x3e333333    # 0.175f

    .line 59
    mul-float/2addr v5, v6

    .line 62
    :cond_4
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 63
    move-result v2

    .line 66
    if-eqz v2, :cond_5

    .line 67
    iget v2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mBarState:I

    .line 69
    if-ne v2, v3, :cond_5

    .line 71
    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 73
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getPulseHeight()F

    .line 75
    move-result v2

    .line 78
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getIntrinsicPadding()I

    .line 79
    move-result v0

    .line 82
    int-to-float v0, v0

    .line 83
    invoke-static {v1, v0, v2}, Landroid/util/MathUtils;->smoothStep(FFF)F

    .line 84
    move-result v0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 88
    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->getQsMinExpansionHeight()I

    .line 90
    move-result p0

    .line 93
    neg-int p0, p0

    .line 94
    int-to-float v5, p0

    .line 95
    :cond_5
    const/high16 p0, 0x3f800000    # 1.0f

    .line 96
    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    .line 98
    move-result p0

    .line 101
    invoke-static {v5, v1, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 102
    move-result p0

    .line 105
    invoke-static {v1, p0}, Ljava/lang/Math;->min(FF)F

    .line 106
    move-result p0

    .line 109
    return p0
    .line 110
.end method

.method public final getLockscreenShadeDragProgress()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mTransitioningToFullShadeProgress:F

    .line 2
    const/4 v1, 0x0

    .line 4
    cmpl-float v0, v0, v1

    .line 5
    if-lez v0, :cond_0

    .line 7
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    .line 9
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->qsTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;

    .line 11
    iget p0, p0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsTransitionFraction:F

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->computeExpansionFraction()F

    .line 16
    move-result p0

    .line 19
    :goto_0
    return p0
    .line 20
.end method

.method public getScrimCornerRadius()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mScrimCornerRadius:I

    .line 2
    return p0
    .line 4
.end method

.method public getShadeExpandedHeight()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mShadeExpandedHeight:F

    .line 2
    return p0
    .line 4
.end method

.method public isConflictingExpansionGesture()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mConflictingExpansionGesture:Z

    .line 2
    return p0
    .line 4
.end method

.method public isExpandImmediate()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpandImmediate:Z

    .line 2
    return p0
    .line 4
.end method

.method public final isExpansionEnabled()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionEnabledPolicy:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionEnabledAmbient:Z

    .line 7
    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 11
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->isRemoteInputActive()Z

    .line 13
    move-result v0

    .line 16
    const/4 v2, 0x1

    .line 17
    if-eqz v0, :cond_0

    .line 18
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mPanelView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 20
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 22
    move-result-object p0

    .line 25
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 26
    move-result v0

    .line 29
    invoke-virtual {p0, v0}, Landroid/view/WindowInsets;->isVisible(I)Z

    .line 30
    move-result p0

    .line 33
    if-eqz p0, :cond_0

    .line 34
    move p0, v2

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move p0, v1

    .line 38
    :goto_0
    if-nez p0, :cond_1

    .line 39
    move v1, v2

    .line 41
    :cond_1
    return v1
    .line 42
.end method

.method public isOpenQsEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 2
    move-result p0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 6
    move-result v0

    .line 9
    const/4 v1, 0x5

    .line 10
    const/4 v2, 0x2

    .line 11
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    if-ne p0, v2, :cond_0

    .line 16
    move p0, v3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move p0, v4

    .line 20
    :goto_0
    if-nez v0, :cond_2

    .line 21
    const/16 v1, 0x20

    .line 23
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    .line 25
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    const/16 v1, 0x40

    .line 31
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    .line 33
    move-result v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    :cond_1
    move v1, v3

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    move v1, v4

    .line 41
    :goto_1
    if-nez v0, :cond_4

    .line 42
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    .line 44
    move-result v0

    .line 47
    if-nez v0, :cond_3

    .line 48
    const/4 v0, 0x4

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    .line 51
    move-result p1

    .line 54
    if-eqz p1, :cond_4

    .line 55
    :cond_3
    move p1, v3

    .line 57
    goto :goto_2

    .line 58
    :cond_4
    move p1, v4

    .line 59
    :goto_2
    if-nez p0, :cond_6

    .line 60
    if-nez v1, :cond_6

    .line 62
    if-eqz p1, :cond_5

    .line 64
    goto :goto_3

    .line 66
    :cond_5
    move v3, v4

    .line 67
    :cond_6
    :goto_3
    return v3
    .line 68
.end method

.method public final isQsFragmentCreated()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
    .line 9
.end method

.method public final isSplitShadeAndTouchXOutsideQs(F)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 2
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQsFrame:Landroid/widget/FrameLayout;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getX()F

    .line 8
    move-result v0

    .line 11
    cmpg-float v0, p1, v0

    .line 12
    if-ltz v0, :cond_1

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getX()F

    .line 16
    move-result v0

    .line 19
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 20
    move-result p0

    .line 23
    int-to-float p0, p0

    .line 24
    add-float/2addr v0, p0

    .line 25
    cmpl-float p0, p1, v0

    .line 26
    if-lez p0, :cond_2

    .line 28
    :cond_1
    const/4 p0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const/4 p0, 0x0

    .line 32
    :goto_0
    return p0
    .line 33
.end method

.method public isTracking()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mTracking:Z

    .line 2
    return p0
    .line 4
.end method

.method public isTrackingBlocked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mConflictingExpansionGesture:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-boolean p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 6
    if-eqz p0, :cond_0

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

.method public isTwoFingerExpandPossible()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mTwoFingerExpandPossible:Z

    .line 2
    return p0
    .line 4
.end method

.method public final onExpansionStarted()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionAnimator:Landroid/animation/ValueAnimator;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mPanelViewControllerLazy:Ldagger/Lazy;

    .line 9
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 14
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 15
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->cancelHeightAnimator()V

    .line 17
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mPanelView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 20
    const-string v1, "onExpansionStarted"

    .line 22
    invoke-static {v0, v1}, Lcom/android/systemui/DejankUtils;->notifyRendererOfExpensiveFrame(Landroid/view/View;Ljava/lang/String;)V

    .line 24
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeight:F

    .line 27
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/QuickSettingsController;->setExpansionHeight(F)V

    .line 29
    iget-object v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 32
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->checkSnoozeLeavebehind()V

    .line 34
    const/4 v1, 0x0

    .line 37
    cmpl-float v0, v0, v1

    .line 38
    if-nez v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 42
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 44
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    .line 46
    if-nez v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mKeyguardFaceAuthInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardFaceAuthInteractor;

    .line 50
    check-cast v0, Lcom/android/systemui/keyguard/domain/interactor/SystemUIKeyguardFaceAuthInteractor;

    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    sget-object v1, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_QS_EXPANDED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 57
    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/domain/interactor/SystemUIKeyguardFaceAuthInteractor;->runFaceAuth(Lcom/android/keyguard/FaceAuthUiEvent;)V

    .line 59
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 62
    const-string v0, "Face auth due to QS expansion."

    .line 64
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestFaceAuth(Ljava/lang/String;)Z

    .line 66
    :cond_1
    return-void
    .line 69
.end method

.method public onHeightChanged()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->isQsFragmentCreated()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 9
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getDesiredHeight()I

    .line 11
    move-result v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v1

    .line 16
    :goto_0
    iput v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMaxExpansionHeight:I

    .line 17
    iget-boolean v2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 19
    if-eqz v2, :cond_1

    .line 21
    iget-boolean v2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mFullyExpanded:Z

    .line 23
    if-eqz v2, :cond_1

    .line 25
    int-to-float v0, v0

    .line 27
    iput v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeight:F

    .line 28
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeightSetToMaxListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;

    .line 30
    if-eqz v0, :cond_1

    .line 32
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 34
    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->requestScrollerTopPaddingUpdate(Z)V

    .line 36
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateExpandedHeightToMaxHeight()V

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 42
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 44
    move-result v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mPanelViewControllerLazy:Ldagger/Lazy;

    .line 50
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 52
    move-result-object v0

    .line 55
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 56
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->determineAccessibilityPaneTitle()Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mPanelView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 62
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    .line 64
    :cond_2
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMaxExpansionHeight:I

    .line 67
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 69
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 71
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setMaxTopPadding(I)V

    .line 73
    return-void
    .line 76
.end method

.method public final setClippingBounds()V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->computeExpansionFraction()F

    .line 2
    move-result v0

    .line 5
    iget v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mTransitioningToFullShadeProgress:F

    .line 6
    const/4 v2, 0x0

    .line 8
    cmpl-float v1, v1, v2

    .line 9
    const/4 v3, 0x0

    .line 11
    if-lez v1, :cond_0

    .line 12
    iget v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mTransitionToFullShadePosition:I

    .line 14
    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->getHeaderTranslation()F

    .line 17
    move-result v1

    .line 20
    float-to-int v1, v1

    .line 21
    iget-object v4, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 22
    invoke-interface {v4}, Lcom/android/systemui/plugins/qs/QS;->getQsMinExpansionHeight()I

    .line 24
    move-result v4

    .line 27
    add-int/2addr v4, v1

    .line 28
    iget-boolean v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mUseLargeScreenShadeHeader:Z

    .line 29
    if-eqz v1, :cond_1

    .line 31
    iget v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mLargeScreenShadeHeaderHeight:I

    .line 33
    goto :goto_0

    .line 35
    :cond_1
    move v1, v3

    .line 36
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 37
    invoke-interface {v5}, Lcom/android/systemui/plugins/qs/QS;->getDesiredHeight()I

    .line 39
    move-result v5

    .line 42
    add-int/2addr v5, v1

    .line 43
    invoke-static {v4, v5, v0}, Landroid/util/MathUtils;->lerp(IIF)F

    .line 44
    move-result v1

    .line 47
    float-to-int v1, v1

    .line 48
    :goto_1
    iget-boolean v4, p0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 49
    const/4 v5, 0x1

    .line 51
    if-nez v4, :cond_2

    .line 52
    cmpl-float v6, v0, v2

    .line 54
    if-nez v6, :cond_2

    .line 56
    if-lez v1, :cond_2

    .line 58
    move v1, v5

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    move v1, v3

    .line 62
    :goto_2
    cmpl-float v2, v0, v2

    .line 63
    if-lez v2, :cond_3

    .line 65
    move v2, v5

    .line 67
    goto :goto_3

    .line 68
    :cond_3
    move v2, v3

    .line 69
    :goto_3
    if-nez v1, :cond_5

    .line 70
    if-eqz v2, :cond_4

    .line 72
    goto :goto_4

    .line 74
    :cond_4
    move v1, v3

    .line 75
    goto :goto_5

    .line 76
    :cond_5
    :goto_4
    move v1, v5

    .line 77
    :goto_5
    if-eqz v4, :cond_7

    .line 78
    iget v2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mBarState:I

    .line 80
    const/high16 v4, 0x3f800000    # 1.0f

    .line 82
    if-ne v2, v5, :cond_6

    .line 84
    iget-object v2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mPanelViewControllerLazy:Ldagger/Lazy;

    .line 86
    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 88
    move-result-object v2

    .line 91
    check-cast v2, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 92
    iget v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardOnlyContentAlpha:F

    .line 94
    cmpl-float v2, v2, v4

    .line 96
    if-nez v2, :cond_6

    .line 98
    move v2, v5

    .line 100
    goto :goto_6

    .line 101
    :cond_6
    move v2, v3

    .line 102
    :goto_6
    cmpl-float v0, v0, v4

    .line 103
    if-nez v0, :cond_7

    .line 105
    if-eqz v2, :cond_7

    .line 107
    const-string v0, "QuickSettingsController"

    .line 109
    const-string v2, "Incorrect state, scrim is visible at the same time when clock is visible"

    .line 111
    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_7
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 116
    iget-object v2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mPanelView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 118
    if-eqz v0, :cond_8

    .line 120
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 122
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getHeight()I

    .line 124
    move-result v0

    .line 127
    add-int/2addr v0, v3

    .line 128
    iget v4, p0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeNotificationsScrimMarginBottom:I

    .line 129
    add-int/2addr v0, v4

    .line 131
    goto :goto_7

    .line 132
    :cond_8
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getBottom()I

    .line 133
    move-result v0

    .line 136
    :goto_7
    move v10, v0

    .line 137
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getRight()I

    .line 138
    move-result v0

    .line 141
    iget v2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mDisplayRightInset:I

    .line 142
    add-int v9, v0, v2

    .line 144
    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    .line 146
    move-result v8

    .line 149
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mAnimateNextNotificationBounds:Z

    .line 150
    iget-object v2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mClippingAnimationEndBounds:Landroid/graphics/Rect;

    .line 152
    if-eqz v0, :cond_b

    .line 154
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mLastClipBounds:Landroid/graphics/Rect;

    .line 156
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 158
    move-result v4

    .line 161
    if-eqz v4, :cond_9

    .line 162
    goto :goto_8

    .line 164
    :cond_9
    invoke-virtual {v2, v3, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 165
    iget v8, v0, Landroid/graphics/Rect;->left:I

    .line 168
    iget v9, v0, Landroid/graphics/Rect;->top:I

    .line 170
    iget v10, v0, Landroid/graphics/Rect;->right:I

    .line 172
    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    .line 174
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mClippingAnimator:Landroid/animation/ValueAnimator;

    .line 176
    if-eqz v0, :cond_a

    .line 178
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 180
    :cond_a
    const/4 v0, 0x2

    .line 183
    new-array v0, v0, [F

    .line 184
    fill-array-data v0, :array_0

    .line 186
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 189
    move-result-object v0

    .line 192
    iput-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mClippingAnimator:Landroid/animation/ValueAnimator;

    .line 193
    sget-object v2, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 195
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 197
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mClippingAnimator:Landroid/animation/ValueAnimator;

    .line 200
    iget-wide v6, p0, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationBoundsAnimationDuration:J

    .line 202
    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 204
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mClippingAnimator:Landroid/animation/ValueAnimator;

    .line 207
    iget-wide v6, p0, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationBoundsAnimationDelay:J

    .line 209
    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 211
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mClippingAnimator:Landroid/animation/ValueAnimator;

    .line 214
    new-instance v2, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda0;

    .line 216
    move-object v6, v2

    .line 218
    move-object v7, p0

    .line 219
    move v12, v1

    .line 220
    invoke-direct/range {v6 .. v12}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shade/QuickSettingsController;IIIIZ)V

    .line 221
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 224
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mClippingAnimator:Landroid/animation/ValueAnimator;

    .line 227
    new-instance v1, Lcom/android/systemui/shade/QuickSettingsController$1;

    .line 229
    invoke-direct {v1, p0, v5}, Lcom/android/systemui/shade/QuickSettingsController$1;-><init>(Lcom/android/systemui/shade/QuickSettingsController;I)V

    .line 231
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 234
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mClippingAnimator:Landroid/animation/ValueAnimator;

    .line 237
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 239
    goto :goto_9

    .line 242
    :cond_b
    :goto_8
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mClippingAnimator:Landroid/animation/ValueAnimator;

    .line 243
    if-eqz v0, :cond_c

    .line 245
    invoke-virtual {v2, v3, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 247
    goto :goto_9

    .line 250
    :cond_c
    const/4 v7, 0x0

    .line 251
    move-object v6, p0

    .line 252
    move v11, v1

    .line 253
    invoke-virtual/range {v6 .. v11}, Lcom/android/systemui/shade/QuickSettingsController;->applyClippingImmediately(IIIIZ)V

    .line 254
    :goto_9
    iput-boolean v3, p0, Lcom/android/systemui/shade/QuickSettingsController;->mAnimateNextNotificationBounds:Z

    .line 257
    const-wide/16 v0, 0x0

    .line 259
    iput-wide v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationBoundsAnimationDelay:J

    .line 261
    return-void

    .line 263
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 264
.end method

.method public setExpandImmediate(Z)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpandImmediate:Z

    .line 2
    if-eq p1, v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    sget-object v1, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 11
    sget-object v2, Lcom/android/systemui/shade/ShadeLogger$logQsExpandImmediateChanged$2;->INSTANCE:Lcom/android/systemui/shade/ShadeLogger$logQsExpandImmediateChanged$2;

    .line 13
    const-string/jumbo v3, "systemui.shade"

    .line 15
    iget-object v0, v0, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 18
    const/4 v4, 0x0

    .line 20
    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 21
    move-result-object v1

    .line 24
    invoke-interface {v1, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 25
    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 28
    iput-boolean p1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpandImmediate:Z

    .line 31
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    .line 33
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeExpansionStateManager;->shadeStateEventsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 35
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object p0

    .line 40
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v0

    .line 50
    check-cast v0, Lcom/android/systemui/shade/ShadeStateEvents$ShadeStateEventsListener;

    .line 51
    invoke-interface {v0, p1}, Lcom/android/systemui/shade/ShadeStateEvents$ShadeStateEventsListener;->onExpandImmediateChanged(Z)V

    .line 53
    goto :goto_0

    .line 56
    :cond_0
    return-void
    .line 57
.end method

.method public setExpanded(Z)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v0, v1

    .line 9
    :goto_0
    if-eqz v0, :cond_2

    .line 10
    iput-boolean p1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->updateQsState()V

    .line 14
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    .line 17
    iput-boolean p1, v0, Lcom/android/systemui/shade/ShadeExpansionStateManager;->qsExpanded:Z

    .line 19
    sget v2, Lcom/android/systemui/shade/ShadeExpansionStateManagerKt;->$r8$clinit:I

    .line 21
    iget-object v0, v0, Lcom/android/systemui/shade/ShadeExpansionStateManager;->qsExpansionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v0

    .line 28
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v2

    .line 38
    check-cast v2, Lcom/android/systemui/shade/ShadeQsExpansionListener;

    .line 39
    invoke-interface {v2, p1}, Lcom/android/systemui/shade/ShadeQsExpansionListener;->onQsExpansionChanged(Z)V

    .line 41
    goto :goto_1

    .line 44
    :cond_1
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMinExpansionHeight:I

    .line 45
    iget v2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMaxExpansionHeight:I

    .line 47
    iget-boolean v3, p0, Lcom/android/systemui/shade/QuickSettingsController;->mStackScrollerOverscrolling:Z

    .line 49
    iget-boolean v4, p0, Lcom/android/systemui/shade/QuickSettingsController;->mAnimatorExpand:Z

    .line 51
    iget-boolean v5, p0, Lcom/android/systemui/shade/QuickSettingsController;->mAnimating:Z

    .line 53
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    sget-object v6, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 60
    sget-object v7, Lcom/android/systemui/shade/ShadeLogger$logQsExpansionChanged$2;->INSTANCE:Lcom/android/systemui/shade/ShadeLogger$logQsExpansionChanged$2;

    .line 62
    const-string/jumbo v8, "systemui.shade"

    .line 64
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 67
    const/4 v9, 0x0

    .line 69
    invoke-virtual {p0, v8, v6, v7, v9}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 70
    move-result-object v6

    .line 73
    const-string v7, "QS Expansion Changed."

    .line 74
    invoke-interface {v6, v7}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 76
    invoke-interface {v6, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 79
    invoke-interface {v6, v0}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 82
    invoke-interface {v6, v2}, Lcom/android/systemui/log/LogMessage;->setInt2(I)V

    .line 85
    invoke-interface {v6, v3}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 88
    invoke-interface {v6, v4}, Lcom/android/systemui/log/LogMessage;->setBool3(Z)V

    .line 91
    invoke-static {v5, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    .line 94
    move-result v0

    .line 97
    int-to-long v0, v0

    .line 98
    invoke-interface {v6, v0, v1}, Lcom/android/systemui/log/LogMessage;->setLong1(J)V

    .line 99
    invoke-virtual {p0, v6}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 102
    const-class p0, Lcom/miui/systemui/functions/PanelExpansionObserver;

    .line 105
    invoke-static {p0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 107
    move-result-object p0

    .line 110
    check-cast p0, Lcom/miui/systemui/functions/PanelExpansionObserver;

    .line 111
    invoke-virtual {p0, p1}, Lcom/miui/systemui/functions/PanelExpansionObserver;->dispatchQsExpansionChanged(Z)V

    .line 113
    if-eqz p1, :cond_2

    .line 116
    const-class p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 118
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 120
    move-result-object p0

    .line 123
    check-cast p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 124
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mPanelStat:Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;

    .line 126
    :cond_2
    return-void
    .line 128
.end method

.method public final setExpansionHeight(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mPanelViewControllerLazy:Ldagger/Lazy;

    .line 2
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setQsExpansion(F)V

    .line 10
    return-void
    .line 13
.end method

.method public setQs(Lcom/android/systemui/plugins/qs/QS;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 2
    return-void
    .line 4
.end method

.method public setStatusBarMinHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mStatusBarMinHeight:I

    .line 2
    return-void
    .line 4
.end method

.method public final shouldQuickSettingsIntercept(FFF)Z
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mBarState:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v2, :cond_0

    .line 6
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->isExpansionEnabled()Z

    .line 11
    move-result v3

    .line 14
    if-eqz v3, :cond_c

    .line 15
    iget-boolean v3, p0, Lcom/android/systemui/shade/QuickSettingsController;->mCollapsedOnDown:Z

    .line 17
    if-nez v3, :cond_c

    .line 19
    iget-object v3, p0, Lcom/android/systemui/shade/QuickSettingsController;->mPanelViewControllerLazy:Ldagger/Lazy;

    .line 21
    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 23
    move-result-object v4

    .line 26
    check-cast v4, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 27
    check-cast v4, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 29
    iget-boolean v4, v4, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNssCoveredQs:Z

    .line 31
    if-nez v4, :cond_c

    .line 33
    if-eqz v0, :cond_1

    .line 35
    iget-object v4, p0, Lcom/android/systemui/shade/QuickSettingsController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 37
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 39
    move-result v4

    .line 42
    if-eqz v4, :cond_1

    .line 43
    goto/16 :goto_8

    .line 45
    :cond_1
    if-nez v0, :cond_3

    .line 47
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 49
    if-nez v0, :cond_2

    .line 51
    goto :goto_1

    .line 53
    :cond_2
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    .line 54
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 58
    move-result v0

    .line 61
    iget-object v4, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 62
    invoke-interface {v4}, Lcom/android/systemui/plugins/qs/QS;->getQsMinExpansionHeight()I

    .line 64
    move-result v4

    .line 67
    add-int/2addr v4, v0

    .line 68
    goto :goto_2

    .line 69
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 70
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getTop()I

    .line 72
    move-result v4

    .line 75
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBottom()I

    .line 76
    move-result v0

    .line 79
    move v7, v4

    .line 80
    move v4, v0

    .line 81
    move v0, v7

    .line 82
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQsFrame:Landroid/widget/FrameLayout;

    .line 83
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getX()F

    .line 85
    move-result v6

    .line 88
    cmpl-float v6, p1, v6

    .line 89
    if-ltz v6, :cond_4

    .line 91
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getX()F

    .line 93
    move-result v6

    .line 96
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getWidth()I

    .line 97
    move-result v5

    .line 100
    int-to-float v5, v5

    .line 101
    add-float/2addr v6, v5

    .line 102
    cmpg-float v5, p1, v6

    .line 103
    if-gtz v5, :cond_4

    .line 105
    int-to-float v0, v0

    .line 107
    cmpl-float v0, p2, v0

    .line 108
    if-ltz v0, :cond_4

    .line 110
    int-to-float v0, v4

    .line 112
    cmpg-float v0, p2, v0

    .line 113
    if-gtz v0, :cond_4

    .line 115
    move v0, v2

    .line 117
    goto :goto_3

    .line 118
    :cond_4
    move v0, v1

    .line 119
    :goto_3
    iget-boolean v4, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 120
    if-eqz v4, :cond_b

    .line 122
    if-nez v0, :cond_a

    .line 124
    const/4 v0, 0x0

    .line 126
    cmpg-float p3, p3, v0

    .line 127
    if-gez p3, :cond_c

    .line 129
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/QuickSettingsController;->isSplitShadeAndTouchXOutsideQs(F)Z

    .line 131
    move-result p1

    .line 134
    if-eqz p1, :cond_5

    .line 135
    goto :goto_5

    .line 137
    :cond_5
    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 138
    move-result-object p1

    .line 141
    check-cast p1, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 142
    iget-boolean p3, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsGestureNavigation:Z

    .line 144
    if-eqz p3, :cond_6

    .line 146
    iget-object p3, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 148
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getHeight()I

    .line 150
    move-result p3

    .line 153
    iget p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mNavigationBarBottomHeight:I

    .line 154
    sub-int/2addr p3, p1

    .line 156
    int-to-float p1, p3

    .line 157
    cmpl-float p1, p2, p1

    .line 158
    if-lez p1, :cond_6

    .line 160
    move p1, v2

    .line 162
    goto :goto_4

    .line 163
    :cond_6
    move p1, v1

    .line 164
    :goto_4
    if-eqz p1, :cond_7

    .line 165
    goto :goto_5

    .line 167
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 168
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 170
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getBottomMostNotificationBottom()F

    .line 172
    move-result p1

    .line 175
    cmpg-float p1, p2, p1

    .line 176
    if-lez p1, :cond_9

    .line 178
    iget-object p1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 180
    invoke-interface {p1}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    .line 182
    move-result-object p1

    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 186
    move-result p1

    .line 189
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 190
    invoke-interface {p0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    .line 192
    move-result-object p0

    .line 195
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 196
    move-result p0

    .line 199
    int-to-float p0, p0

    .line 200
    add-float/2addr p1, p0

    .line 201
    cmpg-float p0, p2, p1

    .line 202
    if-gtz p0, :cond_8

    .line 204
    goto :goto_6

    .line 206
    :cond_8
    :goto_5
    move p0, v1

    .line 207
    goto :goto_7

    .line 208
    :cond_9
    :goto_6
    move p0, v2

    .line 209
    :goto_7
    if-eqz p0, :cond_c

    .line 210
    :cond_a
    move v1, v2

    .line 212
    goto :goto_8

    .line 213
    :cond_b
    move v1, v0

    .line 214
    :cond_c
    :goto_8
    return v1
    .line 215
.end method

.method public final traceQsJank(ZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x5

    .line 7
    if-eqz p1, :cond_1

    .line 8
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mPanelView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 10
    invoke-virtual {v0, p0, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    .line 12
    goto :goto_0

    .line 15
    :cond_1
    if-eqz p2, :cond_2

    .line 16
    invoke-virtual {v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    .line 18
    goto :goto_0

    .line 21
    :cond_2
    invoke-virtual {v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    .line 22
    :goto_0
    return-void
    .line 25
.end method

.method public final trackMovement(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public final updateExpansion()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpandImmediate:Z

    .line 7
    const/high16 v1, 0x3f800000    # 1.0f

    .line 9
    iget-object v2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 11
    const/4 v3, 0x0

    .line 13
    if-nez v0, :cond_1

    .line 14
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 16
    if-eqz v0, :cond_2

    .line 18
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 20
    if-nez v0, :cond_2

    .line 22
    move v0, v1

    .line 24
    goto :goto_0

    .line 25
    :cond_2
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mTransitioningToFullShadeProgress:F

    .line 26
    cmpl-float v0, v0, v3

    .line 28
    if-lez v0, :cond_3

    .line 30
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    .line 32
    iget-object v0, v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->qsTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;

    .line 34
    iget v0, v0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsSquishTransitionFraction:F

    .line 36
    goto :goto_0

    .line 38
    :cond_3
    iget-object v0, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 39
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getNotificationSquishinessFraction()F

    .line 41
    move-result v0

    .line 44
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->computeExpansionFraction()F

    .line 45
    move-result v4

    .line 48
    iget-boolean v5, p0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 49
    if-eqz v5, :cond_4

    .line 51
    goto :goto_1

    .line 53
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->computeExpansionFraction()F

    .line 54
    move-result v1

    .line 57
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 58
    iget v6, p0, Lcom/android/systemui/shade/QuickSettingsController;->mShadeExpandedFraction:F

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->getHeaderTranslation()F

    .line 62
    move-result v7

    .line 65
    invoke-interface {v5, v1, v6, v7, v0}, Lcom/android/systemui/plugins/qs/QS;->setQsExpansion(FFFF)V

    .line 66
    sget-boolean v0, Lcom/android/systemui/shared/system/QuickStepContract;->ALLOW_BACK_GESTURE_IN_SHADE:Z

    .line 69
    if-eqz v0, :cond_5

    .line 71
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mPanelViewControllerLazy:Ldagger/Lazy;

    .line 73
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 75
    move-result-object v0

    .line 78
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 79
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMediaHierarchyManager:Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;

    .line 84
    iget v1, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->qsExpansion:F

    .line 86
    cmpg-float v1, v1, v4

    .line 88
    const/4 v5, 0x0

    .line 90
    const/4 v6, 0x1

    .line 91
    if-nez v1, :cond_6

    .line 92
    move v1, v6

    .line 94
    goto :goto_2

    .line 95
    :cond_6
    move v1, v5

    .line 96
    :goto_2
    if-nez v1, :cond_7

    .line 97
    iput v4, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->qsExpansion:F

    .line 99
    const/4 v1, 0x3

    .line 101
    invoke-static {v0, v5, v1}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->updateDesiredLocation$default(Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;ZI)V

    .line 102
    invoke-virtual {v0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->getQSTransformationProgress()F

    .line 105
    move-result v1

    .line 108
    cmpl-float v1, v1, v3

    .line 109
    if-ltz v1, :cond_7

    .line 111
    invoke-virtual {v0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->updateTargetState()V

    .line 113
    invoke-virtual {v0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->applyTargetStateIfNotAnimating()V

    .line 116
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->setClippingBounds()V

    .line 119
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 122
    if-eqz v0, :cond_8

    .line 124
    iget-object v0, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 126
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setQsExpansionFraction(F)V

    .line 128
    goto :goto_3

    .line 131
    :cond_8
    iget-object v0, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 132
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setQsExpansionFraction(F)V

    .line 134
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 137
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 142
    move-result v1

    .line 145
    if-eqz v1, :cond_9

    .line 146
    const-string v0, "DepthController"

    .line 148
    const-string v1, "Invalid qs expansion"

    .line 150
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    goto :goto_5

    .line 155
    :cond_9
    iget v1, v0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->qsPanelExpansion:F

    .line 156
    cmpg-float v1, v1, v4

    .line 158
    if-nez v1, :cond_a

    .line 160
    move v1, v6

    .line 162
    goto :goto_4

    .line 163
    :cond_a
    move v1, v5

    .line 164
    :goto_4
    if-eqz v1, :cond_b

    .line 165
    goto :goto_5

    .line 167
    :cond_b
    iput v4, v0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->qsPanelExpansion:F

    .line 168
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->scheduleUpdate()V

    .line 170
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 173
    iput v4, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mQsExpansion:F

    .line 175
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mCallbacks:Ljava/util/Set;

    .line 177
    check-cast v1, Ljava/util/HashSet;

    .line 179
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 181
    move-result-object v1

    .line 184
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 185
    move-result v2

    .line 188
    if-eqz v2, :cond_c

    .line 189
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 191
    move-result-object v2

    .line 194
    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$KeyguardViewManagerCallback;

    .line 195
    iget v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mQsExpansion:F

    .line 197
    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$KeyguardViewManagerCallback;->onQSExpansionChanged(F)V

    .line 199
    goto :goto_6

    .line 202
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mShadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    .line 203
    check-cast v0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;

    .line 205
    iget-object v0, v0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->_qsExpansion:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 207
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 209
    move-result-object v1

    .line 212
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 213
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mBarState:I

    .line 216
    if-ne v0, v6, :cond_d

    .line 218
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->getLockscreenShadeDragProgress()F

    .line 220
    move-result v0

    .line 223
    goto :goto_7

    .line 224
    :cond_d
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mShadeExpandedFraction:F

    .line 225
    :goto_7
    iget-object v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    .line 227
    iget-boolean v2, v1, Lcom/android/systemui/shade/ShadeHeaderController;->qsVisible:Z

    .line 229
    if-eqz v2, :cond_f

    .line 231
    iget v2, v1, Lcom/android/systemui/shade/ShadeHeaderController;->shadeExpandedFraction:F

    .line 233
    cmpg-float v2, v2, v0

    .line 235
    if-nez v2, :cond_e

    .line 237
    move v2, v6

    .line 239
    goto :goto_8

    .line 240
    :cond_e
    move v2, v5

    .line 241
    :goto_8
    if-nez v2, :cond_f

    .line 242
    iget-object v2, v1, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 244
    invoke-static {v0}, Lcom/android/systemui/animation/ShadeInterpolation;->getContentAlpha(F)F

    .line 246
    move-result v3

    .line 249
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 250
    iput v0, v1, Lcom/android/systemui/shade/ShadeHeaderController;->shadeExpandedFraction:F

    .line 253
    :cond_f
    iget-boolean v0, v1, Lcom/android/systemui/shade/ShadeHeaderController;->visible:Z

    .line 255
    if-eqz v0, :cond_11

    .line 257
    iget v0, v1, Lcom/android/systemui/shade/ShadeHeaderController;->qsExpandedFraction:F

    .line 259
    cmpg-float v0, v0, v4

    .line 261
    if-nez v0, :cond_10

    .line 263
    move v0, v6

    .line 265
    goto :goto_9

    .line 266
    :cond_10
    move v0, v5

    .line 267
    :goto_9
    if-nez v0, :cond_11

    .line 268
    iput v4, v1, Lcom/android/systemui/shade/ShadeHeaderController;->qsExpandedFraction:F

    .line 270
    invoke-virtual {v1}, Lcom/android/systemui/shade/ShadeHeaderController;->updatePosition$1()V

    .line 272
    :cond_11
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mVisible:Z

    .line 275
    iget-boolean v2, v1, Lcom/android/systemui/shade/ShadeHeaderController;->qsVisible:Z

    .line 277
    if-ne v2, v0, :cond_12

    .line 279
    goto :goto_b

    .line 281
    :cond_12
    iput-boolean v0, v1, Lcom/android/systemui/shade/ShadeHeaderController;->qsVisible:Z

    .line 282
    iget-object v2, v1, Lcom/android/systemui/shade/ShadeHeaderController;->privacyIconsController:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    .line 284
    if-eqz v0, :cond_13

    .line 286
    iput-boolean v6, v2, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->listening:Z

    .line 288
    iget-object v0, v2, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    .line 290
    iget-object v3, v0, Lcom/android/systemui/privacy/PrivacyItemController;->privacyConfig:Lcom/android/systemui/privacy/PrivacyConfig;

    .line 292
    iget-boolean v4, v3, Lcom/android/systemui/privacy/PrivacyConfig;->micCameraAvailable:Z

    .line 294
    iput-boolean v4, v2, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->micCameraIndicatorsEnabled:Z

    .line 296
    iget-boolean v3, v3, Lcom/android/systemui/privacy/PrivacyConfig;->locationAvailable:Z

    .line 298
    iput-boolean v3, v2, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->locationIndicatorsEnabled:Z

    .line 300
    iget-object v2, v2, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->picCallback:Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    .line 302
    invoke-virtual {v0, v2}, Lcom/android/systemui/privacy/PrivacyItemController;->addCallback(Lcom/android/systemui/privacy/PrivacyItemController$Callback;)V

    .line 304
    goto :goto_a

    .line 307
    :cond_13
    iput-boolean v5, v2, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->listening:Z

    .line 308
    iget-object v0, v2, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    .line 310
    iget-object v3, v2, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->picCallback:Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    .line 312
    invoke-virtual {v0, v3}, Lcom/android/systemui/privacy/PrivacyItemController;->removeCallback(Lcom/android/systemui/privacy/PrivacyItemController$Callback;)V

    .line 314
    iput-boolean v5, v2, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyChipLogged:Z

    .line 317
    :goto_a
    invoke-virtual {v1}, Lcom/android/systemui/shade/ShadeHeaderController;->updateVisibility()V

    .line 319
    invoke-virtual {v1}, Lcom/android/systemui/shade/ShadeHeaderController;->updatePosition$1()V

    .line 322
    :goto_b
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mFullyExpanded:Z

    .line 325
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 327
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsExpanded:Z

    .line 329
    if-ne v1, v0, :cond_14

    .line 331
    goto :goto_c

    .line 333
    :cond_14
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsExpanded:Z

    .line 334
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    .line 336
    :goto_c
    return-void
    .line 339
.end method

.method public final updateExpansionEnabledAmbient()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 2
    iget v1, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTopPadding:I

    .line 4
    int-to-float v1, v1

    .line 6
    iget v2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQuickQsHeaderHeight:F

    .line 7
    sub-float/2addr v1, v2

    .line 9
    iget-boolean v2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 10
    if-nez v2, :cond_1

    .line 12
    iget v0, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mScrollY:I

    .line 14
    int-to-float v0, v0

    .line 16
    cmpg-float v0, v0, v1

    .line 17
    if-gtz v0, :cond_0

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 24
    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionEnabledAmbient:Z

    .line 25
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 27
    if-eqz v0, :cond_2

    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->isExpansionEnabled()Z

    .line 31
    move-result p0

    .line 34
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/qs/QS;->setHeaderClickable(Z)V

    .line 35
    :cond_2
    return-void
    .line 38
.end method

.method public final updateMinHeight()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMinExpansionHeight:I

    .line 2
    int-to-float v0, v0

    .line 4
    iget v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mBarState:I

    .line 5
    const/4 v2, 0x1

    .line 7
    if-eq v1, v2, :cond_1

    .line 8
    iget-boolean v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 10
    if-eqz v1, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 15
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getQsMinExpansionHeight()I

    .line 17
    move-result v1

    .line 20
    iput v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMinExpansionHeight:I

    .line 21
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 24
    iput v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMinExpansionHeight:I

    .line 25
    :goto_1
    iget v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeight:F

    .line 27
    cmpl-float v0, v1, v0

    .line 29
    if-nez v0, :cond_2

    .line 31
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMinExpansionHeight:I

    .line 33
    int-to-float v0, v0

    .line 35
    iput v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeight:F

    .line 36
    :cond_2
    return-void
    .line 38
.end method

.method public final updateQsState()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 8
    if-nez v0, :cond_0

    .line 10
    move v0, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v1

    .line 14
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 15
    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 17
    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setQsFullScreen(Z)V

    .line 19
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->updateShowEmptyShadeView()V

    .line 22
    iget v4, p0, Lcom/android/systemui/shade/QuickSettingsController;->mBarState:I

    .line 25
    if-eq v4, v2, :cond_2

    .line 27
    if-eqz v0, :cond_1

    .line 29
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionFromOverscroll:Z

    .line 31
    if-eqz v0, :cond_2

    .line 33
    :cond_1
    move v1, v2

    .line 35
    :cond_2
    iget-object v0, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 36
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setScrollingEnabled(Z)V

    .line 38
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQsStateUpdateListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;

    .line 41
    if-eqz v0, :cond_3

    .line 43
    iget-boolean v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 45
    iget-boolean v3, p0, Lcom/android/systemui/shade/QuickSettingsController;->mStackScrollerOverscrolling:Z

    .line 47
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 49
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    .line 51
    if-eqz v0, :cond_3

    .line 53
    if-eqz v1, :cond_3

    .line 55
    if-nez v3, :cond_3

    .line 57
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->closeSwitcherIfOpenAndNotSimple(Z)Z

    .line 59
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 62
    if-nez v0, :cond_4

    .line 64
    return-void

    .line 66
    :cond_4
    iget-boolean p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 67
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/qs/QS;->setExpanded(Z)V

    .line 69
    return-void
    .line 72
.end method
