.class public final Lcom/android/systemui/shade/NotificationShadeWindowViewController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

.field public mBrightnessMirror:Landroid/view/View;

.field public final mClock:Lcom/android/systemui/util/time/SystemClock;

.field public final mControlPanelWindowManager:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;

.field public final mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

.field public final mDockManager:Lcom/android/systemui/dock/DockManager;

.field public mDownEvent:Landroid/view/MotionEvent;

.field public mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

.field public mExpandAnimationRunning:Z

.field public mExpandingBelowNotch:Z

.field public final mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field public mIsOcclusionTransitionRunning:Z

.field public mIsTrackingBarGesture:Z

.field public final mIsTrackpadCommonEnabled:Z

.field public final mKeyguardMediaController:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiKeyguardMediaController;

.field public final mKeyguardUnlockAnimationController:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

.field public final mLockIconViewController:Lcom/android/keyguard/LockIconViewController;

.field public final mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

.field public final mLockscreenToDreamingTransition:Lcom/android/systemui/shade/NotificationShadeWindowViewController$$ExternalSyntheticLambda0;

.field public final mModalController:Lcom/android/systemui/statusbar/notification/modal/ModalController;

.field public final mNCSwitchController:Lcom/android/systemui/controlcenter/policy/NCSwitchController;

.field public final mNotificationInsetsController:Lcom/android/systemui/statusbar/NotificationInsetsController;

.field public final mNotificationPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

.field public final mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field public final mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field public final mPulsingGestureListener:Lcom/android/systemui/shade/PulsingGestureListener;

.field public mPulsingWakeupGestureHandler:Landroid/view/GestureDetector;

.field public final mService:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field public final mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field public final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public mStatusBarViewController:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

.field public final mStatusBarWindowStateController:Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

.field public mTouchActive:Z

.field public mTouchCancelled:Z

