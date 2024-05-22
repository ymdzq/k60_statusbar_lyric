.class public final Lcom/android/systemui/shade/MiuiNotificationPanelViewController;
.super Lcom/android/systemui/shade/NotificationPanelViewController;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/controlcenter/policy/NCSwitchController$PrepareForNCSwitcherListener;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;
.implements Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager$ShowingUnimportantChangeListener;


# instance fields
.field public final KEY_TRANSLATION_ALPHA:Ljava/lang/String;

.field public alphaAnimForEditor:Landroid/animation/ValueAnimator;

.field public final alphaHideEase:Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

.field public final alphaShowEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

.field public animTargetForEditor:Lmiuix/animation/ValueTarget;

.field public beginToAodAnim:Z

.field public final blackHideEase:Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

.field public final blackShowEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

.field public final controlCenterController:Ldagger/Lazy;

.field public final exitBouncerEaseStyle:Lmiuix/animation/utils/EaseManager$EaseStyle;

.field public final fakeStatusBarClockController:Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;

.field public final foldManager:Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

.field public hasNotificationOnKeyguard:Z

.field public final headsUpViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController$headsUpViewController$1;

.field public final hideEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

.field public horizontalBlurRatio:F

.field public isGoingToDismissKeyguard:Z

.field public isTouchingOnPanel:Z

.field public final lockscreenInfoAlphaHideEase:Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

.field public final lockscreenInfoAlphaShowEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

.field public mAwesomeLockScreen:Lcom/android/keyguard/AwesomeLockScreen;

.field public mAwesomeLockScreenContainer:Lcom/android/keyguard/AwesomeLockScreenContainer;

.field public mBarState:I

.field public mBgBlurRadius:I

.field public final mBlurRatioChangedListener:Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mBlurRatioChangedListener$1;

.field public final mBottomAreaCollapseHotZone:F

.field public mBouncerFractionAnimator:Landroid/animation/ValueAnimator;

.field public mCurrentRadius:F

.field public mDeductedImageView:Landroid/widget/ImageView;

.field public final mDeviceRadius:F

.field public mDismissView:Lcom/android/systemui/statusbar/views/DismissView;

.field public mEditorState:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

.field public final mEditorStateListener:Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mEditorStateListener$1;

.field public mExpandingFromHeadsUp:Z

.field public final mFinalRadius:F

.field public mForceBlackImageView:Landroid/widget/ImageView;

.field public mHidePanelPending:Z

.field public mHidePanelPendingWhenIntercept:Z

.field public mHidePanelRequested:Z

.field public final mHidePanelRunnable:Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mHidePanelRunnable$1;

.field public mInteractive:Z

.field public mIsDefaultTheme:Z

.field public mKeyguardBackgroundLayer:Landroid/widget/FrameLayout;

.field public mKeyguardBlurRatio:F

.field public mKeyguardBouncerFraction:F

.field public mKeyguardBouncerShowing:Z

.field public final mKeyguardClockInjector:Lcom/android/keyguard/injector/KeyguardClockInjector;

.field public final mKeyguardCommonSettingObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver;

.field public final mKeyguardEditorHelper:Lcom/android/keyguard/KeyguardEditorHelper;

.field public mKeyguardForegroundLayer:Landroid/widget/FrameLayout;

.field public final mKeyguardPanelViewInjector:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

.field public mKeyguardShowing:Z

.field public mKeyguardSignatureLayer:Landroid/widget/FrameLayout;

.field public mKeyguardSignatureLayerAlphaAnimator:Landroid/animation/ValueAnimator;

.field public final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mKeyguardViewManagerCallback:Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mKeyguardViewManagerCallback$1;

.field public mKeyguardVisibility:Z

.field public final mMinTouchableRaduis:I

.field public mMiuiKeyguardEditLoadingContainer:Lcom/android/keyguard/widget/KeyguardLoadingRoundView;

.field public mMiuiKeyguardFaceUnlockView:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;

.field public final mMiuiKeyguardUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

.field public mNCSwitching:Z

.field public final mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field public mNssCoveredQs:Z

.field public mNssCoveringQs:Z

.field public mPanelCollapsing:Z

.field public mPanelIntercepting:Z

.field public mPanelOpening:Z

.field public mQsFrame:Landroid/widget/FrameLayout;

.field public mQsNotificationTopPadding:I

.field public mQsPanelExpansion:F

.field public mQsTopPadding:F

.field public mQsTopPaddingAnimator:Landroid/animation/ValueAnimator;

.field public mQuickFlingHeadsUpTriggered:Z

.field public mRenderEffect:Landroid/graphics/RenderEffect;

.field public mRuntimeShader:Landroid/graphics/RuntimeShader;

.field public final mSetExpandedHeight:Lkotlin/reflect/KFunction;

.field public mShowDismissView:Z

.field public mSpringLength:F

.field public mStretchFromHeadsUpRequested:Z

.field public mStretchLength:F

.field public mStretchingFromHeadsUp:Z

.field public mThemeBackgroundView:Landroid/view/View;

.field public final mTouchSlop:I

.field public mTrackingMiniWindowHeadsUp:Z

.field public mVelocityTracker:Landroid/view/VelocityTracker;

.field public mViewAlphaAnimator:Landroid/animation/ValueAnimator;

.field public final ncSwitchController:Lcom/android/systemui/controlcenter/policy/NCSwitchController;

.field public final notifLiveDataStore:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;

.field public final panelView:Lcom/android/systemui/shade/NotificationPanelView;

.field public panelViewVisible:Z

.field public final pipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

.field public final quickSettingsController:Lcom/android/systemui/shade/QuickSettingsController;

.field public radiusAnimForEditor:Landroid/animation/ValueAnimator;

.field public runCount:J

.field public final scaleEaseStyle:Lmiuix/animation/utils/EaseManager$EaseStyle;

.field public final showEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

.field public final statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field public final translationYEaseStyle:Lmiuix/animation/utils/EaseManager$EaseStyle;

.field public unlockAlphaAndScaleAnimator:Landroid/animation/ValueAnimator;

.field public unlockBlurAnimator:Landroid/animation/ValueAnimator;

.field public unlockSmartScaleAnimator:Landroid/animation/ValueAnimator;

.field public unlockSmartTransAnimator:Landroid/animation/ValueAnimator;

.field public final updateVisibilityOnFinishedSleep:Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mHidePanelRunnable$1;

.field public valueAnimator:Landroid/animation/ValueAnimator;

