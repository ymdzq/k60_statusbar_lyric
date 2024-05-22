.class public final Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/RemoteInputController$Callback;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/shade/ShadeExpansionListener;
.implements Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;
.implements Lcom/android/keyguard/KeyguardViewController;
.implements Lcom/android/systemui/unfold/FoldAodAnimationController$FoldAodAnimationStatus;


# instance fields
.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public mAfterKeyguardGoneAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

.field public final mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;

.field public final mAlternateBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;

.field public mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field public mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field public final mCallbacks:Ljava/util/Set;

.field public mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public mCentralSurfacesRegistered:Z

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public mDismissActionWillAnimateOnKeyguard:Z

.field public final mDockEventListener:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$3;

.field public final mDockManager:Lcom/android/systemui/dock/DockManager;

.field public mDozing:Z

.field public final mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

.field public final mExpansionCallback:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$1;

.field public mFirstUpdate:Z

.field public final mFoldAodAnimationController:Lcom/android/systemui/unfold/FoldAodAnimationController;

.field public mGesturalNav:Z

.field public mGlobalActionsVisible:Z

.field public mIsBackCallbackRegistered:Z

.field public mKeyguardGoneCancelAction:Ljava/lang/Runnable;

.field public mKeyguardMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

.field public final mKeyguardMessageAreaFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

.field public final mKeyguardSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateManager:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mLastBiometricMode:I

.field public mLastBouncerDismissible:Z

.field public mLastDozing:Z

.field public mLastGesturalNav:Z

.field public mLastGlobalActionsVisible:Z

.field public mLastOccluded:Z

.field public mLastPrimaryBouncerIsOrWillBeShowing:Z

.field public mLastPrimaryBouncerShowing:Z

.field public mLastPulsing:Z

.field public mLastRemoteInputActive:Z

.field public mLastScreenOffAnimationPlaying:Z

.field public mLastShowing:Z

.field public final mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field public final mMakeNavigationBarVisibleRunnable:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$5;

.field public final mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field public final mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

.field public mNotificationContainer:Landroid/view/View;

.field public final mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field public mOccludingAppBiometricUI:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$occludingAppBiometricUI$1;

.field public final mOnBackInvokedCallback:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$2;

.field public mPendingWakeupAction:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;

.field public final mPrimaryBouncerCallbackInteractor:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor;

.field public final mPrimaryBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;

.field public final mPrimaryBouncerView:Lcom/android/systemui/keyguard/data/BouncerViewImpl;

.field public mPulsing:Z

.field public mQsExpansion:F

.field public mRemoteInputActive:Z

.field public mScreenOffAnimationPlaying:Z

.field public final mShadeController:Ldagger/Lazy;

.field public mShadeViewController:Lcom/android/systemui/shade/ShadeViewController;

.field public final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public final mUdfpsNewTouchDetectionEnabled:Z

.field public final mUdfpsOverlayInteractor:Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;