.field public final mView:Lcom/android/systemui/shade/NotificationShadeWindowView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/shade/NotificationShadeWindowView;Lcom/android/systemui/shade/NotificationPanelViewController;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;Lcom/android/keyguard/LockIconViewController;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;Lcom/android/systemui/statusbar/NotificationInsetsController;Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/shade/PulsingGestureListener;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;Lcom/android/keyguard/dagger/KeyguardBouncerComponent$Factory;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;Lcom/android/systemui/statusbar/notification/modal/ModalController;Lcom/android/systemui/controlcenter/policy/NCSwitchController;Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiKeyguardMediaController;)V
    .locals 7

    move-object v0, p0

    move-object v1, p6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    .line 2
    iput-boolean v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mIsTrackingBarGesture:Z

    .line 3
    iput-boolean v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mIsOcclusionTransitionRunning:Z

    .line 4
    new-instance v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/systemui/shade/NotificationShadeWindowViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowViewController;)V

    iput-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mLockscreenToDreamingTransition:Lcom/android/systemui/shade/NotificationShadeWindowViewController$$ExternalSyntheticLambda0;

    move-object v3, p1

    .line 5
    iput-object v3, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    move-object v3, p2

    .line 6
    iput-object v3, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    move-object v3, p3

    .line 7
    iput-object v3, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 8
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    move-object v3, p4

    .line 9
    iput-object v3, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mDockManager:Lcom/android/systemui/dock/DockManager;

    move-object v3, p7

    .line 10
    iput-object v3, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mNotificationPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    move-object v3, p5

    .line 11
    iput-object v3, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    move-object v3, p8

    .line 12
    iput-object v3, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    move-object/from16 v3, p9

    .line 13
    iput-object v3, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v3, p10

    .line 14
    iput-object v3, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarWindowStateController:Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

    move-object/from16 v3, p11

    .line 15
    iput-object v3, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mLockIconViewController:Lcom/android/keyguard/LockIconViewController;

    .line 16
    invoke-virtual/range {p11 .. p11}, Lcom/android/systemui/util/ViewController;->init()V

    move-object/from16 v3, p12

    .line 17
    iput-object v3, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mService:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    move-object/from16 v3, p13

    .line 18
    iput-object v3, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    move-object/from16 v3, p14

    .line 19
    iput-object v3, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mKeyguardUnlockAnimationController:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    move-object/from16 v3, p16

    .line 20
    iput-object v3, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    move-object/from16 v3, p17

    .line 21
    iput-object v3, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mPulsingGestureListener:Lcom/android/systemui/shade/PulsingGestureListener;

    move-object/from16 v3, p15

    .line 22
    iput-object v3, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mNotificationInsetsController:Lcom/android/systemui/statusbar/NotificationInsetsController;

    .line 23
    sget-object v3, Lcom/android/systemui/flags/Flags;->TRACKPAD_GESTURE_COMMON:Lcom/android/systemui/flags/ReleasedFlag;

    move-object/from16 v4, p22

    check-cast v4, Lcom/android/systemui/flags/FeatureFlagsRelease;

    invoke-virtual {v4, v3}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mIsTrackpadCommonEnabled:Z

    const v3, 0x7f0a015d    # @id/brightness_mirror_container

    .line 24
    invoke-virtual {p6, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mBrightnessMirror:Landroid/view/View;

    .line 25
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const v3, 0x7f0a0473    # @id/keyguard_bouncer_container

    .line 26
    invoke-virtual {p6, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object/from16 v4, p18

    move-object/from16 v5, p19

    move-object/from16 v6, p21

    .line 27
    invoke-static {v3, v4, v6, v5}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder;->bind(Landroid/view/ViewGroup;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;Lcom/android/keyguard/dagger/KeyguardBouncerComponent$Factory;)V

    move-object/from16 v3, p20

    .line 28
    iget-object v3, v3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->lockscreenToDreamingTransition:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1;

    .line 29
    invoke-static {p6, v3, v2}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1;Lcom/android/systemui/shade/NotificationShadeWindowViewController$$ExternalSyntheticLambda0;)V

    move-object/from16 v1, p23

    .line 30
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mClock:Lcom/android/systemui/util/time/SystemClock;

    move-object/from16 v1, p24

    .line 31
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mControlPanelWindowManager:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;

    move-object/from16 v1, p25

    .line 32
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mModalController:Lcom/android/systemui/statusbar/notification/modal/ModalController;

    move-object/from16 v1, p26

    .line 33
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mNCSwitchController:Lcom/android/systemui/controlcenter/policy/NCSwitchController;

    move-object/from16 v1, p27

    .line 34
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mKeyguardMediaController:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiKeyguardMediaController;

    return-void
.end method


# virtual methods
.method public final cancelCurrentTouch()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mTouchActive:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mClock:Lcom/android/systemui/util/time/SystemClock;

    .line 7
    check-cast v0, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    move-result-wide v4

    .line 17
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mIsTrackpadCommonEnabled:Z

    .line 18
    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mDownEvent:Landroid/view/MotionEvent;

    .line 22
    invoke-static {v0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 24
    move-result-object v0

    .line 27
    invoke-virtual {v0, v4, v5}, Landroid/view/MotionEvent;->setDownTime(J)V

    .line 28
    const/4 v2, 0x3

    .line 31
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 32
    const/4 v2, 0x0

    .line 35
    invoke-virtual {v0, v2, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 36
    goto :goto_0

    .line 39
    :cond_0
    const/4 v6, 0x3

    .line 40
    const/4 v7, 0x0

    .line 41
    const/4 v8, 0x0

    .line 42
    const/4 v9, 0x0

    .line 43
    move-wide v2, v4

    .line 44
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 45
    move-result-object v0

    .line 48
    const/16 v2, 0x1002

    .line 49
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 51
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 54
    invoke-virtual {v2, v0}, Lcom/android/systemui/shade/NotificationShadeWindowView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 56
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 59
    iput-boolean v1, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mTouchCancelled:Z

    .line 62
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 64
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsSwipingUp:Z

    .line 66
    if-eqz v0, :cond_2

    .line 68
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsFlingRequiredAfterLockScreenSwipeUp:Z

    .line 70
    :cond_2
    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsSwipingUp:Z

    .line 73
    return-void
    .line 75
.end method

.method public setDragDownHelper(Lcom/android/systemui/statusbar/DragDownHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    .line 2
    return-void
    .line 4
.end method

.method public final setExpandAnimationRunning(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mExpandAnimationRunning:Z

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mExpandAnimationRunning:Z

    .line 6
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 8
    check-cast p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 10
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 12
    iput-boolean p1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->launchingActivityFromNotification:Z

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 16
    :cond_0
    return-void
    .line 19
.end method