.field public final wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/NotificationPanelView;Landroid/os/Handler;Landroid/view/LayoutInflater;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/internal/util/LatencyTracker;Landroid/os/PowerManager;Landroid/view/accessibility/AccessibilityManager;ILcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/shade/ShadeLogger;Lcom/android/systemui/statusbar/policy/ConfigurationController;Ljavax/inject/Provider;Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/shade/NotificationsQSContainerController;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent$Factory;Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent$Factory;Lcom/android/keyguard/dagger/KeyguardStatusBarViewComponent$Factory;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/os/UserManager;Lcom/android/systemui/media/controls/pipeline/MediaDataManager;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/keyguard/LockIconViewController;Lcom/android/systemui/media/controls/ui/KeyguardMediaController;Lcom/android/systemui/statusbar/phone/TapAgainViewController;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/navigationbar/NavigationBarController;Lcom/android/systemui/shade/QuickSettingsController;Lcom/android/systemui/fragments/FragmentService;Landroid/content/ContentResolver;Lcom/android/systemui/shade/ShadeHeaderController;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;Lcom/android/systemui/shade/ShadeExpansionStateManager;Ljava/util/Optional;Lcom/android/systemui/model/SysUiState;Ljavax/inject/Provider;Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;Lcom/android/systemui/statusbar/KeyguardIndicationController;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Lcom/android/systemui/shade/transition/ShadeTransitionController;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/OccludedToLockscreenTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToDreamingTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/GoneToDreamingTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToOccludedTransitionViewModel;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Ljavax/inject/Provider;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardLongPressViewModel;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/keyguard/domain/interactor/KeyguardFaceAuthInteractor;Ldagger/Lazy;Lcom/android/keyguard/KeyguardCommonSettingObserver;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;Lcom/android/keyguard/KeyguardEditorHelper;Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;)V
    .locals 81

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p14

    move-object/from16 v12, p88

    move-object/from16 v11, p89

    move-object/from16 v10, p92

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move-object/from16 v27, p27

    move-object/from16 v28, p28

    move-object/from16 v29, p29

    move-object/from16 v30, p30

    move-object/from16 v31, p31

    move-object/from16 v32, p32

    move-object/from16 v33, p33

    move-object/from16 v34, p34

    move-object/from16 v35, p35

    move-object/from16 v36, p36

    move-object/from16 v37, p37

    move-object/from16 v38, p38

    move-object/from16 v39, p39

    move-object/from16 v40, p40

    move-object/from16 v41, p41

    move-object/from16 v42, p42

    move-object/from16 v43, p43

    move-object/from16 v44, p44

    move-object/from16 v45, p45

    move-object/from16 v46, p46

    move-object/from16 v47, p47

    move-object/from16 v48, p48

    move-object/from16 v49, p49

    move-object/from16 v50, p50

    move-object/from16 v51, p51

    move-object/from16 v52, p52

    move-object/from16 v53, p53

    move-object/from16 v54, p54

    move-object/from16 v55, p55

    move-object/from16 v56, p56

    move-object/from16 v57, p57

    move-object/from16 v58, p58

    move-object/from16 v59, p59

    move-object/from16 v60, p61

    move-object/from16 v61, p62

    move-object/from16 v62, p63

    move-object/from16 v63, p64

    move-object/from16 v64, p65

    move-object/from16 v65, p66

    move-object/from16 v66, p68

    move-object/from16 v67, p69

    move-object/from16 v68, p70

    move-object/from16 v69, p71

    move-object/from16 v70, p72

    move-object/from16 v71, p73

    move-object/from16 v72, p74

    move-object/from16 v73, p75

    move-object/from16 v74, p76

    move-object/from16 v75, p77

    move-object/from16 v76, p78

    move-object/from16 v77, p80

    move-object/from16 v78, p82

    move-object/from16 v79, p83

    move-object/from16 v80, p84

    .line 1
    invoke-direct/range {v0 .. v80}, Lcom/android/systemui/shade/NotificationPanelViewController;-><init>(Lcom/android/systemui/shade/NotificationPanelView;Landroid/os/Handler;Landroid/view/LayoutInflater;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/internal/util/LatencyTracker;Landroid/os/PowerManager;Landroid/view/accessibility/AccessibilityManager;ILcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/shade/ShadeLogger;Lcom/android/systemui/statusbar/policy/ConfigurationController;Ljavax/inject/Provider;Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/shade/NotificationsQSContainerController;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent$Factory;Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent$Factory;Lcom/android/keyguard/dagger/KeyguardStatusBarViewComponent$Factory;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/os/UserManager;Lcom/android/systemui/media/controls/pipeline/MediaDataManager;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/keyguard/LockIconViewController;Lcom/android/systemui/media/controls/ui/KeyguardMediaController;Lcom/android/systemui/statusbar/phone/TapAgainViewController;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/navigationbar/NavigationBarController;Lcom/android/systemui/shade/QuickSettingsController;Lcom/android/systemui/fragments/FragmentService;Landroid/content/ContentResolver;Lcom/android/systemui/shade/ShadeHeaderController;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;Lcom/android/systemui/shade/ShadeExpansionStateManager;Ljava/util/Optional;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;Lcom/android/systemui/statusbar/KeyguardIndicationController;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Lcom/android/systemui/shade/transition/ShadeTransitionController;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/OccludedToLockscreenTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToDreamingTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/GoneToDreamingTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToOccludedTransitionViewModel;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/keyguard/domain/interactor/KeyguardFaceAuthInteractor;)V

    .line 2
    iput-object v1, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->panelView:Lcom/android/systemui/shade/NotificationPanelView;

    move-object/from16 v2, p31

    .line 3
    iput-object v2, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v2, p51

    .line 4
    iput-object v2, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->quickSettingsController:Lcom/android/systemui/shade/QuickSettingsController;

    move-object/from16 v2, p85

    .line 5
    iput-object v2, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->controlCenterController:Ldagger/Lazy;

    move-object/from16 v3, p86

    .line 6
    iput-object v3, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardCommonSettingObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver;

    move-object/from16 v3, p87

    .line 7
    iput-object v3, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    move-object/from16 v3, p88

    .line 8
    iput-object v3, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->foldManager:Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    move-object/from16 v4, p89

    .line 9
    iput-object v4, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardEditorHelper:Lcom/android/keyguard/KeyguardEditorHelper;

    move-object/from16 v5, p90

    .line 10
    iput-object v5, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->notifLiveDataStore:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;

    move-object/from16 v5, p91

    .line 11
    iput-object v5, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->pipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    move-object/from16 v5, p92

    .line 12
    iput-object v5, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->fakeStatusBarClockController:Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;

    .line 13
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    iput v6, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mTouchSlop:I

    .line 14
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07096d    # @dimen/miui_notification_swipe_area_height '40.0dp'

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    iput v6, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mBottomAreaCollapseHotZone:F

    const v6, 0x7f0a06b6    # @id/notification_stack_scroller

    .line 15
    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-object v6, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 16
    iget-object v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f070477    # @dimen/keyguard_edit_radius '41.0dp'

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    iput v7, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mFinalRadius:F

    .line 17
    iget-object v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mResources:Landroid/content/res/Resources;

    const v8, 0x1050296    # @android:dimen/select_dialog_padding_start_material

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    iput v7, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mDeviceRadius:F

    .line 18
    new-instance v7, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mBlurRatioChangedListener$1;

    invoke-direct {v7, v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mBlurRatioChangedListener$1;-><init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;)V

    iput-object v7, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mBlurRatioChangedListener:Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mBlurRatioChangedListener$1;

    .line 19
    sget-object v8, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->IDEL:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    iput-object v8, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mEditorState:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 20
    new-instance v8, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mEditorStateListener$1;

    move-object/from16 v9, p44

    invoke-direct {v8, v0, v9}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mEditorStateListener$1;-><init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V

    iput-object v8, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mEditorStateListener:Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mEditorStateListener$1;

    const/4 v9, 0x1

    .line 21
    iput-boolean v9, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mIsDefaultTheme:Z

    .line 22
    sget-boolean v10, Lcom/miui/utils/configs/MiuiDebugConfig;->DEBUG_NOTIFICATION:Z

    const/16 v11, 0x14

    if-eqz v10, :cond_0

    const-string v10, "debug.sysui.miui.minTouchRadius"

    .line 23
    invoke-static {v10, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    goto :goto_0

    :cond_0
    move v10, v11

    .line 24
    :goto_0
    iput v10, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mMinTouchableRaduis:I

    .line 25
    new-instance v10, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mHidePanelRunnable$1;

    const/4 v12, 0x0

    invoke-direct {v10, v0, v12}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mHidePanelRunnable$1;-><init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;I)V

    iput-object v10, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mHidePanelRunnable:Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mHidePanelRunnable$1;

    .line 26
    new-instance v10, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mSetExpandedHeight$1;

    invoke-direct {v10, v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mSetExpandedHeight$1;-><init>(Ljava/lang/Object;)V

    iput-object v10, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mSetExpandedHeight:Lkotlin/reflect/KFunction;

    .line 27
    const-class v10, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    invoke-static {v10}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    iput-object v10, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardPanelViewInjector:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 28
    const-class v13, Lcom/android/keyguard/injector/KeyguardClockInjector;

    invoke-static {v13}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/keyguard/injector/KeyguardClockInjector;

    iput-object v14, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardClockInjector:Lcom/android/keyguard/injector/KeyguardClockInjector;

    .line 29
    const-class v14, Lcom/android/systemui/controlcenter/policy/NCSwitchController;

    invoke-static {v14}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/controlcenter/policy/NCSwitchController;

    iput-object v14, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->ncSwitchController:Lcom/android/systemui/controlcenter/policy/NCSwitchController;

    .line 30
    new-instance v15, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mKeyguardUpdateMonitorCallback$1;

    invoke-direct {v15, v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mKeyguardUpdateMonitorCallback$1;-><init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;)V

    iput-object v15, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 31
    new-instance v15, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mMiuiKeyguardUpdateMonitorCallback$1;

    move-object/from16 v11, p14

    invoke-direct {v15, v0, v11}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mMiuiKeyguardUpdateMonitorCallback$1;-><init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;Lcom/android/systemui/statusbar/NotificationShadeWindowController;)V

    iput-object v15, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mMiuiKeyguardUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

    .line 32
    iget-object v15, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    .line 33
    iput-object v15, v5, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->fakeStatusBarClockContainer:Landroid/view/ViewGroup;

    .line 34
    iget-object v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    .line 35
    iput-object v1, v10, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mPanelView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 36
    iput-object v0, v10, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mPanelViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 37
    iget-object v5, v10, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    .line 38
    sget-boolean v5, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    if-nez v5, :cond_1

    .line 39
    new-instance v5, Lcom/android/keyguard/KeyguardMoveHelper;

    iget-object v15, v10, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mContext:Landroid/content/Context;

    invoke-direct {v5, v10, v15, v0}, Lcom/android/keyguard/KeyguardMoveHelper;-><init>(Lcom/android/keyguard/injector/KeyguardPanelViewInjector;Landroid/content/Context;Lcom/android/systemui/shade/MiuiNotificationPanelViewController;)V

    iput-object v5, v10, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardMoveHelper:Lcom/android/keyguard/KeyguardMoveHelper;

    .line 40
    :cond_1
    const-class v5, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 41
    iput-object v0, v15, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mMiuiNotificationPanelViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 42
    invoke-virtual {v15}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->updateKeyguardSupportDisplayMagazineState()V

    .line 43
    invoke-virtual {v15}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->updateLockScreenMagazineWallpaperInfo()V

    .line 44
    iput-object v15, v10, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mLockScreenMagazineController:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 45
    const-class v15, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    invoke-static {v15}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    iput-object v15, v10, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardUpdateMonitorInjector:Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 46
    const-class v15, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v15}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object v15, v10, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 47
    const-class v15, Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;

    invoke-static {v15}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;

    iput-object v15, v10, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mNegative1PageController:Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;

    .line 48
    const-class v15, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    invoke-static {v15}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    iput-object v15, v10, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mMiuiKeyguardWallPaperManager:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 49
    invoke-static {v13}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/keyguard/injector/KeyguardClockInjector;

    iput-object v13, v10, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardClockInjector:Lcom/android/keyguard/injector/KeyguardClockInjector;

    .line 50
    const-class v13, Lcom/android/keyguard/KeyguardEditorHelper;

    invoke-static {v13}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/keyguard/KeyguardEditorHelper;

    iput-object v13, v10, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardEditorHelper:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 51
    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 52
    iget-boolean v5, v5, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSupportLockScreenMagazineLeft:Z

    if-eqz v5, :cond_2

    .line 53
    new-instance v5, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$setDrawableFromOtherApk$1;

    invoke-direct {v5, v10}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$setDrawableFromOtherApk$1;-><init>(Lcom/android/keyguard/injector/KeyguardPanelViewInjector;)V

    .line 54
    sget-object v15, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v13, v12, [Ljava/lang/Void;

    invoke-virtual {v5, v15, v13}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 55
    :cond_2
    iget-object v5, v10, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mNegative1PageController:Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;

    if-nez v5, :cond_3

    const/4 v5, 0x0

    .line 56
    :cond_3
    iget-object v5, v5, Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;->mKeyguardLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;

    if-eqz v5, :cond_4

    .line 57
    invoke-virtual {v5}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->setCustomBackground()V

    .line 58
    :cond_4
    iget-object v5, v10, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mNegative1PageController:Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;

    if-nez v5, :cond_5

    const/4 v5, 0x0

    .line 59
    :cond_5
    iget-object v5, v5, Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;->mLeftTransferBgView:Landroid/widget/ImageView;

    if-eqz v5, :cond_7

    .line 60
    iget-object v13, v10, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mMiuiKeyguardWallPaperManager:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    if-nez v13, :cond_6

    const/4 v13, 0x0

    .line 61
    :cond_6
    iget v13, v13, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mWallpaperBlurColor:I

    .line 62
    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 63
    :cond_7
    :goto_1
    invoke-virtual {v10}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->initKeyguardViewCollection()V

    .line 64
    invoke-virtual {v10}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->initScreenSize()V

    .line 65
    iget-object v5, v10, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mContext:Landroid/content/Context;

    const-string v13, "power"

    invoke-virtual {v5, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, v10, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mPowerManager:Landroid/os/PowerManager;

    .line 66
    new-instance v5, Lcom/android/keyguard/DoubleTapHelper;

    iget-object v13, v10, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mPanelView:Lcom/android/systemui/shade/NotificationPanelView;

    new-instance v15, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$init$2;

    invoke-direct {v15, v10}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$init$2;-><init>(Lcom/android/keyguard/injector/KeyguardPanelViewInjector;)V

    invoke-direct {v5, v13, v15}, Lcom/android/keyguard/DoubleTapHelper;-><init>(Lcom/android/systemui/shade/NotificationPanelView;Lcom/android/keyguard/injector/KeyguardPanelViewInjector$init$2;)V

    iput-object v5, v10, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mDoubleTapHelper:Lcom/android/keyguard/DoubleTapHelper;

    .line 67
    sget-boolean v5, Lcom/miui/utils/configs/MiuiConfigs;->SUPPORT_GESTURE_WAKEUP:Z

    iput-boolean v5, v10, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mSupportGestureWakeup:Z

    .line 68
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v13, v10, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mContext:Landroid/content/Context;

    invoke-direct {v5, v13}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v5, v10, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 69
    iget-object v5, v10, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mPanelView:Lcom/android/systemui/shade/NotificationPanelView;

    if-eqz v5, :cond_8

    const v13, 0x7f0a0211    # @id/color_ribbons_container

    invoke-virtual {v5, v13}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Lcom/android/keyguard/widget/ColorRibbonsContainer;

    goto :goto_2

    :cond_8
    const/4 v13, 0x0

    :goto_2
    iput-object v13, v10, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mColorRibbonsContainer:Lcom/android/keyguard/widget/ColorRibbonsContainer;

    .line 70
    const-class v5, Lcom/miui/systemui/controller/ForceBlackObserver;

    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/miui/systemui/controller/ForceBlackObserver;

    invoke-virtual {v13, v10}, Lcom/miui/systemui/controller/ForceBlackObserver;->addCallback(Lcom/miui/systemui/controller/ForceBlackObserver$Callback;)V

    .line 71
    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/systemui/controller/ForceBlackObserver;

    .line 72
    iget-boolean v5, v5, Lcom/miui/systemui/controller/ForceBlackObserver;->mForceBlack:Z

    .line 73
    iput-boolean v5, v10, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mForceBlack:Z

    .line 74
    iget-object v5, v10, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    new-instance v13, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$init$3;

    invoke-direct {v13, v10}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$init$3;-><init>(Lcom/android/keyguard/injector/KeyguardPanelViewInjector;)V

    check-cast v5, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {v5, v13}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 75
    invoke-virtual {v1, v12}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 76
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 77
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 78
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 79
    :cond_9
    invoke-static {}, Lcom/miui/systemui/util/CommonUtil;->isDefaultLockScreenTheme()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mIsDefaultTheme:Z

    const-string v1, "PanelViewSpring"

    .line 80
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v5

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const-string v13, "PanelSpringRatio"

    filled-new-array {v13, v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v5, v10}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 81
    sget-object v5, Lcom/android/systemui/shade/MiuiNotificationPanelViewControllerKt;->SPRING_ANIM_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 82
    new-instance v10, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$linkageViewAnim$1;

    invoke-direct {v10, v9, v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$linkageViewAnim$1;-><init>(ILjava/lang/Object;)V

    filled-new-array {v10}, [Lmiuix/animation/listener/TransitionListener;

    move-result-object v10

    invoke-virtual {v5, v10}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 83
    invoke-static {v1}, Lmiuix/animation/Folme;->getValueTarget(Ljava/lang/Object;)Lmiuix/animation/ValueTarget;

    move-result-object v1

    const-string v5, "length"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v1, v10, v5}, Lmiuix/animation/IAnimTarget;->setMinVisibleChange(F[Ljava/lang/String;)Lmiuix/animation/IAnimTarget;

    .line 84
    iput-object v0, v4, Lcom/android/keyguard/KeyguardEditorHelper;->mMiuiNotificationPanelViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 85
    invoke-virtual {v4, v8}, Lcom/android/keyguard/KeyguardEditorHelper;->addEditorStateListener(Lcom/android/keyguard/KeyguardEditorHelper$EditorStateListener;)V

    .line 86
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v4, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$1;

    invoke-direct {v4, v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$1;-><init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;)V

    invoke-virtual {v1, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 87
    invoke-interface/range {p85 .. p85}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    new-instance v2, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$2;

    invoke-direct {v2, v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$2;-><init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->addCallback(Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterController$UseControlCenterChangeListener;)V

    .line 88
    iput-object v0, v14, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->panelViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 89
    iget-object v1, v14, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 90
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_a
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 92
    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->listeners:Ljava/util/List;

    .line 93
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->addListener(Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager$ShowingUnimportantChangeListener;)V

    .line 95
    new-instance v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$3;

    invoke-direct {v1, v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$3;-><init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;)V

    move-object v2, v11

    check-cast v2, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 96
    iput-object v1, v2, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mBgBlurRadiusListener:Ljava/util/function/Consumer;

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 97
    fill-array-data v2, :array_0

    const/4 v3, -0x2

    invoke-static {v3, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->scaleEaseStyle:Lmiuix/animation/utils/EaseManager$EaseStyle;

    new-array v2, v1, [F

    .line 98
    fill-array-data v2, :array_1

    invoke-static {v3, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->exitBouncerEaseStyle:Lmiuix/animation/utils/EaseManager$EaseStyle;

    new-array v2, v1, [F

    .line 99
    fill-array-data v2, :array_2

    invoke-static {v3, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->translationYEaseStyle:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 100
    new-instance v2, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$headsUpViewController$1;

    invoke-direct {v2, v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$headsUpViewController$1;-><init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;)V

    iput-object v2, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->headsUpViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController$headsUpViewController$1;

    .line 101
    new-instance v2, Lmiuix/animation/utils/EaseManager$EaseStyle;

    new-array v4, v1, [F

    fill-array-data v4, :array_3

    invoke-direct {v2, v3, v4}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    iput-object v2, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->hideEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 102
    new-instance v2, Lmiuix/animation/utils/EaseManager$EaseStyle;

    new-array v4, v1, [F

    fill-array-data v4, :array_4

    invoke-direct {v2, v3, v4}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    iput-object v2, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->showEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 103
    new-instance v2, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    new-array v4, v9, [F

    aput v10, v4, v12

    const/16 v5, 0x15

    invoke-direct {v2, v5, v4}, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;-><init>(I[F)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;->setDuration(J)Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->alphaHideEase:Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    .line 104
    new-instance v2, Lmiuix/animation/utils/EaseManager$EaseStyle;

    new-array v4, v1, [F

    fill-array-data v4, :array_5

    invoke-direct {v2, v3, v4}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    iput-object v2, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->alphaShowEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 105
    new-instance v2, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    new-array v4, v9, [F

    aput v10, v4, v12

    const/16 v5, 0x14

    invoke-direct {v2, v5, v4}, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;-><init>(I[F)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v4, v5}, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;->setDuration(J)Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->blackHideEase:Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    .line 106
    new-instance v2, Lmiuix/animation/utils/EaseManager$EaseStyle;

    new-array v4, v1, [F

    fill-array-data v4, :array_6

    invoke-direct {v2, v3, v4}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    iput-object v2, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->blackShowEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 107
    new-instance v2, Lmiuix/animation/utils/EaseManager$EaseStyle;

    new-array v1, v1, [F

    fill-array-data v1, :array_7

    invoke-direct {v2, v3, v1}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    iput-object v2, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->lockscreenInfoAlphaShowEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 108
    new-instance v1, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    const/16 v2, 0xf

    new-array v3, v12, [F

    invoke-direct {v1, v2, v3}, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;-><init>(I[F)V

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;->setDuration(J)Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->lockscreenInfoAlphaHideEase:Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    .line 109
    iput-boolean v9, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->panelViewVisible:Z

    .line 110
    new-instance v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mHidePanelRunnable$1;

    const/4 v2, 0x5

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mHidePanelRunnable$1;-><init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;I)V

    iput-object v1, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateVisibilityOnFinishedSleep:Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mHidePanelRunnable$1;

    .line 111
    new-instance v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mKeyguardViewManagerCallback$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mKeyguardViewManagerCallback$1;-><init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;)V

    iput-object v1, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardViewManagerCallback:Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mKeyguardViewManagerCallback$1;

    const/high16 v1, -0x40800000    # -1.0f

    .line 112
    iput v1, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardBlurRatio:F

    const-string v1, "TransitionAlpha"

    .line 113
    iput-object v1, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->KEY_TRANSLATION_ALPHA:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3ec28f5c    # 0.38f
    .end array-data

    :array_1
    .array-data 4
        0x3f733333    # 0.95f
        0x3e800000    # 0.25f
    .end array-data

    :array_2
    .array-data 4
        0x3f733333    # 0.95f
        0x3ecccccd    # 0.4f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3e800000    # 0.25f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3eb33333    # 0.35f
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x3e3851ec    # 0.18f
    .end array-data

    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x3eb33333    # 0.35f
    .end array-data

    :array_7
    .array-data 4
        0x3f800000    # 1.0f
        0x3eb33333    # 0.35f
    .end array-data
.end method

.method public static final synthetic access$calculateNotificationsTopPadding$s95694906(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;)F
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->calculateNotificationsTopPadding()F

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public static final access$cancelFlingSpring(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    const-string v0, "PanelViewSpring"

    .line 5
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 10
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 11
    move-result-object v0

    .line 14
    const-string v1, "PanelSpringRatio"

    .line 15
    filled-new-array {v1}, [Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 20
    invoke-interface {v0, v1}, Lmiuix/animation/ICancelableStyle;->cancel([Ljava/lang/String;)V

    .line 21
    iget-boolean p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mHidePanelPending:Z

    .line 24
    const-string v0, "cancelFlingSpring mHidePanelPending="

    .line 26
    const-string v1, "PanelViewController"

    .line 28
    invoke-static {v0, p0, v1}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 30
    return-void
    .line 33
.end method

.method public static final access$endNssCoveringQsMotion(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;F)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/shade/QuickSettingsController;->getHeaderHeight()I

    .line 4
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    invoke-super {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->calculateNotificationsTopPadding()F

    .line 9
    move-result v1

    .line 12
    iget v4, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mQsTopPadding:F

    .line 13
    cmpg-float v2, v4, v0

    .line 15
    const/4 v3, 0x1

    .line 17
    const/4 v5, 0x0

    .line 18
    if-nez v2, :cond_0

    .line 19
    move v2, v3

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v2, v5

    .line 23
    :goto_0
    if-nez v2, :cond_2

    .line 24
    const/4 v2, 0x0

    .line 26
    cmpg-float v2, p1, v2

    .line 27
    if-gez v2, :cond_1

    .line 29
    goto :goto_1

    .line 31
    :cond_1
    move v8, v5

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    :goto_1
    move v8, v3

    .line 34
    :goto_2
    if-eqz v8, :cond_3

    .line 35
    goto :goto_3

    .line 37
    :cond_3
    move v0, v1

    .line 38
    :goto_3
    const/4 v1, 0x2

    .line 39
    new-array v1, v1, [F

    .line 40
    aput v4, v1, v5

    .line 42
    aput v0, v1, v3

    .line 44
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 46
    move-result-object v3

    .line 49
    iput-object v3, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mQsTopPaddingAnimator:Landroid/animation/ValueAnimator;

    .line 50
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    .line 52
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    sub-float v1, v0, v4

    .line 57
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 59
    move-result v7

    .line 62
    move v5, v0

    .line 63
    move v6, p1

    .line 64
    invoke-virtual/range {v2 .. v7}, Lcom/android/wm/shell/animation/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    .line 65
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mQsTopPaddingAnimator:Landroid/animation/ValueAnimator;

    .line 68
    if-eqz p1, :cond_4

    .line 70
    new-instance v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$1;

    .line 72
    const/4 v1, 0x3

    .line 74
    invoke-direct {v0, v1, p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$1;-><init>(ILjava/lang/Object;)V

    .line 75
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 78
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mQsTopPaddingAnimator:Landroid/animation/ValueAnimator;

    .line 81
    if-eqz p1, :cond_5

    .line 83
    new-instance v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$endNssCoveringQsMotion$2;

    .line 85
    invoke-direct {v0, p0, v8}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$endNssCoveringQsMotion$2;-><init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;Z)V

    .line 87
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 90
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mQsTopPaddingAnimator:Landroid/animation/ValueAnimator;

    .line 93
    if-eqz p0, :cond_6

    .line 95
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 97
    :cond_6
    return-void
    .line 100
.end method

.method public static final access$handleNssCoverQs(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 2
    iget-boolean v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 4
    if-eqz v1, :cond_0

    .line 6
    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/shade/QuickSettingsController;->getHeaderHeight()I

    .line 9
    move-result v0

    .line 12
    int-to-float v0, v0

    .line 13
    invoke-super {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->calculateNotificationsTopPadding()F

    .line 14
    move-result v1

    .line 17
    cmpg-float v2, v0, v1

    .line 18
    if-gtz v2, :cond_1

    .line 20
    iget v2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mQsTopPadding:F

    .line 22
    add-float/2addr v2, p1

    .line 24
    invoke-static {v2, v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    .line 25
    move-result p1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget v2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mQsTopPadding:F

    .line 30
    add-float/2addr v2, p1

    .line 32
    invoke-static {v2, v1, v0}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    .line 33
    move-result p1

    .line 36
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateScrollerTopPadding(F)V

    .line 37
    :goto_1
    return-void
    .line 40
.end method

.method public static final access$maybeLockScreenThemeChanged(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {}, Lcom/miui/systemui/util/CommonUtil;->isDefaultLockScreenTheme()Z

    .line 5
    move-result v0

    .line 8
    iget-boolean v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mIsDefaultTheme:Z

    .line 9
    if-ne v0, v1, :cond_0

    .line 11
    if-nez p1, :cond_0

    .line 13
    goto/16 :goto_2

    .line 15
    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mIsDefaultTheme:Z

    .line 17
    const/4 p1, 0x0

    .line 19
    sput-boolean p1, Lcom/miui/charge/ChargeUtils;->sChargeAnimationDisabled:Z

    .line 20
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mAwesomeLockScreen:Lcom/android/keyguard/AwesomeLockScreen;

    .line 22
    const-string v1, "NotificationPanelView"

    .line 24
    if-eqz v0, :cond_3

    .line 26
    const-string/jumbo v0, "removeAwesomeLockScreen"

    .line 28
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mAwesomeLockScreenContainer:Lcom/android/keyguard/AwesomeLockScreenContainer;

    .line 34
    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 38
    :cond_1
    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mAwesomeLockScreen:Lcom/android/keyguard/AwesomeLockScreen;

    .line 42
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mAwesomeLockScreenContainer:Lcom/android/keyguard/AwesomeLockScreenContainer;

    .line 44
    if-nez v0, :cond_2

    .line 46
    goto :goto_0

    .line 48
    :cond_2
    const/16 v2, 0x8

    .line 49
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 51
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mIsDefaultTheme:Z

    .line 54
    if-nez v0, :cond_8

    .line 56
    const-string v0, "addAwesomeLockScreenIfNeed"

    .line 58
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance v0, Lcom/android/keyguard/AwesomeLockScreen;

    .line 63
    iget-object v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->panelView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 65
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 67
    move-result-object v1

    .line 70
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 71
    invoke-direct {v0, v1, v2, p0}, Lcom/android/keyguard/AwesomeLockScreen;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/shade/NotificationPanelViewController;)V

    .line 73
    iput-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mAwesomeLockScreen:Lcom/android/keyguard/AwesomeLockScreen;

    .line 76
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mAwesomeLockScreenContainer:Lcom/android/keyguard/AwesomeLockScreenContainer;

    .line 78
    if-eqz v0, :cond_4

    .line 80
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 82
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mAwesomeLockScreenContainer:Lcom/android/keyguard/AwesomeLockScreenContainer;

    .line 85
    if-eqz v0, :cond_5

    .line 87
    iget-object v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mAwesomeLockScreen:Lcom/android/keyguard/AwesomeLockScreen;

    .line 89
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 91
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mAwesomeLockScreen:Lcom/android/keyguard/AwesomeLockScreen;

    .line 94
    if-eqz v0, :cond_6

    .line 96
    iget v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mBarState:I

    .line 98
    invoke-virtual {v0, v1}, Lcom/android/keyguard/AwesomeLockScreen;->setBarState(I)V

    .line 100
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mAwesomeLockScreenContainer:Lcom/android/keyguard/AwesomeLockScreenContainer;

    .line 103
    if-nez v0, :cond_7

    .line 105
    goto :goto_1

    .line 107
    :cond_7
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 108
    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateAwesomeState()V

    .line 111
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateNotificationStackScrollerVisibility()V

    .line 114
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    .line 117
    iget v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mBarState:I

    .line 119
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 121
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAway:Z

    .line 123
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 125
    check-cast v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 127
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->goingToFullShade()Z

    .line 129
    move-result v2

    .line 132
    iget p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mBarState:I

    .line 133
    iget-object p1, p1, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    .line 135
    invoke-virtual {p1, v0, p0, v1, v2}, Lcom/android/keyguard/KeyguardVisibilityHelper;->setViewVisibility(IIZZ)V

    .line 137
    :goto_2
    return-void
    .line 140
.end method

.method public static final access$resetAllViewsStateOnEditorStateChanged(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    const-string v0, "NotificationPanelView"

    .line 5
    const-string/jumbo v1, "resetAllViewsStateOnEditorStateChanged"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    if-eqz p1, :cond_0

    .line 13
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardPanelViewInjector:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 15
    invoke-virtual {p1}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->updateKeyguardElementsVisibility()V

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->animTargetForEditor:Lmiuix/animation/ValueTarget;

    .line 20
    if-eqz p1, :cond_1

    .line 22
    filled-new-array {p1}, [Lmiuix/animation/ValueTarget;

    .line 24
    move-result-object p1

    .line 27
    invoke-static {p1}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 28
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->alphaAnimForEditor:Landroid/animation/ValueAnimator;

    .line 31
    if-eqz p1, :cond_2

    .line 33
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 35
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->radiusAnimForEditor:Landroid/animation/ValueAnimator;

    .line 38
    if-eqz p1, :cond_3

    .line 40
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 42
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardClockInjector:Lcom/android/keyguard/injector/KeyguardClockInjector;

    .line 45
    iget-object p1, p1, Lcom/android/keyguard/injector/KeyguardClockInjector;->mKeyguardClockView:Lcom/android/keyguard/clock/KeyguardClockContainer;

    .line 47
    const/high16 v0, 0x3f800000    # 1.0f

    .line 49
    if-nez p1, :cond_4

    .line 51
    goto :goto_0

    .line 53
    :cond_4
    invoke-virtual {p1, v0}, Lcom/android/keyguard/clock/KeyguardClockContainer;->setAlpha(F)V

    .line 54
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardEditorHelper:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 57
    const/4 v1, 0x0

    .line 59
    invoke-virtual {p1, v1}, Lcom/android/keyguard/KeyguardEditorHelper;->setExitFromBouncerAnimIsRunning(Z)V

    .line 60
    const/4 p1, 0x0

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setViewRadius(F)V

    .line 64
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 67
    if-eqz v1, :cond_5

    .line 69
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 71
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 74
    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 77
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 82
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 85
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateAwesomeState()V

    .line 90
    return-void
    .line 93
.end method

.method public static final access$setMPanelStretching(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;Z)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getAmbientState()Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 4
    move-result-object v0

    .line 7
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->panelStretching:Z

    .line 8
    if-eqz v0, :cond_1

    .line 10
    if-nez p1, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getAnimationEvents()Ljava/util/List;

    .line 14
    move-result-object v0

    .line 17
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/SpringAnimationEvent;

    .line 18
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/notification/stack/MiuiStackScrollAlgorithm;

    .line 20
    instance-of v3, v2, Lcom/android/systemui/statusbar/notification/stack/MiuiStackScrollAlgorithm;

    .line 22
    if-eqz v3, :cond_0

    .line 24
    iget v2, v2, Lcom/android/systemui/statusbar/notification/stack/MiuiStackScrollAlgorithm;->mLatestVisibleChildrenCount:I

    .line 26
    :cond_0
    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/stack/SpringAnimationEvent;-><init>()V

    .line 28
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 35
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 37
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getAmbientState()Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 40
    move-result-object v0

    .line 43
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->panelStretching:Z

    .line 44
    if-nez v0, :cond_3

    .line 46
    if-eqz p1, :cond_3

    .line 48
    invoke-static {p0}, Lcom/android/systemui/util/ConvenienceExtensionsKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;

    .line 50
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lkotlin/sequences/SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;->iterator()Ljava/util/Iterator;

    .line 54
    move-result-object v0

    .line 57
    :cond_2
    :goto_0
    move-object v1, v0

    .line 58
    check-cast v1, Lkotlin/sequences/SequenceBuilderIterator;

    .line 59
    invoke-virtual {v1}, Lkotlin/sequences/SequenceBuilderIterator;->hasNext()Z

    .line 61
    move-result v2

    .line 64
    if-eqz v2, :cond_3

    .line 65
    invoke-virtual {v1}, Lkotlin/sequences/SequenceBuilderIterator;->next()Ljava/lang/Object;

    .line 67
    move-result-object v1

    .line 70
    check-cast v1, Landroid/view/View;

    .line 71
    sget-object v2, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationAnimations;->RELEASE_SPRING_FILTER:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 73
    sget-object v2, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationAnimationExtensionsKt;->PROPERTY_SPRING_Y_OFFSET:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 75
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;->getAnimatorTag()I

    .line 77
    move-result v2

    .line 80
    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 81
    move-result-object v1

    .line 84
    check-cast v1, Landroid/animation/ValueAnimator;

    .line 85
    if-eqz v1, :cond_2

    .line 87
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 89
    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getAmbientState()Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 93
    move-result-object p0

    .line 96
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->panelStretching:Z

    .line 97
    return-void
    .line 99
.end method

.method public static doScaleAndAlpha(Landroid/view/View;FF)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 7
    invoke-virtual {p0, p2}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 10
    :cond_0
    return-void
    .line 13
.end method

.method public static setBouncerShowingFraction$default(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;FZI)V
    .locals 5

    .line 1
    and-int/lit8 v0, p3, 0x2

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    and-int/lit8 p3, p3, 0x4

    .line 11
    if-eqz p3, :cond_1

    .line 13
    move p2, v1

    .line 15
    :cond_1
    iput p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardBouncerFraction:F

    .line 16
    iget-boolean p3, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardBouncerShowing:Z

    .line 18
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 20
    iget-boolean v4, v3, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->mBouncerShowing:Z

    .line 22
    if-ne v4, p3, :cond_3

    .line 24
    iget v4, v3, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->mKeyguardBouncerBlur:F

    .line 26
    cmpg-float v4, v4, p1

    .line 28
    if-nez v4, :cond_2

    .line 30
    goto :goto_1

    .line 32
    :cond_2
    move v2, v1

    .line 33
    :goto_1
    if-nez v2, :cond_4

    .line 34
    :cond_3
    iput-boolean p3, v3, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->mBouncerShowing:Z

    .line 36
    iput p1, v3, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->mKeyguardBouncerBlur:F

    .line 38
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->scheduleUpdate()V

    .line 40
    :cond_4
    if-nez p2, :cond_5

    .line 43
    iget p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardBouncerFraction:F

    .line 45
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->doBlurAndDim(FZZ)V

    .line 47
    :cond_5
    return-void
    .line 50
.end method


# virtual methods
.method public final aodSuperWallpaperViewAlphaAnim(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mViewAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateVisibility(Z)V

    .line 12
    :cond_1
    const/4 v1, 0x2

    .line 15
    new-array v1, v1, [F

    .line 16
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 18
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getAlpha()F

    .line 20
    move-result v2

    .line 23
    aput v2, v1, v0

    .line 24
    if-eqz p1, :cond_2

    .line 26
    const/high16 p1, 0x3f800000    # 1.0f

    .line 28
    goto :goto_0

    .line 30
    :cond_2
    const/4 p1, 0x0

    .line 31
    :goto_0
    const/4 v0, 0x1

    .line 32
    aput p1, v1, v0

    .line 33
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 35
    move-result-object p1

    .line 38
    const-wide/16 v1, 0x1f4

    .line 39
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 41
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mViewAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 45
    if-eqz p1, :cond_3

    .line 47
    new-instance v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$1;

    .line 49
    invoke-direct {v1, v0, p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$1;-><init>(ILjava/lang/Object;)V

    .line 51
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 54
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mViewAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 57
    if-eqz p0, :cond_4

    .line 59
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 61
    :cond_4
    return-void
    .line 64
.end method

.method public final calculateNotificationsTopPadding()F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->foldManager:Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 2
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->isShowingUnimportant:Z

    .line 4
    invoke-super {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->calculateNotificationsTopPadding()F

    .line 6
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->foldManager:Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 10
    iget v2, v2, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->unimportantTarget:F

    .line 12
    if-eqz v0, :cond_0

    .line 14
    const/4 v0, 0x0

    .line 16
    cmpl-float v0, v2, v0

    .line 17
    if-lez v0, :cond_0

    .line 19
    iget p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mQsNotificationTopPadding:I

    .line 21
    int-to-float p0, p0

    .line 23
    add-float/2addr v2, p0

    .line 24
    return v2

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->controlCenterController:Ldagger/Lazy;

    .line 26
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 31
    check-cast v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 32
    iget-boolean v0, v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->useControlCenter:Z

    .line 34
    if-eqz v0, :cond_1

    .line 36
    return v1

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->isOnShade()Z

    .line 39
    move-result v0

    .line 42
    if-nez v0, :cond_3

    .line 43
    iget v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mBarState:I

    .line 45
    const/4 v2, 0x2

    .line 47
    if-ne v0, v2, :cond_2

    .line 48
    const/4 v0, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/4 v0, 0x0

    .line 52
    :goto_0
    if-eqz v0, :cond_5

    .line 53
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 55
    iget-boolean v0, v0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 57
    if-nez v0, :cond_5

    .line 59
    iget v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mQsTopPadding:F

    .line 61
    cmpg-float v2, v0, v1

    .line 63
    if-gez v2, :cond_5

    .line 65
    iget-boolean v2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNssCoveringQs:Z

    .line 67
    if-nez v2, :cond_4

    .line 69
    iget-boolean p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNssCoveredQs:Z

    .line 71
    if-eqz p0, :cond_5

    .line 73
    :cond_4
    return v0

    .line 75
    :cond_5
    return v1
    .line 76
.end method

.method public final collapse(FZ)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->canBeCollapsed()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 10
    iget-boolean v2, v0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 12
    const/4 v3, 0x1

    .line 14
    if-eqz v2, :cond_1

    .line 15
    invoke-virtual {v0, v3}, Lcom/android/systemui/shade/QuickSettingsController;->setExpandImmediate(Z)V

    .line 17
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->canBeCollapsed()Z

    .line 25
    move-result v0

    .line 28
    if-eqz v0, :cond_3

    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->cancelHeightAnimator()V

    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->notifyExpandingStarted()V

    .line 34
    invoke-virtual {p0, v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->setClosing(Z)V

    .line 37
    if-eqz p2, :cond_2

    .line 40
    iput p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNextCollapseSpeedUpFactor:F

    .line 42
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 44
    iget-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFlingCollapseRunnable:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda0;

    .line 46
    const-wide/16 v2, 0x78

    .line 48
    invoke-virtual {p1, p2, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    goto :goto_0

    .line 53
    :cond_2
    const/4 p2, 0x0

    .line 54
    invoke-virtual {p0, p2, p1, v1, v1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->fling(FFZZ)V

    .line 55
    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setMPanelAppeared(Z)V

    .line 58
    return-void
    .line 61
.end method

.method public final doBlurAndDim(FZZ)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/miui/utils/configs/MiuiConfigs;->isLiteOrLowDevice()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardPanelViewInjector:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 9
    iget-object v0, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardMoveHelper:Lcom/android/keyguard/KeyguardMoveHelper;

    .line 11
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    iget v0, v0, Lcom/android/keyguard/KeyguardMoveHelper;->mCurrentScreen:I

    .line 17
    if-nez v0, :cond_1

    .line 19
    move v0, v1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v0, v2

    .line 23
    :goto_0
    if-ne v0, v1, :cond_2

    .line 24
    move v0, v1

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    move v0, v2

    .line 28
    :goto_1
    if-eqz v0, :cond_3

    .line 29
    iget p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->horizontalBlurRatio:F

    .line 31
    goto :goto_2

    .line 33
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->quickSettingsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 34
    iget-boolean v0, v0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 36
    if-eqz v0, :cond_4

    .line 38
    iget p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mQsPanelExpansion:F

    .line 40
    :cond_4
    :goto_2
    iget v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardBlurRatio:F

    .line 42
    cmpg-float v0, v0, p1

    .line 44
    if-nez v0, :cond_5

    .line 46
    move v0, v1

    .line 48
    goto :goto_3

    .line 49
    :cond_5
    move v0, v2

    .line 50
    :goto_3
    if-nez v0, :cond_e

    .line 51
    iput p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardBlurRatio:F

    .line 53
    sget-object v0, Lcom/android/keyguard/utils/MiuiKeyguardUtils;->sRegionSupportMiHomeList:Ljava/util/List;

    .line 55
    const/4 v0, 0x0

    .line 57
    cmpg-float v3, p1, v0

    .line 58
    const/4 v4, 0x0

    .line 60
    if-gtz v3, :cond_6

    .line 61
    move-object p1, v4

    .line 63
    goto :goto_5

    .line 64
    :cond_6
    const/high16 v3, 0x42c80000    # 100.0f

    .line 65
    mul-float/2addr v3, p1

    .line 67
    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 68
    invoke-static {v3, v3, v5}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    .line 70
    move-result-object v3

    .line 73
    const/16 v5, 0x4d

    .line 74
    int-to-float v5, v5

    .line 76
    mul-float/2addr v5, p1

    .line 77
    float-to-int p1, v5

    .line 78
    if-gtz p1, :cond_7

    .line 79
    goto :goto_4

    .line 81
    :cond_7
    move v1, p1

    .line 82
    :goto_4
    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    .line 83
    move-result p1

    .line 86
    new-instance v1, Landroid/graphics/BlendModeColorFilter;

    .line 87
    sget-object v2, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    .line 89
    invoke-direct {v1, p1, v2}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    .line 91
    invoke-static {v1}, Landroid/graphics/RenderEffect;->createColorFilterEffect(Landroid/graphics/ColorFilter;)Landroid/graphics/RenderEffect;

    .line 94
    move-result-object p1

    .line 97
    invoke-static {p1, v3}, Landroid/graphics/RenderEffect;->createChainEffect(Landroid/graphics/RenderEffect;Landroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    .line 98
    move-result-object p1

    .line 101
    :goto_5
    iget-object v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardForegroundLayer:Landroid/widget/FrameLayout;

    .line 102
    if-eqz v1, :cond_b

    .line 104
    iget-object v2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardCommonSettingObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 106
    iget-boolean v2, v2, Lcom/android/keyguard/KeyguardCommonSettingObserver;->depthEffectEnable:Z

    .line 108
    if-eqz v2, :cond_8

    .line 110
    move-object v4, p1

    .line 112
    :cond_8
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    .line 113
    if-eqz p3, :cond_9

    .line 116
    if-eqz v2, :cond_9

    .line 118
    iget v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardBlurRatio:F

    .line 120
    :cond_9
    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 122
    move-result-object p3

    .line 125
    if-eqz p3, :cond_a

    .line 126
    const/16 v1, 0x64

    .line 128
    int-to-float v1, v1

    .line 130
    mul-float/2addr v0, v1

    .line 131
    float-to-int v0, v0

    .line 132
    invoke-virtual {p3, v0}, Landroid/view/ViewRootImpl;->setWallpaperBlur(I)V

    .line 133
    goto :goto_6

    .line 136
    :cond_a
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 137
    move-result-object p3

    .line 140
    new-instance v3, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$setWallpaperSyncBlur$1;

    .line 141
    invoke-direct {v3, v0, v1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$setWallpaperSyncBlur$1;-><init>(FLandroid/view/View;)V

    .line 143
    invoke-virtual {p3, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 146
    :goto_6
    if-nez v2, :cond_b

    .line 149
    if-eqz p2, :cond_b

    .line 151
    const-class p2, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 153
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 155
    move-result-object p2

    .line 158
    check-cast p2, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 159
    iget p3, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardBlurRatio:F

    .line 161
    invoke-virtual {p2, p3}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->updateKeyguardWallpaperRatio(F)V

    .line 163
    :cond_b
    iget-object p2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardPanelViewInjector:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 166
    iget-object p2, p2, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mDoodleBgView:Landroid/view/View;

    .line 168
    if-eqz p2, :cond_c

    .line 170
    invoke-virtual {p2, p1}, Landroid/view/View;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    .line 172
    :cond_c
    iget-object p2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardPanelViewInjector:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 175
    iget-object p2, p2, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mSmartFrameView:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 177
    if-eqz p2, :cond_d

    .line 179
    invoke-virtual {p2, p1}, Landroid/view/View;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    .line 181
    :cond_d
    iget p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardBlurRatio:F

    .line 184
    new-instance p1, Ljava/lang/StringBuilder;

    .line 186
    const-string p2, "doBlurAndDim: ratio = "

    .line 188
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    move-result-object p0

    .line 199
    const-string p1, "NotificationPanelView"

    .line 200
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_e
    return-void
    .line 205
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11

    .line 1
    const-string p2, "NotificationPanelView:"

    .line 2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Lcom/android/systemui/util/DumpUtilsKt;->asIndenting(Ljava/io/PrintWriter;)Landroid/util/IndentingPrintWriter;

    .line 7
    move-result-object p2

    .line 10
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 11
    const-string v0, "mDownTime="

    .line 14
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 16
    iget-wide v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownTime:J

    .line 19
    invoke-virtual {p2, v0, v1}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 21
    const-string v0, "mTouchSlopExceededBeforeDown="

    .line 24
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 26
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchSlopExceededBeforeDown:Z

    .line 29
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 31
    const-string v0, "mIsLaunchAnimationRunning="

    .line 34
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 36
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsLaunchAnimationRunning:Z

    .line 39
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 41
    const-string v0, "mOverExpansion="

    .line 44
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 46
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOverExpansion:F

    .line 49
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 51
    const-string v0, "mExpandedHeight="

    .line 54
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 56
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    .line 59
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 61
    const-string v0, "mTracking="

    .line 64
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 66
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTracking:Z

    .line 69
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 71
    const-string v0, "mHintAnimationRunning="

    .line 74
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 76
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHintAnimationRunning:Z

    .line 79
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 81
    const-string v0, "mExpanding="

    .line 84
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 86
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpanding:Z

    .line 89
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 91
    const-string v0, "mSplitShadeEnabled="

    .line 94
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 96
    iget-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSplitShadeEnabled:Z

    .line 99
    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 101
    const-string v1, "mKeyguardNotificationBottomPadding="

    .line 104
    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 106
    iget v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardNotificationBottomPadding:F

    .line 109
    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 111
    const-string v1, "mKeyguardNotificationTopPadding="

    .line 114
    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 116
    iget v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardNotificationTopPadding:F

    .line 119
    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 121
    const-string v1, "mMaxAllowedKeyguardNotifications="

    .line 124
    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 126
    iget v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMaxAllowedKeyguardNotifications:I

    .line 129
    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 131
    const-string v1, "mAnimateNextPositionUpdate="

    .line 134
    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 136
    iget-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAnimateNextPositionUpdate:Z

    .line 139
    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 141
    const-string v1, "mPanelExpanded="

    .line 144
    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 146
    iget-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelExpanded:Z

    .line 149
    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 151
    const-string v1, "mKeyguardQsUserSwitchEnabled="

    .line 154
    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 156
    const/4 v1, 0x0

    .line 159
    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 160
    const-string v2, "mKeyguardUserSwitcherEnabled="

    .line 163
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 168
    const-string v2, "mDozing="

    .line 171
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 173
    iget-boolean v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozing:Z

    .line 176
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 178
    const-string v2, "mDozingOnDown="

    .line 181
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 183
    iget-boolean v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozingOnDown:Z

    .line 186
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 188
    const-string v2, "mBouncerShowing="

    .line 191
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 193
    iget-boolean v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBouncerShowing:Z

    .line 196
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 198
    const-string v2, "mBarState="

    .line 201
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 203
    iget v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 206
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 208
    const-string v2, "mStatusBarMinHeight="

    .line 211
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 213
    iget v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarMinHeight:I

    .line 216
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 218
    const-string v2, "mStatusBarHeaderHeightKeyguard="

    .line 221
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 223
    iget v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarHeaderHeightKeyguard:I

    .line 226
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 228
    const-string v2, "mOverStretchAmount="

    .line 231
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 233
    iget v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOverStretchAmount:F

    .line 236
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 238
    const-string v2, "mDownX="

    .line 241
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 243
    iget v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownX:F

    .line 246
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 248
    const-string v2, "mDownY="

    .line 251
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 253
    iget v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownY:F

    .line 256
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 258
    const-string v2, "mDisplayTopInset="

    .line 261
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 263
    iget v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDisplayTopInset:I

    .line 266
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 268
    const-string v2, "mDisplayRightInset="

    .line 271
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 273
    iget v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDisplayRightInset:I

    .line 276
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 278
    const-string v2, "mDisplayLeftInset="

    .line 281
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 283
    iget v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDisplayLeftInset:I

    .line 286
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 288
    const-string v2, "mIsExpandingOrCollapsing="

    .line 291
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 293
    iget-boolean v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsExpandingOrCollapsing:Z

    .line 296
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 298
    const-string v2, "mHeadsUpStartHeight="

    .line 301
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 303
    iget v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpStartHeight:I

    .line 306
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 308
    const-string v2, "mListenForHeadsUp="

    .line 311
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 313
    iget-boolean v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mListenForHeadsUp:Z

    .line 316
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 318
    const-string v2, "mNavigationBarBottomHeight="

    .line 321
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 323
    iget v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNavigationBarBottomHeight:I

    .line 326
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 328
    const-string v2, "mExpandingFromHeadsUp="

    .line 331
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 333
    iget-boolean v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandingFromHeadsUp:Z

    .line 336
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 338
    const-string v2, "mCollapsedOnDown="

    .line 341
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 343
    iget-boolean v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCollapsedOnDown:Z

    .line 346
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 348
    const-string v2, "mClosingWithAlphaFadeOut="

    .line 351
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 353
    iget-boolean v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mClosingWithAlphaFadeOut:Z

    .line 356
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 358
    const-string v2, "mHeadsUpAnimatingAway="

    .line 361
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 363
    iget-boolean v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpAnimatingAway:Z

    .line 366
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 368
    const-string v2, "mShowIconsWhenExpanded="

    .line 371
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 373
    iget-boolean v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShowIconsWhenExpanded:Z

    .line 376
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 378
    const-string v2, "mIndicationBottomPadding="

    .line 381
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 383
    iget v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIndicationBottomPadding:I

    .line 386
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 388
    const-string v2, "mAmbientIndicationBottomPadding="

    .line 391
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 396
    const-string v2, "mIsFullWidth="

    .line 399
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 401
    iget-boolean v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsFullWidth:Z

    .line 404
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 406
    const-string v2, "mBlockingExpansionForCurrentTouch="

    .line 409
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 411
    iget-boolean v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBlockingExpansionForCurrentTouch:Z

    .line 414
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 416
    const-string v2, "mExpectingSynthesizedDown="

    .line 419
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 421
    iget-boolean v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpectingSynthesizedDown:Z

    .line 424
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 426
    const-string v2, "mLastEventSynthesizedDown="

    .line 429
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 431
    iget-boolean v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLastEventSynthesizedDown:Z

    .line 434
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 436
    const-string v2, "mInterpolatedDarkAmount="

    .line 439
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 441
    iget v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInterpolatedDarkAmount:F

    .line 444
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 446
    const-string v2, "mLinearDarkAmount="

    .line 449
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 451
    iget v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLinearDarkAmount:F

    .line 454
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 456
    const-string v2, "mPulsing="

    .line 459
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 461
    iget-boolean v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPulsing:Z

    .line 464
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 466
    const-string v2, "mHideIconsDuringLaunchAnimation="

    .line 469
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 471
    iget-boolean v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHideIconsDuringLaunchAnimation:Z

    .line 474
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 476
    const-string v2, "mStackScrollerMeasuringPass="

    .line 479
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 481
    iget v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStackScrollerMeasuringPass:I

    .line 484
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 486
    const-string v2, "mPanelAlpha="

    .line 489
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 491
    iget v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelAlpha:I

    .line 494
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 496
    const-string v2, "mBottomAreaShadeAlpha="

    .line 499
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 501
    iget v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBottomAreaShadeAlpha:F

    .line 504
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 506
    const-string v2, "mHeadsUpInset="

    .line 509
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 511
    iget v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpInset:I

    .line 514
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 516
    const-string v2, "mHeadsUpPinnedMode="

    .line 519
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 521
    iget-boolean v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpPinnedMode:Z

    .line 524
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 526
    const-string v2, "mAllowExpandForSmallExpansion="

    .line 529
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 531
    iget-boolean v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAllowExpandForSmallExpansion:Z

    .line 534
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 536
    const-string v2, "mMaxOverscrollAmountForPulse="

    .line 539
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 541
    iget v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMaxOverscrollAmountForPulse:I

    .line 544
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 546
    const-string v2, "mIsPanelCollapseOnQQS="

    .line 549
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 551
    iget-boolean v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsPanelCollapseOnQQS:Z

    .line 554
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 556
    const-string v2, "mKeyguardOnlyContentAlpha="

    .line 559
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 561
    iget v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardOnlyContentAlpha:F

    .line 564
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 566
    const-string v2, "mKeyguardOnlyTransitionTranslationY="

    .line 569
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 571
    iget v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardOnlyTransitionTranslationY:I

    .line 574
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 576
    const-string v2, "mUdfpsMaxYBurnInOffset="

    .line 579
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 581
    iget v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUdfpsMaxYBurnInOffset:F

    .line 584
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 586
    const-string v2, "mIsGestureNavigation="

    .line 589
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 591
    iget-boolean v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsGestureNavigation:Z

    .line 594
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 596
    const-string v2, "mOldLayoutDirection="

    .line 599
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 601
    iget v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOldLayoutDirection:I

    .line 604
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 606
    const-string v2, "mMinFraction="

    .line 609
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 611
    iget v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMinFraction:F

    .line 614
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 616
    const-string v2, "mSplitShadeFullTransitionDistance="

    .line 619
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 621
    iget v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSplitShadeFullTransitionDistance:I

    .line 624
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 626
    const-string v2, "mSplitShadeScrimTransitionDistance="

    .line 629
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 631
    iget v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSplitShadeScrimTransitionDistance:I

    .line 634
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 636
    const-string v2, "mMinExpandHeight="

    .line 639
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 641
    iget v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMinExpandHeight:F

    .line 644
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 646
    const-string v2, "mPanelUpdateWhenAnimatorEnds="

    .line 649
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 651
    iget-boolean v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelUpdateWhenAnimatorEnds:Z

    .line 654
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 656
    const-string v2, "mHasVibratedOnOpen="

    .line 659
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 661
    iget-boolean v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHasVibratedOnOpen:Z

    .line 664
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 666
    const-string v2, "mFixedDuration="

    .line 669
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 671
    iget v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFixedDuration:I

    .line 674
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 676
    const-string v2, "mPanelFlingOvershootAmount="

    .line 679
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 681
    iget v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelFlingOvershootAmount:F

    .line 684
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 686
    const-string v2, "mLastGesturedOverExpansion="

    .line 689
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 691
    iget v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLastGesturedOverExpansion:F

    .line 694
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 696
    const-string v2, "mIsSpringBackAnimation="

    .line 699
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 701
    iget-boolean v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsSpringBackAnimation:Z

    .line 704
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 706
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 709
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSplitShadeEnabled:Z

    .line 712
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 714
    const-string v0, "mHintDistance="

    .line 717
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 719
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHintDistance:F

    .line 722
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 724
    const-string v0, "mInitialOffsetOnTouch="

    .line 727
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 729
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialOffsetOnTouch:F

    .line 732
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 734
    const-string v0, "mCollapsedAndHeadsUpOnDown="

    .line 737
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 739
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCollapsedAndHeadsUpOnDown:Z

    .line 742
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 744
    const-string v0, "mExpandedFraction="

    .line 747
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 749
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    .line 752
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 754
    const-string v0, "mExpansionDragDownAmountPx="

    .line 757
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 759
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpansionDragDownAmountPx:F

    .line 762
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 764
    const-string v0, "mPanelClosedOnDown="

    .line 767
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 769
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelClosedOnDown:Z

    .line 772
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 774
    const-string v0, "mHasLayoutedSinceDown="

    .line 777
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 779
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHasLayoutedSinceDown:Z

    .line 782
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 784
    const-string v0, "mUpdateFlingVelocity="

    .line 787
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 789
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUpdateFlingVelocity:F

    .line 792
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 794
    const-string v0, "mUpdateFlingOnLayout="

    .line 797
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 799
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUpdateFlingOnLayout:Z

    .line 802
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 804
    const-string v0, "mClosing="

    .line 807
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 809
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mClosing:Z

    .line 812
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 814
    const-string v0, "mTouchSlopExceeded="

    .line 817
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 819
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchSlopExceeded:Z

    .line 822
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 824
    const-string v0, "mTrackingPointer="

    .line 827
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 829
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTrackingPointer:I

    .line 832
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 834
    const-string v0, "mTouchSlop="

    .line 837
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 839
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchSlop:I

    .line 842
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 844
    const-string v0, "mSlopMultiplier="

    .line 847
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 849
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSlopMultiplier:F

    .line 852
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 854
    const-string v0, "mTouchAboveFalsingThreshold="

    .line 857
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 859
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchAboveFalsingThreshold:Z

    .line 862
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 864
    const-string v0, "mTouchStartedInEmptyArea="

    .line 867
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 869
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchStartedInEmptyArea:Z

    .line 872
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 874
    const-string v0, "mMotionAborted="

    .line 877
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 879
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMotionAborted:Z

    .line 882
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 884
    const-string v0, "mUpwardsWhenThresholdReached="

    .line 887
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 889
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUpwardsWhenThresholdReached:Z

    .line 892
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 894
    const-string v0, "mAnimatingOnDown="

    .line 897
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 899
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAnimatingOnDown:Z

    .line 902
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 904
    const-string v0, "mHandlingPointerUp="

    .line 907
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 909
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHandlingPointerUp:Z

    .line 912
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 914
    const-string v0, "mInstantExpanding="

    .line 917
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 919
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInstantExpanding:Z

    .line 922
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 924
    const-string v0, "mAnimateAfterExpanding="

    .line 927
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 929
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAnimateAfterExpanding:Z

    .line 932
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 934
    const-string v0, "mIsFlinging="

    .line 937
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 939
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsFlinging:Z

    .line 942
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 944
    const-string v0, "mViewName="

    .line 947
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 949
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mViewName:Ljava/lang/String;

    .line 952
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 954
    const-string v0, "mInitialExpandY="

    .line 957
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 959
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandY:F

    .line 962
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 964
    const-string v0, "mInitialExpandX="

    .line 967
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 969
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandX:F

    .line 972
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 974
    const-string v0, "mTouchDisabled="

    .line 977
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 979
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchDisabled:Z

    .line 982
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 984
    const-string v0, "mInitialTouchFromKeyguard="

    .line 987
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 989
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialTouchFromKeyguard:Z

    .line 992
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 994
    const-string v0, "mNextCollapseSpeedUpFactor="

    .line 997
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 999
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNextCollapseSpeedUpFactor:F

    .line 1002
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 1004
    const-string v0, "mGestureWaitForTouchSlop="

    .line 1007
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1009
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mGestureWaitForTouchSlop:Z

    .line 1012
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1014
    const-string v0, "mIgnoreXTouchSlop="

    .line 1017
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1019
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIgnoreXTouchSlop:Z

    .line 1022
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1024
    const-string v0, "mExpandLatencyTracking="

    .line 1027
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1029
    iget-boolean v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandLatencyTracking:Z

    .line 1032
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1034
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1037
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandLatencyTracking:Z

    .line 1040
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1042
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1045
    const-string v2, "gestureExclusionRect:"

    .line 1047
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1049
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    .line 1052
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->calculateTouchableRegion()Landroid/graphics/Region;

    .line 1054
    move-result-object v2

    .line 1057
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 1058
    move-result v3

    .line 1061
    const/4 v4, 0x0

    .line 1062
    if-eqz v3, :cond_0

    .line 1063
    if-eqz v2, :cond_0

    .line 1065
    invoke-virtual {v2}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    .line 1067
    move-result-object v2

    .line 1070
    goto :goto_0

    .line 1071
    :cond_0
    move-object v2, v4

    .line 1072
    :goto_0
    if-eqz v2, :cond_1

    .line 1073
    goto :goto_1

    .line 1075
    :cond_1
    sget-object v2, Lcom/android/systemui/shade/NotificationPanelViewController;->EMPTY_RECT:Landroid/graphics/Rect;

    .line 1076
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1078
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1081
    move-result-object v0

    .line 1084
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1085
    new-instance v0, Lcom/android/systemui/dump/DumpsysTableLogger;

    .line 1088
    sget-object v2, Lcom/android/systemui/shade/NPVCDownEventState;->TABLE_HEADERS:Ljava/util/List;

    .line 1090
    new-instance v3, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    .line 1092
    iget-object v5, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLastDownEvents:Lcom/android/systemui/shade/NPVCDownEventState$Buffer;

    .line 1094
    iget-object v5, v5, Lcom/android/systemui/shade/NPVCDownEventState$Buffer;->buffer:Lcom/android/systemui/common/buffer/RingBuffer;

    .line 1096
    invoke-direct {v3, v5}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    .line 1098
    sget-object v5, Lcom/android/systemui/shade/NPVCDownEventState$Buffer$toList$1;->INSTANCE:Lcom/android/systemui/shade/NPVCDownEventState$Buffer$toList$1;

    .line 1101
    new-instance v6, Lkotlin/sequences/TransformingSequence;

    .line 1103
    invoke-direct {v6, v3, v5}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    .line 1105
    invoke-static {v6}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 1108
    move-result-object v3

    .line 1111
    const-string v5, "NotificationPanelView"

    .line 1112
    invoke-direct {v0, v5, v2, v3}, Lcom/android/systemui/dump/DumpsysTableLogger;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1114
    invoke-virtual {v0, p2}, Lcom/android/systemui/dump/DumpsysTableLogger;->printTableData(Ljava/io/PrintWriter;)V

    .line 1117
    iget-boolean p2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mHidePanelPending:Z

    .line 1120
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->getMPanelAppeared()Z

    .line 1122
    move-result v0

    .line 1125
    iget v2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mStretchLength:F

    .line 1126
    iget v3, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mSpringLength:F

    .line 1128
    iget-boolean v5, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mIsDefaultTheme:Z

    .line 1130
    sget-boolean v6, Lcom/miui/utils/MiuiThemeUtils;->sDefaultSysUiTheme:Z

    .line 1132
    iget-boolean v7, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNCSwitching:Z

    .line 1134
    const-string v8, "mHidePanelPending="

    .line 1136
    const-string v9, " mPanelAppeared="

    .line 1138
    const-string v10, "  mStretchLength="

    .line 1140
    invoke-static {v8, p2, v9, v0, v10}, Lcom/android/keyguard/MiuiLockPatternChecker$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1142
    move-result-object p2

    .line 1145
    const-string v0, " mSpringLength="

    .line 1146
    const-string v8, " mIsDefaultTheme="

    .line 1148
    invoke-static {p2, v2, v0, v3, v8}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    .line 1150
    const-string v0, " mIsDefaultSysUiTheme="

    .line 1153
    const-string v2, "  mNCSwitching="

    .line 1155
    invoke-static {p2, v5, v0, v6, v2}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 1157
    invoke-static {p2, v7, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 1160
    invoke-super {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->calculateNotificationsTopPadding()F

    .line 1163
    move-result p2

    .line 1166
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->getKeyguardNotificationStaticPadding()I

    .line 1167
    move-result v0

    .line 1170
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 1171
    iget v3, v2, Lcom/android/systemui/shade/QuickSettingsController;->mMaxExpansionHeight:I

    .line 1173
    iget-object v5, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    .line 1175
    iget v5, v5, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    .line 1177
    iget-object v6, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 1179
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 1181
    move-result v6

    .line 1184
    iget-object v7, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 1185
    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 1187
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPulseExpanding()Z

    .line 1189
    move-result v7

    .line 1192
    iget-object v8, v2, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 1193
    if-eqz v8, :cond_2

    .line 1195
    invoke-virtual {v2}, Lcom/android/systemui/shade/QuickSettingsController;->getHeaderHeight()I

    .line 1197
    move-result v2

    .line 1200
    goto :goto_2

    .line 1201
    :cond_2
    move v2, v1

    .line 1202
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1203
    const-string v9, " mTopPadding is "

    .line 1205
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1207
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1210
    const-string p2, " getKeyguardNotificationStaticPadding="

    .line 1213
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1215
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1218
    const-string p2, " mQsMaxExpansionHeight="

    .line 1221
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1223
    const-string p2, " mClockPositionResult.stackScrollerPadding ="

    .line 1226
    const-string v0, " bypassEnabled="

    .line 1228
    invoke-static {v8, v3, p2, v5, v0}, Landroidx/viewpager/widget/OriginalViewPager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 1230
    const-string p2, "  mNotificationStackScroller.isPulseExpanding()="

    .line 1233
    const-string v0, "  mQs.header.height="

    .line 1235
    invoke-static {v8, v6, p2, v7, v0}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 1237
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1240
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1243
    move-result-object p2

    .line 1246
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1247
    iget-boolean p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsLaunchAnimationRunning:Z

    .line 1250
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHideIconsDuringLaunchAnimation:Z

    .line 1252
    iget-boolean v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShowIconsWhenExpanded:Z

    .line 1254
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    .line 1256
    if-eqz p0, :cond_3

    .line 1258
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->shouldBeVisible()Z

    .line 1260
    move-result p0

    .line 1263
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1264
    move-result-object v4

    .line 1267
    :cond_3
    const-string p0, "  mIsLaunchAnimationRunning = "

    .line 1268
    const-string v3, "  mHideIconsDuringLaunchAnimation = "

    .line 1270
    const-string v5, "  mShowIconsWhenExpanded = "

    .line 1272
    invoke-static {p0, p2, v3, v0, v5}, Lcom/android/keyguard/MiuiLockPatternChecker$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1274
    move-result-object p0

    .line 1277
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1278
    const-string p2, "  mHideIconsDuringNotificationLaunch = "

    .line 1281
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1283
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1286
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1289
    move-result-object p0

    .line 1292
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1293
    const-class p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 1296
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1298
    move-result-object p0

    .line 1301
    check-cast p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 1302
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAodView:Landroid/view/ViewGroup;

    .line 1304
    if-eqz p0, :cond_4

    .line 1306
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    .line 1308
    move-result p2

    .line 1311
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAlpha()F

    .line 1312
    move-result p0

    .line 1315
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1316
    const-string v2, "aodView visibility = "

    .line 1318
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1320
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1323
    const-string p2, ",alpha = "

    .line 1326
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1328
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1331
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1334
    move-result-object p0

    .line 1337
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1338
    :cond_4
    const-class p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 1341
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1343
    move-result-object p0

    .line 1346
    check-cast p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 1347
    if-eqz p0, :cond_5

    .line 1349
    iget-object p2, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mPartDeepMap:Ljava/util/Map;

    .line 1351
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1353
    const-string v2, "mWallpaperPartDeepMap = "

    .line 1355
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1357
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1360
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1363
    move-result-object p2

    .line 1366
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1367
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mColorMap:Ljava/util/Map;

    .line 1370
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1372
    const-string v0, "mWallpaperColorMap = "

    .line 1374
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1376
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1379
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1382
    move-result-object p0

    .line 1385
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1386
    :cond_5
    invoke-static {}, Lmiuix/animation/Folme;->getTargets()Ljava/util/Collection;

    .line 1389
    move-result-object p0

    .line 1392
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 1393
    move-result-object p0

    .line 1396
    sget-object p2, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$dump$1;->INSTANCE:Lcom/android/systemui/shade/MiuiNotificationPanelViewController$dump$1;

    .line 1397
    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 1399
    move-result-object p0

    .line 1402
    sget-object p2, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$dump$2;->INSTANCE:Lcom/android/systemui/shade/MiuiNotificationPanelViewController$dump$2;

    .line 1403
    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 1405
    move-result-object p0

    .line 1408
    sget-object p2, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$dump$1;->INSTANCE$1:Lcom/android/systemui/shade/MiuiNotificationPanelViewController$dump$1;

    .line 1409
    invoke-static {p2}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;)Ljava/util/stream/Collector;

    .line 1411
    move-result-object p2

    .line 1414
    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 1415
    move-result-object p0

    .line 1418
    check-cast p0, Ljava/util/Map;

    .line 1419
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 1421
    move-result-object p0

    .line 1424
    new-instance p2, Ljava/util/ArrayList;

    .line 1425
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1427
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1430
    move-result-object p0

    .line 1433
    :cond_6
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 1434
    move-result v0

    .line 1437
    if-eqz v0, :cond_8

    .line 1438
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1440
    move-result-object v0

    .line 1443
    move-object v2, v0

    .line 1444
    check-cast v2, Ljava/util/Map$Entry;

    .line 1445
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1447
    move-result-object v2

    .line 1450
    check-cast v2, Ljava/util/List;

    .line 1451
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 1453
    move-result v2

    .line 1456
    const/4 v3, 0x4

    .line 1457
    if-le v2, v3, :cond_7

    .line 1458
    const/4 v2, 0x1

    .line 1460
    goto :goto_4

    .line 1461
    :cond_7
    move v2, v1

    .line 1462
    :goto_4
    if-eqz v2, :cond_6

    .line 1463
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1465
    goto :goto_3

    .line 1468
    :cond_8
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1469
    move-result-object p0

    .line 1472
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 1473
    move-result p2

    .line 1476
    if-eqz p2, :cond_a

    .line 1477
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1479
    move-result-object p2

    .line 1482
    check-cast p2, Ljava/util/Map$Entry;

    .line 1483
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1485
    move-result-object v0

    .line 1488
    check-cast v0, Ljava/util/List;

    .line 1489
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1491
    move-result v0

    .line 1494
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1495
    move-result-object v1

    .line 1498
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1499
    const-string v3, "Folme size="

    .line 1501
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1503
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1506
    const-string v0, " type:"

    .line 1509
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1511
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1514
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1517
    move-result-object v0

    .line 1520
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1521
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1524
    move-result-object v0

    .line 1527
    check-cast v0, Ljava/lang/Iterable;

    .line 1528
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1530
    move-result-object p2

    .line 1533
    check-cast p2, Ljava/util/List;

    .line 1534
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 1536
    move-result p2

    .line 1539
    const/16 v1, 0xc8

    .line 1540
    invoke-static {p2, v1}, Ljava/lang/Integer;->min(II)I

    .line 1542
    move-result p2

    .line 1545
    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 1546
    move-result-object p2

    .line 1549
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1550
    move-result-object p2

    .line 1553
    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 1554
    move-result v0

    .line 1557
    if-eqz v0, :cond_9

    .line 1558
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1560
    move-result-object v0

    .line 1563
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1564
    const-string v2, "    "

    .line 1566
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1568
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1571
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1574
    move-result-object v0

    .line 1577
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1578
    goto :goto_6

    .line 1581
    :cond_9
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1582
    goto :goto_5

    .line 1585
    :cond_a
    return-void
    .line 1586
.end method

.method public final expand(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->expand(Z)V

    .line 2
    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setMPanelAppeared(Z)V

    .line 6
    return-void
    .line 9
.end method

.method public final fling(FFZZ)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isOnKeyguard()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    if-eqz p3, :cond_0

    .line 8
    iget-boolean v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNCSwitching:Z

    .line 10
    if-nez v0, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->getMaxPanelHeight()I

    .line 14
    move-result v0

    .line 17
    int-to-float v0, v0

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setExpandedHeightInternal(F)V

    .line 19
    :cond_0
    if-eqz p3, :cond_1

    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->getMaxPanelTransitionDistance()I

    .line 24
    move-result v0

    .line 27
    int-to-float v0, v0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    :goto_0
    move v4, v0

    .line 31
    if-nez p3, :cond_2

    .line 32
    const/4 v0, 0x1

    .line 34
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->setClosing(Z)V

    .line 35
    :cond_2
    move-object v1, p0

    .line 38
    move v2, p1

    .line 39
    move v3, p3

    .line 40
    move v5, p2

    .line 41
    move v6, p4

    .line 42
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/shade/NotificationPanelViewController;->flingToHeight(FZFFZ)V

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->getMPanelAppeared()Z

    .line 46
    move-result p1

    .line 49
    if-eq p1, p3, :cond_3

    .line 50
    invoke-virtual {p0, p3}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setMPanelAppeared(Z)V

    .line 52
    :cond_3
    if-nez p3, :cond_4

    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->isOnShade()Z

    .line 57
    move-result p1

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setMHidePanelPending(Z)V

    .line 61
    :cond_4
    return-void
    .line 64
.end method

.method public final getLockIconPadding()F
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->getFodPosition(Landroid/content/Context;)Landroid/graphics/Rect;

    .line 8
    move-result-object v0

    .line 11
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 12
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 14
    if-lez v1, :cond_0

    .line 16
    iget-object v1, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 18
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    .line 20
    move-result v1

    .line 23
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 24
    sub-int/2addr v1, v0

    .line 26
    int-to-float v0, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    const-class v1, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 30
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 35
    check-cast v1, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 36
    iget-object v3, v1, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    .line 38
    const/4 v4, 0x0

    .line 40
    if-eqz v3, :cond_1

    .line 41
    invoke-virtual {v3}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getRemoteViewYHeight()I

    .line 43
    move-result v3

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move v3, v4

    .line 48
    :goto_1
    if-eqz v3, :cond_3

    .line 49
    iget-object v1, v1, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    .line 51
    if-eqz v1, :cond_2

    .line 53
    invoke-virtual {v1}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getRemoteViewYHeight()I

    .line 55
    move-result v4

    .line 58
    :cond_2
    int-to-float v1, v4

    .line 59
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 60
    move-result v0

    .line 63
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 64
    if-eqz v1, :cond_4

    .line 66
    iget-object v1, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 68
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    .line 70
    move-result v1

    .line 73
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 74
    const v2, 0x7f0a0485    # @id/keyguard_indication_area

    .line 76
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 79
    move-result-object p0

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 83
    move-result p0

    .line 86
    sub-int/2addr v1, p0

    .line 87
    int-to-float p0, v1

    .line 88
    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    .line 89
    move-result v0

    .line 92
    :cond_4
    return v0
    .line 93
.end method

.method public final getMPanelAppeared()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getAmbientState()Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 4
    move-result-object p0

    .line 7
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->panelAppeared:Z

    .line 8
    return p0
    .line 10
.end method

.method public final getMPanelStretching()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getAmbientState()Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 4
    move-result-object p0

    .line 7
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->panelStretching:Z

    .line 8
    return p0
    .line 10
.end method

.method public final getTouchHandler()Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;

    .line 2
    invoke-direct {v0, p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$getTouchHandler$1;-><init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;)V

    .line 4
    return-object v0
    .line 7
.end method

.method public final isFalseTouch(FFI)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 2
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 4
    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 6
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eq v0, v2, :cond_0

    .line 10
    return v1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 13
    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->isClassifierEnabled()Z

    .line 15
    move-result v3

    .line 18
    if-eqz v3, :cond_1

    .line 19
    invoke-interface {v0, p3}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch(I)Z

    .line 21
    move-result v1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    iget-boolean p3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchAboveFalsingThreshold:Z

    .line 26
    if-nez p3, :cond_2

    .line 28
    move v1, v2

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    iget-boolean p3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUpwardsWhenThresholdReached:Z

    .line 32
    if-eqz p3, :cond_3

    .line 34
    goto :goto_1

    .line 36
    :cond_3
    iget p3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandX:F

    .line 37
    sub-float/2addr p1, p3

    .line 39
    iget p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandY:F

    .line 40
    sub-float/2addr p2, p0

    .line 42
    const/4 p0, 0x0

    .line 43
    cmpl-float p0, p2, p0

    .line 44
    if-ltz p0, :cond_4

    .line 46
    goto :goto_0

    .line 48
    :cond_4
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 49
    move-result p0

    .line 52
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 53
    move-result p1

    .line 56
    cmpl-float p0, p0, p1

    .line 57
    if-ltz p0, :cond_5

    .line 59
    move v1, v2

    .line 61
    :cond_5
    :goto_0
    xor-int/2addr v1, v2

    .line 62
    :goto_1
    return v1
    .line 63
.end method

.method public final isOnShade()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mBarState:I

    .line 2
    if-nez p0, :cond_0

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

.method public final isStatusBarExpandable()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isOnKeyguard()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardCommonSettingObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 8
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardCommonSettingObserver;->expandableStatusbarUnderKeyguard:Z

    .line 10
    if-eqz p0, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    :goto_1
    return p0
    .line 18
.end method

.method public final linkageViewAnim(Z)V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-nez p1, :cond_0

    .line 4
    const-string/jumbo v2, "toAodAnim"

    .line 6
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 9
    iput-boolean v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->beginToAodAnim:Z

    .line 12
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 14
    goto :goto_0

    .line 17
    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->beginToAodAnim:Z

    .line 18
    :goto_0
    sget-object v2, Lcom/miui/utils/BoostHelper;->sInjector:Lcom/miui/utils/BoostHelper;

    .line 20
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 22
    const-wide/16 v4, 0x3e8

    .line 24
    invoke-virtual {v2, v1, v4, v5, v3}, Lcom/miui/utils/BoostHelper;->boost(IJLandroid/view/View;)V

    .line 26
    iget-object v2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardClockInjector:Lcom/android/keyguard/injector/KeyguardClockInjector;

    .line 29
    iget-object v2, v2, Lcom/android/keyguard/injector/KeyguardClockInjector;->mKeyguardClockView:Lcom/android/keyguard/clock/KeyguardClockContainer;

    .line 31
    if-nez p1, :cond_2

    .line 33
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 35
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 37
    move-result v3

    .line 40
    if-nez v3, :cond_1

    .line 41
    move v3, v1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move v3, v0

    .line 45
    :goto_1
    iput-boolean v3, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->panelViewVisible:Z

    .line 46
    :cond_2
    const-string/jumbo v3, "wallpaperBlack"

    .line 48
    const-string v4, "WallpaperParam"

    .line 51
    const/high16 v5, -0x40800000    # -1.0f

    .line 53
    const/high16 v6, 0x3f800000    # 1.0f

    .line 55
    const/4 v7, 0x0

    .line 57
    const/4 v8, 0x0

    .line 58
    const/4 v9, 0x2

    .line 59
    if-eqz p1, :cond_6

    .line 60
    invoke-virtual {p0, v1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateVisibility(Z)V

    .line 62
    if-eqz v2, :cond_3

    .line 65
    iget-object v10, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardCommonSettingObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 67
    iget-boolean v10, v10, Lcom/android/keyguard/KeyguardCommonSettingObserver;->depthEffectEnable:Z

    .line 69
    xor-int/2addr v10, v1

    .line 71
    invoke-virtual {v2, v0, v10}, Lcom/android/keyguard/clock/KeyguardClockContainer;->doAnimationToAod(ZZ)V

    .line 72
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardCommonSettingObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 75
    iget-boolean v2, v2, Lcom/android/keyguard/KeyguardCommonSettingObserver;->depthEffectEnable:Z

    .line 77
    if-eqz v2, :cond_5

    .line 79
    iget-object v2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mDeductedImageView:Landroid/widget/ImageView;

    .line 81
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 83
    move-result-object v2

    .line 86
    invoke-static {v2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 87
    move-result-object v2

    .line 90
    new-array v5, v9, [Ljava/lang/Object;

    .line 91
    iget-object v10, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->KEY_TRANSLATION_ALPHA:Ljava/lang/String;

    .line 93
    aput-object v10, v5, v0

    .line 95
    iget-object v10, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardInfoLayer:Landroid/widget/FrameLayout;

    .line 97
    if-eqz v10, :cond_4

    .line 99
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getTransitionAlpha()F

    .line 101
    move-result v10

    .line 104
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 105
    move-result-object v10

    .line 108
    goto :goto_2

    .line 109
    :cond_4
    move-object v10, v8

    .line 110
    :goto_2
    aput-object v10, v5, v1

    .line 111
    invoke-interface {v2, v5}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 113
    move-result-object v2

    .line 116
    iget-object v5, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->KEY_TRANSLATION_ALPHA:Ljava/lang/String;

    .line 117
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 119
    move-result-object v10

    .line 122
    new-instance v11, Lmiuix/animation/base/AnimConfig;

    .line 123
    invoke-direct {v11}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 125
    iget-object v12, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->alphaShowEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 128
    invoke-virtual {v11, v12}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 130
    move-result-object v11

    .line 133
    filled-new-array {v5, v10, v11}, [Ljava/lang/Object;

    .line 134
    move-result-object v5

    .line 137
    invoke-interface {v2, v5}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 138
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 141
    move-result-object v2

    .line 144
    invoke-static {v2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 145
    move-result-object v2

    .line 148
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 149
    move-result-object v4

    .line 152
    new-instance v5, Lmiuix/animation/base/AnimConfig;

    .line 153
    invoke-direct {v5}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 155
    iget-object v10, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->blackShowEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 158
    invoke-virtual {v5, v10}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 160
    move-result-object v5

    .line 163
    new-instance v10, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$linkageViewAnim$1;

    .line 164
    invoke-direct {v10, v0, p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$linkageViewAnim$1;-><init>(ILjava/lang/Object;)V

    .line 166
    filled-new-array {v10}, [Lmiuix/animation/listener/TransitionListener;

    .line 169
    move-result-object v10

    .line 172
    invoke-virtual {v5, v10}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 173
    move-result-object v5

    .line 176
    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    .line 177
    move-result-object v3

    .line 180
    invoke-interface {v2, v3}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 181
    goto/16 :goto_4

    .line 184
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mDeductedImageView:Landroid/widget/ImageView;

    .line 186
    if-eqz v2, :cond_a

    .line 188
    invoke-virtual {v2}, Landroid/widget/ImageView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 190
    move-result-object v2

    .line 193
    if-eqz v2, :cond_a

    .line 194
    invoke-virtual {v2, v5}, Landroid/view/ViewRootImpl;->setWallpaperBlack(F)V

    .line 196
    goto/16 :goto_4

    .line 199
    :cond_6
    if-eqz v2, :cond_7

    .line 201
    iget-object v10, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardCommonSettingObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 203
    iget-boolean v10, v10, Lcom/android/keyguard/KeyguardCommonSettingObserver;->depthEffectEnable:Z

    .line 205
    xor-int/2addr v10, v1

    .line 207
    invoke-virtual {v2, v1, v10}, Lcom/android/keyguard/clock/KeyguardClockContainer;->doAnimationToAod(ZZ)V

    .line 208
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardCommonSettingObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 211
    iget-boolean v2, v2, Lcom/android/keyguard/KeyguardCommonSettingObserver;->depthEffectEnable:Z

    .line 213
    if-eqz v2, :cond_9

    .line 215
    iget-object v2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mDeductedImageView:Landroid/widget/ImageView;

    .line 217
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 219
    move-result-object v2

    .line 222
    invoke-static {v2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 223
    move-result-object v2

    .line 226
    new-array v5, v9, [Ljava/lang/Object;

    .line 227
    iget-object v10, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->KEY_TRANSLATION_ALPHA:Ljava/lang/String;

    .line 229
    aput-object v10, v5, v0

    .line 231
    iget-object v10, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardInfoLayer:Landroid/widget/FrameLayout;

    .line 233
    if-eqz v10, :cond_8

    .line 235
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getTransitionAlpha()F

    .line 237
    move-result v10

    .line 240
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 241
    move-result-object v10

    .line 244
    goto :goto_3

    .line 245
    :cond_8
    move-object v10, v8

    .line 246
    :goto_3
    aput-object v10, v5, v1

    .line 247
    invoke-interface {v2, v5}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 249
    move-result-object v2

    .line 252
    iget-object v5, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->KEY_TRANSLATION_ALPHA:Ljava/lang/String;

    .line 253
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 255
    move-result-object v10

    .line 258
    new-instance v11, Lmiuix/animation/base/AnimConfig;

    .line 259
    invoke-direct {v11}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 261
    iget-object v12, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->alphaHideEase:Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    .line 264
    invoke-virtual {v11, v12}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 266
    move-result-object v11

    .line 269
    filled-new-array {v5, v10, v11}, [Ljava/lang/Object;

    .line 270
    move-result-object v5

    .line 273
    invoke-interface {v2, v5}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 274
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 277
    move-result-object v2

    .line 280
    invoke-static {v2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 281
    move-result-object v2

    .line 284
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 285
    move-result-object v4

    .line 288
    new-instance v5, Lmiuix/animation/base/AnimConfig;

    .line 289
    invoke-direct {v5}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 291
    iget-object v10, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->blackHideEase:Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    .line 294
    invoke-virtual {v5, v10}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 296
    move-result-object v5

    .line 299
    new-instance v10, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$linkageViewAnim$1;

    .line 300
    invoke-direct {v10, v9, p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$linkageViewAnim$1;-><init>(ILjava/lang/Object;)V

    .line 302
    filled-new-array {v10}, [Lmiuix/animation/listener/TransitionListener;

    .line 305
    move-result-object v10

    .line 308
    invoke-virtual {v5, v10}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 309
    move-result-object v5

    .line 312
    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    .line 313
    move-result-object v3

    .line 316
    invoke-interface {v2, v3}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 317
    goto :goto_4

    .line 320
    :cond_9
    iget-object v2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mDeductedImageView:Landroid/widget/ImageView;

    .line 321
    if-eqz v2, :cond_a

    .line 323
    invoke-virtual {v2}, Landroid/widget/ImageView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 325
    move-result-object v2

    .line 328
    if-eqz v2, :cond_a

    .line 329
    invoke-virtual {v2, v5}, Landroid/view/ViewRootImpl;->setWallpaperBlack(F)V

    .line 331
    :cond_a
    :goto_4
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardInfoLayer:Landroid/widget/FrameLayout;

    .line 334
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 336
    move-result-object v2

    .line 339
    invoke-static {v2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 340
    move-result-object v2

    .line 343
    new-array v3, v9, [Ljava/lang/Object;

    .line 344
    iget-object v4, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->KEY_TRANSLATION_ALPHA:Ljava/lang/String;

    .line 346
    aput-object v4, v3, v0

    .line 348
    iget-object v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardInfoLayer:Landroid/widget/FrameLayout;

    .line 350
    if-eqz v4, :cond_b

    .line 352
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTransitionAlpha()F

    .line 354
    move-result v4

    .line 357
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 358
    move-result-object v4

    .line 361
    goto :goto_5

    .line 362
    :cond_b
    move-object v4, v8

    .line 363
    :goto_5
    aput-object v4, v3, v1

    .line 364
    invoke-interface {v2, v3}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 366
    move-result-object v2

    .line 369
    const/4 v3, 0x3

    .line 370
    new-array v4, v3, [Ljava/lang/Object;

    .line 371
    iget-object v5, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->KEY_TRANSLATION_ALPHA:Ljava/lang/String;

    .line 373
    aput-object v5, v4, v0

    .line 375
    if-eqz p1, :cond_c

    .line 377
    move v5, v6

    .line 379
    goto :goto_6

    .line 380
    :cond_c
    move v5, v7

    .line 381
    :goto_6
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 382
    move-result-object v5

    .line 385
    aput-object v5, v4, v1

    .line 386
    new-instance v5, Lmiuix/animation/base/AnimConfig;

    .line 388
    invoke-direct {v5}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 390
    if-eqz p1, :cond_d

    .line 393
    iget-object v10, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->showEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 395
    goto :goto_7

    .line 397
    :cond_d
    iget-object v10, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->hideEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 398
    :goto_7
    invoke-virtual {v5, v10}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 400
    move-result-object v5

    .line 403
    new-instance v10, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$linkageViewAnim$3;

    .line 404
    invoke-direct {v10, p0, p1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$linkageViewAnim$3;-><init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;Z)V

    .line 406
    filled-new-array {v10}, [Lmiuix/animation/listener/TransitionListener;

    .line 409
    move-result-object v10

    .line 412
    invoke-virtual {v5, v10}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 413
    move-result-object v5

    .line 416
    aput-object v5, v4, v9

    .line 417
    invoke-interface {v2, v4}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 419
    iget-object v2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardSignatureLayer:Landroid/widget/FrameLayout;

    .line 422
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 424
    move-result-object v2

    .line 427
    invoke-static {v2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 428
    move-result-object v2

    .line 431
    new-array v4, v9, [Ljava/lang/Object;

    .line 432
    iget-object v5, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->KEY_TRANSLATION_ALPHA:Ljava/lang/String;

    .line 434
    aput-object v5, v4, v0

    .line 436
    iget-object v5, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardSignatureLayer:Landroid/widget/FrameLayout;

    .line 438
    if-eqz v5, :cond_e

    .line 440
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTransitionAlpha()F

    .line 442
    move-result v5

    .line 445
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 446
    move-result-object v8

    .line 449
    :cond_e
    aput-object v8, v4, v1

    .line 450
    invoke-interface {v2, v4}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 452
    move-result-object v2

    .line 455
    new-array v4, v3, [Ljava/lang/Object;

    .line 456
    iget-object v5, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->KEY_TRANSLATION_ALPHA:Ljava/lang/String;

    .line 458
    aput-object v5, v4, v0

    .line 460
    if-eqz p1, :cond_f

    .line 462
    goto :goto_8

    .line 464
    :cond_f
    move v6, v7

    .line 465
    :goto_8
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 466
    move-result-object v0

    .line 469
    aput-object v0, v4, v1

    .line 470
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 472
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 474
    if-eqz p1, :cond_10

    .line 477
    iget-object v5, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->lockscreenInfoAlphaShowEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 479
    goto :goto_9

    .line 481
    :cond_10
    iget-object v5, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->lockscreenInfoAlphaHideEase:Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    .line 482
    :goto_9
    invoke-virtual {v0, v5}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 484
    move-result-object v0

    .line 487
    new-instance v5, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$linkageViewAnim$1;

    .line 488
    invoke-direct {v5, v3, p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$linkageViewAnim$1;-><init>(ILjava/lang/Object;)V

    .line 490
    filled-new-array {v5}, [Lmiuix/animation/listener/TransitionListener;

    .line 493
    move-result-object v3

    .line 496
    invoke-virtual {v0, v3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 497
    move-result-object v0

    .line 500
    if-eqz p1, :cond_11

    .line 501
    const-wide/16 v5, 0x1e

    .line 503
    goto :goto_a

    .line 505
    :cond_11
    const-wide/16 v5, 0x0

    .line 506
    :goto_a
    invoke-virtual {v0, v5, v6}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    .line 508
    move-result-object v0

    .line 511
    aput-object v0, v4, v9

    .line 512
    invoke-interface {v2, v4}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 514
    iget v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mBarState:I

    .line 517
    if-ne v0, v1, :cond_12

    .line 519
    iget-boolean v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->panelViewVisible:Z

    .line 521
    if-eqz v0, :cond_12

    .line 523
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->startNotificationWakeAnimation(Z)V

    .line 525
    :cond_12
    return-void
    .line 528
.end method

.method public final loadDimens()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->loadDimens()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->controlCenterController:Ldagger/Lazy;

    .line 5
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 13
    check-cast v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 14
    if-eqz v0, :cond_0

    .line 16
    iget-boolean v0, v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->useControlCenter:Z

    .line 18
    const/4 v2, 0x1

    .line 20
    if-ne v0, v2, :cond_0

    .line 21
    goto :goto_0

    .line 23
    :cond_0
    move v2, v1

    .line 24
    :goto_0
    if-eqz v2, :cond_1

    .line 25
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mResources:Landroid/content/res/Resources;

    .line 27
    const v1, 0x7f070fd1    # @dimen/qs_notification_padding '@dimen/notification_side_paddings'

    .line 29
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 32
    move-result v1

    .line 35
    :cond_1
    iput v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mQsNotificationTopPadding:I

    .line 36
    return-void
    .line 38
.end method

.method public final notifyNCSwitchingEnd()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNCSwitching:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setMNCSwitching(Z)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setMHidePanelPending(Z)V

    .line 11
    :cond_0
    return-void
    .line 14
.end method

.method public final onExpandingFinished()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->onExpandingFinished()V

    .line 2
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setMExpandingFromHeadsUp(Z)V

    .line 6
    iput-boolean v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mStretchingFromHeadsUp:Z

    .line 9
    iget-object v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 11
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getAmbientState()Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 13
    move-result-object v1

    .line 16
    iput-boolean v0, v1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->panelStretchingFromHeadsUp:Z

    .line 17
    iget v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    .line 19
    const/4 v2, 0x0

    .line 21
    cmpl-float v1, v1, v2

    .line 22
    if-lez v1, :cond_0

    .line 24
    const/4 v0, 0x1

    .line 26
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setMPanelAppeared(Z)V

    .line 27
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->ncSwitchController:Lcom/android/systemui/controlcenter/policy/NCSwitchController;

    .line 30
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 32
    invoke-virtual {p0, v0}, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->requestNCSwitchingEnd(Ljava/lang/Boolean;)V

    .line 34
    return-void
    .line 37
.end method

.method public final onFinishInflate()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->onFinishInflate()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 5
    const v1, 0x7f0a0761    # @id/qs_frame

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v1

    .line 13
    check-cast v1, Landroid/widget/FrameLayout;

    .line 14
    iput-object v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mQsFrame:Landroid/widget/FrameLayout;

    .line 16
    const-class v1, Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;

    .line 18
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 23
    check-cast v1, Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;

    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    const v2, 0x7f0a04e8    # @id/left_view_bg

    .line 29
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v2

    .line 35
    check-cast v2, Landroid/widget/ImageView;

    .line 36
    iput-object v2, v1, Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;->mLeftTransferBgView:Landroid/widget/ImageView;

    .line 38
    const v2, 0x7f0a048b    # @id/keyguard_left_view

    .line 40
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v2

    .line 46
    check-cast v2, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;

    .line 47
    iput-object v2, v1, Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;->mKeyguardLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;

    .line 49
    const v1, 0x7f0a0982    # @id/theme_background

    .line 51
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object v1

    .line 57
    iput-object v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mThemeBackgroundView:Landroid/view/View;

    .line 58
    const v1, 0x7f0a00f9    # @id/awesome_lock_screen_container

    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object v1

    .line 66
    check-cast v1, Lcom/android/keyguard/AwesomeLockScreenContainer;

    .line 67
    iput-object v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mAwesomeLockScreenContainer:Lcom/android/keyguard/AwesomeLockScreenContainer;

    .line 69
    if-nez v1, :cond_0

    .line 71
    goto :goto_0

    .line 73
    :cond_0
    new-instance v2, Lcom/android/keyguard/widget/RoundOutlineProvider;

    .line 74
    invoke-direct {v2}, Lcom/android/keyguard/widget/RoundOutlineProvider;-><init>()V

    .line 76
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 79
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mAwesomeLockScreenContainer:Lcom/android/keyguard/AwesomeLockScreenContainer;

    .line 82
    const/4 v2, 0x1

    .line 84
    if-nez v1, :cond_1

    .line 85
    goto :goto_1

    .line 87
    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 88
    :goto_1
    const v1, 0x7f0a049b    # @id/keyguard_signature_layer

    .line 91
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 94
    move-result-object v1

    .line 97
    check-cast v1, Landroid/widget/FrameLayout;

    .line 98
    iput-object v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardSignatureLayer:Landroid/widget/FrameLayout;

    .line 100
    const v1, 0x7f0a0470    # @id/keyguard_background_layer

    .line 102
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 105
    move-result-object v1

    .line 108
    check-cast v1, Landroid/widget/FrameLayout;

    .line 109
    iput-object v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardBackgroundLayer:Landroid/widget/FrameLayout;

    .line 111
    if-nez v1, :cond_2

    .line 113
    goto :goto_2

    .line 115
    :cond_2
    new-instance v3, Lcom/android/keyguard/widget/RoundOutlineProvider;

    .line 116
    invoke-direct {v3}, Lcom/android/keyguard/widget/RoundOutlineProvider;-><init>()V

    .line 118
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 121
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardBackgroundLayer:Landroid/widget/FrameLayout;

    .line 124
    if-nez v1, :cond_3

    .line 126
    goto :goto_3

    .line 128
    :cond_3
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 129
    :goto_3
    const v1, 0x7f0a047e    # @id/keyguard_foreground_layer

    .line 132
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 135
    move-result-object v1

    .line 138
    check-cast v1, Landroid/widget/FrameLayout;

    .line 139
    iput-object v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardForegroundLayer:Landroid/widget/FrameLayout;

    .line 141
    const v1, 0x7f0a0382    # @id/force_black_image_view

    .line 143
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 146
    move-result-object v1

    .line 149
    check-cast v1, Landroid/widget/ImageView;

    .line 150
    iput-object v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mForceBlackImageView:Landroid/widget/ImageView;

    .line 152
    const v1, 0x7f0a029a    # @id/deducted_image_view

    .line 154
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 157
    move-result-object v1

    .line 160
    check-cast v1, Landroid/widget/ImageView;

    .line 161
    iput-object v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mDeductedImageView:Landroid/widget/ImageView;

    .line 163
    if-nez v1, :cond_4

    .line 165
    goto :goto_4

    .line 167
    :cond_4
    new-instance v3, Lcom/android/keyguard/widget/RoundOutlineProvider;

    .line 168
    invoke-direct {v3}, Lcom/android/keyguard/widget/RoundOutlineProvider;-><init>()V

    .line 170
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 173
    :goto_4
    iget-object v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mDeductedImageView:Landroid/widget/ImageView;

    .line 176
    if-nez v1, :cond_5

    .line 178
    goto :goto_5

    .line 180
    :cond_5
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 181
    :goto_5
    const v1, 0x7f0a02de    # @id/dismiss_view

    .line 184
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 187
    move-result-object v1

    .line 190
    check-cast v1, Lcom/android/systemui/statusbar/views/DismissView;

    .line 191
    iput-object v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mDismissView:Lcom/android/systemui/statusbar/views/DismissView;

    .line 193
    const v1, 0x7f0a05d0    # @id/miui_keyguard_face_unlock_view

    .line 195
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 198
    move-result-object v1

    .line 201
    check-cast v1, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;

    .line 202
    iput-object v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mMiuiKeyguardFaceUnlockView:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;

    .line 204
    if-eqz v1, :cond_6

    .line 206
    invoke-virtual {v1, v2}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->setKeyguardFaceUnlockView(Z)V

    .line 208
    :cond_6
    const v1, 0x7f0a0478    # @id/keyguard_edit_loading_container

    .line 211
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 214
    move-result-object v0

    .line 217
    check-cast v0, Lcom/android/keyguard/widget/KeyguardLoadingRoundView;

    .line 218
    iput-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mMiuiKeyguardEditLoadingContainer:Lcom/android/keyguard/widget/KeyguardLoadingRoundView;

    .line 220
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateThemeBackgroundDrawable()V

    .line 222
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateThemeBackgroundVisibility()V

    .line 225
    const/4 v0, 0x0

    .line 228
    invoke-static {v0, v0}, Lcom/android/keyguard/clock/animation/utils/RuntimeShaderUtils;->initShader(II)Landroid/graphics/RuntimeShader;

    .line 229
    move-result-object v0

    .line 232
    iput-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mRuntimeShader:Landroid/graphics/RuntimeShader;

    .line 233
    const-string p0, "WallpaperParam"

    .line 235
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 237
    move-result-object p0

    .line 240
    invoke-static {p0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 241
    move-result-object p0

    .line 244
    const/4 v0, 0x0

    .line 245
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 246
    move-result-object v0

    .line 249
    const-string/jumbo v1, "wallpaperBlack"

    .line 250
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 253
    move-result-object v0

    .line 256
    invoke-interface {p0, v0}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 257
    return-void
    .line 260
.end method

.method public final onFinishedGoingToSleep()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardCommonSettingObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 2
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardCommonSettingObserver;->aodUsingSuperWallpaperStyle:Z

    .line 4
    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardCommonSettingObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 8
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardCommonSettingObserver;->isLinkageState:Z

    .line 10
    if-nez v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 14
    iget-object v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateVisibilityOnFinishedSleep:Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mHidePanelRunnable$1;

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 21
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockScreenIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 23
    const/4 v1, 0x4

    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 26
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->clearUpArrowAnimation()V

    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndication()V

    .line 32
    return-void
    .line 35
.end method

.method public final onPrepareForNCSwitcher()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setMNCSwitching(Z)V

    .line 3
    return-void
    .line 6
.end method

.method public final onShowingUnimportantChanged(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 4
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz p1, :cond_9

    .line 8
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->foldManager:Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 10
    iput-boolean v3, p1, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->isFoldNeedsAnim:Z

    .line 12
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->resetScrollPosition()V

    .line 14
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->controlCenterController:Ldagger/Lazy;

    .line 17
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 22
    check-cast p1, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 23
    iget-boolean p1, p1, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->useControlCenter:Z

    .line 25
    if-nez p1, :cond_7

    .line 27
    iget-object p1, v1, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 29
    instance-of v0, p1, Lcom/android/systemui/qs/MiuiQS;

    .line 31
    if-eqz v0, :cond_7

    .line 33
    check-cast p1, Lcom/android/systemui/qs/MiuiQS;

    .line 35
    check-cast p1, Lcom/android/systemui/qs/MiuiQSFragment;

    .line 37
    invoke-virtual {p1, v2}, Lcom/android/systemui/qs/MiuiQSFragment;->setShowQSPanelAnimate(Z)I

    .line 39
    move-result p1

    .line 42
    if-nez p1, :cond_0

    .line 43
    goto/16 :goto_4

    .line 45
    :cond_0
    iget-object v0, v1, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 47
    if-nez v0, :cond_1

    .line 49
    goto :goto_2

    .line 51
    :cond_1
    int-to-float p1, p1

    .line 52
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 53
    if-eqz v0, :cond_2

    .line 55
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 57
    :cond_2
    const/4 v0, 0x2

    .line 60
    new-array v0, v0, [F

    .line 61
    iget v1, v1, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeight:F

    .line 63
    aput v1, v0, v2

    .line 65
    aput p1, v0, v3

    .line 67
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 69
    move-result-object v0

    .line 72
    iput-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 73
    if-eqz v0, :cond_3

    .line 75
    new-instance v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$1;

    .line 77
    invoke-direct {v1, v2, p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$1;-><init>(ILjava/lang/Object;)V

    .line 79
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 85
    if-eqz v0, :cond_4

    .line 87
    new-instance v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$2;

    .line 89
    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$2;-><init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;FI)V

    .line 91
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 94
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 97
    if-nez p1, :cond_5

    .line 99
    goto :goto_0

    .line 101
    :cond_5
    const-wide/16 v0, 0x64

    .line 102
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 104
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 107
    if-nez p1, :cond_6

    .line 109
    goto :goto_1

    .line 111
    :cond_6
    const-wide/16 v0, 0x12c

    .line 112
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 114
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 117
    if-eqz p1, :cond_7

    .line 119
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 121
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mDismissView:Lcom/android/systemui/statusbar/views/DismissView;

    .line 124
    if-nez p1, :cond_8

    .line 126
    goto :goto_3

    .line 128
    :cond_8
    invoke-virtual {p1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 129
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 132
    new-instance v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mHidePanelRunnable$1;

    .line 134
    const/4 v1, 0x3

    .line 136
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mHidePanelRunnable$1;-><init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;I)V

    .line 137
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationFinishedRunnables:Ljava/util/HashSet;

    .line 140
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 142
    goto :goto_4

    .line 145
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 146
    if-eqz p1, :cond_a

    .line 148
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 150
    :cond_a
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mDismissView:Lcom/android/systemui/statusbar/views/DismissView;

    .line 153
    if-eqz p1, :cond_b

    .line 155
    invoke-virtual {p1}, Lcom/miui/systemui/widget/CircleAndTickAnimView;->stopAnimator()V

    .line 157
    :cond_b
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mDismissView:Lcom/android/systemui/statusbar/views/DismissView;

    .line 160
    if-eqz p1, :cond_c

    .line 162
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 164
    :cond_c
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->resetScrollPosition()V

    .line 167
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->controlCenterController:Ldagger/Lazy;

    .line 170
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 172
    move-result-object p1

    .line 175
    check-cast p1, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 176
    iget-boolean p1, p1, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->useControlCenter:Z

    .line 178
    if-nez p1, :cond_e

    .line 180
    iget-object p1, v1, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 182
    instance-of v0, p1, Lcom/android/systemui/qs/MiuiQS;

    .line 184
    if-eqz v0, :cond_e

    .line 186
    check-cast p1, Lcom/android/systemui/qs/MiuiQS;

    .line 188
    check-cast p1, Lcom/android/systemui/qs/MiuiQSFragment;

    .line 190
    invoke-virtual {p1, v3}, Lcom/android/systemui/qs/MiuiQSFragment;->setShowQSPanelAnimate(Z)I

    .line 192
    move-result p1

    .line 195
    if-nez p1, :cond_d

    .line 196
    goto :goto_4

    .line 198
    :cond_d
    const/4 p1, 0x0

    .line 199
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setAnimatingHeight(F)V

    .line 200
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->refreshNssCoveringQs()V

    .line 203
    :cond_e
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->foldManager:Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 206
    iput-boolean v2, p1, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->isFoldNeedsAnim:Z

    .line 208
    :goto_4
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mDismissView:Lcom/android/systemui/statusbar/views/DismissView;

    .line 210
    if-eqz p1, :cond_f

    .line 212
    new-instance v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mHidePanelRunnable$1;

    .line 214
    invoke-direct {v0, p0, v3}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mHidePanelRunnable$1;-><init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;I)V

    .line 216
    const-wide/16 v1, 0xc8

    .line 219
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 221
    :cond_f
    return-void
    .line 224
.end method

.method public final onStartedGoingToSleep()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mInteractive:Z

    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateAwesomeState()V

    .line 5
    iget-object v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardCommonSettingObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 8
    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardCommonSettingObserver;->isLinkageState:Z

    .line 10
    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->linkageViewAnim(Z)V

    .line 14
    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardCommonSettingObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 18
    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardCommonSettingObserver;->aodUsingSuperWallpaperStyle:Z

    .line 20
    if-eqz v1, :cond_1

    .line 22
    const-class v1, Lmiui/stub/MiuiStub$10;

    .line 24
    invoke-static {v1}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 29
    check-cast v1, Lmiui/stub/MiuiStub$10;

    .line 30
    iget-object v1, v1, Lmiui/stub/MiuiStub$10;->this$0:Lmiui/stub/MiuiStub;

    .line 32
    iget-object v1, v1, Lmiui/stub/MiuiStub;->mSysUIProvider:Lmiui/stub/MiuiStub$SysUIProvider;

    .line 34
    iget-object v1, v1, Lmiui/stub/MiuiStub$SysUIProvider;->mDozeServiceHost:Ldagger/Lazy;

    .line 36
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 38
    move-result-object v1

    .line 41
    check-cast v1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 42
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mScreenOffNeedLinkageAnim:Z

    .line 44
    if-eqz v1, :cond_1

    .line 46
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->aodSuperWallpaperViewAlphaAnim(Z)V

    .line 48
    goto :goto_0

    .line 51
    :cond_1
    const/4 v0, 0x1

    .line 52
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateVisibility(Z)V

    .line 53
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardEditorHelper:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 56
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardEditorHelper;->stopLoadingCountDownAndAnim()V

    .line 58
    return-void
    .line 61
.end method

.method public final onStartedWakingUp()V
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mInteractive:Z

    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateAwesomeState()V

    .line 5
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 8
    iget-object v2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateVisibilityOnFinishedSleep:Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mHidePanelRunnable$1;

    .line 10
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 12
    const-class v1, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;

    .line 15
    invoke-static {v1}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 20
    check-cast v1, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;

    .line 21
    iget-boolean v1, v1, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->mFastUnlock:Z

    .line 23
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x0

    .line 26
    if-eqz v1, :cond_0

    .line 27
    iget-object v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 29
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 31
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateVisibility(Z)V

    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->resetWallpaperState()V

    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->resetAnimationState()V

    .line 40
    goto/16 :goto_2

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardCommonSettingObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 45
    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardCommonSettingObserver;->isLinkageState:Z

    .line 47
    if-eqz v1, :cond_1

    .line 49
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->linkageViewAnim(Z)V

    .line 51
    goto/16 :goto_2

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardCommonSettingObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 56
    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardCommonSettingObserver;->aodUsingSuperWallpaperStyle:Z

    .line 58
    if-eqz v1, :cond_2

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->resetAnimationState()V

    .line 62
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->aodSuperWallpaperViewAlphaAnim(Z)V

    .line 65
    goto/16 :goto_2

    .line 68
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 70
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 72
    move-result v1

    .line 75
    if-nez v1, :cond_3

    .line 76
    move v1, v0

    .line 78
    goto :goto_0

    .line 79
    :cond_3
    move v1, v2

    .line 80
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateVisibility(Z)V

    .line 81
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->resetWallpaperState()V

    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->resetAnimationState()V

    .line 87
    iget v4, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mBarState:I

    .line 90
    if-ne v4, v0, :cond_7

    .line 92
    if-nez v1, :cond_7

    .line 94
    iget-object v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardClockInjector:Lcom/android/keyguard/injector/KeyguardClockInjector;

    .line 96
    iget-object v1, v1, Lcom/android/keyguard/injector/KeyguardClockInjector;->mKeyguardClockView:Lcom/android/keyguard/clock/KeyguardClockContainer;

    .line 98
    iget-boolean v4, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mIsDefaultTheme:Z

    .line 100
    if-eqz v4, :cond_6

    .line 102
    iget-object v4, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->panelView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 104
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 106
    move-result-object v4

    .line 109
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 110
    move-result-object v4

    .line 113
    const v5, 0x7f070467    # @dimen/keyguard_clock_tranlation_y '29.1dp'

    .line 114
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    .line 117
    move-result v4

    .line 120
    invoke-static {}, Lcom/miui/utils/configs/MiuiConfigs;->isLowEndDevice()Z

    .line 121
    move-result v5

    .line 124
    const v6, 0x3f5c28f6    # 0.86f

    .line 125
    const v7, 0x3f666666    # 0.9f

    .line 128
    const-wide/16 v8, 0x15e

    .line 131
    const/high16 v10, 0x3f800000    # 1.0f

    .line 133
    if-eqz v5, :cond_4

    .line 135
    if-eqz v1, :cond_5

    .line 137
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    .line 139
    invoke-direct {v4, v3, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 141
    invoke-virtual {v4, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 144
    new-instance v5, Lcom/miui/utils/animation/SpringInterpolator;

    .line 147
    invoke-direct {v5, v7, v6}, Lcom/miui/utils/animation/SpringInterpolator;-><init>(FF)V

    .line 149
    invoke-virtual {v4, v5}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 152
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 155
    goto :goto_1

    .line 158
    :cond_4
    if-eqz v1, :cond_5

    .line 159
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    .line 161
    invoke-direct {v5, v3, v3, v4, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 163
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    .line 166
    invoke-direct {v4, v3, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 168
    new-instance v11, Landroid/view/animation/AnimationSet;

    .line 171
    invoke-direct {v11, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 173
    invoke-virtual {v11, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 176
    invoke-virtual {v11, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 179
    const-wide/16 v4, 0x2bc

    .line 182
    invoke-virtual {v11, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 184
    new-instance v4, Lcom/miui/utils/animation/SpringInterpolator;

    .line 187
    const v5, 0x3f733333    # 0.95f

    .line 189
    const v12, 0x3f5b6ae8    # 0.8571f

    .line 192
    invoke-direct {v4, v5, v12}, Lcom/miui/utils/animation/SpringInterpolator;-><init>(FF)V

    .line 195
    invoke-virtual {v11, v4}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 198
    invoke-virtual {v1, v11}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 201
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->startNotificationWakeAnimation(Z)V

    .line 204
    const-class v1, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 207
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 209
    move-result-object v1

    .line 212
    check-cast v1, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 213
    iget-object v1, v1, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    .line 215
    invoke-virtual {v1}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getMainLayout()Landroid/view/View;

    .line 217
    move-result-object v4

    .line 220
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 221
    move-result v4

    .line 224
    if-nez v4, :cond_6

    .line 225
    invoke-virtual {v1}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getMainLayout()Landroid/view/View;

    .line 227
    move-result-object v1

    .line 230
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    .line 231
    invoke-direct {v4, v3, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 233
    invoke-virtual {v4, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 236
    new-instance v3, Lcom/miui/utils/animation/SpringInterpolator;

    .line 239
    invoke-direct {v3, v7, v6}, Lcom/miui/utils/animation/SpringInterpolator;-><init>(FF)V

    .line 241
    invoke-virtual {v4, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 244
    invoke-virtual {v1, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 247
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardPanelViewInjector:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 250
    invoke-virtual {v1}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->resetKeyguardMoveHelper()V

    .line 252
    :cond_7
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 255
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 257
    sget-boolean v1, Lcom/miui/utils/configs/MiuiDebugConfig;->DEBUG_KEYGUARD:Z

    .line 260
    if-eqz v1, :cond_8

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    .line 264
    const-string v3, "--------onStartedWakingUp keyguard Visible:"

    .line 266
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    .line 271
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 273
    const-string v3, " indication_visible:"

    .line 276
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockScreenIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 281
    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    .line 283
    move-result v3

    .line 286
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 287
    const-string v3, " mPowerPluggedIn:"

    .line 290
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    .line 295
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 297
    const-string v3, " isUserUnlocked:"

    .line 300
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 305
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 307
    move-result v4

    .line 310
    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlocked(I)Z

    .line 311
    move-result v3

    .line 314
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    move-result-object v1

    .line 321
    const-string v3, "KeyguardIndication"

    .line 322
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_8
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    .line 327
    if-eqz v1, :cond_a

    .line 329
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    .line 331
    if-nez v1, :cond_9

    .line 333
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Lcom/android/systemui/statusbar/KeyguardIndicationController$2;

    .line 335
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardIndicationController$$ExternalSyntheticLambda3;

    .line 337
    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)V

    .line 339
    const-wide/16 v3, 0xc8

    .line 342
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 344
    goto :goto_3

    .line 347
    :cond_9
    const-class v0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;

    .line 348
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 350
    move-result-object v0

    .line 353
    check-cast v0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;

    .line 354
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockScreenIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 356
    invoke-virtual {v0, p0}, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->handlePowerIndicationAnimation(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V

    .line 358
    goto :goto_3

    .line 361
    :cond_a
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDeviceEntryIndication(Z)V

    .line 362
    :goto_3
    return-void
    .line 365
.end method

.method public final onStateChanged(I)V
    .locals 5

    .line 1
    iput p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mBarState:I

    .line 2
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    if-gt v1, p1, :cond_0

    .line 6
    const/4 v2, 0x3

    .line 8
    if-ge p1, v2, :cond_0

    .line 9
    move v2, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v2, v0

    .line 13
    :goto_0
    const/4 v3, 0x0

    .line 14
    if-eqz v2, :cond_1

    .line 15
    goto :goto_1

    .line 17
    :cond_1
    if-nez p1, :cond_2

    .line 18
    iget v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    .line 20
    cmpl-float v2, v2, v3

    .line 22
    if-lez v2, :cond_2

    .line 24
    :goto_1
    move v2, v1

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move v2, v0

    .line 28
    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setMPanelAppeared(Z)V

    .line 29
    iput-boolean v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->isGoingToDismissKeyguard:Z

    .line 32
    if-eqz p1, :cond_3

    .line 34
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setMNCSwitching(Z)V

    .line 36
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateDismissView()V

    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateThemeBackgroundVisibility()V

    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateNotificationStackScrollerVisibility()V

    .line 45
    iget-object v2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mAwesomeLockScreenContainer:Lcom/android/keyguard/AwesomeLockScreenContainer;

    .line 48
    if-eqz v2, :cond_4

    .line 50
    invoke-virtual {v2, p1}, Lcom/android/keyguard/AwesomeLockScreenContainer;->setBarState(I)V

    .line 52
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mAwesomeLockScreen:Lcom/android/keyguard/AwesomeLockScreen;

    .line 55
    if-eqz v2, :cond_5

    .line 57
    invoke-virtual {v2, p1}, Lcom/android/keyguard/AwesomeLockScreen;->setBarState(I)V

    .line 59
    :cond_5
    const-class v2, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 62
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 64
    move-result-object v2

    .line 67
    check-cast v2, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 68
    iput p1, v2, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mBarState:I

    .line 70
    invoke-virtual {v2}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->updateKeyguardElementsVisibility()V

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateMiuiResources()V

    .line 75
    const/4 v2, 0x6

    .line 78
    if-ne p1, v1, :cond_6

    .line 79
    iget-boolean v4, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardBouncerShowing:Z

    .line 81
    if-nez v4, :cond_6

    .line 83
    invoke-static {p0, v3, v0, v2}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setBouncerShowingFraction$default(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;FZI)V

    .line 85
    goto :goto_3

    .line 88
    :cond_6
    const/4 v3, 0x2

    .line 89
    if-ne p1, v3, :cond_7

    .line 90
    const/high16 p1, 0x3f800000    # 1.0f

    .line 92
    invoke-static {p0, p1, v0, v2}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setBouncerShowingFraction$default(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;FZI)V

    .line 94
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 97
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 99
    move-result-object p1

    .line 102
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isBackgroundBlurOpened(Landroid/content/Context;)Z

    .line 103
    move-result p1

    .line 106
    invoke-static {}, Lcom/miui/systemui/util/CommonUtil;->isDefaultLockScreenTheme()Z

    .line 107
    move-result v2

    .line 110
    if-eqz v2, :cond_8

    .line 111
    sget-boolean v2, Lcom/miui/utils/MiuiThemeUtils;->sDefaultSysUiTheme:Z

    .line 113
    if-eqz v2, :cond_8

    .line 115
    move v0, v1

    .line 117
    :cond_8
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->toggleBlurBlend(ZZ)V

    .line 118
    return-void
    .line 121
.end method

.method public final onTrackingStarted()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 2
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    .line 4
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->endClosing()V

    .line 11
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTracking:Z

    .line 15
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTrackingStartedListener:Lcom/android/systemui/shade/ShadeControllerImpl$$ExternalSyntheticLambda0;

    .line 17
    iget-object v1, v1, Lcom/android/systemui/shade/ShadeControllerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/shade/ShadeControllerImpl;

    .line 19
    invoke-virtual {v1}, Lcom/android/systemui/shade/ShadeControllerImpl;->runPostCollapseRunnables()V

    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->notifyExpandingStarted()V

    .line 24
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateExpansionAndVisibility()V

    .line 27
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 30
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardUnlockAnimationController:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    .line 32
    iget-boolean v2, v2, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->playingCannedUnlockAnimation:Z

    .line 34
    if-nez v2, :cond_0

    .line 36
    const/4 v2, 0x0

    .line 38
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimatingPanelExpansionOnUnlock:Z

    .line 39
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 41
    iget-boolean v2, v1, Lcom/android/systemui/shade/QuickSettingsController;->mFullyExpanded:Z

    .line 43
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 45
    if-eqz v2, :cond_1

    .line 47
    invoke-virtual {v1, v0}, Lcom/android/systemui/shade/QuickSettingsController;->setExpandImmediate(Z)V

    .line 49
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    :cond_1
    iget-object v1, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 55
    iput-boolean v0, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPanelTracking:Z

    .line 57
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 59
    iput-boolean v0, v2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPanelTracking:Z

    .line 61
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    .line 63
    invoke-virtual {v1, v0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->resetExposedMenuView(ZZ)V

    .line 65
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 68
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMaybeHideExpandedRunnable:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda0;

    .line 70
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 72
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mBouncerFractionAnimator:Landroid/animation/ValueAnimator;

    .line 75
    if-eqz p0, :cond_2

    .line 77
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 79
    :cond_2
    return-void
    .line 82
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->getStatusBarStateController()Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 2
    move-result-object p1

    .line 5
    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 6
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 9
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardViewManagerCallback:Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mKeyguardViewManagerCallback$1;

    .line 11
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mCallbacks:Ljava/util/Set;

    .line 13
    check-cast p1, Ljava/util/HashSet;

    .line 15
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 20
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mSetExpandedHeight:Lkotlin/reflect/KFunction;

    .line 22
    new-instance v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewControllerKt$sam$java_util_function_BiConsumer$0;

    .line 24
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 26
    invoke-direct {v1, v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewControllerKt$sam$java_util_function_BiConsumer$0;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 28
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedHeightListeners:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardPanelViewInjector:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 36
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->panelView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 38
    iput-object v0, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mPanelView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 40
    iget-object v0, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 42
    const/4 v1, 0x0

    .line 44
    if-nez v0, :cond_0

    .line 45
    move-object v0, v1

    .line 47
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 48
    iget-object v0, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardUpdateMonitorInjector:Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 51
    if-nez v0, :cond_1

    .line 53
    move-object v0, v1

    .line 55
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->registerCallback(Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;)V

    .line 56
    iget-object v0, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mWakeObserver:Lcom/android/keyguard/injector/KeyguardPanelViewInjector$mWakeObserver$1;

    .line 59
    iget-object v2, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 61
    invoke-virtual {v2, v0}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 63
    iget-object v0, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 68
    move-result-object v2

    .line 71
    const-string v3, "constant_lockscreen_info"

    .line 72
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 74
    move-result-object v3

    .line 77
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 78
    const/4 v9, 0x0

    .line 80
    iget-object v5, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mConstantLockscreenInfoObserver:Lcom/android/keyguard/injector/KeyguardPanelViewInjector$mConstantLockscreenInfoObserver$1;

    .line 81
    invoke-virtual {v2, v3, v9, v5, v4}, Landroid/content/ContentResolver;->registerContentObserverAsUser(Landroid/net/Uri;ZLandroid/database/ContentObserver;Landroid/os/UserHandle;)V

    .line 83
    invoke-virtual {v5, v9}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$mConstantLockscreenInfoObserver$1;->onChange(Z)V

    .line 86
    const-class v2, Lcom/miui/systemui/controller/SuperSaveModeController;

    .line 89
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 91
    move-result-object v2

    .line 94
    check-cast v2, Lcom/miui/systemui/controller/SuperSaveModeController;

    .line 95
    iget-object v3, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mSuperSaveModeChangeListener:Lcom/android/keyguard/injector/KeyguardPanelViewInjector$mSuperSaveModeChangeListener$1;

    .line 97
    invoke-virtual {v2, v3}, Lcom/miui/systemui/controller/SuperSaveModeController;->addCallback(Lcom/miui/systemui/controller/SuperSaveModeController$SuperSaveModeChangeListener;)V

    .line 99
    iget-object v4, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 102
    iget-object v5, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mExecutor:Ljava/util/concurrent/Executor;

    .line 104
    iget-object v6, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 106
    iget-object v7, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mMainHandler:Landroid/os/Handler;

    .line 108
    move-object v2, v4

    .line 110
    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 111
    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 113
    move-result v8

    .line 116
    new-instance v10, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$onViewAttachedToWindow$1;

    .line 117
    move-object v2, v10

    .line 119
    move-object v3, p1

    .line 120
    invoke-direct/range {v2 .. v8}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$onViewAttachedToWindow$1;-><init>(Lcom/android/keyguard/injector/KeyguardPanelViewInjector;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SecureSettings;Landroid/os/Handler;I)V

    .line 121
    iput-object v10, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mWallpaperEffectTypeObserver:Lcom/android/keyguard/injector/KeyguardPanelViewInjector$onViewAttachedToWindow$1;

    .line 124
    const/4 v11, 0x1

    .line 126
    invoke-virtual {v10, v11}, Lcom/android/systemui/util/MiuiSettingObserver;->setListening(Z)V

    .line 127
    const-class v2, Lcom/android/systemui/statusbar/policy/DualClockObserver;

    .line 130
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 132
    move-result-object v2

    .line 135
    check-cast v2, Lcom/android/systemui/statusbar/policy/DualClockObserver;

    .line 136
    iget-object v3, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mDualClockChangeListener:Lcom/android/keyguard/injector/KeyguardPanelViewInjector$mDualClockChangeListener$1;

    .line 138
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/DualClockObserver;->addCallback(Lcom/android/systemui/statusbar/policy/DualClockObserver$Callback;)V

    .line 140
    iget-object v4, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 143
    iget-object v5, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mExecutor:Ljava/util/concurrent/Executor;

    .line 145
    iget-object v6, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 147
    iget-object v7, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mMainHandler:Landroid/os/Handler;

    .line 149
    move-object v2, v4

    .line 151
    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 152
    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 154
    move-result v8

    .line 157
    new-instance v10, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$onViewAttachedToWindow$2;

    .line 158
    move-object v2, v10

    .line 160
    move-object v3, p1

    .line 161
    invoke-direct/range {v2 .. v8}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$onViewAttachedToWindow$2;-><init>(Lcom/android/keyguard/injector/KeyguardPanelViewInjector;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SecureSettings;Landroid/os/Handler;I)V

    .line 162
    iput-object v10, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mFaceUnlockApplyForKeyguardObserver:Lcom/android/keyguard/injector/KeyguardPanelViewInjector$onViewAttachedToWindow$2;

    .line 165
    invoke-virtual {v10, v11}, Lcom/android/systemui/util/MiuiSettingObserver;->setListening(Z)V

    .line 167
    iget-object v4, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 170
    iget-object v5, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mExecutor:Ljava/util/concurrent/Executor;

    .line 172
    iget-object v6, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 174
    iget-object v7, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mMainHandler:Landroid/os/Handler;

    .line 176
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 178
    move-result v8

    .line 181
    new-instance v10, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$onViewAttachedToWindow$3;

    .line 182
    move-object v2, v10

    .line 184
    invoke-direct/range {v2 .. v8}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$onViewAttachedToWindow$3;-><init>(Lcom/android/keyguard/injector/KeyguardPanelViewInjector;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SecureSettings;Landroid/os/Handler;I)V

    .line 185
    iput-object v10, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mMiuiWallpaperMattingSupportObserver:Lcom/android/keyguard/injector/KeyguardPanelViewInjector$onViewAttachedToWindow$3;

    .line 188
    invoke-virtual {v10, v11}, Lcom/android/systemui/util/MiuiSettingObserver;->setListening(Z)V

    .line 190
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 193
    move-result-object v0

    .line 196
    const-string/jumbo v2, "satellite_state"

    .line 197
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 200
    move-result-object v2

    .line 203
    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 204
    iget-object p1, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mSltObserver:Lcom/android/keyguard/injector/KeyguardPanelViewInjector$mSltObserver$1;

    .line 206
    invoke-virtual {v0, v2, v9, p1, v3}, Landroid/content/ContentResolver;->registerContentObserverAsUser(Landroid/net/Uri;ZLandroid/database/ContentObserver;Landroid/os/UserHandle;)V

    .line 208
    invoke-virtual {p1, v9}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$mSltObserver$1;->onChange(Z)V

    .line 211
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardClockInjector:Lcom/android/keyguard/injector/KeyguardClockInjector;

    .line 214
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->panelView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 216
    iget-object p1, p1, Lcom/android/keyguard/injector/KeyguardClockInjector;->mKeyguardClockView:Lcom/android/keyguard/clock/KeyguardClockContainer;

    .line 218
    if-eqz p1, :cond_2

    .line 220
    const v2, 0x7f0a04a4    # @id/keyguard_translation_info

    .line 222
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 225
    move-result-object v0

    .line 228
    check-cast v0, Landroid/widget/FrameLayout;

    .line 229
    iput-object v0, p1, Lcom/android/keyguard/clock/KeyguardClockContainer;->mKeyguardTranslationInfoLayer:Landroid/widget/FrameLayout;

    .line 231
    invoke-virtual {p1}, Lcom/android/keyguard/clock/KeyguardClockContainer;->updateSmallDateClockAndMagazineView()V

    .line 233
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mDismissView:Lcom/android/systemui/statusbar/views/DismissView;

    .line 236
    if-eqz p1, :cond_3

    .line 238
    const v0, 0x7f0816c3    # @drawable/notifications_clear_all 'res/drawable-night-440dpi/notifications_clear_all.webp'

    .line 240
    const v2, 0x7f080b98    # @drawable/btn_clear_all 'res/drawable-440dpi/btn_clear_all.webp'

    .line 243
    invoke-virtual {p1, v0, v2}, Lcom/miui/systemui/widget/CircleAndTickAnimView;->setDrawables(II)V

    .line 246
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mDismissView:Lcom/android/systemui/statusbar/views/DismissView;

    .line 249
    if-eqz p1, :cond_4

    .line 251
    new-instance v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$initDismissView$1;

    .line 253
    invoke-direct {v0, p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$initDismissView$1;-><init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;)V

    .line 255
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mDismissView:Lcom/android/systemui/statusbar/views/DismissView;

    .line 261
    if-eqz p1, :cond_5

    .line 263
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    .line 265
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 267
    move-result v0

    .line 270
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    .line 271
    iget-object v3, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mDismissView:Lcom/android/systemui/statusbar/views/DismissView;

    .line 273
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 275
    goto :goto_0

    .line 278
    :cond_5
    const/4 v0, -0x1

    .line 279
    :goto_0
    iput-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mDismissView:Lcom/android/systemui/statusbar/views/DismissView;

    .line 280
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    .line 282
    invoke-virtual {v2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 284
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mDismissView:Lcom/android/systemui/statusbar/views/DismissView;

    .line 287
    if-nez p1, :cond_6

    .line 289
    goto :goto_1

    .line 291
    :cond_6
    const v0, 0x7f0a06b6    # @id/notification_stack_scroller

    .line 292
    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityTraversalAfter(I)V

    .line 295
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mDismissView:Lcom/android/systemui/statusbar/views/DismissView;

    .line 298
    if-eqz p1, :cond_7

    .line 300
    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/PanelAppearDisappearEvent;->INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    .line 302
    invoke-static {p1, v9, v1, v9}, Lcom/android/systemui/statusbar/notification/stack/PanelAppearDisappearEvent$Companion;->animateAppearDisappear$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(Lcom/android/systemui/statusbar/views/DismissView;ZLcom/miui/utils/animation/OnAnimatorEndsListener;Z)V

    .line 304
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 307
    const v0, 0x7f0a02de    # @id/dismiss_view

    .line 309
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAccessibilityTraversalBefore(I)V

    .line 312
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 315
    invoke-virtual {p1, v11}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 317
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateDismissView()V

    .line 320
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->panelView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 323
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 325
    move-result-object p1

    .line 328
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->panelView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 329
    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->applyContainerViewBlur(Landroid/content/Context;Landroid/view/View;)V

    .line 331
    return-void
    .line 334
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->getStatusBarStateController()Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 2
    move-result-object p1

    .line 5
    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 6
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 9
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardViewManagerCallback:Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mKeyguardViewManagerCallback$1;

    .line 11
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mCallbacks:Ljava/util/Set;

    .line 13
    check-cast p1, Ljava/util/HashSet;

    .line 15
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 17
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 20
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mSetExpandedHeight:Lkotlin/reflect/KFunction;

    .line 22
    new-instance v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewControllerKt$sam$java_util_function_BiConsumer$0;

    .line 24
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 26
    invoke-direct {v1, v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewControllerKt$sam$java_util_function_BiConsumer$0;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 28
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedHeightListeners:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 33
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardPanelViewInjector:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 36
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->panelView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 38
    iput-object v0, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mPanelView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 40
    iget-object v0, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardMoveHelper:Lcom/android/keyguard/KeyguardMoveHelper;

    .line 42
    if-eqz v0, :cond_0

    .line 44
    iget-object v0, v0, Lcom/android/keyguard/KeyguardMoveHelper;->mLeftMoveController:Lcom/android/keyguard/negative/KeyguardMoveLeftController;

    .line 46
    if-eqz v0, :cond_0

    .line 48
    iget-object v1, v0, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mLockScreenMagazineClient:Lcom/android/keyguard/negative/LockScreenMagazineClient;

    .line 50
    invoke-virtual {v1}, Lcom/android/keyguard/negative/LockScreenMagazineClient;->unBind()V

    .line 52
    iget-object v0, v0, Lcom/android/keyguard/BaseKeyguardMoveController;->mCallBack:Lcom/android/keyguard/KeyguardMoveHelper$2;

    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    const/4 v0, 0x1

    .line 60
    invoke-static {v0}, Lcom/android/keyguard/KeyguardMoveHelper$2;->updateCanShowGxzw(Z)V

    .line 61
    :cond_0
    iget-object v0, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 64
    const/4 v1, 0x0

    .line 66
    if-nez v0, :cond_1

    .line 67
    move-object v0, v1

    .line 69
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 70
    iget-object v0, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardUpdateMonitorInjector:Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 73
    if-nez v0, :cond_2

    .line 75
    move-object v0, v1

    .line 77
    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->removeCallback(Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;)V

    .line 78
    iget-object v0, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mWakeObserver:Lcom/android/keyguard/injector/KeyguardPanelViewInjector$mWakeObserver$1;

    .line 81
    iget-object v2, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 83
    invoke-virtual {v2, v0}, Lcom/android/systemui/keyguard/Lifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 85
    iget-object v0, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mContext:Landroid/content/Context;

    .line 88
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 90
    move-result-object v2

    .line 93
    iget-object v3, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mConstantLockscreenInfoObserver:Lcom/android/keyguard/injector/KeyguardPanelViewInjector$mConstantLockscreenInfoObserver$1;

    .line 94
    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 96
    const-class v2, Lcom/miui/systemui/controller/SuperSaveModeController;

    .line 99
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 101
    move-result-object v2

    .line 104
    check-cast v2, Lcom/miui/systemui/controller/SuperSaveModeController;

    .line 105
    iget-object v2, v2, Lcom/miui/systemui/controller/SuperSaveModeController;->mListeners:Ljava/util/List;

    .line 107
    check-cast v2, Ljava/util/ArrayList;

    .line 109
    iget-object v3, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mSuperSaveModeChangeListener:Lcom/android/keyguard/injector/KeyguardPanelViewInjector$mSuperSaveModeChangeListener$1;

    .line 111
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 113
    iget-object v2, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mWallpaperEffectTypeObserver:Lcom/android/keyguard/injector/KeyguardPanelViewInjector$onViewAttachedToWindow$1;

    .line 116
    const/4 v3, 0x0

    .line 118
    if-nez v2, :cond_3

    .line 119
    goto :goto_0

    .line 121
    :cond_3
    invoke-virtual {v2, v3}, Lcom/android/systemui/util/MiuiSettingObserver;->setListening(Z)V

    .line 122
    :goto_0
    iput-object v1, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mWallpaperEffectTypeObserver:Lcom/android/keyguard/injector/KeyguardPanelViewInjector$onViewAttachedToWindow$1;

    .line 125
    const-class v2, Lcom/android/systemui/statusbar/policy/DualClockObserver;

    .line 127
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 129
    move-result-object v2

    .line 132
    check-cast v2, Lcom/android/systemui/statusbar/policy/DualClockObserver;

    .line 133
    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/DualClockObserver;->mCallbacks:Ljava/util/ArrayList;

    .line 135
    iget-object v4, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mDualClockChangeListener:Lcom/android/keyguard/injector/KeyguardPanelViewInjector$mDualClockChangeListener$1;

    .line 137
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 139
    iget-object v2, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mFaceUnlockApplyForKeyguardObserver:Lcom/android/keyguard/injector/KeyguardPanelViewInjector$onViewAttachedToWindow$2;

    .line 142
    if-nez v2, :cond_4

    .line 144
    goto :goto_1

    .line 146
    :cond_4
    invoke-virtual {v2, v3}, Lcom/android/systemui/util/MiuiSettingObserver;->setListening(Z)V

    .line 147
    :goto_1
    iput-object v1, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mFaceUnlockApplyForKeyguardObserver:Lcom/android/keyguard/injector/KeyguardPanelViewInjector$onViewAttachedToWindow$2;

    .line 150
    iget-object v2, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mMiuiWallpaperMattingSupportObserver:Lcom/android/keyguard/injector/KeyguardPanelViewInjector$onViewAttachedToWindow$3;

    .line 152
    if-nez v2, :cond_5

    .line 154
    goto :goto_2

    .line 156
    :cond_5
    invoke-virtual {v2, v3}, Lcom/android/systemui/util/MiuiSettingObserver;->setListening(Z)V

    .line 157
    :goto_2
    iput-object v1, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mMiuiWallpaperMattingSupportObserver:Lcom/android/keyguard/injector/KeyguardPanelViewInjector$onViewAttachedToWindow$3;

    .line 160
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 162
    move-result-object v0

    .line 165
    iget-object p1, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mSltObserver:Lcom/android/keyguard/injector/KeyguardPanelViewInjector$mSltObserver$1;

    .line 166
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 168
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardClockInjector:Lcom/android/keyguard/injector/KeyguardClockInjector;

    .line 171
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardClockInjector;->mKeyguardClockView:Lcom/android/keyguard/clock/KeyguardClockContainer;

    .line 173
    if-eqz p0, :cond_6

    .line 175
    iput-object v1, p0, Lcom/android/keyguard/clock/KeyguardClockContainer;->mKeyguardTranslationInfoLayer:Landroid/widget/FrameLayout;

    .line 177
    :cond_6
    return-void
    .line 179
.end method

.method public final refreshNssCoveringQs()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mQsTopPaddingAnimator:Landroid/animation/ValueAnimator;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 6
    return-void

    .line 9
    :cond_0
    new-instance v0, Landroid/os/Handler;

    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 12
    move-result-object v1

    .line 15
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 16
    new-instance v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mHidePanelRunnable$1;

    .line 19
    const/4 v2, 0x2

    .line 21
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mHidePanelRunnable$1;-><init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;I)V

    .line 22
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    return-void
    .line 28
.end method

.method public final resetAnimationState()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mIsDefaultTheme:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardClockInjector:Lcom/android/keyguard/injector/KeyguardClockInjector;

    .line 6
    iget-object v0, v0, Lcom/android/keyguard/injector/KeyguardClockInjector;->mKeyguardClockView:Lcom/android/keyguard/clock/KeyguardClockContainer;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    iget-object v1, v0, Lcom/android/keyguard/clock/KeyguardClockContainer;->mAnimationHelper:Lcom/android/keyguard/clock/animation/AnimationHelper;

    .line 12
    if-eqz v1, :cond_0

    .line 14
    iget-boolean v0, v0, Lcom/android/keyguard/clock/KeyguardClockContainer;->mHasNotification:Z

    .line 16
    const/4 v2, 0x0

    .line 18
    iput-boolean v2, v1, Lcom/android/keyguard/clock/animation/AnimationHelper;->mToAod:Z

    .line 19
    iget-object v1, v1, Lcom/android/keyguard/clock/animation/AnimationHelper;->mClockAnima:Lcom/android/keyguard/clock/animation/ClockBaseAnimation;

    .line 21
    invoke-virtual {v1, v0}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->resetAnimationState(Z)V

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mDeductedImageView:Landroid/widget/ImageView;

    .line 26
    const/high16 v1, 0x3f800000    # 1.0f

    .line 28
    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTransitionAlpha(F)V

    .line 32
    const/4 v2, 0x0

    .line 35
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    .line 36
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardBouncerShowing:Z

    .line 39
    if-eqz v0, :cond_2

    .line 41
    const/4 v0, 0x0

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    move v0, v1

    .line 45
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardInfoLayer:Landroid/widget/FrameLayout;

    .line 46
    if-nez v2, :cond_3

    .line 48
    goto :goto_1

    .line 50
    :cond_3
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setTransitionAlpha(F)V

    .line 51
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardPanelViewInjector:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 54
    iget-object v2, v2, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mColorRibbonsContainer:Lcom/android/keyguard/widget/ColorRibbonsContainer;

    .line 56
    if-nez v2, :cond_4

    .line 58
    goto :goto_2

    .line 60
    :cond_4
    invoke-virtual {v2, v0}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 61
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardPanelViewInjector:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 64
    iget-object v2, v2, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mDoodleTextView:Lcom/miui/keyguardtemplate/doodle/DoodleView;

    .line 66
    if-nez v2, :cond_5

    .line 68
    goto :goto_3

    .line 70
    :cond_5
    invoke-virtual {v2, v0}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 71
    :goto_3
    iget-object v2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardPanelViewInjector:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 74
    iget-object v2, v2, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mDoodleBgView:Landroid/view/View;

    .line 76
    if-nez v2, :cond_6

    .line 78
    goto :goto_4

    .line 80
    :cond_6
    invoke-virtual {v2, v1}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 81
    :goto_4
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardSignatureLayer:Landroid/widget/FrameLayout;

    .line 84
    if-nez p0, :cond_7

    .line 86
    goto :goto_5

    .line 88
    :cond_7
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTransitionAlpha(F)V

    .line 89
    :goto_5
    return-void
    .line 92
.end method

.method public final resetViews(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    .line 2
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->closeAndSaveGuts(ZZZZ)V

    .line 5
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 11
    move-result v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    invoke-virtual {p0, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->animateCollapseQs(Z)V

    .line 17
    goto :goto_2

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isShadeFullyExpanded()Z

    .line 21
    move-result v2

    .line 24
    if-nez v2, :cond_2

    .line 25
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isExpandingOrCollapsing()Z

    .line 27
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    goto :goto_0

    .line 33
    :cond_1
    move v2, v0

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    :goto_0
    move v2, v1

    .line 36
    :goto_1
    iget-boolean v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSplitShadeEnabled:Z

    .line 37
    if-eqz v3, :cond_3

    .line 39
    if-nez v2, :cond_4

    .line 41
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 43
    invoke-virtual {v2}, Lcom/android/systemui/shade/QuickSettingsController;->closeQs()V

    .line 45
    :cond_4
    :goto_2
    xor-int/lit8 v2, p1, 0x1

    .line 48
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 50
    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 52
    const/4 v5, 0x0

    .line 54
    invoke-virtual {v4, v5, v1, p1, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZ)V

    .line 55
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->resetScrollPosition()V

    .line 58
    iget-object v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 61
    invoke-virtual {v1, v5, v0, p1, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZ)V

    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isOnKeyguard()Z

    .line 66
    move-result p1

    .line 69
    if-nez p1, :cond_5

    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->isOnShade()Z

    .line 72
    move-result p1

    .line 75
    if-eqz p1, :cond_7

    .line 76
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardPanelViewInjector:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 78
    iget-object p1, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mLockScreenMagazineController:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 80
    if-nez p1, :cond_6

    .line 82
    const/4 p1, 0x0

    .line 84
    :cond_6
    invoke-virtual {p1}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->reset()V

    .line 85
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardPanelViewInjector:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 88
    invoke-virtual {p0}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->resetKeyguardMoveHelper()V

    .line 90
    :cond_7
    return-void
    .line 93
.end method

.method public final resetWallpaperState()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mDeductedImageView:Landroid/widget/ImageView;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 6
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    const/high16 v1, -0x40800000    # -1.0f

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->setWallpaperBlack(F)V

    .line 14
    :cond_0
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    .line 17
    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 19
    const-string v1, "WallpaperParam"

    .line 22
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 27
    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 28
    move-result-object v1

    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 33
    move-result-object v2

    .line 36
    new-instance v3, Lmiuix/animation/base/AnimConfig;

    .line 37
    invoke-direct {v3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 39
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->blackShowEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 42
    invoke-virtual {v3, p0}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 44
    move-result-object p0

    .line 47
    new-instance v3, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$linkageViewAnim$1;

    .line 48
    const/4 v4, 0x5

    .line 50
    invoke-direct {v3, v4, v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$linkageViewAnim$1;-><init>(ILjava/lang/Object;)V

    .line 51
    filled-new-array {v3}, [Lmiuix/animation/listener/TransitionListener;

    .line 54
    move-result-object v0

    .line 57
    invoke-virtual {p0, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 58
    move-result-object p0

    .line 61
    const-string/jumbo v0, "wallpaperBlack"

    .line 62
    filled-new-array {v0, v2, p0}, [Ljava/lang/Object;

    .line 65
    move-result-object p0

    .line 68
    invoke-interface {v1, p0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 69
    return-void
    .line 72
.end method

.method public final setAnimatingHeight(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->controlCenterController:Ldagger/Lazy;

    .line 2
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 8
    iget-boolean v0, v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->useControlCenter:Z

    .line 10
    if-nez v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 14
    iget-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 16
    if-nez v1, :cond_0

    .line 18
    goto :goto_1

    .line 20
    :cond_0
    iput p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mQsTopPadding:F

    .line 21
    invoke-virtual {v0}, Lcom/android/systemui/shade/QuickSettingsController;->getHeaderHeight()I

    .line 23
    move-result v1

    .line 26
    int-to-float v1, v1

    .line 27
    cmpg-float v1, p1, v1

    .line 28
    if-nez v1, :cond_1

    .line 30
    const/4 v1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v1, 0x0

    .line 34
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNssCoveredQs:Z

    .line 35
    invoke-virtual {v0, p1}, Lcom/android/systemui/shade/QuickSettingsController;->setExpansionHeight(F)V

    .line 37
    :cond_2
    :goto_1
    return-void
    .line 40
.end method

.method public final setExpandedHeightInternal(F)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mExpandingFromHeadsUp:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->getMPanelStretching()Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    invoke-super {p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->setExpandedHeightInternal(F)V

    .line 12
    goto/16 :goto_4

    .line 15
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNCSwitching:Z

    .line 17
    if-eqz v0, :cond_2

    .line 19
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->getMaxPanelHeight()I

    .line 21
    move-result v0

    .line 24
    int-to-float v0, v0

    .line 25
    cmpl-float v0, p1, v0

    .line 26
    if-lez v0, :cond_1

    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->getMaxPanelHeight()I

    .line 30
    move-result p1

    .line 33
    int-to-float p1, p1

    .line 34
    :cond_1
    invoke-super {p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->setExpandedHeightInternal(F)V

    .line 35
    goto :goto_4

    .line 38
    :cond_2
    const/4 v0, 0x0

    .line 39
    cmpl-float v1, p1, v0

    .line 40
    const/4 v2, 0x1

    .line 42
    const/4 v3, 0x0

    .line 43
    if-lez v1, :cond_4

    .line 44
    iget v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    .line 46
    cmpg-float v4, v4, v0

    .line 48
    if-nez v4, :cond_3

    .line 50
    move v4, v2

    .line 52
    goto :goto_0

    .line 53
    :cond_3
    move v4, v3

    .line 54
    :goto_0
    if-eqz v4, :cond_4

    .line 55
    move v4, v2

    .line 57
    goto :goto_1

    .line 58
    :cond_4
    move v4, v3

    .line 59
    :goto_1
    if-lez v1, :cond_5

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->getMaxPanelHeight()I

    .line 62
    move-result v1

    .line 65
    int-to-float v1, v1

    .line 66
    goto :goto_2

    .line 67
    :cond_5
    move v1, v0

    .line 68
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isOnKeyguard()Z

    .line 69
    move-result v5

    .line 72
    if-eqz v5, :cond_6

    .line 73
    goto :goto_3

    .line 75
    :cond_6
    move p1, v1

    .line 76
    :goto_3
    cmpg-float v0, p1, v0

    .line 77
    if-gtz v0, :cond_7

    .line 79
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isOnKeyguard()Z

    .line 81
    move-result v0

    .line 84
    if-nez v0, :cond_7

    .line 85
    invoke-virtual {p0, v3}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setMPanelAppeared(Z)V

    .line 87
    :cond_7
    invoke-super {p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->setExpandedHeightInternal(F)V

    .line 90
    if-eqz v4, :cond_8

    .line 93
    iget-boolean p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mQuickFlingHeadsUpTriggered:Z

    .line 95
    if-eqz p1, :cond_8

    .line 97
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 99
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutExtKt;->generateHeadsUpChildrenPositionAnimation(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    .line 101
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 104
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->unpinAll(Z)Z

    .line 106
    iput-boolean v3, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mQuickFlingHeadsUpTriggered:Z

    .line 109
    invoke-virtual {p0, v2}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setMPanelAppeared(Z)V

    .line 111
    :cond_8
    :goto_4
    return-void
    .line 114
.end method

.method public final setHorizontalMoveBlurRatio(F)V
    .locals 4

    .line 1
    const-string v0, "NotificationPanelView"

    .line 2
    const-string/jumbo v1, "setHorizontalMoveBlurRatio: ratio = "

    .line 4
    invoke-static {}, Lcom/miui/utils/configs/MiuiConfigs;->isLiteOrLowDevice()Z

    .line 7
    move-result v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    return-void

    .line 13
    :cond_0
    :try_start_0
    iget v2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->horizontalBlurRatio:F

    .line 14
    cmpg-float v2, v2, p1

    .line 16
    const/4 v3, 0x1

    .line 18
    if-nez v2, :cond_1

    .line 19
    move v2, v3

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v2, 0x0

    .line 23
    :goto_0
    if-nez v2, :cond_2

    .line 24
    iput p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->horizontalBlurRatio:F

    .line 26
    invoke-virtual {p0, p1, v3, v3}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->doBlurAndDim(FZZ)V

    .line 28
    iget p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->horizontalBlurRatio:F

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 44
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    goto :goto_1

    .line 48
    :catch_0
    move-exception p1

    .line 49
    const/high16 v1, -0x40800000    # -1.0f

    .line 50
    iput v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->horizontalBlurRatio:F

    .line 52
    new-instance p0, Ljava/lang/StringBuilder;

    .line 54
    const-string/jumbo v1, "setHorizontalMoveBlurRatio fail "

    .line 56
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 68
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_2
    :goto_1
    return-void
    .line 72
.end method

.method public final setKeyguardBottomAreaVisibility(IZ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string/jumbo v1, "setKeyguardBottomAreaVisibilitystatusBarState="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    const-string v1, " goingToFullShade="

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 24
    const-string v1, "PanelView"

    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    if-nez p2, :cond_6

    .line 30
    const/4 p2, 0x2

    .line 32
    if-ne p1, p2, :cond_0

    .line 33
    goto :goto_1

    .line 35
    :cond_0
    const/4 p2, 0x1

    .line 36
    const/high16 v0, 0x3f800000    # 1.0f

    .line 37
    if-ne p1, p2, :cond_3

    .line 39
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mMiuiKeyguardFaceUnlockView:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;

    .line 41
    if-eqz p1, :cond_1

    .line 43
    invoke-virtual {p1}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->updateFaceUnlockIconStatus()V

    .line 45
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mMiuiKeyguardFaceUnlockView:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;

    .line 48
    if-nez p0, :cond_2

    .line 50
    goto :goto_3

    .line 52
    :cond_2
    invoke-virtual {p0, v0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->setAlpha(F)V

    .line 53
    goto :goto_3

    .line 56
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mMiuiKeyguardFaceUnlockView:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;

    .line 57
    if-nez p1, :cond_4

    .line 59
    goto :goto_0

    .line 61
    :cond_4
    const/16 p2, 0x8

    .line 62
    invoke-virtual {p1, p2}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->setVisibility(I)V

    .line 64
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mMiuiKeyguardFaceUnlockView:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;

    .line 67
    if-nez p0, :cond_5

    .line 69
    goto :goto_3

    .line 71
    :cond_5
    invoke-virtual {p0, v0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->setAlpha(F)V

    .line 72
    goto :goto_3

    .line 75
    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mMiuiKeyguardFaceUnlockView:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;

    .line 76
    if-nez p0, :cond_7

    .line 78
    goto :goto_3

    .line 80
    :cond_7
    const-class p1, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 81
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 83
    move-result-object p1

    .line 86
    check-cast p1, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 87
    invoke-virtual {p1}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->isFaceUnlock()Z

    .line 89
    move-result p1

    .line 92
    if-eqz p1, :cond_8

    .line 93
    const/4 p1, 0x0

    .line 95
    goto :goto_2

    .line 96
    :cond_8
    const/4 p1, 0x4

    .line 97
    :goto_2
    invoke-virtual {p0, p1}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->setVisibility(I)V

    .line 98
    :goto_3
    return-void
    .line 101
.end method

.method public final setMExpandingFromHeadsUp(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mExpandingFromHeadsUp:Z

    .line 2
    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->fakeStatusBarClockController:Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;

    .line 6
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->disableFakeWhenExpandingFromHeadsUp:Z

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getAmbientState()Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 13
    move-result-object p0

    .line 16
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->expandingFromHeadsUp:Z

    .line 17
    return-void
    .line 19
.end method

.method public final setMHidePanelPending(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mHidePanelPending:Z

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mHidePanelPending:Z

    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 9
    const-string v0, "mHidePanelPending="

    .line 11
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 22
    const-string p1, "NotificationPanelView"

    .line 23
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    return-void
    .line 28
.end method

.method public final setMNCSwitching(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNCSwitching:Z

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    const-string/jumbo v0, "set mNCSwitching: "

    .line 6
    const-string v1, "NCSwitchController"

    .line 9
    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 11
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNCSwitching:Z

    .line 14
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 16
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getAmbientState()Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 18
    move-result-object v0

    .line 21
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isNCSwitching:Z

    .line 22
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 24
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->ncSwitching:Z

    .line 26
    if-nez p1, :cond_2

    .line 28
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->forceMaxBlur:Z

    .line 30
    if-ne v1, p1, :cond_1

    .line 32
    goto :goto_0

    .line 34
    :cond_1
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->forceMaxBlur:Z

    .line 35
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 37
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNCSwitching:Z

    .line 39
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->fakeStatusBarClockController:Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;

    .line 41
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->ncSwitching:Z

    .line 43
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 45
    iput-boolean p1, p0, Lcom/android/systemui/shade/QuickSettingsController;->ncSwitching:Z

    .line 47
    return-void
    .line 49
.end method

.method public final setMPanelAppeared(Z)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->getMPanelAppeared()Z

    .line 2
    move-result v0

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    const-wide/16 v1, 0x1000

    .line 9
    const-string v3, "mPanelAppeared"

    .line 11
    invoke-static {v1, v2, v3, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 13
    const/4 v1, 0x0

    .line 16
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 17
    if-eqz p1, :cond_2

    .line 19
    iget-object v3, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mHidePanelRunnable:Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mHidePanelRunnable$1;

    .line 21
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 23
    iput-boolean v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mHidePanelRequested:Z

    .line 26
    iget-object v3, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 28
    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutExtKt;->resetTransitionAlpha(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    .line 30
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 33
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->resetScrollPosition()V

    .line 35
    iget-object v3, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->foldManager:Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 38
    iget-boolean v4, v3, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->isShowingUnimportant:Z

    .line 40
    if-nez v4, :cond_1

    .line 42
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->setShowingUnimportant(Z)V

    .line 45
    goto :goto_0

    .line 48
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->foldManager:Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 49
    iget-boolean v4, v3, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->isShowingUnimportant:Z

    .line 51
    if-eqz v4, :cond_3

    .line 53
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->setShowingUnimportant(Z)V

    .line 55
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 58
    if-nez p1, :cond_4

    .line 60
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 62
    move-result-object v3

    .line 65
    const/16 v4, 0xbf

    .line 66
    invoke-static {v4, v3}, Lcom/miui/systemui/util/AccessibilityUtils;->hapticAccessibilityTransitionIfNeeded(ILandroid/content/Context;)V

    .line 68
    :cond_4
    const/4 v3, 0x1

    .line 71
    const/4 v4, 0x0

    .line 72
    const/high16 v5, 0x3f800000    # 1.0f

    .line 73
    if-eq v0, p1, :cond_d

    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->refreshNssCoveringQs()V

    .line 77
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 80
    if-nez p1, :cond_5

    .line 82
    iget-object v6, v0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionAnimator:Landroid/animation/ValueAnimator;

    .line 84
    if-eqz v6, :cond_5

    .line 86
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->cancel()V

    .line 88
    :cond_5
    new-instance v6, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mPanelAppeared$1;

    .line 91
    invoke-direct {v6, p0, p1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mPanelAppeared$1;-><init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;Z)V

    .line 93
    iget-object v0, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 96
    instance-of v7, v0, Lcom/android/systemui/qs/MiuiQS;

    .line 98
    if-eqz v7, :cond_c

    .line 100
    check-cast v0, Lcom/android/systemui/qs/MiuiQS;

    .line 102
    new-instance v7, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda1;

    .line 104
    invoke-direct {v7, v6}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mPanelAppeared$1;)V

    .line 106
    check-cast v0, Lcom/android/systemui/qs/MiuiQSFragment;

    .line 109
    iput-boolean p1, v0, Lcom/android/systemui/qs/MiuiQSFragment;->mAppeared:Z

    .line 111
    if-eqz p1, :cond_6

    .line 113
    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/MiuiQSFragment;->setListening(Z)V

    .line 115
    :cond_6
    iget-object v6, v0, Lcom/android/systemui/qs/MiuiQSFragment;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 118
    invoke-interface {v6}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 120
    move-result v6

    .line 123
    if-ne v6, v3, :cond_7

    .line 124
    move v6, v3

    .line 126
    goto :goto_1

    .line 127
    :cond_7
    move v6, v1

    .line 128
    :goto_1
    if-eqz v6, :cond_a

    .line 129
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    .line 131
    move-result-object v6

    .line 134
    if-nez v6, :cond_8

    .line 135
    goto :goto_3

    .line 137
    :cond_8
    iget-boolean v0, v0, Lcom/android/systemui/qs/MiuiQSFragment;->mAppeared:Z

    .line 138
    if-eqz v0, :cond_9

    .line 140
    move v0, v5

    .line 142
    goto :goto_2

    .line 143
    :cond_9
    move v0, v4

    .line 144
    :goto_2
    invoke-virtual {v6, v0}, Landroid/view/View;->setAlpha(F)V

    .line 145
    :goto_3
    invoke-virtual {v7}, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda1;->invoke()Ljava/lang/Object;

    .line 148
    goto :goto_5

    .line 151
    :cond_a
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    .line 152
    move-result-object v6

    .line 155
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 156
    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 159
    move-result-object v6

    .line 162
    sget-object v8, Lcom/android/systemui/statusbar/notification/stack/PanelAppearDisappearEvent;->INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    .line 163
    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 165
    move-result-object v6

    .line 168
    const-wide/16 v8, 0xfa

    .line 169
    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 171
    move-result-object v6

    .line 174
    iget-boolean v8, v0, Lcom/android/systemui/qs/MiuiQSFragment;->mAppeared:Z

    .line 175
    if-eqz v8, :cond_b

    .line 177
    move v8, v5

    .line 179
    goto :goto_4

    .line 180
    :cond_b
    move v8, v4

    .line 181
    :goto_4
    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 182
    move-result-object v6

    .line 185
    new-instance v8, Lcom/android/systemui/qs/MiuiQSFragment$animateAppearDisappear$1;

    .line 186
    invoke-direct {v8, p1, v0, v7}, Lcom/android/systemui/qs/MiuiQSFragment$animateAppearDisappear$1;-><init>(ZLcom/android/systemui/qs/MiuiQSFragment;Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda1;)V

    .line 188
    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 191
    move-result-object v0

    .line 194
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 195
    goto :goto_5

    .line 198
    :cond_c
    const-string v0, "QuickSettingsController"

    .line 199
    const-string v6, "failed to cast QS to MiuiQS"

    .line 201
    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_d
    :goto_5
    if-eqz p1, :cond_e

    .line 206
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 208
    move-result-object v0

    .line 211
    const/16 v2, 0xbe

    .line 212
    invoke-static {v2, v0}, Lcom/miui/systemui/util/AccessibilityUtils;->hapticAccessibilityTransitionIfNeeded(ILandroid/content/Context;)V

    .line 214
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 217
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isOnKeyguard()Z

    .line 219
    move-result v2

    .line 222
    invoke-static {v0, p1, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutExtKt;->setPanelAppeared(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;ZZ)V

    .line 223
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateDismissView()V

    .line 226
    iget-boolean v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mPanelOpening:Z

    .line 229
    if-nez v0, :cond_11

    .line 231
    iget-boolean v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mPanelCollapsing:Z

    .line 233
    if-nez v0, :cond_11

    .line 235
    if-eqz p1, :cond_f

    .line 237
    move v4, v5

    .line 239
    :cond_f
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 240
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTracking:Z

    .line 242
    invoke-virtual {p1, v4, v0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->onPanelStretchChanged(FZ)V

    .line 244
    iget-boolean p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mPanelOpening:Z

    .line 247
    if-nez p1, :cond_10

    .line 249
    iget-boolean p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mPanelCollapsing:Z

    .line 251
    if-nez p1, :cond_10

    .line 253
    goto :goto_6

    .line 255
    :cond_10
    move v3, v1

    .line 256
    :goto_6
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 257
    invoke-virtual {p1, v4, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->setStretchFraction(FZ)V

    .line 259
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->fakeStatusBarClockController:Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;

    .line 262
    invoke-virtual {p0, v4, v1}, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->onPanelStretchChanged(FZ)V

    .line 264
    :cond_11
    return-void
    .line 267
.end method

.method public final setMSpringLength(F)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mSpringLength:F

    .line 2
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->fakeStatusBarClockController:Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;

    .line 4
    iput p1, v0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->panelViewSpringLength:F

    .line 6
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->transYProperty:Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$scaleProperty$1;

    .line 8
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$scaleProperty$1;->getValue$1()F

    .line 10
    move-result v2

    .line 13
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$scaleProperty$1;->setValue(F)V

    .line 14
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->update()V

    .line 17
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 20
    iput p1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mPanelViewSpringLength:F

    .line 22
    invoke-virtual {v0}, Lcom/android/systemui/shade/QuickSettingsController;->updateExpansion()V

    .line 24
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 27
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getAmbientState()Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 29
    move-result-object v1

    .line 32
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->panelStretching:Z

    .line 33
    const/4 v2, 0x0

    .line 35
    if-nez v1, :cond_0

    .line 36
    cmpg-float v1, p1, v2

    .line 38
    if-gtz v1, :cond_2

    .line 40
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getAmbientState()Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 42
    move-result-object v1

    .line 45
    cmpg-float v3, p1, v2

    .line 46
    if-gez v3, :cond_1

    .line 48
    move p1, v2

    .line 50
    :cond_1
    iput p1, v1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->springLength:F

    .line 51
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 53
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updatePostBuildList()V

    .line 56
    return-void
    .line 59
.end method

.method public final setMStretchLength(F)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mPanelOpening:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    cmpg-float v2, p1, v1

    .line 7
    if-gez v2, :cond_1

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mPanelCollapsing:Z

    .line 12
    if-eqz v2, :cond_1

    .line 14
    cmpl-float v2, p1, v1

    .line 16
    if-lez v2, :cond_1

    .line 18
    :goto_0
    move p1, v1

    .line 20
    :cond_1
    iput p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mStretchLength:F

    .line 21
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x1

    .line 24
    if-eqz v0, :cond_2

    .line 25
    cmpl-float p1, p1, v1

    .line 27
    if-lez p1, :cond_2

    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->getMaxPanelHeight()I

    .line 31
    move-result p1

    .line 34
    int-to-float p1, p1

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setExpandedHeightInternal(F)V

    .line 36
    goto :goto_2

    .line 39
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->getMPanelAppeared()Z

    .line 40
    move-result p1

    .line 43
    if-nez p1, :cond_6

    .line 44
    iget-boolean p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mPanelIntercepting:Z

    .line 46
    if-nez p1, :cond_6

    .line 48
    iget p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mStretchLength:F

    .line 50
    cmpg-float p1, p1, v1

    .line 52
    if-nez p1, :cond_3

    .line 54
    move p1, v3

    .line 56
    goto :goto_1

    .line 57
    :cond_3
    move p1, v2

    .line 58
    :goto_1
    if-eqz p1, :cond_6

    .line 59
    iget-boolean p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mExpandingFromHeadsUp:Z

    .line 61
    if-nez p1, :cond_6

    .line 63
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 65
    check-cast p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 67
    iget p1, p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 69
    if-nez p1, :cond_5

    .line 71
    iget p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mBgBlurRadius:I

    .line 73
    if-nez p1, :cond_4

    .line 75
    iput-boolean v3, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mHidePanelRequested:Z

    .line 77
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mHidePanelRunnable:Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mHidePanelRunnable$1;

    .line 79
    invoke-virtual {p1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mHidePanelRunnable$1;->run()V

    .line 81
    invoke-virtual {p0, v2}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setMHidePanelPending(Z)V

    .line 84
    goto :goto_2

    .line 87
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->isOnShade()Z

    .line 88
    move-result p1

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setMHidePanelPending(Z)V

    .line 92
    iput-boolean v2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mHidePanelRequested:Z

    .line 95
    goto :goto_2

    .line 97
    :cond_5
    iput-boolean v3, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mHidePanelRequested:Z

    .line 98
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mHidePanelRunnable:Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mHidePanelRunnable$1;

    .line 100
    invoke-virtual {p1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mHidePanelRunnable$1;->run()V

    .line 102
    :cond_6
    :goto_2
    iget-boolean p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mPanelOpening:Z

    .line 105
    const-class v0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 107
    const/high16 v4, 0x42c80000    # 100.0f

    .line 109
    if-eqz p1, :cond_9

    .line 111
    iget-boolean p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mStretchingFromHeadsUp:Z

    .line 113
    if-eqz p1, :cond_7

    .line 115
    move p1, v1

    .line 117
    goto :goto_3

    .line 118
    :cond_7
    move p1, v4

    .line 119
    :goto_3
    iget v5, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mStretchLength:F

    .line 120
    cmpl-float p1, v5, p1

    .line 122
    if-lez p1, :cond_8

    .line 124
    move p1, v3

    .line 126
    goto :goto_4

    .line 127
    :cond_8
    move p1, v2

    .line 128
    :goto_4
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setMPanelAppeared(Z)V

    .line 129
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 132
    move-result-object p1

    .line 135
    check-cast p1, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 136
    const-string/jumbo v0, "\u4e0b\u62c9"

    .line 138
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->onPanelExpanded(Ljava/lang/String;)V

    .line 141
    goto :goto_6

    .line 144
    :cond_9
    iget-boolean p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mPanelCollapsing:Z

    .line 145
    if-eqz p1, :cond_b

    .line 147
    iget p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mStretchLength:F

    .line 149
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 151
    move-result p1

    .line 154
    cmpg-float p1, p1, v4

    .line 155
    if-gez p1, :cond_a

    .line 157
    move p1, v3

    .line 159
    goto :goto_5

    .line 160
    :cond_a
    move p1, v2

    .line 161
    :goto_5
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setMPanelAppeared(Z)V

    .line 162
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 165
    move-result-object p1

    .line 168
    check-cast p1, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 169
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->onPanelCollapsed$1()V

    .line 171
    :cond_b
    :goto_6
    iget p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mStretchLength:F

    .line 174
    cmpl-float v0, p1, v4

    .line 176
    const/high16 v5, 0x3f800000    # 1.0f

    .line 178
    if-ltz v0, :cond_d

    .line 180
    sub-float/2addr p1, v4

    .line 182
    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    .line 183
    move-result p1

    .line 186
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 187
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 189
    move-result v0

    .line 192
    int-to-float v0, v0

    .line 193
    div-float/2addr p1, v0

    .line 194
    cmpl-float v4, p1, v5

    .line 195
    if-lez v4, :cond_c

    .line 197
    move p1, v5

    .line 199
    :cond_c
    mul-float v4, p1, p1

    .line 200
    mul-float v6, v4, p1

    .line 202
    const/4 v7, 0x3

    .line 204
    int-to-float v7, v7

    .line 205
    div-float/2addr v6, v7

    .line 206
    sub-float/2addr v6, v4

    .line 207
    add-float/2addr v6, p1

    .line 208
    mul-float/2addr v6, v0

    .line 209
    const/high16 p1, 0x40a00000    # 5.0f

    .line 210
    div-float/2addr v6, p1

    .line 212
    invoke-virtual {p0, v6}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setMSpringLength(F)V

    .line 213
    :cond_d
    iget-boolean p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mPanelOpening:Z

    .line 216
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 218
    iget-object v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 220
    if-nez p1, :cond_10

    .line 222
    iget-boolean v6, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mPanelCollapsing:Z

    .line 224
    if-eqz v6, :cond_e

    .line 226
    goto :goto_7

    .line 228
    :cond_e
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->getMPanelAppeared()Z

    .line 229
    move-result p1

    .line 232
    if-eqz p1, :cond_f

    .line 233
    move v1, v5

    .line 235
    :cond_f
    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTracking:Z

    .line 236
    invoke-virtual {v4, v1, p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->onPanelStretchChanged(FZ)V

    .line 238
    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->setStretchFraction(FZ)V

    .line 241
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->fakeStatusBarClockController:Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;

    .line 244
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->onPanelStretchChanged(FZ)V

    .line 246
    goto :goto_b

    .line 249
    :cond_10
    :goto_7
    iget v2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mStretchLength:F

    .line 250
    iget v6, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mTouchSlop:I

    .line 252
    int-to-float v6, v6

    .line 254
    sub-float/2addr v2, v6

    .line 255
    if-eqz p1, :cond_11

    .line 256
    const/high16 v6, 0x42480000    # 50.0f

    .line 258
    goto :goto_8

    .line 260
    :cond_11
    const/high16 v6, 0x437a0000    # 250.0f

    .line 261
    :goto_8
    div-float/2addr v2, v6

    .line 263
    if-eqz p1, :cond_12

    .line 264
    move p1, v1

    .line 266
    goto :goto_9

    .line 267
    :cond_12
    const/high16 p1, 0x40000000    # 2.0f

    .line 268
    :goto_9
    add-float/2addr v2, p1

    .line 270
    invoke-static {v2, v1, v5}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    .line 271
    move-result p1

    .line 274
    iget-boolean v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTracking:Z

    .line 275
    invoke-virtual {v4, p1, v2}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->onPanelStretchChanged(FZ)V

    .line 277
    invoke-virtual {v0, p1, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->setStretchFraction(FZ)V

    .line 280
    iget-boolean p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mPanelOpening:Z

    .line 283
    if-eqz p1, :cond_14

    .line 285
    iget p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mStretchLength:F

    .line 287
    const/16 v0, 0x14

    .line 289
    int-to-float v0, v0

    .line 291
    sub-float/2addr p1, v0

    .line 292
    const/high16 v0, 0x42a00000    # 80.0f

    .line 293
    div-float/2addr p1, v0

    .line 295
    invoke-static {p1, v1, v5}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    .line 296
    move-result p1

    .line 299
    iget-boolean v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mPanelOpening:Z

    .line 300
    if-eqz v0, :cond_13

    .line 302
    goto :goto_a

    .line 304
    :cond_13
    int-to-float v0, v3

    .line 305
    sub-float p1, v0, p1

    .line 306
    :goto_a
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->fakeStatusBarClockController:Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;

    .line 308
    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->onPanelStretchChanged(FZ)V

    .line 310
    goto :goto_b

    .line 313
    :cond_14
    const/16 p1, 0x1e0

    .line 314
    int-to-float p1, p1

    .line 316
    iget v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mStretchLength:F

    .line 317
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 319
    move-result v0

    .line 322
    sub-float/2addr p1, v0

    .line 323
    const/high16 v0, 0x43be0000    # 380.0f

    .line 324
    div-float/2addr p1, v0

    .line 326
    invoke-static {p1, v1, v5}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    .line 327
    move-result p1

    .line 330
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->fakeStatusBarClockController:Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;

    .line 331
    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->onPanelStretchChanged(FZ)V

    .line 333
    :goto_b
    return-void
    .line 336
.end method

.method public final setQsExpansion(F)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNssCoveredQs:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->controlCenterController:Ldagger/Lazy;

    .line 7
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 12
    check-cast v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 13
    iget-boolean v0, v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->useControlCenter:Z

    .line 15
    const/4 v1, 0x1

    .line 17
    if-nez v0, :cond_6

    .line 18
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 20
    iget-boolean v2, v0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 22
    if-eqz v2, :cond_1

    .line 24
    const/4 v2, 0x0

    .line 26
    cmpl-float v2, p1, v2

    .line 27
    if-nez v2, :cond_1

    .line 29
    iget-object v2, v0, Lcom/android/systemui/shade/QuickSettingsController;->mPanelViewControllerLazy:Ldagger/Lazy;

    .line 31
    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 36
    check-cast v2, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 37
    invoke-virtual {v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->isShadeFullyExpanded()Z

    .line 39
    move-result v2

    .line 42
    if-eqz v2, :cond_1

    .line 43
    const-string v2, "QuickSettingsController"

    .line 45
    const-string v3, "qsExpansion set to 0 while split shade is expanding or open"

    .line 47
    invoke-static {v2, v3}, Landroid/util/Log;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_1
    iget v2, v0, Lcom/android/systemui/shade/QuickSettingsController;->mMaxExpansionHeight:I

    .line 52
    iget v3, v0, Lcom/android/systemui/shade/QuickSettingsController;->mMinExpansionHeight:I

    .line 54
    int-to-float v3, v3

    .line 56
    invoke-static {p1, v3}, Ljava/lang/Math;->max(FF)F

    .line 57
    move-result p1

    .line 60
    int-to-float v3, v2

    .line 61
    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    .line 62
    move-result p1

    .line 65
    cmpl-float v3, p1, v3

    .line 66
    const/4 v4, 0x0

    .line 68
    if-nez v3, :cond_2

    .line 69
    if-eqz v2, :cond_2

    .line 71
    move v2, v1

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    move v2, v4

    .line 75
    :goto_0
    iput-boolean v2, v0, Lcom/android/systemui/shade/QuickSettingsController;->mFullyExpanded:Z

    .line 76
    iget-boolean v2, v0, Lcom/android/systemui/shade/QuickSettingsController;->mAnimatorExpand:Z

    .line 78
    if-nez v2, :cond_3

    .line 80
    iget-boolean v2, v0, Lcom/android/systemui/shade/QuickSettingsController;->mAnimating:Z

    .line 82
    if-eqz v2, :cond_3

    .line 84
    move v2, v1

    .line 86
    goto :goto_1

    .line 87
    :cond_3
    move v2, v4

    .line 88
    :goto_1
    iget v3, v0, Lcom/android/systemui/shade/QuickSettingsController;->mMinExpansionHeight:I

    .line 89
    int-to-float v3, v3

    .line 91
    cmpl-float v5, p1, v3

    .line 92
    if-lez v5, :cond_4

    .line 94
    iget-boolean v5, v0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 96
    if-nez v5, :cond_4

    .line 98
    iget-boolean v5, v0, Lcom/android/systemui/shade/QuickSettingsController;->mStackScrollerOverscrolling:Z

    .line 100
    if-nez v5, :cond_4

    .line 102
    iget-boolean v5, v0, Lcom/android/systemui/shade/QuickSettingsController;->mDozing:Z

    .line 104
    if-nez v5, :cond_4

    .line 106
    if-nez v2, :cond_4

    .line 108
    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/QuickSettingsController;->setExpanded(Z)V

    .line 110
    goto :goto_2

    .line 113
    :cond_4
    cmpg-float v2, p1, v3

    .line 114
    if-gtz v2, :cond_5

    .line 116
    iget-boolean v2, v0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 118
    if-eqz v2, :cond_5

    .line 120
    invoke-virtual {v0, v4}, Lcom/android/systemui/shade/QuickSettingsController;->setExpanded(Z)V

    .line 122
    :cond_5
    :goto_2
    iput p1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeight:F

    .line 125
    invoke-virtual {v0}, Lcom/android/systemui/shade/QuickSettingsController;->updateExpansion()V

    .line 127
    iget-object p1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeightListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;

    .line 130
    if-eqz p1, :cond_6

    .line 132
    iget-boolean v0, v0, Lcom/android/systemui/shade/QuickSettingsController;->mFullyExpanded:Z

    .line 134
    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 136
    invoke-virtual {p1, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->onQsSetExpansionHeightCalled(Z)V

    .line 138
    :cond_6
    iget p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mBarState:I

    .line 141
    const/4 v0, 0x2

    .line 143
    if-eq p1, v0, :cond_7

    .line 144
    if-ne p1, v1, :cond_8

    .line 146
    :cond_7
    iget-boolean p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mIsDefaultTheme:Z

    .line 148
    if-nez p1, :cond_8

    .line 150
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mAwesomeLockScreen:Lcom/android/keyguard/AwesomeLockScreen;

    .line 152
    if-eqz p1, :cond_8

    .line 154
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 156
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 158
    move-result p0

    .line 161
    int-to-float p0, p0

    .line 162
    sget-object p1, Lcom/android/keyguard/AwesomeLockScreen;->mRootHolder:Lcom/android/keyguard/RootHolder;

    .line 163
    iget-object p1, p1, Lcom/android/keyguard/RootHolder;->mContext:Lcom/miui/maml/ScreenContext;

    .line 165
    iget-object p1, p1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 167
    float-to-double v0, p0

    .line 169
    const-string p0, "qs_height"

    .line 170
    invoke-static {p0, p1, v0, v1}, Lcom/miui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;D)V

    .line 172
    :cond_8
    return-void
    .line 175
.end method

.method public final setViewRadius(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mCurrentRadius:F

    .line 2
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mDeductedImageView:Landroid/widget/ImageView;

    .line 4
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Landroid/widget/ImageView;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    .line 9
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v1

    .line 14
    :goto_0
    check-cast v0, Lcom/android/keyguard/widget/RoundOutlineProvider;

    .line 15
    if-eqz v0, :cond_1

    .line 17
    iget-object v0, v0, Lcom/android/keyguard/widget/RoundOutlineProvider;->radius:[F

    .line 19
    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([FF)V

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mDeductedImageView:Landroid/widget/ImageView;

    .line 24
    if-eqz v0, :cond_2

    .line 26
    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidateOutline()V

    .line 28
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardBackgroundLayer:Landroid/widget/FrameLayout;

    .line 31
    if-eqz v0, :cond_3

    .line 33
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    .line 35
    move-result-object v0

    .line 38
    goto :goto_1

    .line 39
    :cond_3
    move-object v0, v1

    .line 40
    :goto_1
    check-cast v0, Lcom/android/keyguard/widget/RoundOutlineProvider;

    .line 41
    if-eqz v0, :cond_4

    .line 43
    iget-object v0, v0, Lcom/android/keyguard/widget/RoundOutlineProvider;->radius:[F

    .line 45
    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([FF)V

    .line 47
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardBackgroundLayer:Landroid/widget/FrameLayout;

    .line 50
    if-eqz v0, :cond_5

    .line 52
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    .line 54
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mAwesomeLockScreenContainer:Lcom/android/keyguard/AwesomeLockScreenContainer;

    .line 57
    if-eqz v0, :cond_6

    .line 59
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    .line 61
    move-result-object v1

    .line 64
    :cond_6
    check-cast v1, Lcom/android/keyguard/widget/RoundOutlineProvider;

    .line 65
    if-eqz v1, :cond_7

    .line 67
    iget-object v0, v1, Lcom/android/keyguard/widget/RoundOutlineProvider;->radius:[F

    .line 69
    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([FF)V

    .line 71
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mAwesomeLockScreenContainer:Lcom/android/keyguard/AwesomeLockScreenContainer;

    .line 74
    if-eqz p0, :cond_8

    .line 76
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    .line 78
    :cond_8
    return-void
    .line 81
.end method

.method public final startAnimationForEditor(Lcom/android/keyguard/KeyguardEditorHelper$EditorState;FFFFZ)V
    .locals 20

    .line 1
    move-object/from16 v9, p0

    .line 2
    move-object/from16 v10, p1

    .line 4
    move/from16 v7, p2

    .line 6
    move/from16 v8, p4

    .line 8
    move/from16 v0, p5

    .line 10
    iget-boolean v1, v9, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardShowing:Z

    .line 12
    if-nez v1, :cond_0

    .line 14
    iget-object v0, v9, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardEditorHelper:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    new-instance v1, Landroid/os/Bundle;

    .line 21
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 23
    const-string v2, "action_start_exit_transformer_animation"

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardEditorHelper;->sendCommandToEditor(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 28
    iget-object v0, v9, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardEditorHelper:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 31
    sget-object v1, Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;->UNLOCKED_EXIT:Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;

    .line 33
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardEditorHelper;->reset(Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;)V

    .line 35
    return-void

    .line 38
    :cond_0
    sget-object v11, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->SHOWINGBOUNCER:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 39
    const/4 v1, 0x0

    .line 41
    if-ne v10, v11, :cond_1

    .line 42
    iget-object v2, v9, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 44
    if-eqz v2, :cond_1

    .line 46
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncer(Z)V

    .line 48
    :cond_1
    sget-object v12, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->EXITING:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 51
    sget-object v13, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->EXITINGFROMBOUNCER:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 53
    sget-object v14, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->SHOWINGEDITOR:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 55
    const/4 v1, 0x0

    .line 57
    if-eq v10, v12, :cond_3

    .line 58
    if-eq v10, v11, :cond_3

    .line 60
    if-eq v10, v14, :cond_3

    .line 62
    if-eq v10, v13, :cond_3

    .line 64
    iget-object v2, v9, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardClockInjector:Lcom/android/keyguard/injector/KeyguardClockInjector;

    .line 66
    iget-object v2, v2, Lcom/android/keyguard/injector/KeyguardClockInjector;->mKeyguardClockView:Lcom/android/keyguard/clock/KeyguardClockContainer;

    .line 68
    if-nez v2, :cond_2

    .line 70
    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {v2, v1}, Lcom/android/keyguard/clock/KeyguardClockContainer;->setAlpha(F)V

    .line 73
    :goto_0
    iget-object v1, v9, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardPanelViewInjector:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 76
    invoke-virtual {v1}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->updateKeyguardElementsVisibility()V

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateAwesomeState()V

    .line 81
    :cond_3
    if-ne v10, v14, :cond_4

    .line 84
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 86
    move-result-object v1

    .line 89
    invoke-interface {v1}, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;->onKeyguardHide()V

    .line 90
    :cond_4
    iget-object v1, v9, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->animTargetForEditor:Lmiuix/animation/ValueTarget;

    .line 93
    if-eqz v1, :cond_5

    .line 95
    filled-new-array {v1}, [Lmiuix/animation/ValueTarget;

    .line 97
    move-result-object v1

    .line 100
    invoke-static {v1}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 101
    :cond_5
    iget-object v1, v9, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->alphaAnimForEditor:Landroid/animation/ValueAnimator;

    .line 104
    if-eqz v1, :cond_6

    .line 106
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 108
    :cond_6
    iget-object v1, v9, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->radiusAnimForEditor:Landroid/animation/ValueAnimator;

    .line 111
    if-eqz v1, :cond_7

    .line 113
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 115
    :cond_7
    sget-object v1, Lcom/android/systemui/SystemUIApplication;->sContext:Landroid/content/Context;

    .line 118
    invoke-static {v1}, Lcom/miui/utils/configs/MiuiConfigs;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    .line 120
    move-result-object v1

    .line 123
    iget v3, v1, Landroid/graphics/Point;->x:I

    .line 124
    iget v5, v1, Landroid/graphics/Point;->y:I

    .line 126
    iget-object v15, v9, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 128
    invoke-virtual {v15}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 130
    move-result v1

    .line 133
    new-instance v2, Lmiuix/animation/ValueTarget;

    .line 134
    invoke-direct {v2}, Lmiuix/animation/ValueTarget;-><init>()V

    .line 136
    iput-object v2, v9, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->animTargetForEditor:Lmiuix/animation/ValueTarget;

    .line 139
    sget-object v4, Lcom/android/systemui/statusbar/phone/CustomValueAnim;->WIDTH:Lmiuix/animation/property/ValueProperty;

    .line 141
    invoke-virtual {v15}, Landroid/widget/FrameLayout;->getScaleX()F

    .line 143
    move-result v6

    .line 146
    move-object/from16 v16, v14

    .line 147
    int-to-float v14, v3

    .line 149
    mul-float/2addr v6, v14

    .line 150
    invoke-virtual {v2, v4, v6}, Lmiuix/animation/ValueTarget;->setValue(Lmiuix/animation/property/FloatProperty;F)V

    .line 151
    sget-object v6, Lcom/android/systemui/statusbar/phone/CustomValueAnim;->TRANSLATION:Lmiuix/animation/property/ValueProperty;

    .line 154
    invoke-virtual {v2, v6, v1}, Lmiuix/animation/ValueTarget;->setValue(Lmiuix/animation/property/FloatProperty;F)V

    .line 156
    invoke-virtual {v15}, Landroid/widget/FrameLayout;->getScaleX()F

    .line 159
    move-result v2

    .line 162
    move-object/from16 v17, v11

    .line 163
    invoke-virtual {v15}, Landroid/widget/FrameLayout;->getAlpha()F

    .line 165
    move-result v11

    .line 168
    move-object/from16 v18, v15

    .line 169
    new-instance v15, Ljava/lang/StringBuilder;

    .line 171
    move-object/from16 v19, v13

    .line 173
    const-string/jumbo v13, "startAnimationForEditor TranslationY = "

    .line 175
    invoke-direct {v15, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 181
    const-string v1, ", screenWidth = "

    .line 184
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    const-string v1, ", now scale = "

    .line 192
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const-string v1, ", now alpha = "

    .line 197
    const-string v13, ", to scale = "

    .line 199
    invoke-static {v15, v2, v1, v11, v13}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    .line 201
    const-string v1, ", to Y = "

    .line 204
    const-string v2, ", to alpha = "

    .line 206
    invoke-static {v15, v7, v1, v8, v2}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    .line 208
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    move-result-object v1

    .line 217
    const-string v2, "NotificationPanelView"

    .line 218
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    new-instance v1, Lmiuix/animation/controller/AnimState;

    .line 223
    const-string/jumbo v2, "scale_to"

    .line 225
    invoke-direct {v1, v2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 228
    mul-float/2addr v14, v7

    .line 231
    const/4 v2, 0x0

    .line 232
    new-array v11, v2, [J

    .line 233
    invoke-virtual {v1, v4, v14, v11}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/FloatProperty;F[J)Lmiuix/animation/controller/AnimState;

    .line 235
    move-result-object v1

    .line 238
    new-array v11, v2, [J

    .line 239
    invoke-virtual {v1, v6, v8, v11}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/FloatProperty;F[J)Lmiuix/animation/controller/AnimState;

    .line 241
    move-result-object v11

    .line 244
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    .line 245
    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 247
    iget-object v13, v9, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->scaleEaseStyle:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 250
    new-array v14, v2, [F

    .line 252
    invoke-virtual {v1, v4, v13, v14}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    .line 254
    move-result-object v1

    .line 257
    iget-object v13, v9, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->translationYEaseStyle:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 258
    new-array v14, v2, [F

    .line 260
    invoke-virtual {v1, v6, v13, v14}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    .line 262
    move-result-object v13

    .line 265
    const/high16 v1, 0x3f800000    # 1.0f

    .line 266
    if-eqz p6, :cond_9

    .line 268
    iget-object v14, v9, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->animTargetForEditor:Lmiuix/animation/ValueTarget;

    .line 270
    if-eqz v14, :cond_8

    .line 272
    sget-object v15, Lcom/android/systemui/statusbar/phone/CustomValueAnim;->ALPHA:Lmiuix/animation/property/ValueProperty;

    .line 274
    invoke-virtual {v14, v15, v1}, Lmiuix/animation/ValueTarget;->setValue(Lmiuix/animation/property/FloatProperty;F)V

    .line 276
    :cond_8
    sget-object v1, Lcom/android/systemui/statusbar/phone/CustomValueAnim;->ALPHA:Lmiuix/animation/property/ValueProperty;

    .line 279
    new-array v14, v2, [J

    .line 281
    const/4 v15, 0x0

    .line 283
    invoke-virtual {v11, v1, v15, v14}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/FloatProperty;F[J)Lmiuix/animation/controller/AnimState;

    .line 284
    iget-object v14, v9, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->exitBouncerEaseStyle:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 287
    new-array v15, v2, [F

    .line 289
    invoke-virtual {v13, v1, v14, v15}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    .line 291
    move-result-object v1

    .line 294
    iget-object v14, v9, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->exitBouncerEaseStyle:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 295
    new-array v15, v2, [F

    .line 297
    invoke-virtual {v1, v4, v14, v15}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    .line 299
    move-result-object v1

    .line 302
    iget-object v4, v9, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->exitBouncerEaseStyle:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 303
    new-array v2, v2, [F

    .line 305
    invoke-virtual {v1, v6, v4, v2}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    .line 307
    goto :goto_1

    .line 310
    :cond_9
    iget-object v1, v9, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->scaleEaseStyle:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 311
    new-array v14, v2, [F

    .line 313
    invoke-virtual {v13, v4, v1, v14}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    .line 315
    move-result-object v1

    .line 318
    iget-object v4, v9, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->translationYEaseStyle:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 319
    new-array v2, v2, [F

    .line 321
    invoke-virtual {v1, v6, v4, v2}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    .line 323
    :goto_1
    const/4 v1, 0x0

    .line 326
    cmpg-float v1, v0, v1

    .line 327
    if-gtz v1, :cond_a

    .line 329
    const v0, 0x3c23d70a    # 0.01f

    .line 331
    :cond_a
    move v14, v0

    .line 334
    new-instance v15, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startAnimationForEditor$4;

    .line 335
    move-object v0, v15

    .line 337
    move-object/from16 v1, p1

    .line 338
    move-object/from16 v2, p0

    .line 340
    move/from16 v4, p6

    .line 342
    move/from16 v6, p3

    .line 344
    move/from16 v7, p2

    .line 346
    move/from16 v8, p4

    .line 348
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startAnimationForEditor$4;-><init>(Lcom/android/keyguard/KeyguardEditorHelper$EditorState;Lcom/android/systemui/shade/MiuiNotificationPanelViewController;IZIFFF)V

    .line 350
    filled-new-array {v15}, [Lmiuix/animation/listener/TransitionListener;

    .line 353
    move-result-object v0

    .line 356
    invoke-virtual {v13, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 357
    const-wide/16 v0, 0x12c

    .line 360
    const/4 v2, 0x2

    .line 362
    const/4 v3, 0x1

    .line 363
    if-eq v10, v12, :cond_e

    .line 364
    move-object/from16 v4, v19

    .line 366
    if-ne v10, v4, :cond_b

    .line 368
    goto :goto_3

    .line 370
    :cond_b
    move-object/from16 v4, v17

    .line 371
    if-eq v10, v4, :cond_d

    .line 373
    move-object/from16 v4, v16

    .line 375
    if-ne v10, v4, :cond_f

    .line 377
    iget v4, v9, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mCurrentRadius:F

    .line 379
    iget v5, v9, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mFinalRadius:F

    .line 381
    cmpg-float v4, v4, v5

    .line 383
    if-nez v4, :cond_c

    .line 385
    move v4, v3

    .line 387
    goto :goto_2

    .line 388
    :cond_c
    const/4 v4, 0x0

    .line 389
    :goto_2
    if-nez v4, :cond_f

    .line 390
    :cond_d
    new-array v4, v2, [F

    .line 392
    fill-array-data v4, :array_0

    .line 394
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 397
    move-result-object v4

    .line 400
    iput-object v4, v9, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->radiusAnimForEditor:Landroid/animation/ValueAnimator;

    .line 401
    if-eqz v4, :cond_f

    .line 403
    invoke-virtual {v4, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 405
    new-instance v5, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$1;

    .line 408
    const/4 v6, 0x7

    .line 410
    invoke-direct {v5, v6, v9}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$1;-><init>(ILjava/lang/Object;)V

    .line 411
    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 414
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 417
    goto :goto_4

    .line 420
    :cond_e
    :goto_3
    new-array v4, v2, [F

    .line 421
    fill-array-data v4, :array_1

    .line 423
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 426
    move-result-object v4

    .line 429
    iput-object v4, v9, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->radiusAnimForEditor:Landroid/animation/ValueAnimator;

    .line 430
    if-eqz v4, :cond_f

    .line 432
    invoke-virtual {v4, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 434
    new-instance v5, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$1;

    .line 437
    const/4 v6, 0x6

    .line 439
    invoke-direct {v5, v6, v9}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$1;-><init>(ILjava/lang/Object;)V

    .line 440
    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 443
    new-instance v5, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startAlphaAndScaleAnim$1$2;

    .line 446
    invoke-direct {v5, v3, v9}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startAlphaAndScaleAnim$1$2;-><init>(ILjava/lang/Object;)V

    .line 448
    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 451
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 454
    :cond_f
    :goto_4
    if-nez p6, :cond_10

    .line 457
    new-array v2, v2, [F

    .line 459
    invoke-virtual/range {v18 .. v18}, Landroid/widget/FrameLayout;->getAlpha()F

    .line 461
    move-result v4

    .line 464
    const/4 v5, 0x0

    .line 465
    aput v4, v2, v5

    .line 466
    aput v14, v2, v3

    .line 468
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 470
    move-result-object v2

    .line 473
    iput-object v2, v9, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->alphaAnimForEditor:Landroid/animation/ValueAnimator;

    .line 474
    if-eqz v2, :cond_10

    .line 476
    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 478
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 481
    const/high16 v1, 0x3f800000    # 1.0f

    .line 483
    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 485
    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 488
    new-instance v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$1;

    .line 491
    const/16 v1, 0x8

    .line 493
    invoke-direct {v0, v1, v9}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$1;-><init>(ILjava/lang/Object;)V

    .line 495
    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 498
    new-instance v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$2;

    .line 501
    invoke-direct {v0, v9, v14, v3}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$2;-><init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;FI)V

    .line 503
    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 506
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 509
    :cond_10
    iget-object v0, v9, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->animTargetForEditor:Lmiuix/animation/ValueTarget;

    .line 512
    if-eqz v0, :cond_11

    .line 514
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt(Lmiuix/animation/IAnimTarget;)Lmiuix/animation/IFolme;

    .line 516
    move-result-object v0

    .line 519
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 520
    move-result-object v0

    .line 523
    filled-new-array {v13}, [Lmiuix/animation/base/AnimConfig;

    .line 524
    move-result-object v1

    .line 527
    invoke-interface {v0, v11, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 528
    :cond_11
    return-void

    .line 531
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 532
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 540
.end method

.method public final startNotificationWakeAnimation(Z)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->notifLiveDataStore:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;

    .line 4
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;->activeNotifList:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    .line 6
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;->getValue()Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/Iterable;

    .line 12
    new-instance v2, Ljava/util/ArrayList;

    .line 14
    invoke-static {v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 16
    move-result v3

    .line 19
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v1

    .line 26
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v3

    .line 36
    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 37
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 39
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    goto :goto_0

    .line 44
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 45
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object v2

    .line 53
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result v3

    .line 57
    if-eqz v3, :cond_2

    .line 58
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object v3

    .line 63
    move-object v4, v3

    .line 64
    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 65
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    .line 67
    move-result v4

    .line 70
    if-nez v4, :cond_1

    .line 71
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    goto :goto_1

    .line 76
    :cond_2
    iget-object v2, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 77
    invoke-static {v2}, Lcom/android/systemui/util/ConvenienceExtensionsKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;

    .line 79
    move-result-object v2

    .line 82
    new-instance v3, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startNotificationWakeAnimation$animateShadeViews$1;

    .line 83
    invoke-direct {v3, v1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startNotificationWakeAnimation$animateShadeViews$1;-><init>(Ljava/util/List;)V

    .line 85
    invoke-static {v2, v3}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    .line 88
    move-result-object v1

    .line 91
    sget-object v2, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startNotificationWakeAnimation$animateShadeViews$2;->INSTANCE:Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startNotificationWakeAnimation$animateShadeViews$2;

    .line 92
    invoke-static {v1, v2}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    .line 94
    move-result-object v1

    .line 97
    new-instance v2, Lkotlin/sequences/FilteringSequence$iterator$1;

    .line 98
    invoke-direct {v2, v1}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    .line 100
    const/4 v1, 0x0

    .line 103
    move v3, v1

    .line 104
    :goto_2
    invoke-virtual {v2}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    .line 105
    move-result v4

    .line 108
    if-eqz v4, :cond_b

    .line 109
    invoke-virtual {v2}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    .line 111
    move-result-object v4

    .line 114
    add-int/lit8 v5, v3, 0x1

    .line 115
    if-ltz v3, :cond_a

    .line 117
    check-cast v4, Landroid/view/View;

    .line 119
    invoke-static {}, Lcom/miui/utils/configs/MiuiConfigs;->isLowEndDevice()Z

    .line 121
    move-result v6

    .line 124
    const/high16 v7, 0x3f800000    # 1.0f

    .line 125
    const/4 v8, 0x0

    .line 127
    if-eqz v6, :cond_4

    .line 128
    if-eqz p1, :cond_3

    .line 130
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    .line 132
    invoke-direct {v3, v8, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 134
    const-wide/16 v6, 0x15e

    .line 137
    invoke-virtual {v3, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 139
    new-instance v6, Lcom/miui/utils/animation/SpringInterpolator;

    .line 142
    const v7, 0x3f666666    # 0.9f

    .line 144
    const v8, 0x3f5c28f6    # 0.86f

    .line 147
    invoke-direct {v6, v7, v8}, Lcom/miui/utils/animation/SpringInterpolator;-><init>(FF)V

    .line 150
    invoke-virtual {v3, v6}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 153
    invoke-virtual {v4, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 156
    :cond_3
    move-object v14, v2

    .line 159
    move/from16 v17, v5

    .line 160
    move v2, v1

    .line 162
    goto/16 :goto_7

    .line 163
    :cond_4
    iget-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 165
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 167
    move-result-object v6

    .line 170
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 171
    move-result-object v6

    .line 174
    const v9, 0x7f070e0b    # @dimen/notification_wake_up_anim_translationY '100.0dp'

    .line 175
    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 178
    move-result v6

    .line 181
    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    .line 182
    move-result v9

    .line 185
    new-instance v10, Lmiuix/animation/controller/AnimState;

    .line 186
    const-string/jumbo v11, "row_init"

    .line 188
    invoke-direct {v10, v11}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 191
    sget-object v11, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 194
    new-array v12, v1, [J

    .line 196
    invoke-virtual {v10, v11, v8, v12}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    .line 198
    move-result-object v10

    .line 201
    sget-object v12, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 202
    new-array v13, v1, [J

    .line 204
    const v14, 0x3f59999a    # 0.85f

    .line 206
    invoke-virtual {v10, v12, v14, v13}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    .line 209
    move-result-object v10

    .line 212
    sget-object v13, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 213
    new-array v15, v1, [J

    .line 215
    invoke-virtual {v10, v13, v14, v15}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    .line 217
    move-result-object v10

    .line 220
    sget-object v15, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 221
    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    .line 223
    move-result v16

    .line 226
    int-to-float v6, v6

    .line 227
    add-float v14, v16, v6

    .line 228
    new-array v8, v1, [J

    .line 230
    invoke-virtual {v10, v15, v14, v8}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    .line 232
    move-result-object v8

    .line 235
    sget-object v10, Lmiuix/animation/property/ViewProperty;->ROTATION_X:Lmiuix/animation/property/ViewProperty;

    .line 236
    const/high16 v14, -0x3ec00000    # -12.0f

    .line 238
    new-array v7, v1, [J

    .line 240
    invoke-virtual {v8, v10, v14, v7}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    .line 242
    move-result-object v7

    .line 245
    sput-object v7, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationWakeUpAnimation;->mNotificationInitState:Lmiuix/animation/controller/AnimState;

    .line 246
    new-instance v7, Lmiuix/animation/controller/AnimState;

    .line 248
    const-string/jumbo v8, "row_keyguard"

    .line 250
    invoke-direct {v7, v8}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 253
    new-array v8, v1, [J

    .line 256
    const/high16 v14, 0x3f800000    # 1.0f

    .line 258
    invoke-virtual {v7, v11, v14, v8}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    .line 260
    move-result-object v7

    .line 263
    new-array v8, v1, [J

    .line 264
    invoke-virtual {v7, v12, v14, v8}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    .line 266
    move-result-object v7

    .line 269
    new-array v8, v1, [J

    .line 270
    invoke-virtual {v7, v13, v14, v8}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    .line 272
    move-result-object v7

    .line 275
    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    .line 276
    move-result v8

    .line 279
    new-array v14, v1, [J

    .line 280
    invoke-virtual {v7, v15, v8, v14}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    .line 282
    move-result-object v7

    .line 285
    new-array v8, v1, [J

    .line 286
    const/4 v14, 0x0

    .line 288
    invoke-virtual {v7, v10, v14, v8}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    .line 289
    move-result-object v7

    .line 292
    sput-object v7, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationWakeUpAnimation;->mNotificationKeyguardState:Lmiuix/animation/controller/AnimState;

    .line 293
    new-instance v7, Lmiuix/animation/base/AnimSpecialConfig;

    .line 295
    invoke-direct {v7}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 297
    const/4 v8, 0x2

    .line 300
    new-array v14, v8, [F

    .line 301
    fill-array-data v14, :array_0

    .line 303
    const/4 v1, -0x2

    .line 306
    invoke-virtual {v7, v1, v14}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 307
    move-result-object v7

    .line 310
    move-object v14, v2

    .line 311
    const-wide/16 v1, 0x32

    .line 312
    invoke-virtual {v7, v1, v2}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    .line 314
    move-result-object v1

    .line 317
    check-cast v1, Lmiuix/animation/base/AnimSpecialConfig;

    .line 318
    new-instance v2, Lmiuix/animation/base/AnimSpecialConfig;

    .line 320
    invoke-direct {v2}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 322
    new-array v7, v8, [F

    .line 325
    fill-array-data v7, :array_1

    .line 327
    const/4 v8, -0x2

    .line 330
    invoke-virtual {v2, v8, v7}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 331
    move-result-object v2

    .line 334
    check-cast v2, Lmiuix/animation/base/AnimSpecialConfig;

    .line 335
    new-instance v7, Lmiuix/animation/base/AnimSpecialConfig;

    .line 337
    invoke-direct {v7}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 339
    const/4 v8, 0x2

    .line 342
    new-array v0, v8, [F

    .line 343
    fill-array-data v0, :array_2

    .line 345
    const/4 v8, -0x2

    .line 348
    invoke-virtual {v7, v8, v0}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 349
    move-result-object v0

    .line 352
    check-cast v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 353
    new-instance v7, Lmiuix/animation/base/AnimSpecialConfig;

    .line 355
    invoke-direct {v7}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 357
    const/4 v8, 0x2

    .line 360
    new-array v8, v8, [F

    .line 361
    fill-array-data v8, :array_3

    .line 363
    move/from16 v17, v5

    .line 366
    const/4 v5, -0x2

    .line 368
    invoke-virtual {v7, v5, v8}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 369
    move-result-object v5

    .line 372
    check-cast v5, Lmiuix/animation/base/AnimSpecialConfig;

    .line 373
    new-instance v7, Lmiuix/animation/base/AnimConfig;

    .line 375
    invoke-direct {v7}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 377
    invoke-virtual {v7, v12, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 380
    move-result-object v7

    .line 383
    invoke-virtual {v7, v13, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 384
    move-result-object v1

    .line 387
    invoke-virtual {v1, v15, v2}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 388
    move-result-object v1

    .line 391
    invoke-virtual {v1, v11, v0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 392
    move-result-object v0

    .line 395
    invoke-virtual {v0, v10, v5}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 396
    move-result-object v0

    .line 399
    mul-int/lit8 v3, v3, 0x32

    .line 400
    add-int/lit8 v3, v3, 0x50

    .line 402
    int-to-long v1, v3

    .line 404
    invoke-virtual {v0, v1, v2}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    .line 405
    move-result-object v0

    .line 408
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationWakeUpAnimation$initWakeUpAnimation$1;

    .line 409
    invoke-direct {v1, v9, v4}, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationWakeUpAnimation$initWakeUpAnimation$1;-><init>(FLandroid/view/View;)V

    .line 411
    filled-new-array {v1}, [Lmiuix/animation/listener/TransitionListener;

    .line 414
    move-result-object v1

    .line 417
    invoke-virtual {v0, v1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 418
    move-result-object v0

    .line 421
    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationWakeUpAnimation;->mNotificationAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 422
    if-nez p1, :cond_9

    .line 424
    instance-of v0, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 426
    const/4 v1, 0x1

    .line 428
    if-eqz v0, :cond_8

    .line 429
    move-object v2, v4

    .line 431
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 432
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 434
    move-result-object v3

    .line 437
    if-eqz v3, :cond_5

    .line 438
    iget-boolean v3, v3, Lcom/android/systemui/statusbar/notification/stack/MiuiViewStateBase;->animatingWakeUp:Z

    .line 440
    if-ne v3, v1, :cond_5

    .line 442
    move v3, v1

    .line 444
    goto :goto_3

    .line 445
    :cond_5
    const/4 v3, 0x0

    .line 446
    :goto_3
    if-eqz v3, :cond_8

    .line 447
    filled-new-array {v4}, [Landroid/view/View;

    .line 449
    move-result-object v3

    .line 452
    invoke-static {v3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 453
    move-result-object v3

    .line 456
    invoke-interface {v3}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 457
    move-result-object v3

    .line 460
    invoke-interface {v3}, Lmiuix/animation/ICancelableStyle;->cancel()V

    .line 461
    if-eqz v0, :cond_7

    .line 464
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 466
    move-result-object v0

    .line 469
    if-nez v0, :cond_6

    .line 470
    const/high16 v0, 0x3f800000    # 1.0f

    .line 472
    const/4 v2, 0x0

    .line 474
    goto :goto_5

    .line 475
    :cond_6
    const/4 v2, 0x0

    .line 476
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/stack/MiuiViewStateBase;->animatingWakeUp:Z

    .line 477
    goto :goto_4

    .line 479
    :cond_7
    const/4 v2, 0x0

    .line 480
    :goto_4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 481
    :goto_5
    invoke-virtual {v4, v0}, Landroid/view/View;->setScaleX(F)V

    .line 483
    invoke-virtual {v4, v0}, Landroid/view/View;->setScaleY(F)V

    .line 486
    const/4 v3, 0x0

    .line 489
    invoke-virtual {v4, v3}, Landroid/view/View;->setRotationX(F)V

    .line 490
    goto :goto_6

    .line 493
    :cond_8
    const/high16 v0, 0x3f800000    # 1.0f

    .line 494
    const/4 v2, 0x0

    .line 496
    const/4 v3, 0x0

    .line 497
    :goto_6
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    .line 498
    invoke-direct {v5, v3, v3, v3, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 500
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    .line 503
    invoke-direct {v6, v0, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 505
    new-instance v0, Landroid/view/animation/AnimationSet;

    .line 508
    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 510
    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 513
    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 516
    const-wide/16 v5, 0x12c

    .line 519
    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 521
    new-instance v1, Landroid/view/animation/SpringInterpolator;

    .line 524
    const v3, 0x3f7ae148    # 0.98f

    .line 526
    const v5, 0x3f59999a    # 0.85f

    .line 529
    invoke-direct {v1, v3, v5}, Landroid/view/animation/SpringInterpolator;-><init>(FF)V

    .line 532
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 535
    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 538
    goto :goto_7

    .line 541
    :cond_9
    const/4 v2, 0x0

    .line 542
    filled-new-array {v4}, [Landroid/view/View;

    .line 543
    move-result-object v0

    .line 546
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 547
    move-result-object v0

    .line 550
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 551
    move-result-object v0

    .line 554
    sget-object v1, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationWakeUpAnimation;->mNotificationInitState:Lmiuix/animation/controller/AnimState;

    .line 555
    new-instance v3, Lmiuix/animation/base/AnimConfig;

    .line 557
    invoke-direct {v3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 559
    new-instance v5, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationWakeUpAnimation$doNotificationWakeUpOrSleepAnimation$1;

    .line 562
    invoke-direct {v5, v4}, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationWakeUpAnimation$doNotificationWakeUpOrSleepAnimation$1;-><init>(Landroid/view/View;)V

    .line 564
    filled-new-array {v5}, [Lmiuix/animation/listener/TransitionListener;

    .line 567
    move-result-object v4

    .line 570
    invoke-virtual {v3, v4}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 571
    move-result-object v3

    .line 574
    filled-new-array {v3}, [Lmiuix/animation/base/AnimConfig;

    .line 575
    move-result-object v3

    .line 578
    invoke-interface {v0, v1, v3}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 579
    move-result-object v0

    .line 582
    sget-object v1, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationWakeUpAnimation;->mNotificationKeyguardState:Lmiuix/animation/controller/AnimState;

    .line 583
    sget-object v3, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationWakeUpAnimation;->mNotificationAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 585
    filled-new-array {v3}, [Lmiuix/animation/base/AnimConfig;

    .line 587
    move-result-object v3

    .line 590
    invoke-interface {v0, v1, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 591
    :goto_7
    move-object/from16 v0, p0

    .line 594
    move v1, v2

    .line 596
    move-object v2, v14

    .line 597
    move/from16 v3, v17

    .line 598
    goto/16 :goto_2

    .line 600
    :cond_a
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    .line 602
    const/4 v0, 0x0

    .line 605
    throw v0

    .line 606
    :cond_b
    return-void

    .line 607
    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3e800000    # 0.25f
    .end array-data

    .line 608
    :array_1
    .array-data 4
        0x3f7ae148    # 0.98f
        0x3ee66666    # 0.45f
    .end array-data

    .line 616
    :array_2
    .array-data 4
        0x3f7ae148    # 0.98f
        0x3eb33333    # 0.35f
    .end array-data

    .line 624
    :array_3
    .array-data 4
        0x3f7ae148    # 0.98f
        0x3e99999a    # 0.3f
    .end array-data
    .line 632
.end method

.method public final startUnlockHintAnimation()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final startUnlockKeyguardDismissAnim(Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda1;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardPanelViewInjector:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 2
    iget-object v0, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mSmartFrameView:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 4
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 6
    const/high16 v2, 0x3f800000    # 1.0f

    .line 8
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x2

    .line 11
    const/4 v5, 0x1

    .line 12
    if-eqz v0, :cond_3

    .line 13
    iget-object v6, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->unlockSmartTransAnimator:Landroid/animation/ValueAnimator;

    .line 15
    if-eqz v6, :cond_0

    .line 17
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->cancel()V

    .line 19
    :cond_0
    new-array v6, v4, [F

    .line 22
    fill-array-data v6, :array_0

    .line 24
    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 27
    move-result-object v6

    .line 30
    iput-object v6, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->unlockSmartTransAnimator:Landroid/animation/ValueAnimator;

    .line 31
    invoke-virtual {v0}, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->getDrawableTop()I

    .line 33
    move-result v6

    .line 36
    int-to-float v6, v6

    .line 37
    invoke-virtual {v0}, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->getDrawableHeight()I

    .line 38
    move-result v7

    .line 41
    int-to-float v7, v7

    .line 42
    const/high16 v8, 0x40000000    # 2.0f

    .line 43
    div-float/2addr v7, v8

    .line 45
    add-float/2addr v7, v6

    .line 46
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    .line 47
    move-result v6

    .line 50
    int-to-float v6, v6

    .line 51
    div-float/2addr v6, v8

    .line 52
    sub-float/2addr v6, v7

    .line 53
    invoke-virtual {v0}, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->getDrawableTranslateY()I

    .line 54
    move-result v7

    .line 57
    iget-object v8, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->unlockSmartTransAnimator:Landroid/animation/ValueAnimator;

    .line 58
    if-eqz v8, :cond_1

    .line 60
    const-wide/16 v9, 0x12c

    .line 62
    invoke-virtual {v8, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 64
    new-instance v9, Landroid/view/animation/DecelerateInterpolator;

    .line 67
    invoke-direct {v9, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 69
    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 72
    new-instance v9, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startSmartFrameAnim$1$1$1;

    .line 75
    invoke-direct {v9, v0, v6}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startSmartFrameAnim$1$1$1;-><init>(Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;F)V

    .line 77
    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 80
    new-instance v6, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startSmartFrameAnim$1$1$2;

    .line 83
    invoke-direct {v6, v0, v7, v3}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startSmartFrameAnim$1$1$2;-><init>(Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;II)V

    .line 85
    invoke-virtual {v8, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 88
    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->start()V

    .line 91
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->unlockSmartScaleAnimator:Landroid/animation/ValueAnimator;

    .line 94
    if-eqz v6, :cond_2

    .line 96
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->cancel()V

    .line 98
    :cond_2
    new-array v6, v4, [F

    .line 101
    fill-array-data v6, :array_1

    .line 103
    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 106
    move-result-object v6

    .line 109
    iput-object v6, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->unlockSmartScaleAnimator:Landroid/animation/ValueAnimator;

    .line 110
    if-eqz v6, :cond_3

    .line 112
    const-wide/16 v8, 0x1c2

    .line 114
    invoke-virtual {v6, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 116
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    .line 119
    invoke-direct {v8, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 121
    invoke-virtual {v6, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 124
    new-instance v8, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$1;

    .line 127
    const/16 v9, 0xc

    .line 129
    invoke-direct {v8, v9, v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$1;-><init>(ILjava/lang/Object;)V

    .line 131
    invoke-virtual {v6, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 134
    new-instance v8, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startSmartFrameAnim$1$1$2;

    .line 137
    invoke-direct {v8, v0, v7, v5}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startSmartFrameAnim$1$1$2;-><init>(Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;II)V

    .line 139
    invoke-virtual {v6, v8}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 142
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    .line 145
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardBouncerShowing:Z

    .line 148
    invoke-static {}, Lcom/miui/utils/configs/MiuiConfigs;->isLiteOrLowDevice()Z

    .line 150
    move-result v6

    .line 153
    const/high16 v7, 0x3fc00000    # 1.5f

    .line 154
    const-wide/16 v8, 0xc8

    .line 156
    const/4 v10, 0x0

    .line 158
    if-eqz v6, :cond_4

    .line 159
    goto/16 :goto_0

    .line 161
    :cond_4
    const-class v6, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 163
    invoke-static {v6}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 165
    move-result-object v6

    .line 168
    check-cast v6, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 169
    iget-boolean v6, v6, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mUseWallpaperBlur:Z

    .line 171
    if-nez v0, :cond_6

    .line 173
    if-eqz v6, :cond_6

    .line 175
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->unlockBlurAnimator:Landroid/animation/ValueAnimator;

    .line 177
    if-eqz v0, :cond_5

    .line 179
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 181
    :cond_5
    new-array v0, v4, [F

    .line 184
    iget v6, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardBouncerFraction:F

    .line 186
    aput v6, v0, v3

    .line 188
    aput v2, v0, v5

    .line 190
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 192
    move-result-object v0

    .line 195
    iput-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->unlockBlurAnimator:Landroid/animation/ValueAnimator;

    .line 196
    if-eqz v0, :cond_8

    .line 198
    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 200
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    .line 203
    invoke-direct {v2, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 205
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 208
    new-instance v2, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$1;

    .line 211
    const/16 v6, 0x9

    .line 213
    invoke-direct {v2, v6, p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$1;-><init>(ILjava/lang/Object;)V

    .line 215
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 218
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 221
    goto :goto_0

    .line 224
    :cond_6
    if-eqz v0, :cond_8

    .line 225
    if-nez v6, :cond_8

    .line 227
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->unlockBlurAnimator:Landroid/animation/ValueAnimator;

    .line 229
    if-eqz v0, :cond_7

    .line 231
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 233
    :cond_7
    new-array v0, v4, [F

    .line 236
    iget v6, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardBouncerFraction:F

    .line 238
    aput v6, v0, v3

    .line 240
    aput v10, v0, v5

    .line 242
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 244
    move-result-object v0

    .line 247
    iput-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->unlockBlurAnimator:Landroid/animation/ValueAnimator;

    .line 248
    if-eqz v0, :cond_8

    .line 250
    const-wide/16 v11, 0xdc

    .line 252
    invoke-virtual {v0, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 254
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    .line 257
    invoke-direct {v6, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 259
    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 262
    new-instance v2, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$1;

    .line 265
    const/16 v6, 0xa

    .line 267
    invoke-direct {v2, v6, p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$1;-><init>(ILjava/lang/Object;)V

    .line 269
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 272
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 275
    :cond_8
    :goto_0
    new-instance v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mEditorStateListener$1$1;

    .line 278
    invoke-direct {v0, p0, p1, v5}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mEditorStateListener$1$1;-><init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;Ljava/lang/Object;I)V

    .line 280
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->unlockAlphaAndScaleAnimator:Landroid/animation/ValueAnimator;

    .line 283
    if-eqz p1, :cond_9

    .line 285
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 287
    :cond_9
    new-array p1, v4, [F

    .line 290
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    .line 292
    move-result v1

    .line 295
    aput v1, p1, v3

    .line 296
    aput v10, p1, v5

    .line 298
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 300
    move-result-object p1

    .line 303
    iput-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->unlockAlphaAndScaleAnimator:Landroid/animation/ValueAnimator;

    .line 304
    if-eqz p1, :cond_a

    .line 306
    invoke-virtual {p1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 308
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 311
    invoke-direct {v1, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 313
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 316
    new-instance v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$1;

    .line 319
    const/4 v2, 0x4

    .line 321
    invoke-direct {v1, v2, p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$1;-><init>(ILjava/lang/Object;)V

    .line 322
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 325
    new-instance p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startAlphaAndScaleAnim$1$2;

    .line 328
    invoke-direct {p0, v3, v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startAlphaAndScaleAnim$1$2;-><init>(ILjava/lang/Object;)V

    .line 330
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 333
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 336
    :cond_a
    return-void

    .line 339
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 340
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 348
.end method

.method public final toggleBlurBlend(ZZ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 2
    if-eqz p1, :cond_1

    .line 4
    if-eqz p2, :cond_1

    .line 6
    iget p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mBarState:I

    .line 8
    const/4 p2, 0x1

    .line 10
    if-ne p1, p2, :cond_0

    .line 11
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 13
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getVisibleNotificationCount()I

    .line 15
    move-result p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 21
    move-result-object p1

    .line 24
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->panelView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 25
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->applyContainerViewBlur(Landroid/content/Context;Landroid/view/View;)V

    .line 27
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->panelView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 30
    :try_start_0
    const-string v0, "android.view.View"

    .line 32
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 34
    move-result-object v0

    .line 37
    const-string v1, "disableMiBackgroundContainBelow"

    .line 38
    new-array v2, p2, [Ljava/lang/Class;

    .line 40
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 42
    const/4 v4, 0x0

    .line 44
    aput-object v3, v2, v4

    .line 45
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 47
    move-result-object v0

    .line 50
    new-array p2, p2, [Ljava/lang/Object;

    .line 51
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 53
    aput-object v1, p2, v4

    .line 55
    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_0

    .line 60
    :catch_0
    const-string p1, "NotificationUtil"

    .line 61
    const-string p2, "disableMiBackgroundContainBelow  Method not found!"

    .line 63
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 69
    move-result-object p1

    .line 72
    iget-object p2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->panelView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 73
    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->clearContainerViewBlur(Landroid/content/Context;Landroid/view/View;)V

    .line 75
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->pipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 78
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    .line 80
    move-result-object p1

    .line 83
    new-instance p2, Ljava/util/ArrayList;

    .line 84
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 86
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 89
    move-result-object p1

    .line 92
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    move-result v0

    .line 96
    if-eqz v0, :cond_3

    .line 97
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    move-result-object v0

    .line 102
    move-object v1, v0

    .line 103
    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 104
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 106
    instance-of v1, v1, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;

    .line 108
    if-eqz v1, :cond_2

    .line 110
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    goto :goto_1

    .line 115
    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 116
    move-result-object p1

    .line 119
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    move-result p2

    .line 123
    if-eqz p2, :cond_4

    .line 124
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    move-result-object p2

    .line 129
    check-cast p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 130
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 132
    check-cast p2, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;

    .line 134
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;->updateBackgroundBg()V

    .line 136
    goto :goto_2

    .line 139
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 140
    invoke-static {p0}, Lcom/android/systemui/util/ConvenienceExtensionsKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;

    .line 142
    move-result-object p0

    .line 145
    sget-object p1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$toggleBlurBlend$3;->INSTANCE:Lcom/android/systemui/shade/MiuiNotificationPanelViewController$toggleBlurBlend$3;

    .line 146
    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    .line 148
    move-result-object p0

    .line 151
    new-instance p1, Lkotlin/sequences/FilteringSequence$iterator$1;

    .line 152
    invoke-direct {p1, p0}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    .line 154
    :goto_3
    invoke-virtual {p1}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    .line 157
    move-result p0

    .line 160
    if-eqz p0, :cond_5

    .line 161
    invoke-virtual {p1}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    .line 163
    move-result-object p0

    .line 166
    check-cast p0, Landroid/view/View;

    .line 167
    check-cast p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;

    .line 169
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->updateBackgroundBg()V

    .line 171
    goto :goto_3

    .line 174
    :cond_5
    return-void
    .line 175
.end method

.method public final updateAwesomeState()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardEditorHelper:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 2
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardEditorHelper;->isInEnterAndExitEditorMode()Z

    .line 4
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mAwesomeLockScreen:Lcom/android/keyguard/AwesomeLockScreen;

    .line 8
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_1

    .line 11
    iget-boolean v3, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardVisibility:Z

    .line 13
    if-eqz v3, :cond_0

    .line 15
    iget-boolean v3, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mInteractive:Z

    .line 17
    if-eqz v3, :cond_0

    .line 19
    if-nez v0, :cond_0

    .line 21
    const/4 v3, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v3, v2

    .line 25
    :goto_0
    invoke-virtual {v1, v3}, Lcom/android/keyguard/AwesomeLockScreen;->setIsInteractive(Z)V

    .line 26
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mAwesomeLockScreen:Lcom/android/keyguard/AwesomeLockScreen;

    .line 29
    if-nez v1, :cond_2

    .line 31
    goto :goto_2

    .line 33
    :cond_2
    iget-boolean p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardVisibility:Z

    .line 34
    if-eqz p0, :cond_3

    .line 36
    if-nez v0, :cond_3

    .line 38
    goto :goto_1

    .line 40
    :cond_3
    const/16 v2, 0x8

    .line 41
    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 43
    :goto_2
    return-void
    .line 46
.end method

.method public final updateDismissView()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isOnKeyguard()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 10
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHasPinnedNotification:Z

    .line 12
    if-nez v3, :cond_1

    .line 14
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mHeadsUpGoingAway:Z

    .line 16
    if-nez v0, :cond_1

    .line 18
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 20
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 22
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->hasActiveClearableNotifications(I)Z

    .line 24
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->getMPanelAppeared()Z

    .line 30
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 36
    iget-object v0, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 38
    if-eqz v0, :cond_0

    .line 40
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->isShowingDetail()Z

    .line 42
    move-result v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    move v0, v2

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move v0, v1

    .line 50
    :goto_0
    if-nez v0, :cond_1

    .line 51
    move v1, v2

    .line 53
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mShowDismissView:Z

    .line 54
    if-eq v1, v0, :cond_2

    .line 56
    iput-boolean v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mShowDismissView:Z

    .line 58
    new-instance v0, Lcom/miui/utils/animation/OnAnimatorEndsListener;

    .line 60
    new-instance v3, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$updateDismissView$listener$1;

    .line 62
    invoke-direct {v3, p0, v1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$updateDismissView$listener$1;-><init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;Z)V

    .line 64
    invoke-direct {v0, v3}, Lcom/miui/utils/animation/OnAnimatorEndsListener;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 67
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mDismissView:Lcom/android/systemui/statusbar/views/DismissView;

    .line 70
    if-eqz p0, :cond_2

    .line 72
    sget-object v3, Lcom/android/systemui/statusbar/notification/stack/PanelAppearDisappearEvent;->INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    .line 74
    invoke-static {p0, v1, v0, v2}, Lcom/android/systemui/statusbar/notification/stack/PanelAppearDisappearEvent$Companion;->animateAppearDisappear$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(Lcom/android/systemui/statusbar/views/DismissView;ZLcom/miui/utils/animation/OnAnimatorEndsListener;Z)V

    .line 76
    :cond_2
    return-void
    .line 79
.end method

.method public final updateExpansionAndVisibility()V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isExpanded()Z

    .line 4
    move-result v1

    .line 7
    iget-boolean v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTracking:Z

    .line 8
    iget v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpansionDragDownAmountPx:F

    .line 10
    iget-object v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    .line 12
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 17
    move-result v5

    .line 20
    const/4 v6, 0x1

    .line 21
    xor-int/2addr v5, v6

    .line 22
    if-eqz v5, :cond_8

    .line 23
    iget v5, v4, Lcom/android/systemui/shade/ShadeExpansionStateManager;->state:I

    .line 25
    iput v0, v4, Lcom/android/systemui/shade/ShadeExpansionStateManager;->fraction:F

    .line 27
    iput-boolean v1, v4, Lcom/android/systemui/shade/ShadeExpansionStateManager;->expanded:Z

    .line 29
    iput-boolean v2, v4, Lcom/android/systemui/shade/ShadeExpansionStateManager;->tracking:Z

    .line 31
    iput v3, v4, Lcom/android/systemui/shade/ShadeExpansionStateManager;->dragDownPxAmount:F

    .line 33
    const/4 v7, 0x0

    .line 35
    if-eqz v1, :cond_2

    .line 36
    if-nez v5, :cond_0

    .line 38
    invoke-virtual {v4, v6}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->updateStateInternal(I)V

    .line 40
    :cond_0
    const/high16 v8, 0x3f800000    # 1.0f

    .line 43
    cmpl-float v8, v0, v8

    .line 45
    if-ltz v8, :cond_1

    .line 47
    move v8, v6

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move v8, v7

    .line 51
    :goto_0
    move v9, v7

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    move v9, v6

    .line 54
    move v8, v7

    .line 55
    :goto_1
    if-eqz v8, :cond_3

    .line 56
    if-nez v2, :cond_3

    .line 58
    const/4 v8, 0x2

    .line 60
    invoke-virtual {v4, v8}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->updateStateInternal(I)V

    .line 61
    goto :goto_2

    .line 64
    :cond_3
    if-eqz v9, :cond_4

    .line 65
    if-nez v2, :cond_4

    .line 67
    iget v8, v4, Lcom/android/systemui/shade/ShadeExpansionStateManager;->state:I

    .line 69
    if-eqz v8, :cond_4

    .line 71
    invoke-virtual {v4, v7}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->updateStateInternal(I)V

    .line 73
    :cond_4
    :goto_2
    invoke-static {v5}, Lcom/android/systemui/shade/ShadeExpansionStateManagerKt;->panelStateToString(I)Ljava/lang/String;

    .line 76
    iget v8, v4, Lcom/android/systemui/shade/ShadeExpansionStateManager;->state:I

    .line 79
    invoke-static {v8}, Lcom/android/systemui/shade/ShadeExpansionStateManagerKt;->panelStateToString(I)Ljava/lang/String;

    .line 81
    const-wide/16 v8, 0x1000

    .line 84
    invoke-static {v8, v9}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 86
    move-result v10

    .line 89
    if-eqz v10, :cond_5

    .line 90
    const/16 v10, 0x64

    .line 92
    int-to-float v10, v10

    .line 94
    mul-float/2addr v10, v0

    .line 95
    float-to-int v10, v10

    .line 96
    const-string v11, "panel_expansion"

    .line 97
    invoke-static {v8, v9, v11, v10}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 99
    iget v10, v4, Lcom/android/systemui/shade/ShadeExpansionStateManager;->state:I

    .line 102
    if-eq v10, v5, :cond_5

    .line 104
    const-string v5, "ShadeExpansionState"

    .line 106
    invoke-static {v8, v9, v5, v7}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 108
    iget v10, v4, Lcom/android/systemui/shade/ShadeExpansionStateManager;->state:I

    .line 111
    invoke-static {v10}, Lcom/android/systemui/shade/ShadeExpansionStateManagerKt;->panelStateToString(I)Ljava/lang/String;

    .line 113
    move-result-object v10

    .line 116
    invoke-static {v8, v9, v5, v10, v7}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 117
    :cond_5
    new-instance v5, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    .line 120
    invoke-direct {v5, v0, v3, v1, v2}, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;-><init>(FFZZ)V

    .line 122
    iget-object v0, v4, Lcom/android/systemui/shade/ShadeExpansionStateManager;->expansionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 125
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 127
    move-result-object v0

    .line 130
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    move-result v1

    .line 134
    if-eqz v1, :cond_6

    .line 135
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    move-result-object v1

    .line 140
    check-cast v1, Lcom/android/systemui/shade/ShadeExpansionListener;

    .line 141
    invoke-interface {v1, v5}, Lcom/android/systemui/shade/ShadeExpansionListener;->onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V

    .line 143
    goto :goto_3

    .line 146
    :cond_6
    invoke-virtual {p0, v6}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateVisibility(Z)V

    .line 147
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->getMPanelAppeared()Z

    .line 150
    move-result v0

    .line 153
    if-nez v0, :cond_7

    .line 154
    invoke-super {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->calculateNotificationsTopPadding()F

    .line 156
    move-result v0

    .line 159
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateScrollerTopPadding(F)V

    .line 160
    :cond_7
    invoke-virtual {p0, v7}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateKeyguardElementsExpansion(Z)V

    .line 163
    return-void

    .line 166
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 167
    const-string v0, "fraction cannot be NaN"

    .line 169
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 171
    move-result-object v0

    .line 174
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 175
    throw p0
    .line 178
.end method

.method public final updateKeyguardBottomAreaAlpha()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsOcclusionTransitionRunning:Z

    .line 2
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 4
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    if-eqz v0, :cond_0

    .line 8
    goto :goto_1

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHintAnimationRunning:Z

    .line 11
    const/4 v3, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    move v0, v3

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const v0, 0x3f733333    # 0.95f

    .line 18
    :goto_0
    invoke-static {v0, v2, v3, v2, v2}, Landroid/util/MathUtils;->map(FFFFF)F

    .line 21
    move-result v0

    .line 24
    invoke-virtual {v1}, Lcom/android/systemui/shade/QuickSettingsController;->computeExpansionFraction()F

    .line 25
    move-result v3

    .line 28
    sub-float v3, v2, v3

    .line 29
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    .line 31
    move-result v0

    .line 34
    iget v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBottomAreaShadeAlpha:F

    .line 35
    mul-float/2addr v0, v3

    .line 37
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomAreaInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;

    .line 38
    iget-object v3, v3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    .line 40
    check-cast v3, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    .line 42
    iget-object v3, v3, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->_bottomAreaAlpha:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 44
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 46
    move-result-object v4

    .line 49
    invoke-virtual {v3, v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 50
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockIconViewController:Lcom/android/keyguard/LockIconViewController;

    .line 53
    iget-object v3, v3, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 55
    check-cast v3, Lcom/android/keyguard/LockIconView;

    .line 57
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 59
    :goto_1
    const/4 v0, 0x1

    .line 62
    int-to-float v0, v0

    .line 63
    invoke-virtual {v1}, Lcom/android/systemui/shade/QuickSettingsController;->computeExpansionFraction()F

    .line 64
    move-result v1

    .line 67
    sub-float/2addr v0, v1

    .line 68
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    .line 69
    move-result v0

    .line 72
    iget v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBottomAreaShadeAlpha:F

    .line 73
    mul-float/2addr v0, v1

    .line 75
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mMiuiKeyguardFaceUnlockView:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;

    .line 76
    if-nez p0, :cond_2

    .line 78
    goto :goto_2

    .line 80
    :cond_2
    invoke-virtual {p0, v0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->setAlpha(F)V

    .line 81
    :goto_2
    return-void
    .line 84
.end method

.method public final updateKeyguardElementsExpansion(Z)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardVisibility:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x6

    .line 5
    const/4 v3, 0x0

    .line 6
    const/high16 v4, 0x3f800000    # 1.0f

    .line 7
    const/4 v5, 0x0

    .line 9
    if-eqz v0, :cond_1e

    .line 10
    iget-boolean v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardBouncerShowing:Z

    .line 12
    const-wide/16 v6, 0x12c

    .line 14
    const/4 v8, 0x2

    .line 16
    const/4 v9, 0x1

    .line 17
    if-eqz v0, :cond_a

    .line 18
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardEditorHelper:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 20
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardEditorHelper;->isInEnterEditorMode()Z

    .line 22
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    invoke-virtual {p0, v1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateKeyguardElementsExpansionInternal(F)V

    .line 28
    :cond_0
    invoke-static {}, Lcom/miui/utils/configs/MiuiConfigs;->isLowEndDevice()Z

    .line 31
    move-result v10

    .line 34
    if-nez v10, :cond_8

    .line 35
    if-eqz v0, :cond_1

    .line 37
    iget-object v10, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 39
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 41
    move-result-object v10

    .line 44
    invoke-static {v10}, Lcom/miui/clock/utils/DeviceConfig;->supportBackgroundBlur(Landroid/content/Context;)Z

    .line 45
    move-result v10

    .line 48
    if-nez v10, :cond_1

    .line 49
    goto :goto_2

    .line 51
    :cond_1
    if-eqz p1, :cond_6

    .line 52
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mBouncerFractionAnimator:Landroid/animation/ValueAnimator;

    .line 54
    if-eqz p1, :cond_2

    .line 56
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 58
    :cond_2
    new-array p1, v8, [F

    .line 61
    iget v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardBouncerFraction:F

    .line 63
    aput v1, p1, v3

    .line 65
    aput v4, p1, v9

    .line 67
    invoke-static {p1}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 69
    move-result-object p1

    .line 72
    iput-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mBouncerFractionAnimator:Landroid/animation/ValueAnimator;

    .line 73
    if-nez p1, :cond_3

    .line 75
    goto :goto_0

    .line 77
    :cond_3
    sget-object v1, Lcom/android/app/animation/Interpolators;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    .line 78
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 80
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mBouncerFractionAnimator:Landroid/animation/ValueAnimator;

    .line 83
    if-nez p1, :cond_4

    .line 85
    goto :goto_1

    .line 87
    :cond_4
    invoke-virtual {p1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 88
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mBouncerFractionAnimator:Landroid/animation/ValueAnimator;

    .line 91
    if-eqz p1, :cond_5

    .line 93
    new-instance v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$updateKeyguardElementsExpansion$1;

    .line 95
    invoke-direct {v1, p0, v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$updateKeyguardElementsExpansion$1;-><init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;Z)V

    .line 97
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 100
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mBouncerFractionAnimator:Landroid/animation/ValueAnimator;

    .line 103
    if-eqz p0, :cond_20

    .line 105
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 107
    goto/16 :goto_a

    .line 110
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mBouncerFractionAnimator:Landroid/animation/ValueAnimator;

    .line 112
    if-eqz p1, :cond_7

    .line 114
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 116
    :cond_7
    iput-object v5, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mBouncerFractionAnimator:Landroid/animation/ValueAnimator;

    .line 119
    invoke-static {p0, v4, v3, v2}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setBouncerShowingFraction$default(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;FZI)V

    .line 121
    goto/16 :goto_a

    .line 124
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mBouncerFractionAnimator:Landroid/animation/ValueAnimator;

    .line 126
    if-eqz p1, :cond_9

    .line 128
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 130
    :cond_9
    iput-object v5, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mBouncerFractionAnimator:Landroid/animation/ValueAnimator;

    .line 133
    invoke-static {p0, v1, v3, v2}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setBouncerShowingFraction$default(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;FZI)V

    .line 135
    goto/16 :goto_a

    .line 138
    :cond_a
    iget-boolean v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mIsDefaultTheme:Z

    .line 140
    if-eqz v0, :cond_19

    .line 142
    if-eqz p1, :cond_12

    .line 144
    invoke-static {}, Lcom/miui/utils/configs/MiuiConfigs;->isLowEndDevice()Z

    .line 146
    move-result p1

    .line 149
    if-nez p1, :cond_10

    .line 150
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardEditorHelper:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 152
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardEditorHelper;->isInEnterAndExitEditorMode()Z

    .line 154
    move-result p1

    .line 157
    if-eqz p1, :cond_b

    .line 158
    goto :goto_5

    .line 160
    :cond_b
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mBouncerFractionAnimator:Landroid/animation/ValueAnimator;

    .line 161
    if-eqz p1, :cond_c

    .line 163
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 165
    :cond_c
    new-array p1, v8, [F

    .line 168
    iget v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardBouncerFraction:F

    .line 170
    aput v0, p1, v3

    .line 172
    aput v1, p1, v9

    .line 174
    invoke-static {p1}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 176
    move-result-object p1

    .line 179
    iput-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mBouncerFractionAnimator:Landroid/animation/ValueAnimator;

    .line 180
    if-nez p1, :cond_d

    .line 182
    goto :goto_3

    .line 184
    :cond_d
    sget-object v0, Lcom/android/app/animation/Interpolators;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    .line 185
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 187
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mBouncerFractionAnimator:Landroid/animation/ValueAnimator;

    .line 190
    if-nez p1, :cond_e

    .line 192
    goto :goto_4

    .line 194
    :cond_e
    invoke-virtual {p1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 195
    :goto_4
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mBouncerFractionAnimator:Landroid/animation/ValueAnimator;

    .line 198
    if-eqz p1, :cond_f

    .line 200
    new-instance v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$1;

    .line 202
    const/16 v1, 0xb

    .line 204
    invoke-direct {v0, v1, p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$1;-><init>(ILjava/lang/Object;)V

    .line 206
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 209
    :cond_f
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mBouncerFractionAnimator:Landroid/animation/ValueAnimator;

    .line 212
    if-eqz p0, :cond_20

    .line 214
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 216
    goto/16 :goto_a

    .line 219
    :cond_10
    :goto_5
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mBouncerFractionAnimator:Landroid/animation/ValueAnimator;

    .line 221
    if-eqz p1, :cond_11

    .line 223
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 225
    :cond_11
    iput-object v5, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mBouncerFractionAnimator:Landroid/animation/ValueAnimator;

    .line 228
    invoke-static {p0, v1, v3, v2}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setBouncerShowingFraction$default(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;FZI)V

    .line 230
    invoke-virtual {p0, v4}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateKeyguardElementsExpansionInternal(F)V

    .line 233
    goto/16 :goto_a

    .line 236
    :cond_12
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isOnKeyguard()Z

    .line 238
    move-result p1

    .line 241
    if-eqz p1, :cond_14

    .line 242
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->quickSettingsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 244
    iget-boolean p1, p1, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 246
    if-nez p1, :cond_14

    .line 248
    iget-boolean p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->isGoingToDismissKeyguard:Z

    .line 250
    if-nez p1, :cond_14

    .line 252
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 254
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsSwipingUp:Z

    .line 256
    if-nez p1, :cond_13

    .line 258
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFlinging()Z

    .line 260
    move-result p1

    .line 263
    if-eqz p1, :cond_14

    .line 264
    :cond_13
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardCommonSettingObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 266
    iget p1, p1, Lcom/android/keyguard/KeyguardCommonSettingObserver;->mMiuiWallpaperContentState:I

    .line 268
    if-ne p1, v9, :cond_14

    .line 270
    const-class p1, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 272
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 274
    move-result-object p1

    .line 277
    check-cast p1, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 278
    iget-boolean p1, p1, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mUseWallpaperBlur:Z

    .line 280
    if-eqz p1, :cond_14

    .line 282
    move p1, v9

    .line 284
    goto :goto_6

    .line 285
    :cond_14
    move p1, v3

    .line 286
    :goto_6
    if-nez p1, :cond_16

    .line 287
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isOnKeyguard()Z

    .line 289
    move-result p1

    .line 292
    if-eqz p1, :cond_18

    .line 293
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->quickSettingsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 295
    iget-boolean p1, p1, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 297
    if-nez p1, :cond_18

    .line 299
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFlinging()Z

    .line 301
    move-result p1

    .line 304
    if-nez p1, :cond_18

    .line 305
    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    .line 307
    cmpg-float p1, p1, v4

    .line 309
    if-nez p1, :cond_15

    .line 311
    move p1, v9

    .line 313
    goto :goto_7

    .line 314
    :cond_15
    move p1, v3

    .line 315
    :goto_7
    if-eqz p1, :cond_18

    .line 316
    :cond_16
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mBouncerFractionAnimator:Landroid/animation/ValueAnimator;

    .line 318
    if-eqz p1, :cond_17

    .line 320
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 322
    :cond_17
    iput-object v5, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mBouncerFractionAnimator:Landroid/animation/ValueAnimator;

    .line 325
    int-to-float p1, v9

    .line 327
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    .line 328
    sub-float/2addr p1, v0

    .line 330
    invoke-static {p0, p1, v3, v2}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setBouncerShowingFraction$default(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;FZI)V

    .line 331
    :cond_18
    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    .line 334
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateKeyguardElementsExpansionInternal(F)V

    .line 336
    goto :goto_a

    .line 339
    :cond_19
    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    .line 340
    cmpg-float v0, p1, v1

    .line 342
    if-nez v0, :cond_1a

    .line 344
    move v0, v9

    .line 346
    goto :goto_8

    .line 347
    :cond_1a
    move v0, v3

    .line 348
    :goto_8
    if-nez v0, :cond_1c

    .line 349
    cmpg-float p1, p1, v4

    .line 351
    if-nez p1, :cond_1b

    .line 353
    goto :goto_9

    .line 355
    :cond_1b
    move v9, v3

    .line 356
    :goto_9
    if-eqz v9, :cond_20

    .line 357
    :cond_1c
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mBouncerFractionAnimator:Landroid/animation/ValueAnimator;

    .line 359
    if-eqz p1, :cond_1d

    .line 361
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 363
    :cond_1d
    iput-object v5, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mBouncerFractionAnimator:Landroid/animation/ValueAnimator;

    .line 366
    invoke-static {p0, v1, v3, v2}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setBouncerShowingFraction$default(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;FZI)V

    .line 368
    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    .line 371
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateKeyguardElementsExpansionInternal(F)V

    .line 373
    goto :goto_a

    .line 376
    :cond_1e
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mBouncerFractionAnimator:Landroid/animation/ValueAnimator;

    .line 377
    if-eqz p1, :cond_1f

    .line 379
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 381
    :cond_1f
    iput-object v5, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mBouncerFractionAnimator:Landroid/animation/ValueAnimator;

    .line 384
    invoke-static {p0, v1, v3, v2}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setBouncerShowingFraction$default(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;FZI)V

    .line 386
    invoke-virtual {p0, v4}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateKeyguardElementsExpansionInternal(F)V

    .line 389
    :cond_20
    :goto_a
    return-void
    .line 392
.end method

.method public final updateKeyguardElementsExpansionInternal(F)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    int-to-float v1, v0

    .line 3
    sub-float v2, v1, p1

    .line 4
    const/high16 v3, 0x3f800000    # 1.0f

    .line 6
    div-float v4, v2, v3

    .line 8
    cmpl-float v5, v4, v3

    .line 10
    if-lez v5, :cond_0

    .line 12
    move v4, v3

    .line 14
    :cond_0
    mul-float v5, v4, v4

    .line 15
    mul-float v6, v5, v4

    .line 17
    const/4 v7, 0x3

    .line 19
    int-to-float v7, v7

    .line 20
    div-float/2addr v6, v7

    .line 21
    sub-float/2addr v6, v5

    .line 22
    add-float/2addr v6, v4

    .line 23
    mul-float/2addr v6, v3

    .line 24
    const v4, 0x3e99999a    # 0.3f

    .line 25
    mul-float/2addr v6, v4

    .line 28
    sub-float/2addr v1, v6

    .line 29
    int-to-double v4, v0

    .line 30
    float-to-double v6, v2

    .line 31
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 32
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 34
    move-result-wide v6

    .line 37
    sub-double/2addr v4, v6

    .line 38
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 39
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(DD)D

    .line 41
    move-result-wide v4

    .line 44
    double-to-float v2, v4

    .line 45
    const/4 v4, 0x0

    .line 46
    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    .line 47
    move-result v2

    .line 50
    add-float/2addr v2, p1

    .line 51
    const/4 p1, 0x2

    .line 52
    int-to-float p1, p1

    .line 53
    div-float/2addr v2, p1

    .line 54
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardCommonSettingObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 55
    iget-boolean p1, p1, Lcom/android/keyguard/KeyguardCommonSettingObserver;->isLinkageState:Z

    .line 57
    if-eqz p1, :cond_1

    .line 59
    iget-boolean p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mInteractive:Z

    .line 61
    if-nez p1, :cond_1

    .line 63
    goto :goto_0

    .line 65
    :cond_1
    move v4, v2

    .line 66
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardInfoLayer:Landroid/widget/FrameLayout;

    .line 67
    invoke-static {p1, v1, v4}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->doScaleAndAlpha(Landroid/view/View;FF)V

    .line 69
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardSignatureLayer:Landroid/widget/FrameLayout;

    .line 72
    invoke-static {p1, v1, v4}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->doScaleAndAlpha(Landroid/view/View;FF)V

    .line 74
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardPanelViewInjector:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 77
    iget-object p1, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mDoodleTextView:Lcom/miui/keyguardtemplate/doodle/DoodleView;

    .line 79
    invoke-static {p1, v3, v4}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->doScaleAndAlpha(Landroid/view/View;FF)V

    .line 81
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardPanelViewInjector:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 84
    iget-object p1, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mColorRibbonsContainer:Lcom/android/keyguard/widget/ColorRibbonsContainer;

    .line 86
    invoke-static {p1, v3, v4}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->doScaleAndAlpha(Landroid/view/View;FF)V

    .line 88
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardClockInjector:Lcom/android/keyguard/injector/KeyguardClockInjector;

    .line 91
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardClockInjector;->mKeyguardClockView:Lcom/android/keyguard/clock/KeyguardClockContainer;

    .line 93
    if-eqz p0, :cond_2

    .line 95
    iget-boolean p1, p0, Lcom/android/keyguard/clock/KeyguardClockContainer;->mClockCanScale:Z

    .line 97
    if-nez p1, :cond_2

    .line 99
    goto :goto_1

    .line 101
    :cond_2
    const/4 v0, 0x0

    .line 102
    :goto_1
    if-nez v0, :cond_3

    .line 103
    move v3, v1

    .line 105
    :cond_3
    invoke-static {p0, v3, v2}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->doScaleAndAlpha(Landroid/view/View;FF)V

    .line 106
    return-void
    .line 109
.end method

.method public final updateMiuiResources()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 11
    const v1, 0x7f070db6    # @dimen/notification_left_right_margin '0.0dp'

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 15
    move-result v0

    .line 18
    const v1, 0x7f070fdf    # @dimen/qs_panel_width '@dimen/notification_panel_width'

    .line 19
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mResources:Landroid/content/res/Resources;

    .line 22
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 24
    move-result v1

    .line 27
    iget-object v3, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mQsFrame:Landroid/widget/FrameLayout;

    .line 28
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 30
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 33
    move-result-object v3

    .line 36
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 37
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 39
    const/4 v5, 0x0

    .line 41
    const/4 v6, 0x1

    .line 42
    if-eq v4, v0, :cond_0

    .line 43
    move v4, v6

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move v4, v5

    .line 47
    :goto_0
    if-eqz v4, :cond_1

    .line 48
    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 50
    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 52
    :cond_1
    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 54
    if-eq v7, v1, :cond_2

    .line 56
    move v5, v6

    .line 58
    :cond_2
    if-eqz v5, :cond_3

    .line 59
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 61
    :cond_3
    if-nez v4, :cond_4

    .line 63
    if-eqz v5, :cond_5

    .line 65
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mQsFrame:Landroid/widget/FrameLayout;

    .line 67
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 69
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    :cond_5
    iget v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mBarState:I

    .line 75
    if-ne v1, v6, :cond_6

    .line 77
    const v1, 0x7f070de2    # @dimen/notification_panel_width_lockscreen '@dimen/match_parent'

    .line 79
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 82
    move-result v1

    .line 85
    goto :goto_1

    .line 86
    :cond_6
    const v1, 0x7f070de1    # @dimen/notification_panel_width '@dimen/match_parent'

    .line 87
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 90
    move-result v1

    .line 93
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 94
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 96
    move-result-object v2

    .line 99
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 100
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 102
    if-ne v3, v0, :cond_7

    .line 104
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 106
    if-eq v3, v1, :cond_8

    .line 108
    :cond_7
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 110
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 112
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 114
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 116
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    :cond_8
    return-void
    .line 121
.end method

.method public final updateNotificationStackScrollerVisibility()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isOnKeyguard()Z

    .line 4
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    iget-boolean v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mIsDefaultTheme:Z

    .line 10
    if-nez v1, :cond_0

    .line 12
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 14
    iget-boolean v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mTracking:Z

    .line 16
    if-nez v1, :cond_0

    .line 18
    iget-boolean p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 20
    if-nez p0, :cond_0

    .line 22
    const/4 p0, 0x4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 27
    return-void
    .line 30
.end method

.method public final updateNotificationState$1()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getVisibleNotificationCount()I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    move v0, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v2

    .line 14
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isOnKeyguard()Z

    .line 15
    move-result v3

    .line 18
    if-eqz v3, :cond_a

    .line 19
    iput-boolean v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->hasNotificationOnKeyguard:Z

    .line 21
    iget-object v3, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardPanelViewInjector:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 23
    iput-boolean v0, v3, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mHasNotification:Z

    .line 25
    sget-boolean v4, Lcom/miui/utils/configs/MiuiConfigs;->IS_FOLD:Z

    .line 27
    if-eqz v4, :cond_1

    .line 29
    invoke-virtual {v3}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->updateShowDepthState()V

    .line 31
    :cond_1
    const-class v3, Lcom/android/keyguard/injector/KeyguardClockInjector;

    .line 34
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    move-result-object v3

    .line 39
    check-cast v3, Lcom/android/keyguard/injector/KeyguardClockInjector;

    .line 40
    iget-object v3, v3, Lcom/android/keyguard/injector/KeyguardClockInjector;->mKeyguardClockView:Lcom/android/keyguard/clock/KeyguardClockContainer;

    .line 42
    if-eqz v3, :cond_2

    .line 44
    invoke-virtual {v3}, Lcom/android/keyguard/clock/KeyguardClockContainer;->getMHasNotification()Z

    .line 46
    move-result v4

    .line 49
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 50
    move-result-object v4

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    const/4 v4, 0x0

    .line 55
    :goto_1
    if-eqz v3, :cond_3

    .line 56
    iput-boolean v0, v3, Lcom/android/keyguard/clock/KeyguardClockContainer;->mHasNotification:Z

    .line 58
    iget-object v3, v3, Lcom/android/keyguard/clock/KeyguardClockContainer;->mAnimationHelper:Lcom/android/keyguard/clock/animation/AnimationHelper;

    .line 60
    if-eqz v3, :cond_3

    .line 62
    invoke-virtual {v3, v0, v1}, Lcom/android/keyguard/clock/animation/AnimationHelper;->doAnimationToNotification(ZZ)V

    .line 64
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardEditorHelper:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 67
    iput-boolean v0, v3, Lcom/android/keyguard/KeyguardEditorHelper;->mHasNotification:Z

    .line 69
    const/high16 v3, 0x3f800000    # 1.0f

    .line 71
    const/4 v5, 0x0

    .line 73
    if-nez v0, :cond_5

    .line 74
    iget-object v6, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->quickSettingsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 76
    iget-boolean v6, v6, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 78
    if-eqz v6, :cond_4

    .line 80
    goto :goto_2

    .line 82
    :cond_4
    move v6, v3

    .line 83
    goto :goto_3

    .line 84
    :cond_5
    :goto_2
    move v6, v5

    .line 85
    :goto_3
    iget-object v7, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardSignatureLayerAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 86
    if-eqz v7, :cond_6

    .line 88
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->cancel()V

    .line 90
    :cond_6
    const/4 v7, 0x2

    .line 93
    new-array v8, v7, [F

    .line 94
    iget-object v9, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardSignatureLayer:Landroid/widget/FrameLayout;

    .line 96
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 98
    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getAlpha()F

    .line 101
    move-result v9

    .line 104
    aput v9, v8, v2

    .line 105
    aput v6, v8, v1

    .line 107
    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 109
    move-result-object v6

    .line 112
    const-wide/16 v8, 0x96

    .line 113
    invoke-virtual {v6, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 115
    move-result-object v6

    .line 118
    iput-object v6, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardSignatureLayerAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 119
    if-eqz v6, :cond_7

    .line 121
    new-instance v8, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$1;

    .line 123
    invoke-direct {v8, v7, p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$1;-><init>(ILjava/lang/Object;)V

    .line 125
    invoke-virtual {v6, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 128
    :cond_7
    iget-object v6, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardSignatureLayerAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 131
    if-eqz v6, :cond_8

    .line 133
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    .line 135
    :cond_8
    iget-object v6, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardCommonSettingObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 138
    iget-boolean v6, v6, Lcom/android/keyguard/KeyguardCommonSettingObserver;->isLinkageState:Z

    .line 140
    if-eqz v6, :cond_a

    .line 142
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 144
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 147
    move-result v4

    .line 150
    if-nez v4, :cond_9

    .line 151
    if-eqz v0, :cond_9

    .line 153
    goto :goto_4

    .line 155
    :cond_9
    move v1, v2

    .line 156
    :goto_4
    iget-boolean v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mInteractive:Z

    .line 157
    if-eqz v0, :cond_a

    .line 159
    if-eqz v1, :cond_a

    .line 161
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 163
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 165
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 168
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 170
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    .line 172
    move-result v1

    .line 175
    div-int/lit8 v1, v1, 0x8

    .line 176
    int-to-float v1, v1

    .line 178
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    .line 179
    iput-boolean v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsNeedUpdateTranslucency:Z

    .line 182
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 184
    const-string v1, "linkageState"

    .line 186
    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 188
    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 191
    new-array v4, v2, [J

    .line 193
    invoke-virtual {v0, v1, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    .line 195
    move-result-object v0

    .line 198
    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 199
    new-array v3, v2, [J

    .line 201
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;I[J)Lmiuix/animation/controller/AnimState;

    .line 203
    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 207
    filled-new-array {v1}, [Landroid/view/View;

    .line 209
    move-result-object v1

    .line 212
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 213
    move-result-object v1

    .line 216
    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 217
    move-result-object v1

    .line 220
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    .line 221
    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 223
    iget-object v3, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->showEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 226
    invoke-virtual {v2, v3}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 228
    move-result-object v2

    .line 231
    const-wide/16 v3, 0x50

    .line 232
    invoke-virtual {v2, v3, v4}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    .line 234
    move-result-object v2

    .line 237
    new-instance v3, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$linkageViewAnim$1;

    .line 238
    const/4 v4, 0x4

    .line 240
    invoke-direct {v3, v4, p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$linkageViewAnim$1;-><init>(ILjava/lang/Object;)V

    .line 241
    filled-new-array {v3}, [Lmiuix/animation/listener/TransitionListener;

    .line 244
    move-result-object v3

    .line 247
    invoke-virtual {v2, v3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 248
    move-result-object v2

    .line 251
    filled-new-array {v2}, [Lmiuix/animation/base/AnimConfig;

    .line 252
    move-result-object v2

    .line 255
    invoke-interface {v1, v0, v2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 256
    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateDismissView()V

    .line 259
    return-void
    .line 262
.end method

.method public final updatePanelExpanded()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelExpanded:Z

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 4
    move-result v1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    iget-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpectingSynthesizedDown:Z

    .line 10
    if-eqz v1, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 17
    :goto_1
    iget-boolean v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelExpanded:Z

    .line 18
    if-eq v2, v1, :cond_3

    .line 20
    iput-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelExpanded:Z

    .line 22
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    .line 24
    iput-boolean v1, v2, Lcom/android/systemui/shade/ShadeExpansionStateManager;->expanded:Z

    .line 26
    sget v3, Lcom/android/systemui/shade/ShadeExpansionStateManagerKt;->$r8$clinit:I

    .line 28
    iget-object v2, v2, Lcom/android/systemui/shade/ShadeExpansionStateManager;->fullExpansionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 30
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 32
    move-result-object v2

    .line 35
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    move-result v3

    .line 39
    if-eqz v3, :cond_2

    .line 40
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    move-result-object v3

    .line 45
    check-cast v3, Lcom/android/systemui/shade/ShadeFullExpansionListener;

    .line 46
    invoke-interface {v3, v1}, Lcom/android/systemui/shade/ShadeFullExpansionListener;->onShadeExpansionFullyChanged(Z)V

    .line 48
    goto :goto_2

    .line 51
    :cond_2
    if-nez v1, :cond_3

    .line 52
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 54
    iget-object v1, v1, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 56
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->closeCustomizer()V

    .line 58
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelExpanded:Z

    .line 61
    if-eq v1, v0, :cond_4

    .line 63
    const-class v0, Lcom/miui/systemui/functions/PanelExpansionObserver;

    .line 65
    invoke-static {v0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 67
    move-result-object v0

    .line 70
    check-cast v0, Lcom/miui/systemui/functions/PanelExpansionObserver;

    .line 71
    iget-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelExpanded:Z

    .line 73
    invoke-virtual {v0, v1}, Lcom/miui/systemui/functions/PanelExpansionObserver;->dispatchPanelExpansionChanged(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateDismissView()V

    .line 78
    :cond_4
    return-void
    .line 81
.end method

.method public final updatePanelView()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardPanelViewInjector:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 2
    iget-object v0, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mLockScreenMagazineController:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 4
    if-nez v0, :cond_0

    .line 6
    const/4 v0, 0x0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->reset()V

    .line 9
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardPanelViewInjector:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 12
    invoke-virtual {v0}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->initScreenSize()V

    .line 14
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardPanelViewInjector:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 17
    iget-object v0, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardMoveHelper:Lcom/android/keyguard/KeyguardMoveHelper;

    .line 19
    if-eqz v0, :cond_2

    .line 21
    iget v1, v0, Lcom/android/keyguard/KeyguardMoveHelper;->mCurrentScreen:I

    .line 23
    const/4 v2, 0x0

    .line 25
    if-nez v1, :cond_1

    .line 26
    invoke-virtual {v0, v2, v2, v2}, Lcom/android/keyguard/KeyguardMoveHelper;->reset(ZZZ)V

    .line 28
    goto :goto_0

    .line 31
    :cond_1
    const/4 v3, 0x1

    .line 32
    if-ne v1, v3, :cond_2

    .line 33
    invoke-virtual {v0, v2, v3, v3}, Lcom/android/keyguard/KeyguardMoveHelper;->reset(ZZZ)V

    .line 35
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardClockInjector:Lcom/android/keyguard/injector/KeyguardClockInjector;

    .line 38
    iget-object v0, v0, Lcom/android/keyguard/injector/KeyguardClockInjector;->mKeyguardClockView:Lcom/android/keyguard/clock/KeyguardClockContainer;

    .line 40
    if-eqz v0, :cond_3

    .line 42
    invoke-virtual {v0}, Lcom/android/keyguard/clock/KeyguardClockContainer;->updateTimeViewByConfigChange()V

    .line 44
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->refreshNssCoveringQs()V

    .line 47
    return-void
    .line 50
.end method

.method public final updatePostBuildList()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mBgBlurRadius:I

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/16 v2, 0x64

    .line 7
    if-ne v0, v2, :cond_3

    .line 9
    :cond_0
    iget v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mSpringLength:F

    .line 11
    const/4 v2, 0x0

    .line 13
    cmpg-float v0, v0, v2

    .line 14
    const/4 v2, 0x0

    .line 16
    if-nez v0, :cond_1

    .line 17
    move v0, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move v0, v2

    .line 21
    :goto_0
    if-nez v0, :cond_2

    .line 22
    goto :goto_1

    .line 24
    :cond_2
    move v1, v2

    .line 25
    :cond_3
    :goto_1
    const-wide/16 v2, 0x1000

    .line 26
    const-string v0, "postBuildList"

    .line 28
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 30
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->pipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 33
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mShadeListBuilder:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;

    .line 35
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPostBuildList:Z

    .line 37
    return-void
    .line 39
.end method

.method public final updateResources()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mResources:Landroid/content/res/Resources;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/util/LargeScreenUtils;->shouldUseSplitNotificationShade(Landroid/content/res/Resources;)Z

    .line 4
    move-result v1

    .line 7
    iget-boolean v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSplitShadeEnabled:Z

    .line 8
    const/4 v3, 0x0

    .line 10
    if-eq v2, v1, :cond_0

    .line 11
    const/4 v2, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v2, v3

    .line 15
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSplitShadeEnabled:Z

    .line 16
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 18
    iget-object v4, v1, Lcom/android/systemui/shade/QuickSettingsController;->mResources:Landroid/content/res/Resources;

    .line 20
    invoke-static {v4}, Lcom/android/systemui/util/LargeScreenUtils;->shouldUseSplitNotificationShade(Landroid/content/res/Resources;)Z

    .line 22
    move-result v5

    .line 25
    iput-boolean v5, v1, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 26
    iget-object v6, v1, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 28
    if-eqz v6, :cond_1

    .line 30
    invoke-interface {v6, v5}, Lcom/android/systemui/plugins/qs/QS;->setInSplitShade(Z)V

    .line 32
    :cond_1
    const v5, 0x7f0710c4    # @dimen/split_shade_notifications_scrim_margin_bottom '0.0dp'

    .line 35
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 38
    move-result v5

    .line 41
    iput v5, v1, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeNotificationsScrimMarginBottom:I

    .line 42
    iget-object v5, v1, Lcom/android/systemui/shade/QuickSettingsController;->mPanelView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 44
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 46
    move-result-object v6

    .line 49
    invoke-static {v6}, Lcom/android/systemui/util/LargeScreenUtils;->shouldUseLargeScreenShadeHeader(Landroid/content/res/Resources;)Z

    .line 50
    move-result v6

    .line 53
    iput-boolean v6, v1, Lcom/android/systemui/shade/QuickSettingsController;->mUseLargeScreenShadeHeader:Z

    .line 54
    const v6, 0x7f0704c6    # @dimen/large_screen_shade_header_height '48.0dp'

    .line 56
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 59
    move-result v6

    .line 62
    iput v6, v1, Lcom/android/systemui/shade/QuickSettingsController;->mLargeScreenShadeHeaderHeight:I

    .line 63
    iget-boolean v7, v1, Lcom/android/systemui/shade/QuickSettingsController;->mUseLargeScreenShadeHeader:Z

    .line 65
    if-eqz v7, :cond_2

    .line 67
    goto :goto_1

    .line 69
    :cond_2
    const v6, 0x7f070dd9    # @dimen/notification_panel_margin_top '0.0dp'

    .line 70
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 73
    move-result v6

    .line 76
    :goto_1
    iget-boolean v7, v1, Lcom/android/systemui/shade/QuickSettingsController;->mUseLargeScreenShadeHeader:Z

    .line 77
    iget-object v8, v1, Lcom/android/systemui/shade/QuickSettingsController;->mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    .line 79
    iget-boolean v9, v8, Lcom/android/systemui/shade/ShadeHeaderController;->largeScreenActive:Z

    .line 81
    if-ne v9, v7, :cond_3

    .line 83
    goto :goto_2

    .line 85
    :cond_3
    iput-boolean v7, v8, Lcom/android/systemui/shade/ShadeHeaderController;->largeScreenActive:Z

    .line 86
    invoke-virtual {v8}, Lcom/android/systemui/shade/ShadeHeaderController;->updateTransition()V

    .line 88
    :goto_2
    iget-object v7, v1, Lcom/android/systemui/shade/QuickSettingsController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 91
    iput v6, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTopMargin:I

    .line 93
    iget v6, v1, Lcom/android/systemui/shade/QuickSettingsController;->mLargeScreenShadeHeaderHeight:I

    .line 95
    int-to-float v6, v6

    .line 97
    iput v6, v1, Lcom/android/systemui/shade/QuickSettingsController;->mQuickQsHeaderHeight:F

    .line 98
    const v6, 0x7f05009b    # @bool/qs_enable_clipping 'true'

    .line 100
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 103
    move-result v4

    .line 106
    iput-boolean v4, v1, Lcom/android/systemui/shade/QuickSettingsController;->mEnableClipping:Z

    .line 107
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 109
    move-result-object v4

    .line 112
    const-class v5, Landroid/view/WindowManager;

    .line 113
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 115
    move-result-object v4

    .line 118
    check-cast v4, Landroid/view/WindowManager;

    .line 119
    invoke-interface {v4}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    .line 121
    move-result-object v4

    .line 124
    invoke-virtual {v4}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    .line 125
    move-result-object v4

    .line 128
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    .line 129
    move-result v5

    .line 132
    invoke-virtual {v4, v5}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 133
    move-result-object v4

    .line 136
    iput-object v4, v1, Lcom/android/systemui/shade/QuickSettingsController;->mCachedGestureInsets:Landroid/graphics/Insets;

    .line 137
    iget-object v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationsQSContainerController:Lcom/android/systemui/shade/NotificationsQSContainerController;

    .line 139
    invoke-virtual {v4}, Lcom/android/systemui/shade/NotificationsQSContainerController;->updateResources()V

    .line 141
    invoke-virtual {p0, v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateKeyguardStatusViewAlignment(Z)V

    .line 144
    iget-object v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardMediaController:Lcom/android/systemui/media/controls/ui/KeyguardMediaController;

    .line 147
    invoke-virtual {v4}, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->refreshMediaPosition()V

    .line 149
    if-eqz v2, :cond_7

    .line 152
    iget-boolean v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSplitShadeEnabled:Z

    .line 154
    iget-object v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 156
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    sget-object v5, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 161
    sget-object v6, Lcom/android/systemui/shade/ShadeLogger$logSplitShadeChanged$2;->INSTANCE:Lcom/android/systemui/shade/ShadeLogger$logSplitShadeChanged$2;

    .line 163
    const/4 v7, 0x0

    .line 165
    iget-object v4, v4, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 166
    const-string/jumbo v8, "systemui.shade"

    .line 168
    invoke-virtual {v4, v8, v5, v6, v7}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 171
    move-result-object v5

    .line 174
    invoke-interface {v5, v2}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 175
    invoke-virtual {v4, v5}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 178
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    .line 181
    iget-boolean v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSplitShadeEnabled:Z

    .line 183
    invoke-virtual {v2, v4}, Lcom/android/keyguard/KeyguardStatusViewController;->setSplitShadeEnabled(Z)V

    .line 185
    iget-object v2, v1, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 188
    if-eqz v2, :cond_4

    .line 190
    invoke-interface {v2, v3}, Lcom/android/systemui/plugins/qs/QS;->setOverScrollAmount(I)V

    .line 192
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 195
    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    .line 197
    int-to-float v4, v3

    .line 199
    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 200
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 203
    iget-object v5, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 205
    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 207
    const/4 v7, 0x0

    .line 209
    iput v7, v6, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mOverExpansion:F

    .line 210
    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateStackPosition(Z)V

    .line 212
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 215
    iget-object v5, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 218
    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setExtraTopInsetForFullShadeTransition(F)V

    .line 220
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isOnKeyguard()Z

    .line 223
    move-result v4

    .line 226
    if-nez v4, :cond_5

    .line 227
    iget-boolean v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelExpanded:Z

    .line 229
    if-eqz v4, :cond_5

    .line 231
    iget-boolean v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSplitShadeEnabled:Z

    .line 233
    invoke-virtual {v1, v4}, Lcom/android/systemui/shade/QuickSettingsController;->setExpanded(Z)V

    .line 235
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isOnKeyguard()Z

    .line 238
    move-result v4

    .line 241
    if-eqz v4, :cond_6

    .line 242
    iget-boolean v4, v1, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 244
    if-eqz v4, :cond_6

    .line 246
    iget-boolean v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSplitShadeEnabled:Z

    .line 248
    if-eqz v4, :cond_6

    .line 250
    iget-object v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 252
    check-cast v4, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 254
    const/4 v5, 0x2

    .line 256
    invoke-virtual {v4, v5, v3}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->setState(IZ)Z

    .line 257
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateClockAppearance()V

    .line 260
    invoke-virtual {v1}, Lcom/android/systemui/shade/QuickSettingsController;->updateQsState()V

    .line 263
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->updateFooter()V

    .line 266
    :cond_7
    const v1, 0x7f0710c3    # @dimen/split_shade_full_transition_distance '400.0dp'

    .line 269
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 272
    move-result v0

    .line 275
    iput v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSplitShadeFullTransitionDistance:I

    .line 276
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateMiuiResources()V

    .line 278
    return-void
    .line 281
.end method

.method public final updateScrollerTopPadding(F)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->controlCenterController:Ldagger/Lazy;

    .line 2
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 8
    iget-boolean v0, v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->useControlCenter:Z

    .line 10
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_9

    .line 13
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 15
    iget-object v2, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 17
    if-nez v2, :cond_0

    .line 19
    goto/16 :goto_7

    .line 21
    :cond_0
    iput p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mQsTopPadding:F

    .line 23
    const/4 v2, 0x0

    .line 25
    cmpg-float v2, p1, v2

    .line 26
    const/4 v3, 0x1

    .line 28
    if-nez v2, :cond_1

    .line 29
    move v2, v3

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move v2, v1

    .line 33
    :goto_0
    if-nez v2, :cond_3

    .line 34
    invoke-virtual {v0}, Lcom/android/systemui/shade/QuickSettingsController;->getHeaderHeight()I

    .line 36
    move-result v2

    .line 39
    int-to-float v2, v2

    .line 40
    cmpg-float p1, p1, v2

    .line 41
    if-nez p1, :cond_2

    .line 43
    move p1, v3

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move p1, v1

    .line 47
    :goto_1
    if-eqz p1, :cond_3

    .line 48
    move p1, v3

    .line 50
    goto :goto_2

    .line 51
    :cond_3
    move p1, v1

    .line 52
    :goto_2
    iput-boolean p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNssCoveredQs:Z

    .line 53
    iget p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mQsTopPadding:F

    .line 55
    invoke-virtual {v0}, Lcom/android/systemui/shade/QuickSettingsController;->getHeaderHeight()I

    .line 57
    move-result v2

    .line 60
    int-to-float v2, v2

    .line 61
    invoke-super {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->calculateNotificationsTopPadding()F

    .line 62
    move-result v4

    .line 65
    sub-float p1, v4, p1

    .line 66
    sub-float/2addr v4, v2

    .line 68
    div-float/2addr p1, v4

    .line 69
    iget-object v2, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 70
    if-eqz v2, :cond_4

    .line 72
    invoke-interface {v2}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    .line 74
    move-result-object v2

    .line 77
    if-eqz v2, :cond_4

    .line 78
    const v4, 0x7f0a0755    # @id/qs_content

    .line 80
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 83
    move-result-object v2

    .line 86
    goto :goto_3

    .line 87
    :cond_4
    const/4 v2, 0x0

    .line 88
    :goto_3
    if-eqz v2, :cond_8

    .line 89
    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    .line 91
    move-result v4

    .line 94
    if-eqz v4, :cond_8

    .line 95
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 97
    move-result v4

    .line 100
    int-to-float v4, v4

    .line 101
    const/high16 v5, 0x3f000000    # 0.5f

    .line 102
    mul-float/2addr v4, v5

    .line 104
    invoke-virtual {v2, v4}, Landroid/view/View;->setPivotX(F)V

    .line 105
    invoke-virtual {v0}, Lcom/android/systemui/shade/QuickSettingsController;->getHeaderHeight()I

    .line 108
    move-result v0

    .line 111
    int-to-float v0, v0

    .line 112
    invoke-virtual {v2, v0}, Landroid/view/View;->setPivotY(F)V

    .line 113
    const v0, 0x3dccccd0    # 0.100000024f

    .line 116
    mul-float/2addr v0, p1

    .line 119
    const/high16 v4, 0x3f800000    # 1.0f

    .line 120
    sub-float v0, v4, v0

    .line 122
    mul-float/2addr p1, v4

    .line 124
    sub-float/2addr v4, p1

    .line 125
    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    .line 126
    move-result p1

    .line 129
    if-nez p1, :cond_5

    .line 130
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 132
    move-result p1

    .line 135
    if-nez p1, :cond_5

    .line 136
    move p1, v3

    .line 138
    goto :goto_4

    .line 139
    :cond_5
    move p1, v1

    .line 140
    :goto_4
    if-eqz p1, :cond_8

    .line 141
    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    .line 143
    move-result p1

    .line 146
    if-nez p1, :cond_6

    .line 147
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 149
    move-result p1

    .line 152
    if-nez p1, :cond_6

    .line 153
    move p1, v3

    .line 155
    goto :goto_5

    .line 156
    :cond_6
    move p1, v1

    .line 157
    :goto_5
    if-eqz p1, :cond_8

    .line 158
    invoke-static {v4}, Ljava/lang/Float;->isInfinite(F)Z

    .line 160
    move-result p1

    .line 163
    if-nez p1, :cond_7

    .line 164
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 166
    move-result p1

    .line 169
    if-nez p1, :cond_7

    .line 170
    goto :goto_6

    .line 172
    :cond_7
    move v3, v1

    .line 173
    :goto_6
    if-eqz v3, :cond_8

    .line 174
    invoke-virtual {v2, v0}, Landroid/view/View;->setScaleX(F)V

    .line 176
    invoke-virtual {v2, v0}, Landroid/view/View;->setScaleY(F)V

    .line 179
    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 182
    :cond_8
    invoke-virtual {p0, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->requestScrollerTopPaddingUpdate(Z)V

    .line 185
    return-void

    .line 188
    :cond_9
    :goto_7
    iput-boolean v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNssCoveredQs:Z

    .line 189
    return-void
    .line 191
.end method

.method public final updateThemeBackgroundDrawable()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mThemeBackgroundView:Landroid/view/View;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 17
    move-result-object v1

    .line 20
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 21
    const/4 v2, 0x1

    .line 23
    if-ne v1, v2, :cond_1

    .line 24
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 26
    move-result-object p0

    .line 29
    const v1, 0x7f0816b5    # @drawable/notification_panel_window_bg 'res/drawable/notification_panel_window_bg.xml'

    .line 30
    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 33
    move-result-object p0

    .line 36
    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 37
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 41
    move-result-object p0

    .line 44
    const v1, 0x7f0816b6    # @drawable/notification_panel_window_bg_landscape 'res/drawable/notification_panel_window_bg_landscape.xml'

    .line 45
    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 48
    move-result-object p0

    .line 51
    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 52
    :goto_0
    return-void
    .line 55
.end method

.method public final updateThemeBackgroundVisibility()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mThemeBackgroundView:Landroid/view/View;

    .line 2
    if-nez v0, :cond_0

    .line 4
    goto :goto_1

    .line 6
    :cond_0
    sget-boolean v1, Lcom/miui/utils/MiuiThemeUtils;->sDefaultSysUiTheme:Z

    .line 7
    if-nez v1, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->isOnShade()Z

    .line 11
    move-result p0

    .line 14
    if-eqz p0, :cond_1

    .line 15
    const/4 p0, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/16 p0, 0x8

    .line 19
    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    .line 21
    :goto_1
    return-void
.end method

.method public final updateVisibility(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpAnimatingAway:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_1

    .line 6
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpPinnedMode:Z

    .line 8
    if-eqz v0, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    move v0, v2

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    move v0, v1

    .line 15
    :goto_1
    if-nez v0, :cond_3

    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isExpanded()Z

    .line 18
    move-result v0

    .line 21
    if-nez v0, :cond_3

    .line 22
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBouncerShowing:Z

    .line 24
    if-eqz v0, :cond_2

    .line 26
    goto :goto_2

    .line 28
    :cond_2
    move v0, v2

    .line 29
    goto :goto_3

    .line 30
    :cond_3
    :goto_2
    move v0, v1

    .line 31
    :goto_3
    if-nez v0, :cond_6

    .line 32
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 34
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsFlinging:Z

    .line 36
    if-eqz v3, :cond_4

    .line 38
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsFlingRequiredAfterLockScreenSwipeUp:Z

    .line 40
    if-eqz v0, :cond_4

    .line 42
    move v0, v1

    .line 44
    goto :goto_4

    .line 45
    :cond_4
    move v0, v2

    .line 46
    :goto_4
    if-eqz v0, :cond_5

    .line 47
    goto :goto_5

    .line 49
    :cond_5
    move v0, v2

    .line 50
    goto :goto_6

    .line 51
    :cond_6
    :goto_5
    move v0, v1

    .line 52
    :goto_6
    if-eqz v0, :cond_9

    .line 53
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardCommonSettingObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 55
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardCommonSettingObserver;->isLinkageState:Z

    .line 57
    if-eqz v0, :cond_7

    .line 59
    goto :goto_8

    .line 61
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardCommonSettingObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 62
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardCommonSettingObserver;->aodUsingSuperWallpaperStyle:Z

    .line 64
    if-eqz v0, :cond_8

    .line 66
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 68
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 70
    goto :goto_9

    .line 72
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 73
    iget v0, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    .line 75
    if-eqz v0, :cond_c

    .line 77
    goto :goto_8

    .line 79
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isOnKeyguard()Z

    .line 80
    move-result v0

    .line 83
    if-eqz v0, :cond_b

    .line 84
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 86
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    .line 88
    move-result-object v0

    .line 91
    if-nez v0, :cond_a

    .line 92
    move v0, v2

    .line 94
    goto :goto_7

    .line 95
    :cond_a
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMaybeHideExpandedRunnable:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda0;

    .line 96
    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 98
    move-result v0

    .line 101
    :goto_7
    if-eqz v0, :cond_b

    .line 102
    goto :goto_8

    .line 104
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardEditorHelper:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 105
    iget-object v0, v0, Lcom/android/keyguard/KeyguardEditorHelper;->mState:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 107
    sget-object v3, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->EXITING:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 109
    if-eq v0, v3, :cond_d

    .line 111
    sget-object v3, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->EXITINGFROMBOUNCER:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 113
    if-ne v0, v3, :cond_c

    .line 115
    goto :goto_8

    .line 117
    :cond_c
    move v0, v2

    .line 118
    goto :goto_9

    .line 119
    :cond_d
    :goto_8
    move v0, v1

    .line 120
    :goto_9
    if-eqz p1, :cond_11

    .line 121
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 123
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mLaunchTransitionFadingAway:Z

    .line 125
    if-nez p1, :cond_11

    .line 127
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardEditorHelper:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 129
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardEditorHelper;->isInEnterAndExitEditorMode()Z

    .line 131
    move-result p1

    .line 134
    if-nez p1, :cond_11

    .line 135
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mViewAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 137
    if-eqz p1, :cond_e

    .line 139
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 141
    move-result p1

    .line 144
    if-ne p1, v1, :cond_e

    .line 145
    goto :goto_a

    .line 147
    :cond_e
    move v1, v2

    .line 148
    :goto_a
    if-eqz v1, :cond_f

    .line 149
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mViewAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 151
    if-eqz p1, :cond_f

    .line 153
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 155
    :cond_f
    if-eqz v0, :cond_10

    .line 158
    const/high16 p1, 0x3f800000    # 1.0f

    .line 160
    goto :goto_b

    .line 162
    :cond_10
    const/4 p1, 0x0

    .line 163
    :goto_b
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 164
    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 166
    :cond_11
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 169
    if-eqz v0, :cond_12

    .line 171
    goto :goto_c

    .line 173
    :cond_12
    const/4 v2, 0x4

    .line 174
    :goto_c
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 175
    return-void
    .line 178
.end method