.field public final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dreams/DreamOverlayStateController;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Ljava/util/Optional;Ldagger/Lazy;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/KeyguardSecurityModel;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor;Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;Lcom/android/systemui/keyguard/data/BouncerViewImpl;Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 3

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mExpansionCallback:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$1;

    .line 3
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOnBackInvokedCallback:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$2;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mIsBackCallbackRegistered:Z

    .line 5
    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$3;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$3;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDockEventListener:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$3;

    .line 6
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mGlobalActionsVisible:Z

    .line 7
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastGlobalActionsVisible:Z

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    .line 9
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mCallbacks:Ljava/util/Set;

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;

    .line 11
    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 12
    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$5;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$5;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;I)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mMakeNavigationBarVisibleRunnable:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$5;

    move-object v1, p1

    .line 13
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    move-object v1, p3

    .line 14
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object v1, p6

    .line 15
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    move-object v1, p8

    .line 16
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    move-object v1, p5

    .line 17
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    move-object v1, p9

    .line 18
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v1, p10

    .line 19
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    move-object v1, p4

    .line 20
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardUpdateManager:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object v1, p2

    .line 21
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-object v1, p7

    .line 22
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDockManager:Lcom/android/systemui/dock/DockManager;

    move-object v1, p11

    .line 23
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardMessageAreaFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    move-object/from16 v1, p13

    .line 24
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShadeController:Ldagger/Lazy;

    move-object/from16 v1, p14

    .line 25
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    move-object/from16 v1, p15

    .line 26
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    move-object/from16 v1, p17

    .line 27
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPrimaryBouncerCallbackInteractor:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor;

    move-object/from16 v1, p18

    .line 28
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;

    move-object/from16 v1, p19

    .line 29
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPrimaryBouncerView:Lcom/android/systemui/keyguard/data/BouncerViewImpl;

    .line 30
    new-instance v1, Lcom/android/systemui/statusbar/phone/DozeParameters$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/DozeParameters$$ExternalSyntheticLambda0;-><init>()V

    move-object v2, p12

    .line 31
    invoke-virtual {p12, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/unfold/FoldAodAnimationController;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFoldAodAnimationController:Lcom/android/systemui/unfold/FoldAodAnimationController;

    move-object/from16 v1, p20

    .line 32
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAlternateBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;

    .line 33
    sget-object v1, Lcom/android/systemui/flags/Flags;->NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 34
    invoke-virtual/range {p16 .. p16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    sget-object v1, Lcom/android/systemui/flags/Flags;->UDFPS_NEW_TOUCH_DETECTION:Lcom/android/systemui/flags/ReleasedFlag;

    move-object/from16 v2, p16

    check-cast v2, Lcom/android/systemui/flags/FeatureFlagsRelease;

    invoke-virtual {v2, v1}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mUdfpsNewTouchDetectionEnabled:Z

    move-object/from16 v1, p21

    .line 36
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mUdfpsOverlayInteractor:Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;

    move-object/from16 v1, p22

    .line 37
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-void
.end method


# virtual methods
.method public final dismissWithAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZLjava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAlternateBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 4
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 6
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 8
    if-eqz v1, :cond_e

    .line 10
    :try_start_0
    const-string v1, "StatusBarKeyguardViewManager#dismissWithAction"

    .line 12
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPendingWakeupAction:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;

    .line 17
    const/4 v2, 0x0

    .line 19
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPendingWakeupAction:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;

    .line 20
    if-eqz v1, :cond_0

    .line 22
    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;->cancelAction:Ljava/lang/Runnable;

    .line 24
    if-eqz v1, :cond_0

    .line 26
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 28
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDozing:Z

    .line 31
    const/4 v3, 0x0

    .line 33
    const/4 v4, 0x1

    .line 34
    if-eqz v1, :cond_3

    .line 35
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 37
    iget v1, v1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 39
    if-eq v1, v4, :cond_2

    .line 41
    const/4 v5, 0x2

    .line 43
    if-ne v1, v5, :cond_1

    .line 44
    goto :goto_0

    .line 46
    :cond_1
    move v1, v3

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    :goto_0
    move v1, v4

    .line 49
    :goto_1
    if-nez v1, :cond_3

    .line 50
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;

    .line 52
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;-><init>(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZLjava/lang/String;)V

    .line 54
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPendingWakeupAction:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 59
    return-void

    .line 62
    :cond_3
    :try_start_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    .line 63
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardGoneCancelAction:Ljava/lang/Runnable;

    .line 65
    if-eqz p1, :cond_4

    .line 67
    invoke-interface {p1}, Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;->willRunAnimationOnKeyguard()Z

    .line 69
    move-result p1

    .line 72
    if-eqz p1, :cond_4

    .line 73
    move v3, v4

    .line 75
    :cond_4
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDismissActionWillAnimateOnKeyguard:Z

    .line 76
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;->canShowAlternateBouncerForFingerprint()Z

    .line 78
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;

    .line 82
    if-eqz p1, :cond_a

    .line 84
    if-nez p3, :cond_7

    .line 86
    :try_start_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    .line 88
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardGoneCancelAction:Ljava/lang/Runnable;

    .line 90
    iget-object v1, p2, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->primaryBouncerView:Lcom/android/systemui/keyguard/data/BouncerViewImpl;

    .line 92
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/data/BouncerViewImpl;->getDelegate()Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;

    .line 94
    move-result-object v1

    .line 97
    if-eqz v1, :cond_6

    .line 98
    iget-object v1, v1, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;->$securityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 100
    iget-object v3, v1, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCancelAction:Ljava/lang/Runnable;

    .line 102
    if-eqz v3, :cond_5

    .line 104
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 106
    iput-object v2, v1, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCancelAction:Ljava/lang/Runnable;

    .line 109
    :cond_5
    iput-object p1, v1, Lcom/android/keyguard/KeyguardSecurityContainerController;->mDismissAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    .line 111
    iput-object p3, v1, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCancelAction:Ljava/lang/Runnable;

    .line 113
    :cond_6
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    .line 115
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardGoneCancelAction:Ljava/lang/Runnable;

    .line 117
    :cond_7
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;->canShowAlternateBouncerForFingerprint()Z

    .line 119
    move-result p1

    .line 122
    iget-object p3, v0, Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;->bouncerRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepository;

    .line 123
    check-cast p3, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;

    .line 125
    invoke-virtual {p3, p1}, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->setAlternateVisible(Z)V

    .line 127
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;->isVisibleState()Z

    .line 130
    move-result p1

    .line 133
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateAlternateBouncerShowing(Z)V

    .line 134
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;->isVisibleState()Z

    .line 137
    move-result p1

    .line 140
    if-eqz p1, :cond_8

    .line 141
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

    .line 143
    if-eqz p0, :cond_9

    .line 145
    invoke-virtual {p0, p4, v4}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 147
    goto :goto_2

    .line 150
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    new-instance p0, Lcom/android/systemui/keyguard/shared/model/BouncerShowMessageModel;

    .line 154
    invoke-direct {p0, p4}, Lcom/android/systemui/keyguard/shared/model/BouncerShowMessageModel;-><init>(Ljava/lang/String;)V

    .line 156
    iget-object p1, p2, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepository;

    .line 159
    check-cast p1, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;

    .line 161
    iget-object p1, p1, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->_showMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 163
    invoke-virtual {p1, p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 165
    :cond_9
    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 168
    return-void

    .line 171
    :cond_a
    :try_start_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 172
    check-cast p1, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;

    .line 174
    iget-object p1, p1, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 176
    iput-object p4, p1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCustomMessage:Ljava/lang/CharSequence;

    .line 178
    if-eqz p3, :cond_b

    .line 180
    invoke-virtual {p2}, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->show()V

    .line 182
    goto :goto_3

    .line 185
    :cond_b
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    .line 186
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardGoneCancelAction:Ljava/lang/Runnable;

    .line 188
    iget-object p4, p2, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->primaryBouncerView:Lcom/android/systemui/keyguard/data/BouncerViewImpl;

    .line 190
    invoke-virtual {p4}, Lcom/android/systemui/keyguard/data/BouncerViewImpl;->getDelegate()Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;

    .line 192
    move-result-object p4

    .line 195
    if-eqz p4, :cond_d

    .line 196
    iget-object p4, p4, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;->$securityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 198
    iget-object v0, p4, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCancelAction:Ljava/lang/Runnable;

    .line 200
    if-eqz v0, :cond_c

    .line 202
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 204
    iput-object v2, p4, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCancelAction:Ljava/lang/Runnable;

    .line 207
    :cond_c
    iput-object p1, p4, Lcom/android/keyguard/KeyguardSecurityContainerController;->mDismissAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    .line 209
    iput-object p3, p4, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCancelAction:Ljava/lang/Runnable;

    .line 211
    :cond_d
    invoke-virtual {p2}, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->show()V

    .line 213
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    .line 216
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardGoneCancelAction:Ljava/lang/Runnable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 218
    :goto_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 220
    goto :goto_4

    .line 223
    :catchall_0
    move-exception p0

    .line 224
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 225
    throw p0

    .line 228
    :cond_e
    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    .line 229
    return-void
    .line 232
.end method

.method public final executeAfterKeyguardGoneAction()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;->onDismiss()Z

    .line 7
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    .line 10
    :cond_0
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardGoneCancelAction:Ljava/lang/Runnable;

    .line 12
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDismissActionWillAnimateOnKeyguard:Z

    .line 15
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 19
    move-result v2

    .line 22
    if-ge v0, v2, :cond_1

    .line 23
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/Runnable;

    .line 29
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 34
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 37
    return-void
    .line 40
.end method

.method public final getViewRootImpl()Landroid/view/ViewRootImpl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 2
    check-cast p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    .line 6
    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 10
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return-object p0
    .line 16
.end method

.method public final hide(JJ)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    const-string v1, "StatusBarKeyguardViewManager#hide"

    .line 4
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 6
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 9
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 11
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    .line 13
    const/4 v3, 0x0

    .line 15
    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->notifyKeyguardState(ZZ)V

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->launchPendingWakeupAction()V

    .line 19
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardUpdateManager:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 22
    iget-boolean v2, v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedsSlowUnlockTransition:Z

    .line 24
    if-eqz v2, :cond_0

    .line 26
    const-wide/16 v4, 0x7d0

    .line 28
    goto :goto_0

    .line 30
    :cond_0
    move-wide/from16 v4, p3

    .line 31
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 33
    move-result-wide v6

    .line 36
    const-wide/16 v8, -0x30

    .line 37
    add-long v8, p1, v8

    .line 39
    sub-long/2addr v8, v6

    .line 41
    const-wide/16 v6, 0x0

    .line 42
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 44
    move-result-wide v8

    .line 47
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mFlingingToDismissKeyguard:Z

    .line 48
    const/4 v2, 0x1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 53
    new-instance v5, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$5;

    .line 55
    invoke-direct {v5, v0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$5;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;I)V

    .line 57
    new-instance v6, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$6;

    .line 60
    invoke-direct {v6, v0, v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$6;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;ZI)V

    .line 62
    new-instance v7, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$6;

    .line 65
    invoke-direct {v7, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$6;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;ZI)V

    .line 67
    check-cast v4, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 70
    iget-object v0, v4, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMessageRouter:Lcom/android/systemui/util/concurrency/MessageRouter;

    .line 72
    check-cast v0, Lcom/android/systemui/util/concurrency/MessageRouterImpl;

    .line 74
    const/16 v1, 0x3eb

    .line 76
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/concurrency/MessageRouterImpl;->cancelMessages(I)V

    .line 78
    iput-object v6, v4, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    .line 81
    iput-object v7, v4, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLaunchTransitionCancelRunnable:Ljava/lang/Runnable;

    .line 83
    new-instance v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda12;

    .line 85
    invoke-direct {v0, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda12;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 87
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda12;->run()V

    .line 90
    goto/16 :goto_4

    .line 93
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->executeAfterKeyguardGoneAction()V

    .line 95
    const-class v1, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 98
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 100
    move-result-object v1

    .line 103
    check-cast v1, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 104
    invoke-virtual {v1}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->needDoKeyguardUnlockAnimation()Z

    .line 106
    move-result v1

    .line 109
    if-eqz v1, :cond_2

    .line 110
    move-wide v4, v6

    .line 112
    goto :goto_1

    .line 113
    :cond_2
    move-wide v6, v8

    .line 114
    :goto_1
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 115
    check-cast v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 117
    iget-object v8, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 119
    iget v9, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayId:I

    .line 121
    add-long v10, p1, v4

    .line 123
    const-wide/16 v15, 0x78

    .line 125
    sub-long/2addr v10, v15

    .line 127
    const-wide/16 v12, 0x78

    .line 128
    const/4 v14, 0x1

    .line 130
    invoke-virtual/range {v8 .. v14}, Lcom/android/systemui/statusbar/CommandQueue;->appTransitionStarting(IJJZ)V

    .line 131
    iget v8, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayId:I

    .line 134
    iget-object v9, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 136
    invoke-virtual {v9, v8}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(I)V

    .line 138
    iget-object v8, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 141
    iget v9, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayId:I

    .line 143
    sub-long v19, p1, v15

    .line 145
    const-wide/16 v21, 0x78

    .line 147
    const/16 v23, 0x1

    .line 149
    move-object/from16 v17, v8

    .line 151
    move/from16 v18, v9

    .line 153
    invoke-virtual/range {v17 .. v23}, Lcom/android/systemui/statusbar/CommandQueue;->appTransitionStarting(IJJZ)V

    .line 155
    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 158
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 160
    iput-wide v6, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAwayDelay:J

    .line 162
    iput-wide v4, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAwayDuration:J

    .line 164
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->setKeyguardFadingAway(Z)V

    .line 166
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 169
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    new-instance v4, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$2;

    .line 174
    invoke-direct {v4, v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$2;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    .line 176
    const-wide/16 v5, 0x60

    .line 179
    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHandler:Landroid/os/Handler;

    .line 181
    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 183
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->hideBouncer(Z)V

    .line 186
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 189
    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 191
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mLeaveOpenOnKeyguardHide:Z

    .line 193
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 195
    if-nez v1, :cond_5

    .line 197
    move-object v1, v4

    .line 199
    check-cast v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 200
    iget-object v5, v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 202
    iput-boolean v2, v5, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardFadingAway:Z

    .line 204
    invoke-virtual {v1, v5}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 206
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 209
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    .line 211
    move-result v1

    .line 214
    if-eqz v1, :cond_4

    .line 215
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 217
    invoke-virtual {v1}, Lcom/android/internal/util/LatencyTracker;->isEnabled()Z

    .line 219
    move-result v5

    .line 222
    if-eqz v5, :cond_4

    .line 223
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 225
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    sget-object v5, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 230
    if-nez v5, :cond_3

    .line 232
    const/4 v5, 0x7

    .line 234
    goto :goto_2

    .line 235
    :cond_3
    const/4 v5, 0x2

    .line 236
    :goto_2
    invoke-virtual {v1, v5}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 237
    :cond_4
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 240
    check-cast v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 242
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->hideKeyguard()Z

    .line 244
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 247
    check-cast v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 249
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateScrimController()V

    .line 251
    goto :goto_3

    .line 254
    :cond_5
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 255
    check-cast v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 257
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->hideKeyguard()Z

    .line 259
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 262
    check-cast v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 264
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->finishKeyguardFadingAway()V

    .line 266
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 269
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    .line 271
    move-result v5

    .line 274
    if-eqz v5, :cond_6

    .line 275
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFadedAwayAfterWakeAndUnlock:Z

    .line 277
    :cond_6
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->resetMode()V

    .line 279
    sget-object v5, Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->NONE:Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 282
    iput-object v5, v1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFpiState:Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 284
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    .line 286
    check-cast v4, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 289
    iget-object v1, v4, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 291
    iput-boolean v3, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardShowing:Z

    .line 293
    invoke-virtual {v4, v1}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 295
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 298
    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;

    .line 300
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->keyguardGone()V

    .line 302
    :goto_4
    const/16 v0, 0x3e

    .line 305
    invoke-static {v0, v2}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(II)V

    .line 307
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 310
    return-void
    .line 313
.end method

.method public final hideAlternateBouncer(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAlternateBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;

    .line 2
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;->receivedDownTouch:Z

    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;->isVisibleState()Z

    .line 7
    move-result v2

    .line 10
    iget-object v3, v0, Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;->bouncerRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepository;

    .line 11
    check-cast v3, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;

    .line 13
    invoke-virtual {v3, v1}, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->setAlternateVisible(Z)V

    .line 15
    const/4 v3, 0x1

    .line 18
    if-eqz v2, :cond_0

    .line 19
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;->isVisibleState()Z

    .line 21
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    move v0, v3

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v0, v1

    .line 29
    :goto_0
    if-eqz v0, :cond_1

    .line 30
    if-eqz p1, :cond_1

    .line 32
    move v1, v3

    .line 34
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateAlternateBouncerShowing(Z)V

    .line 35
    return-void
    .line 38
.end method

.method public hideBouncer(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;

    .line 2
    invoke-virtual {p1}, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->hide()V

    .line 4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 7
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 9
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 11
    const/4 v0, 0x0

    .line 13
    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->primaryBouncerIsOrWillBeShowing()Z

    .line 16
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    .line 23
    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDismissActionWillAnimateOnKeyguard:Z

    .line 26
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardGoneCancelAction:Ljava/lang/Runnable;

    .line 28
    if-eqz p1, :cond_1

    .line 30
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 32
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardGoneCancelAction:Ljava/lang/Runnable;

    .line 35
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPendingWakeupAction:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;

    .line 37
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPendingWakeupAction:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;

    .line 39
    if-eqz p1, :cond_2

    .line 41
    iget-object p0, p1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;->cancelAction:Ljava/lang/Runnable;

    .line 43
    if-eqz p0, :cond_2

    .line 45
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 47
    :cond_2
    return-void
    .line 50
.end method

.method public final isBouncerShowing()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->primaryBouncerIsShowing()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAlternateBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;->isVisibleState()Z

    .line 10
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 19
    :goto_1
    return p0
    .line 20
.end method

.method public final isFullscreenBouncer()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPrimaryBouncerView:Lcom/android/systemui/keyguard/data/BouncerViewImpl;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/data/BouncerViewImpl;->getDelegate()Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;

    .line 4
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/data/BouncerViewImpl;->getDelegate()Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;

    .line 11
    move-result-object p0

    .line 14
    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;->$securityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 15
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 17
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 19
    const/4 v2, 0x1

    .line 21
    if-eq p0, v0, :cond_1

    .line 22
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 24
    if-ne p0, v0, :cond_0

    .line 26
    goto :goto_0

    .line 28
    :cond_0
    move p0, v1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    move p0, v2

    .line 31
    :goto_1
    if-eqz p0, :cond_2

    .line 32
    move v1, v2

    .line 34
    :cond_2
    return v1
    .line 35
.end method

.method public final isNavBarVisible()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget v0, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 8
    const/4 v3, 0x2

    .line 10
    if-ne v0, v3, :cond_0

    .line 11
    move v0, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v0, v2

    .line 15
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 16
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 21
    iget-boolean v4, v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 23
    if-eqz v4, :cond_1

    .line 25
    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    .line 27
    if-nez v3, :cond_1

    .line 29
    move v3, v1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v3, v2

    .line 33
    :goto_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDozing:Z

    .line 34
    if-eqz v4, :cond_2

    .line 36
    if-nez v0, :cond_2

    .line 38
    move v0, v1

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    move v0, v2

    .line 42
    :goto_2
    if-eqz v3, :cond_3

    .line 43
    if-nez v4, :cond_3

    .line 45
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mScreenOffAnimationPlaying:Z

    .line 47
    if-eqz v4, :cond_4

    .line 49
    :cond_3
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPulsing:Z

    .line 51
    if-eqz v4, :cond_5

    .line 53
    :cond_4
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mGesturalNav:Z

    .line 55
    if-eqz v4, :cond_5

    .line 57
    move v4, v1

    .line 59
    goto :goto_3

    .line 60
    :cond_5
    move v4, v2

    .line 61
    :goto_3
    if-nez v3, :cond_6

    .line 62
    if-nez v0, :cond_6

    .line 64
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mScreenOffAnimationPlaying:Z

    .line 66
    if-eqz v0, :cond_8

    .line 68
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->primaryBouncerIsShowing()Z

    .line 70
    move-result v0

    .line 73
    if-nez v0, :cond_8

    .line 74
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mRemoteInputActive:Z

    .line 76
    if-nez v0, :cond_8

    .line 78
    if-nez v4, :cond_8

    .line 80
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mGlobalActionsVisible:Z

    .line 82
    if-eqz p0, :cond_7

    .line 84
    goto :goto_4

    .line 86
    :cond_7
    move v1, v2

    .line 87
    :cond_8
    :goto_4
    return v1
    .line 88
.end method

.method public final isPrimaryBouncerInTransit()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->isInTransit()Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final launchPendingWakeupAction()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPendingWakeupAction:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;

    .line 2
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPendingWakeupAction:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;

    .line 5
    if-eqz v0, :cond_1

    .line 7
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 9
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 11
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 13
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;->dismissAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    .line 15
    if-eqz v1, :cond_0

    .line 17
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;->afterKeyguardGone:Z

    .line 19
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;->message:Ljava/lang/String;

    .line 21
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;->cancelAction:Ljava/lang/Runnable;

    .line 23
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismissWithAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZLjava/lang/String;)V

    .line 25
    goto :goto_0

    .line 28
    :cond_0
    if-eqz v2, :cond_1

    .line 29
    invoke-interface {v2}, Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;->onDismiss()Z

    .line 31
    :cond_1
    :goto_0
    return-void
    .line 34
.end method

.method public final needsFullscreenBouncer()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 2
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 4
    move-result v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 8
    move-result-object p0

    .line 11
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 12
    if-eq p0, v0, :cond_1

    .line 14
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 16
    if-ne p0, v0, :cond_0

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 23
    :goto_1
    return p0
.end method

.method public final notifyKeyguardAuthenticated(Z)V
    .locals 2

    .line 1
    const-class v0, Lcom/android/keyguard/KeyguardEditorHelper;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/keyguard/KeyguardEditorHelper;

    .line 8
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardEditorHelper;->isInEnterEditorMode()Z

    .line 10
    move-result v0

    .line 13
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;

    .line 14
    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->hide()V

    .line 18
    return-void

    .line 21
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    move-result-object p1

    .line 25
    iget-object v0, v1, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepository;

    .line 26
    check-cast v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;

    .line 28
    iget-object v0, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->_keyguardAuthenticated:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 30
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 32
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAlternateBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;

    .line 35
    invoke-virtual {p1}, Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;->isVisibleState()Z

    .line 37
    move-result p1

    .line 40
    if-eqz p1, :cond_1

    .line 41
    const/4 p1, 0x0

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->hideAlternateBouncer(Z)V

    .line 44
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->executeAfterKeyguardGoneAction()V

    .line 47
    :cond_1
    return-void
    .line 50
.end method

.method public final onBackPressed()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->primaryBouncerIsShowing()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 9
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 11
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->releaseGestureWakeLock()V

    .line 13
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCameraLauncherLazy:Ldagger/Lazy;

    .line 16
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 21
    check-cast v0, Lcom/android/systemui/shade/CameraLauncher;

    .line 22
    iget-object v0, v0, Lcom/android/systemui/shade/CameraLauncher;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 24
    const/4 v1, 0x0

    .line 26
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->launchingAffordance:Z

    .line 27
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;

    .line 29
    iget-object v0, v0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepository;

    .line 31
    check-cast v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;

    .line 33
    iget-object v0, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->primaryBouncerScrimmed:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 35
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 40
    check-cast v0, Ljava/lang/Boolean;

    .line 41
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 43
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->needsFullscreenBouncer()Z

    .line 49
    move-result v0

    .line 52
    if-nez v0, :cond_1

    .line 53
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->hideBouncer(Z)V

    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    .line 58
    goto :goto_0

    .line 61
    :cond_1
    const/4 v0, 0x1

    .line 62
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset(Z)V

    .line 63
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 66
    check-cast p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 68
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mLeaveOpenOnKeyguardHide:Z

    .line 70
    :goto_0
    return-void
    .line 72
.end method

.method public final onDensityOrFontScaleChanged()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->hideBouncer(Z)V

    .line 3
    return-void
    .line 6
.end method

.method public final onDozingChanged(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDozing:Z

    .line 2
    if-eq v0, p1, :cond_2

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDozing:Z

    .line 6
    if-nez p1, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->needsFullscreenBouncer()Z

    .line 10
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 16
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 18
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    .line 20
    if-eqz v0, :cond_1

    .line 22
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset(Z)V

    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    .line 27
    if-nez p1, :cond_2

    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->launchPendingWakeupAction()V

    .line 32
    :cond_2
    return-void
    .line 35
.end method

.method public final onFoldToAodAnimationChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFoldAodAnimationController:Lcom/android/systemui/unfold/FoldAodAnimationController;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-boolean v0, v0, Lcom/android/systemui/unfold/FoldAodAnimationController;->shouldPlayAnimation:Z

    .line 6
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mScreenOffAnimationPlaying:Z

    .line 8
    :cond_0
    return-void
    .line 10
.end method

.method public final onKeyguardFadedAway()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationContainer:Landroid/view/View;

    .line 2
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$$ExternalSyntheticLambda1;

    .line 4
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    .line 6
    const-wide/16 v2, 0x64

    .line 9
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShadeViewController:Lcom/android/systemui/shade/ShadeViewController;

    .line 14
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 16
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->resetViewGroupFade()V

    .line 18
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 21
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 23
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->finishKeyguardFadingAway()V

    .line 25
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    .line 30
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFadedAwayAfterWakeAndUnlock:Z

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->resetMode()V

    .line 39
    sget-object v0, Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->NONE:Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 42
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFpiState:Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 44
    return-void
    .line 46
.end method

.method public final onNavigationModeChanged(I)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    .line 2
    move-result p1

    .line 5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mGesturalNav:Z

    .line 6
    if-eq p1, v0, :cond_0

    .line 8
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mGesturalNav:Z

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    .line 12
    :cond_0
    return-void
    .line 15
.end method

.method public final onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onRemoteInputActive(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mRemoteInputActive:Z

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    .line 4
    return-void
    .line 7
.end method

.method public final onThemeChanged()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepository;

    .line 4
    check-cast p0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->_resourceUpdateRequests:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 8
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 10
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 12
    return-void
    .line 15
.end method

.method public final onTouch(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAlternateBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;->isVisibleState()Z

    .line 4
    move-result v1

    .line 7
    if-eqz v1, :cond_7

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 10
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x1

    .line 15
    if-nez v2, :cond_0

    .line 16
    move v2, v4

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v2, v3

    .line 20
    :goto_0
    iget-boolean v5, v0, Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;->receivedDownTouch:Z

    .line 21
    if-eqz v5, :cond_1

    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 25
    move-result v5

    .line 28
    if-ne v5, v4, :cond_1

    .line 29
    move v5, v4

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v5, v3

    .line 33
    :goto_1
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mUdfpsNewTouchDetectionEnabled:Z

    .line 34
    if-eqz v6, :cond_2

    .line 36
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardUpdateManager:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 38
    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUdfpsEnrolled()Z

    .line 40
    move-result v6

    .line 43
    if-eqz v6, :cond_2

    .line 44
    move v6, v4

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    move v6, v3

    .line 48
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 49
    move-result v7

    .line 52
    const/4 v8, 0x4

    .line 53
    if-ne v7, v8, :cond_3

    .line 54
    if-nez v6, :cond_3

    .line 56
    move v6, v4

    .line 58
    goto :goto_3

    .line 59
    :cond_3
    move v6, v3

    .line 60
    :goto_3
    if-eqz v2, :cond_4

    .line 61
    iput-boolean v4, v0, Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;->receivedDownTouch:Z

    .line 63
    goto :goto_4

    .line 65
    :cond_4
    if-nez v5, :cond_5

    .line 66
    if-eqz v6, :cond_7

    .line 68
    :cond_5
    iget-object v2, v0, Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 70
    check-cast v2, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 72
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 77
    move-result-wide v5

    .line 80
    iget-object v0, v0, Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;->bouncerRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepository;

    .line 81
    check-cast v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;

    .line 83
    iget-wide v7, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->lastAlternateBouncerVisibleTime:J

    .line 85
    sub-long/2addr v5, v7

    .line 87
    const-wide/16 v7, 0xc8

    .line 88
    cmp-long v0, v5, v7

    .line 90
    if-lez v0, :cond_6

    .line 92
    move v3, v4

    .line 94
    :cond_6
    if-eqz v3, :cond_7

    .line 95
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showPrimaryBouncer(Z)V

    .line 97
    :cond_7
    :goto_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mCallbacks:Ljava/util/Set;

    .line 100
    check-cast p0, Ljava/util/HashSet;

    .line 102
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 104
    move-result-object p0

    .line 107
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    move-result v0

    .line 111
    if-eqz v0, :cond_8

    .line 112
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    move-result-object v0

    .line 117
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$KeyguardViewManagerCallback;

    .line 118
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$KeyguardViewManagerCallback;->onTouch(Landroid/view/MotionEvent;)V

    .line 120
    goto :goto_5

    .line 123
    :cond_8
    return v1
    .line 124
.end method

.method public final primaryBouncerIsOrWillBeShowing()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isPrimaryBouncerInTransit()Z

    .line 8
    move-result p0

    .line 11
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

.method public final primaryBouncerIsShowing()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->isFullyShowing()Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final reset(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 2
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 4
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 6
    if-eqz v1, :cond_6

    .line 8
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    .line 10
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShadeViewController:Lcom/android/systemui/shade/ShadeViewController;

    .line 12
    xor-int/lit8 v2, v0, 0x1

    .line 14
    check-cast v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 16
    invoke-virtual {v1, v2}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->resetViews(Z)V

    .line 18
    const/4 v1, 0x1

    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDozing:Z

    .line 25
    if-nez v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 29
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 31
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->hideKeyguard()Z

    .line 33
    if-nez p1, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->needsFullscreenBouncer()Z

    .line 38
    move-result v0

    .line 41
    if-eqz v0, :cond_4

    .line 42
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->hideBouncer(Z)V

    .line 44
    goto :goto_1

    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->needsFullscreenBouncer()Z

    .line 48
    move-result v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDozing:Z

    .line 54
    if-nez v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 58
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 60
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->hideKeyguard()Z

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;

    .line 65
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->show()V

    .line 67
    goto :goto_0

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 71
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 73
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 75
    check-cast v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 77
    iput-boolean v1, v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mKeyguardRequested:Z

    .line 79
    iput-boolean v2, v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mLeaveOpenOnKeyguardHide:Z

    .line 81
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateIsKeyguard()Z

    .line 83
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mAssistManagerLazy:Ldagger/Lazy;

    .line 86
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 88
    move-result-object v0

    .line 91
    check-cast v0, Lcom/android/systemui/assist/AssistManager;

    .line 92
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    new-instance v3, Lcom/android/systemui/assist/AssistManager$4;

    .line 97
    invoke-direct {v3, v0}, Lcom/android/systemui/assist/AssistManager$4;-><init>(Lcom/android/systemui/assist/AssistManager;)V

    .line 99
    invoke-static {v3}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 102
    if-eqz p1, :cond_3

    .line 105
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->hideBouncer(Z)V

    .line 107
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    .line 110
    :cond_4
    :goto_1
    if-eqz p1, :cond_5

    .line 113
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->hideAlternateBouncer(Z)V

    .line 115
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardUpdateManager:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 118
    iget-object p1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 120
    const/16 v0, 0x138

    .line 122
    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 124
    move-result-object p1

    .line 127
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 128
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    .line 131
    :cond_6
    return-void
    .line 134
.end method

.method public final setOccluded(ZZ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 2
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 4
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    .line 6
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-nez v1, :cond_0

    .line 10
    if-eqz p1, :cond_0

    .line 12
    move v4, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v4, v3

    .line 16
    :goto_0
    if-eqz v1, :cond_1

    .line 17
    if-nez p1, :cond_1

    .line 19
    move v1, v2

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move v1, v3

    .line 23
    :goto_1
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 24
    invoke-virtual {v0, v5, p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->notifyKeyguardState(ZZ)V

    .line 26
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    .line 29
    iget-boolean p1, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 32
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    .line 34
    const/16 v6, 0x3e

    .line 36
    if-eqz p1, :cond_2

    .line 38
    if-eqz v4, :cond_2

    .line 40
    const/4 v1, 0x3

    .line 42
    invoke-static {v6, v1}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(II)V

    .line 43
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 46
    check-cast v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 48
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mIsLaunchingActivityOverLockscreen:Z

    .line 50
    if-eqz v1, :cond_3

    .line 52
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShadeController:Ldagger/Lazy;

    .line 54
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 56
    move-result-object p1

    .line 59
    check-cast p1, Lcom/android/systemui/shade/ShadeController;

    .line 60
    new-instance p2, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$$ExternalSyntheticLambda2;

    .line 62
    invoke-direct {p2, p0, v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Z)V

    .line 64
    check-cast p1, Lcom/android/systemui/shade/ShadeControllerImpl;

    .line 67
    iget-object p0, p1, Lcom/android/systemui/shade/ShadeControllerImpl;->mPostCollapseRunnables:Ljava/util/ArrayList;

    .line 69
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    return-void

    .line 74
    :cond_2
    if-eqz p1, :cond_3

    .line 75
    if-eqz v1, :cond_3

    .line 77
    const/4 v1, 0x2

    .line 79
    invoke-static {v6, v1}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(II)V

    .line 80
    :cond_3
    if-eqz p1, :cond_5

    .line 83
    if-eqz p2, :cond_4

    .line 85
    if-nez v5, :cond_4

    .line 87
    goto :goto_2

    .line 89
    :cond_4
    move v2, v3

    .line 90
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 91
    invoke-virtual {p1, v3, v2}, Lcom/android/systemui/statusbar/NotificationMediaManager;->updateMediaMetaData(ZZ)V

    .line 93
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 96
    check-cast p1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 98
    iget-object p2, p1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 100
    iput-boolean v5, p2, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardOccluded:Z

    .line 102
    invoke-virtual {p1, p2}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 104
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDozing:Z

    .line 107
    if-nez p1, :cond_6

    .line 109
    iget-boolean p1, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    .line 111
    if-nez p1, :cond_6

    .line 113
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset(Z)V

    .line 115
    :cond_6
    return-void
    .line 118
.end method

.method public final showBouncer(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAlternateBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;->canShowAlternateBouncerForFingerprint()Z

    .line 4
    move-result v1

    .line 7
    iget-object v2, v0, Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;->bouncerRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepository;

    .line 8
    check-cast v2, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;

    .line 10
    invoke-virtual {v2, v1}, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->setAlternateVisible(Z)V

    .line 12
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;->isVisibleState()Z

    .line 15
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showPrimaryBouncer(Z)V

    .line 21
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;->isVisibleState()Z

    .line 25
    move-result p1

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateAlternateBouncerShowing(Z)V

    .line 29
    :goto_0
    return-void
    .line 32
.end method

.method public final showPrimaryBouncer(Z)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->hideAlternateBouncer(Z)V

    .line 3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 6
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 8
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 10
    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    .line 14
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;

    .line 20
    invoke-virtual {p1}, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->show()V

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    .line 25
    return-void
    .line 28
.end method

.method public final startPreHideAnimation(Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda1;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->primaryBouncerIsShowing()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;

    .line 8
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->willRunDismissFromKeyguard()Z

    .line 10
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda1;->run()V

    .line 16
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, v0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepository;

    .line 20
    check-cast v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;

    .line 22
    iget-object v0, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->_primaryBouncerDisappearAnimation:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 24
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 26
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShadeViewController:Lcom/android/systemui/shade/ShadeViewController;

    .line 29
    check-cast p1, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 31
    iget-object v0, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardQsUserSwitchController:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    .line 33
    const/4 v1, 0x0

    .line 35
    const/4 v2, 0x1

    .line 36
    if-eqz v0, :cond_1

    .line 37
    iget v3, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 39
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    .line 41
    invoke-virtual {v0, v3, v3, v2, v1}, Lcom/android/keyguard/KeyguardVisibilityHelper;->setViewVisibility(IIZZ)V

    .line 43
    :cond_1
    iget-object v0, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    .line 46
    if-eqz v0, :cond_2

    .line 48
    iget p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 50
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    .line 52
    invoke-virtual {v0, p1, p1, v2, v1}, Lcom/android/keyguard/KeyguardVisibilityHelper;->setViewVisibility(IIZZ)V

    .line 54
    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDismissActionWillAnimateOnKeyguard:Z

    .line 57
    if-eqz p1, :cond_4

    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    .line 61
    goto :goto_1

    .line 64
    :cond_3
    if-eqz p1, :cond_4

    .line 65
    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda1;->run()V

    .line 67
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShadeViewController:Lcom/android/systemui/shade/ShadeViewController;

    .line 70
    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 72
    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTracking:Z

    .line 74
    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBlockingExpansionForCurrentTouch:Z

    .line 76
    return-void
    .line 78
.end method

.method public final updateAlternateBouncerShowing(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mCentralSurfacesRegistered:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAlternateBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;

    .line 7
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;->isVisibleState()Z

    .line 9
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

    .line 13
    if-eqz v1, :cond_1

    .line 15
    iget-object v1, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 17
    check-cast v1, Lcom/android/keyguard/KeyguardMessageArea;

    .line 19
    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setIsVisible(Z)V

    .line 21
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

    .line 24
    const/4 v2, 0x1

    .line 26
    const-string v3, ""

    .line 27
    invoke-virtual {v1, v3, v2}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 29
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 32
    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->altBouncerShowing:Z

    .line 34
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardUpdateManager:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 36
    iput-boolean v0, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAlternateBouncerShowing:Z

    .line 38
    if-eqz v0, :cond_2

    .line 40
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_ALTERNATE_BIOMETRIC_BOUNCER_SHOWN:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 42
    const/4 v2, 0x0

    .line 44
    invoke-virtual {v1, v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState(ILcom/android/keyguard/FaceAuthUiEvent;)V

    .line 45
    sget-object v0, Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;->UNLOCK_INTENT:Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;

    .line 48
    const-string v2, "alternateBouncer"

    .line 50
    invoke-virtual {v1, v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestActiveUnlock(Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;Ljava/lang/String;)V

    .line 52
    :cond_2
    const/4 v0, 0x2

    .line 55
    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState(I)V

    .line 56
    if-eqz p1, :cond_3

    .line 59
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 61
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateScrimController()V

    .line 65
    :cond_3
    return-void
    .line 68
.end method

.method public final updateStates()V
    .locals 15

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mCentralSurfacesRegistered:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 7
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 9
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 11
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->primaryBouncerIsShowing()Z

    .line 15
    move-result v3

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->primaryBouncerIsOrWillBeShowing()Z

    .line 19
    move-result v4

    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isFullscreenBouncer()Z

    .line 23
    move-result v5

    .line 26
    const/4 v6, 0x1

    .line 27
    xor-int/2addr v5, v6

    .line 28
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mRemoteInputActive:Z

    .line 29
    const/4 v8, 0x0

    .line 31
    if-nez v5, :cond_2

    .line 32
    if-eqz v1, :cond_2

    .line 34
    if-eqz v7, :cond_1

    .line 36
    goto :goto_0

    .line 38
    :cond_1
    move v9, v8

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    :goto_0
    move v9, v6

    .line 41
    :goto_1
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerDismissible:Z

    .line 42
    if-nez v10, :cond_4

    .line 44
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastShowing:Z

    .line 46
    if-eqz v10, :cond_4

    .line 48
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastRemoteInputActive:Z

    .line 50
    if-eqz v10, :cond_3

    .line 52
    goto :goto_2

    .line 54
    :cond_3
    move v10, v8

    .line 55
    goto :goto_3

    .line 56
    :cond_4
    :goto_2
    move v10, v6

    .line 57
    :goto_3
    if-ne v9, v10, :cond_5

    .line 58
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    .line 60
    if-eqz v9, :cond_8

    .line 62
    :cond_5
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;

    .line 64
    if-nez v5, :cond_7

    .line 66
    if-eqz v1, :cond_7

    .line 68
    if-eqz v7, :cond_6

    .line 70
    goto :goto_4

    .line 72
    :cond_6
    iget-object v9, v9, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepository;

    .line 73
    check-cast v9, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;

    .line 75
    iget-object v9, v9, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->_isBackButtonEnabled:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 77
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 79
    invoke-virtual {v9, v10}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 81
    goto :goto_5

    .line 84
    :cond_7
    :goto_4
    iget-object v9, v9, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepository;

    .line 85
    check-cast v9, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;

    .line 87
    iget-object v9, v9, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->_isBackButtonEnabled:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 89
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 91
    invoke-virtual {v9, v10}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 93
    :cond_8
    :goto_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isNavBarVisible()Z

    .line 96
    move-result v9

    .line 99
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastShowing:Z

    .line 100
    if-eqz v10, :cond_9

    .line 102
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastOccluded:Z

    .line 104
    if-nez v10, :cond_9

    .line 106
    move v10, v6

    .line 108
    goto :goto_6

    .line 109
    :cond_9
    move v10, v8

    .line 110
    :goto_6
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastDozing:Z

    .line 111
    if-eqz v11, :cond_a

    .line 113
    iget v12, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBiometricMode:I

    .line 115
    const/4 v13, 0x2

    .line 117
    if-eq v12, v13, :cond_a

    .line 118
    move v12, v6

    .line 120
    goto :goto_7

    .line 121
    :cond_a
    move v12, v8

    .line 122
    :goto_7
    if-eqz v10, :cond_b

    .line 123
    if-nez v11, :cond_b

    .line 125
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastScreenOffAnimationPlaying:Z

    .line 127
    if-eqz v11, :cond_c

    .line 129
    :cond_b
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastPulsing:Z

    .line 131
    if-eqz v11, :cond_d

    .line 133
    :cond_c
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastGesturalNav:Z

    .line 135
    if-eqz v11, :cond_d

    .line 137
    move v11, v6

    .line 139
    goto :goto_8

    .line 140
    :cond_d
    move v11, v8

    .line 141
    :goto_8
    if-nez v10, :cond_e

    .line 142
    if-nez v12, :cond_e

    .line 144
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastScreenOffAnimationPlaying:Z

    .line 146
    if-eqz v10, :cond_10

    .line 148
    :cond_e
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastPrimaryBouncerShowing:Z

    .line 150
    if-nez v10, :cond_10

    .line 152
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastRemoteInputActive:Z

    .line 154
    if-nez v10, :cond_10

    .line 156
    if-nez v11, :cond_10

    .line 158
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastGlobalActionsVisible:Z

    .line 160
    if-eqz v10, :cond_f

    .line 162
    goto :goto_9

    .line 164
    :cond_f
    move v10, v8

    .line 165
    goto :goto_a

    .line 166
    :cond_10
    :goto_9
    move v10, v6

    .line 167
    :goto_a
    if-ne v9, v10, :cond_11

    .line 168
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    .line 170
    if-eqz v10, :cond_17

    .line 172
    :cond_11
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 174
    check-cast v10, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 176
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getNavigationBarView()Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 178
    move-result-object v10

    .line 181
    if-nez v10, :cond_12

    .line 182
    goto :goto_c

    .line 184
    :cond_12
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mMakeNavigationBarVisibleRunnable:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$5;

    .line 185
    if-eqz v9, :cond_16

    .line 187
    iget-boolean v9, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAway:Z

    .line 189
    const-wide/16 v11, 0x0

    .line 191
    if-eqz v9, :cond_13

    .line 193
    iget-wide v13, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAwayDelay:J

    .line 195
    goto :goto_b

    .line 197
    :cond_13
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    .line 198
    move-result v0

    .line 201
    if-eqz v0, :cond_14

    .line 202
    const-wide/16 v13, 0x140

    .line 204
    goto :goto_b

    .line 206
    :cond_14
    move-wide v13, v11

    .line 207
    :goto_b
    cmp-long v0, v13, v11

    .line 208
    if-nez v0, :cond_15

    .line 210
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$5;->run()V

    .line 212
    goto :goto_c

    .line 215
    :cond_15
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationContainer:Landroid/view/View;

    .line 216
    invoke-virtual {v0, v10, v13, v14}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 218
    goto :goto_c

    .line 221
    :cond_16
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationContainer:Landroid/view/View;

    .line 222
    invoke-virtual {v0, v10}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 224
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 227
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 229
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 231
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    .line 233
    move-result-object v0

    .line 236
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 237
    move-result v9

    .line 240
    invoke-interface {v0, v9}, Landroid/view/WindowInsetsController;->hide(I)V

    .line 241
    :cond_17
    :goto_c
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastPrimaryBouncerShowing:Z

    .line 244
    if-eq v3, v0, :cond_18

    .line 246
    move v0, v6

    .line 248
    goto :goto_d

    .line 249
    :cond_18
    move v0, v8

    .line 250
    :goto_d
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastPrimaryBouncerShowing:Z

    .line 251
    if-nez v0, :cond_19

    .line 253
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    .line 255
    if-eqz v9, :cond_1b

    .line 257
    :cond_19
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 259
    check-cast v9, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 261
    iget-object v10, v9, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 263
    iput-boolean v3, v10, Lcom/android/systemui/shade/NotificationShadeWindowState;->bouncerShowing:Z

    .line 265
    invoke-virtual {v9, v10}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 267
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 270
    check-cast v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 272
    iput-boolean v3, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBouncerShowing:Z

    .line 274
    iget-object v10, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 276
    iput-boolean v3, v10, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->bouncerShowing:Z

    .line 278
    iget-object v10, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    .line 280
    iput-boolean v3, v10, Lcom/android/systemui/statusbar/PulseExpansionHandler;->bouncerShowing:Z

    .line 282
    invoke-virtual {v9, v3}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->setBouncerShowingForStatusBarComponents(Z)V

    .line 284
    iget-object v10, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarHideIconsForBouncerManager:Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;

    .line 287
    iput-boolean v3, v10, Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;->bouncerShowing:Z

    .line 289
    invoke-virtual {v10, v6}, Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;->updateHideIconsForBouncer(Z)V

    .line 291
    iget-object v6, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 294
    iget v10, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayId:I

    .line 296
    invoke-virtual {v6, v10}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(I)V

    .line 298
    iget-boolean v6, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBouncerShowing:Z

    .line 301
    if-eqz v6, :cond_1a

    .line 303
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 305
    move-result-wide v10

    .line 308
    const-string v6, "BOUNCER_VISIBLE"

    .line 309
    const/4 v12, 0x4

    .line 311
    invoke-virtual {v9, v6, v12, v10, v11}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->wakeUpIfDozing(Ljava/lang/String;IJ)V

    .line 312
    :cond_1a
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateScrimController()V

    .line 315
    iget-boolean v6, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBouncerShowing:Z

    .line 318
    if-nez v6, :cond_1b

    .line 320
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updatePanelExpansionForKeyguard()V

    .line 322
    :cond_1b
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastPrimaryBouncerIsOrWillBeShowing:Z

    .line 325
    if-ne v4, v6, :cond_1c

    .line 327
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    .line 329
    if-nez v6, :cond_1c

    .line 331
    if-eqz v0, :cond_1d

    .line 333
    :cond_1c
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardUpdateManager:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 335
    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    .line 337
    invoke-virtual {v6, v4, v3}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logSendPrimaryBouncerChanged(ZZ)V

    .line 339
    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 342
    const/16 v6, 0x142

    .line 344
    invoke-virtual {v0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 346
    move-result-object v0

    .line 349
    iput v4, v0, Landroid/os/Message;->arg1:I

    .line 350
    iput v3, v0, Landroid/os/Message;->arg2:I

    .line 352
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 354
    :cond_1d
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    .line 357
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastShowing:Z

    .line 359
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mGlobalActionsVisible:Z

    .line 361
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastGlobalActionsVisible:Z

    .line 363
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastOccluded:Z

    .line 365
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastPrimaryBouncerIsOrWillBeShowing:Z

    .line 367
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerDismissible:Z

    .line 369
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastRemoteInputActive:Z

    .line 371
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDozing:Z

    .line 373
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastDozing:Z

    .line 375
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPulsing:Z

    .line 377
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastPulsing:Z

    .line 379
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mScreenOffAnimationPlaying:Z

    .line 381
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastScreenOffAnimationPlaying:Z

    .line 383
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 385
    iget v0, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 387
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBiometricMode:I

    .line 389
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mGesturalNav:Z

    .line 391
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastGesturalNav:Z

    .line 393
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 395
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 397
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->logStateToEventlog()V

    .line 399
    return-void
    .line 402
.end method
