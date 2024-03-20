.class public final Lcom/android/systemui/biometrics/UdfpsController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/doze/DozeReceiver;
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final EFFECT_CLICK:Landroid/os/VibrationEffect;

.field public static final LOCK_ICON_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

.field public static final UDFPS_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mAcquiredReceived:Z

.field public mActivePointerId:I

.field public final mActivityLaunchAnimator:Lcom/android/systemui/animation/ActivityLaunchAnimator;

.field public final mAlternateBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;

.field public mAodInterruptRunnable:Ljava/lang/Runnable;

.field public mAttemptedToDismissKeyguard:Z

.field public mAuthControllerUpdateUdfpsLocation:Ljava/lang/Runnable;

.field public final mBroadcastReceiver:Lcom/android/systemui/biometrics/UdfpsController$2;

.field public final mCallbacks:Ljava/util/Set;

.field public mCancelAodFingerUpAction:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mContext:Landroid/content/Context;

.field public final mDialogManager:Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;

.field public final mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final mExecution:Lcom/android/systemui/util/concurrency/ExecutionImpl;

.field public final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final mFgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field public final mIgnoreRefreshRate:Z

.field public final mInflater:Landroid/view/LayoutInflater;

.field public final mInputManager:Landroid/hardware/input/InputManager;

.field public mIsAodInterruptActive:Z

.field public final mKeyguardFaceAuthInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardFaceAuthInteractor;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field public mLastTouchInteractionTime:J

.field public final mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field public final mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

.field public mOnFingerDown:Z

.field final mOrientationListener:Lcom/android/systemui/biometrics/BiometricDisplayListener;

.field public mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

.field mOverlayParams:Lcom/android/settingslib/udfps/UdfpsOverlayParams;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mPrimaryBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;

.field public final mScreenObserver:Lcom/android/systemui/biometrics/UdfpsController$1;

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

.field public final mSessionTracker:Lcom/android/systemui/log/SessionTracker;

.field public final mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final mSystemClock:Lcom/android/systemui/util/time/SystemClock;

.field public mTouchLogTime:J

.field public final mTouchProcessor:Lcom/android/systemui/biometrics/udfps/SinglePointerTouchProcessor;

.field public mUdfpsDisplayMode:Lcom/android/systemui/biometrics/UdfpsDisplayModeProvider;

.field public final mUdfpsUtils:Lcom/android/settingslib/udfps/UdfpsUtils;

.field public final mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

.field public mVelocityTracker:Landroid/view/VelocityTracker;

.field public final mVibrator:Lcom/android/systemui/statusbar/VibratorHelper;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    .line 2
    invoke-direct {v0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    .line 4
    const/16 v1, 0x41

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    .line 9
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    .line 13
    move-result-object v0

    .line 16
    sput-object v0, Lcom/android/systemui/biometrics/UdfpsController;->UDFPS_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 17
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    .line 19
    invoke-direct {v0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    .line 21
    const/16 v1, 0x12

    .line 24
    invoke-virtual {v0, v1}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    .line 26
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    .line 30
    move-result-object v0

    .line 33
    sput-object v0, Lcom/android/systemui/biometrics/UdfpsController;->LOCK_ICON_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 34
    const/4 v0, 0x0

    .line 36
    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    .line 37
    move-result-object v0

    .line 40
    sput-object v0, Lcom/android/systemui/biometrics/UdfpsController;->EFFECT_CLICK:Landroid/os/VibrationEffect;

    .line 41
    return-void
    .line 43
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/concurrency/ExecutionImpl;Landroid/view/LayoutInflater;Landroid/hardware/fingerprint/FingerprintManager;Landroid/view/WindowManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/dump/DumpManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/plugins/FalsingManager;Landroid/os/PowerManager;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/biometrics/UdfpsHapticsSimulator;Lcom/android/systemui/biometrics/UdfpsShell;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Landroid/hardware/display/DisplayManager;Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/animation/ActivityLaunchAnimator;Ljava/util/Optional;Ljava/util/concurrent/Executor;Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;Lcom/android/systemui/biometrics/udfps/SinglePointerTouchProcessor;Lcom/android/systemui/log/SessionTracker;Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;Lcom/android/systemui/util/settings/SecureSettings;Landroid/hardware/input/InputManager;Lcom/android/settingslib/udfps/UdfpsUtils;Lcom/android/systemui/keyguard/domain/interactor/KeyguardFaceAuthInteractor;)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p10

    move-object/from16 v3, p12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v4, Lcom/android/settingslib/udfps/UdfpsOverlayParams;

    .line 3
    invoke-direct {v4}, Lcom/android/settingslib/udfps/UdfpsOverlayParams;-><init>()V

    .line 4
    iput-object v4, v0, Lcom/android/systemui/biometrics/UdfpsController;->mOverlayParams:Lcom/android/settingslib/udfps/UdfpsOverlayParams;

    const/4 v4, -0x1

    .line 5
    iput v4, v0, Lcom/android/systemui/biometrics/UdfpsController;->mActivePointerId:I

    .line 6
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v0, Lcom/android/systemui/biometrics/UdfpsController;->mCallbacks:Ljava/util/Set;

    .line 7
    new-instance v4, Lcom/android/systemui/biometrics/UdfpsController$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/biometrics/UdfpsController$1;-><init>(Lcom/android/systemui/biometrics/UdfpsController;)V

    iput-object v4, v0, Lcom/android/systemui/biometrics/UdfpsController;->mScreenObserver:Lcom/android/systemui/biometrics/UdfpsController$1;

    .line 8
    new-instance v5, Lcom/android/systemui/biometrics/UdfpsController$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/biometrics/UdfpsController$2;-><init>(Lcom/android/systemui/biometrics/UdfpsController;)V

    iput-object v5, v0, Lcom/android/systemui/biometrics/UdfpsController;->mBroadcastReceiver:Lcom/android/systemui/biometrics/UdfpsController$2;

    .line 9
    iput-object v1, v0, Lcom/android/systemui/biometrics/UdfpsController;->mContext:Landroid/content/Context;

    move-object/from16 v6, p2

    .line 10
    iput-object v6, v0, Lcom/android/systemui/biometrics/UdfpsController;->mExecution:Lcom/android/systemui/util/concurrency/ExecutionImpl;

    move-object/from16 v6, p18

    .line 11
    iput-object v6, v0, Lcom/android/systemui/biometrics/UdfpsController;->mVibrator:Lcom/android/systemui/statusbar/VibratorHelper;

    move-object/from16 v6, p3

    .line 12
    iput-object v6, v0, Lcom/android/systemui/biometrics/UdfpsController;->mInflater:Landroid/view/LayoutInflater;

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1110181    # @android:bool/config_isCameraCompatControlForStretchedIssuesEnabled

    .line 14
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, v0, Lcom/android/systemui/biometrics/UdfpsController;->mIgnoreRefreshRate:Z

    .line 15
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v6, v0, Lcom/android/systemui/biometrics/UdfpsController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    move-object/from16 v7, p5

    .line 16
    iput-object v7, v0, Lcom/android/systemui/biometrics/UdfpsController;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v7, p7

    .line 17
    iput-object v7, v0, Lcom/android/systemui/biometrics/UdfpsController;->mFgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-object/from16 v7, p8

    .line 18
    iput-object v7, v0, Lcom/android/systemui/biometrics/UdfpsController;->mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    move-object/from16 v7, p6

    .line 19
    iput-object v7, v0, Lcom/android/systemui/biometrics/UdfpsController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-object/from16 v7, p21

    .line 20
    iput-object v7, v0, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 v7, p9

    .line 21
    iput-object v7, v0, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 22
    iput-object v2, v0, Lcom/android/systemui/biometrics/UdfpsController;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    move-object/from16 v7, p27

    .line 23
    iput-object v7, v0, Lcom/android/systemui/biometrics/UdfpsController;->mDialogManager:Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;

    move-object/from16 v7, p11

    .line 24
    iput-object v7, v0, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 25
    iput-object v3, v0, Lcom/android/systemui/biometrics/UdfpsController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    move-object/from16 v7, p13

    .line 26
    iput-object v7, v0, Lcom/android/systemui/biometrics/UdfpsController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object/from16 v7, p14

    .line 27
    iput-object v7, v0, Lcom/android/systemui/biometrics/UdfpsController;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v7, p15

    .line 28
    iput-object v7, v0, Lcom/android/systemui/biometrics/UdfpsController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v7, p16

    .line 29
    iput-object v7, v0, Lcom/android/systemui/biometrics/UdfpsController;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    move-object/from16 v7, p17

    .line 30
    iget-object v7, v7, Lcom/android/systemui/keyguard/Lifecycle;->mObservers:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, p24

    .line 32
    iput-object v4, v0, Lcom/android/systemui/biometrics/UdfpsController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object/from16 v4, p25

    .line 33
    iput-object v4, v0, Lcom/android/systemui/biometrics/UdfpsController;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    move-object/from16 v4, p26

    .line 34
    iput-object v4, v0, Lcom/android/systemui/biometrics/UdfpsController;->mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    move-object/from16 v4, p28

    .line 35
    iput-object v4, v0, Lcom/android/systemui/biometrics/UdfpsController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    move-object/from16 v4, p29

    .line 36
    iput-object v4, v0, Lcom/android/systemui/biometrics/UdfpsController;->mActivityLaunchAnimator:Lcom/android/systemui/animation/ActivityLaunchAnimator;

    .line 37
    new-instance v4, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda1;-><init>()V

    move-object/from16 v7, p30

    invoke-virtual {v7, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 38
    new-instance v4, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 p2, v4

    move/from16 p3, v8

    move/from16 p4, v9

    move/from16 p5, v10

    move-object/from16 p6, v11

    move/from16 p7, v12

    move/from16 p8, v13

    invoke-direct/range {p2 .. p8}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;-><init>(IIILjava/util/List;IZ)V

    iput-object v4, v0, Lcom/android/systemui/biometrics/UdfpsController;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-object/from16 v4, p32

    .line 39
    iput-object v4, v0, Lcom/android/systemui/biometrics/UdfpsController;->mPrimaryBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;

    move-object/from16 v4, p35

    .line 40
    iput-object v4, v0, Lcom/android/systemui/biometrics/UdfpsController;->mAlternateBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;

    move-object/from16 v4, p36

    .line 41
    iput-object v4, v0, Lcom/android/systemui/biometrics/UdfpsController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    move-object/from16 v4, p38

    .line 42
    iput-object v4, v0, Lcom/android/systemui/biometrics/UdfpsController;->mUdfpsUtils:Lcom/android/settingslib/udfps/UdfpsUtils;

    move-object/from16 v4, p37

    .line 43
    iput-object v4, v0, Lcom/android/systemui/biometrics/UdfpsController;->mInputManager:Landroid/hardware/input/InputManager;

    .line 44
    sget-object v4, Lcom/android/systemui/flags/Flags;->UDFPS_NEW_TOUCH_DETECTION:Lcom/android/systemui/flags/ReleasedFlag;

    check-cast v3, Lcom/android/systemui/flags/FeatureFlagsRelease;

    invoke-virtual {v3, v4}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v7, p33

    .line 45
    :cond_0
    iput-object v7, v0, Lcom/android/systemui/biometrics/UdfpsController;->mTouchProcessor:Lcom/android/systemui/biometrics/udfps/SinglePointerTouchProcessor;

    move-object/from16 v3, p34

    .line 46
    iput-object v3, v0, Lcom/android/systemui/biometrics/UdfpsController;->mSessionTracker:Lcom/android/systemui/log/SessionTracker;

    const-string v3, "UdfpsController"

    .line 47
    invoke-virtual {v2, v3, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 48
    new-instance v2, Lcom/android/systemui/biometrics/BiometricDisplayListener;

    sget-object v3, Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType$Generic;->INSTANCE$1:Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType$Generic;

    new-instance v4, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/biometrics/UdfpsController;)V

    move-object/from16 p2, v2

    move-object/from16 p3, p1

    move-object/from16 p4, p22

    move-object/from16 p5, p23

    move-object/from16 p6, v3

    move-object/from16 p7, v4

    invoke-direct/range {p2 .. p7}, Lcom/android/systemui/biometrics/BiometricDisplayListener;-><init>(Landroid/content/Context;Landroid/hardware/display/DisplayManager;Landroid/os/Handler;Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType;Lkotlin/jvm/functions/Function0;)V

    iput-object v2, v0, Lcom/android/systemui/biometrics/UdfpsController;->mOrientationListener:Lcom/android/systemui/biometrics/BiometricDisplayListener;

    move-object/from16 v2, p39

    .line 49
    iput-object v2, v0, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardFaceAuthInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardFaceAuthInteractor;

    .line 50
    new-instance v2, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;

    invoke-direct {v2, p0}, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;-><init>(Lcom/android/systemui/biometrics/UdfpsController;)V

    .line 51
    invoke-virtual {v6, v2}, Landroid/hardware/fingerprint/FingerprintManager;->setUdfpsOverlayController(Landroid/hardware/fingerprint/IUdfpsOverlayController;)V

    .line 52
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 53
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v4, 0x2

    .line 54
    invoke-virtual {p1, v5, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-object/from16 v1, p19

    .line 55
    iput-object v0, v1, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator;->udfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    move-object/from16 v0, p20

    .line 56
    iput-object v2, v0, Lcom/android/systemui/biometrics/UdfpsShell;->udfpsOverlayController:Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;

    return-void
.end method


# virtual methods
.method public cancelAodSendFingerUpAction()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mIsAodInterruptActive:Z

    .line 3
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mCancelAodFingerUpAction:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;->run()V

    .line 9
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mCancelAodFingerUpAction:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 13
    :cond_0
    return-void
    .line 15
.end method

.method public final dispatchOnUiReady(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 2
    iget v0, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 4
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 6
    invoke-virtual {v1, p1, p2, v0}, Landroid/hardware/fingerprint/FingerprintManager;->onUiReady(JI)V

    .line 8
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 11
    const/16 p1, 0xe

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 15
    return-void
    .line 18
.end method

.method public final dozeTimeTick()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayView:Lcom/android/systemui/biometrics/UdfpsView;

    .line 6
    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsView;->dozeTimeTick()V

    .line 10
    :cond_0
    return-void
    .line 13
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 2
    const-string v0, "mSensorProps=("

    .line 4
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 9
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    const-string v0, ")"

    .line 14
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p2

    .line 22
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    .line 26
    const-string v0, "Using new touch detection framework: "

    .line 28
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    sget-object v0, Lcom/android/systemui/flags/Flags;->UDFPS_NEW_TOUCH_DETECTION:Lcom/android/systemui/flags/ReleasedFlag;

    .line 33
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 35
    move-object v1, p0

    .line 37
    check-cast v1, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 38
    invoke-virtual {v1, v0}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 40
    move-result v0

    .line 43
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p2

    .line 50
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 51
    new-instance p2, Ljava/lang/StringBuilder;

    .line 54
    const-string v0, "Using ellipse touch detection: "

    .line 56
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    sget-object v0, Lcom/android/systemui/flags/Flags;->UDFPS_ELLIPSE_DETECTION:Lcom/android/systemui/flags/ReleasedFlag;

    .line 61
    check-cast p0, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 63
    invoke-virtual {p0, v0}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 65
    move-result p0

    .line 68
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 75
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    return-void
    .line 79
.end method

.method public final hideUdfpsOverlay()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mExecution:Lcom/android/systemui/util/concurrency/ExecutionImpl;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/util/concurrency/ExecutionImpl;->assertIsMainThread()V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    .line 7
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    iget-object v2, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayView:Lcom/android/systemui/biometrics/UdfpsView;

    .line 12
    if-eqz v2, :cond_0

    .line 14
    iget-wide v3, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->requestId:J

    .line 16
    invoke-virtual {p0, v3, v4, v2}, Lcom/android/systemui/biometrics/UdfpsController;->onFingerUp(JLcom/android/systemui/biometrics/UdfpsView;)V

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    .line 21
    iget-object v2, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayView:Lcom/android/systemui/biometrics/UdfpsView;

    .line 23
    if-eqz v2, :cond_2

    .line 25
    iget-boolean v3, v2, Lcom/android/systemui/biometrics/UdfpsView;->isDisplayConfigured:Z

    .line 27
    if-eqz v3, :cond_1

    .line 29
    invoke-virtual {v2}, Lcom/android/systemui/biometrics/UdfpsView;->unconfigureDisplay$1()V

    .line 31
    :cond_1
    iget-object v3, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->windowManager:Landroid/view/WindowManager;

    .line 34
    invoke-interface {v3, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 36
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 39
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 42
    invoke-virtual {v2, v1}, Lcom/android/systemui/biometrics/UdfpsView;->setAnimationViewController(Lcom/android/systemui/biometrics/UdfpsAnimationViewController;)V

    .line 45
    iget-object v2, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayTouchListener:Lcom/android/systemui/biometrics/UdfpsControllerOverlay$show$1$1;

    .line 48
    if-eqz v2, :cond_2

    .line 50
    iget-object v3, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 52
    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 54
    :cond_2
    iput-object v1, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayView:Lcom/android/systemui/biometrics/UdfpsView;

    .line 57
    iput-object v1, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayTouchListener:Lcom/android/systemui/biometrics/UdfpsControllerOverlay$show$1$1;

    .line 59
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 61
    const/4 v2, 0x1

    .line 63
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->hideAlternateBouncer(Z)V

    .line 64
    :cond_3
    iput-object v1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    .line 67
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOrientationListener:Lcom/android/systemui/biometrics/BiometricDisplayListener;

    .line 69
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDisplayListener;->displayManager:Landroid/hardware/display/DisplayManager;

    .line 71
    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 73
    return-void
    .line 76
.end method

.method public final isWithinSensorArea(Lcom/android/systemui/biometrics/UdfpsView;FFZ)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p4, :cond_4

    .line 4
    iget-object p0, p1, Lcom/android/systemui/biometrics/UdfpsView;->animationViewController:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    .line 6
    if-eqz p0, :cond_0

    .line 8
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->touchTranslation:Landroid/graphics/PointF;

    .line 10
    if-nez p0, :cond_1

    .line 12
    :cond_0
    new-instance p0, Landroid/graphics/PointF;

    .line 14
    const/4 p4, 0x0

    .line 16
    invoke-direct {p0, p4, p4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 17
    :cond_1
    iget-object p4, p1, Lcom/android/systemui/biometrics/UdfpsView;->sensorRect:Landroid/graphics/Rect;

    .line 20
    invoke-virtual {p4}, Landroid/graphics/Rect;->centerX()I

    .line 22
    move-result p4

    .line 25
    int-to-float p4, p4

    .line 26
    iget v2, p0, Landroid/graphics/PointF;->x:F

    .line 27
    add-float/2addr p4, v2

    .line 29
    iget-object v2, p1, Lcom/android/systemui/biometrics/UdfpsView;->sensorRect:Landroid/graphics/Rect;

    .line 30
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    .line 32
    move-result v2

    .line 35
    int-to-float v2, v2

    .line 36
    iget p0, p0, Landroid/graphics/PointF;->y:F

    .line 37
    add-float/2addr v2, p0

    .line 39
    iget-object p0, p1, Lcom/android/systemui/biometrics/UdfpsView;->sensorRect:Landroid/graphics/Rect;

    .line 40
    iget v3, p0, Landroid/graphics/Rect;->right:I

    .line 42
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 44
    sub-int/2addr v3, v4

    .line 46
    int-to-float v3, v3

    .line 47
    const/high16 v4, 0x40000000    # 2.0f

    .line 48
    div-float/2addr v3, v4

    .line 50
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    .line 51
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 53
    sub-int/2addr v5, p0

    .line 55
    int-to-float p0, v5

    .line 56
    div-float/2addr p0, v4

    .line 57
    iget v4, p1, Lcom/android/systemui/biometrics/UdfpsView;->sensorTouchAreaCoefficient:F

    .line 58
    mul-float/2addr v3, v4

    .line 60
    sub-float v5, p4, v3

    .line 61
    cmpl-float v5, p2, v5

    .line 63
    if-lez v5, :cond_3

    .line 65
    add-float/2addr v3, p4

    .line 67
    cmpg-float p2, p2, v3

    .line 68
    if-gez p2, :cond_3

    .line 70
    mul-float/2addr p0, v4

    .line 72
    sub-float p2, v2, p0

    .line 73
    cmpl-float p2, p3, p2

    .line 75
    if-lez p2, :cond_3

    .line 77
    add-float/2addr p0, v2

    .line 79
    cmpg-float p0, p3, p0

    .line 80
    if-gez p0, :cond_3

    .line 82
    iget-object p0, p1, Lcom/android/systemui/biometrics/UdfpsView;->animationViewController:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    .line 84
    if-eqz p0, :cond_2

    .line 86
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->shouldPauseAuth()Z

    .line 88
    move-result p0

    .line 91
    goto :goto_0

    .line 92
    :cond_2
    move p0, v1

    .line 93
    :goto_0
    if-nez p0, :cond_3

    .line 94
    goto :goto_1

    .line 96
    :cond_3
    move v0, v1

    .line 97
    :goto_1
    return v0

    .line 98
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    .line 99
    if-eqz p1, :cond_9

    .line 101
    iget-object p1, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayView:Lcom/android/systemui/biometrics/UdfpsView;

    .line 103
    const/4 p4, 0x0

    .line 105
    if-eqz p1, :cond_5

    .line 106
    invoke-virtual {p1}, Lcom/android/systemui/biometrics/UdfpsView;->getAnimationViewController()Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    .line 108
    move-result-object p1

    .line 111
    goto :goto_2

    .line 112
    :cond_5
    move-object p1, p4

    .line 113
    :goto_2
    if-nez p1, :cond_6

    .line 114
    goto :goto_4

    .line 116
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    .line 117
    iget-object p1, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayView:Lcom/android/systemui/biometrics/UdfpsView;

    .line 119
    if-eqz p1, :cond_7

    .line 121
    invoke-virtual {p1}, Lcom/android/systemui/biometrics/UdfpsView;->getAnimationViewController()Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    .line 123
    move-result-object p4

    .line 126
    :cond_7
    invoke-virtual {p4}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->shouldPauseAuth()Z

    .line 127
    move-result p1

    .line 130
    if-nez p1, :cond_8

    .line 131
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOverlayParams:Lcom/android/settingslib/udfps/UdfpsOverlayParams;

    .line 133
    iget-object p0, p0, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->sensorBounds:Landroid/graphics/Rect;

    .line 135
    float-to-int p1, p2

    .line 137
    float-to-int p2, p3

    .line 138
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    .line 139
    move-result p0

    .line 142
    if-eqz p0, :cond_8

    .line 143
    goto :goto_3

    .line 145
    :cond_8
    move v0, v1

    .line 146
    :goto_3
    return v0

    .line 147
    :cond_9
    :goto_4
    return v1
    .line 148
.end method

.method public final onFingerDown(JIFFFFFJJZ)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    move-wide/from16 v14, p1

    .line 4
    iget-object v0, v1, Lcom/android/systemui/biometrics/UdfpsController;->mExecution:Lcom/android/systemui/util/concurrency/ExecutionImpl;

    .line 6
    invoke-virtual {v0}, Lcom/android/systemui/util/concurrency/ExecutionImpl;->assertIsMainThread()V

    .line 8
    iget-object v0, v1, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    .line 11
    const-string v2, "UdfpsController"

    .line 13
    if-nez v0, :cond_0

    .line 15
    const-string v0, "Null request in onFingerDown"

    .line 17
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return-void

    .line 22
    :cond_0
    invoke-virtual {v0, v14, v15}, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->matchesRequestId(J)Z

    .line 23
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    const-string v3, "Mismatched fingerDown: "

    .line 31
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    const-string v3, " current: "

    .line 39
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v1, v1, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    .line 44
    iget-wide v3, v1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->requestId:J

    .line 46
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 54
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void

    .line 58
    :cond_1
    iget-object v0, v1, Lcom/android/systemui/biometrics/UdfpsController;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 59
    iget v0, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    .line 61
    const/4 v12, 0x3

    .line 63
    const/4 v13, 0x0

    .line 64
    const/4 v11, 0x1

    .line 65
    if-ne v0, v12, :cond_2

    .line 66
    move v0, v11

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    move v0, v13

    .line 70
    :goto_0
    if-eqz v0, :cond_3

    .line 71
    iget-object v0, v1, Lcom/android/systemui/biometrics/UdfpsController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 73
    const/16 v2, 0xe

    .line 75
    invoke-virtual {v0, v2}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 77
    :cond_3
    iget-object v0, v1, Lcom/android/systemui/biometrics/UdfpsController;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 80
    check-cast v0, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 82
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 87
    move-result-wide v2

    .line 90
    const/4 v0, 0x2

    .line 91
    iget-object v4, v1, Lcom/android/systemui/biometrics/UdfpsController;->mPowerManager:Landroid/os/PowerManager;

    .line 92
    invoke-virtual {v4, v2, v3, v0, v13}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 94
    iget-boolean v0, v1, Lcom/android/systemui/biometrics/UdfpsController;->mOnFingerDown:Z

    .line 97
    if-nez v0, :cond_4

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/biometrics/UdfpsController;->playStartHaptic()V

    .line 101
    iget-object v0, v1, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardFaceAuthInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardFaceAuthInteractor;

    .line 104
    check-cast v0, Lcom/android/systemui/keyguard/domain/interactor/SystemUIKeyguardFaceAuthInteractor;

    .line 106
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    sget-object v2, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_UDFPS_POINTER_DOWN:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 111
    invoke-virtual {v0, v2}, Lcom/android/systemui/keyguard/domain/interactor/SystemUIKeyguardFaceAuthInteractor;->runFaceAuth(Lcom/android/keyguard/FaceAuthUiEvent;)V

    .line 113
    iget-object v0, v1, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 116
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    .line 118
    move-result v2

    .line 121
    if-nez v2, :cond_4

    .line 122
    const-string v2, "Face auth triggered due to finger down on UDFPS"

    .line 124
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestFaceAuth(Ljava/lang/String;)Z

    .line 126
    :cond_4
    iput-boolean v11, v1, Lcom/android/systemui/biometrics/UdfpsController;->mOnFingerDown:Z

    .line 129
    sget-object v0, Lcom/android/systemui/flags/Flags;->UDFPS_NEW_TOUCH_DETECTION:Lcom/android/systemui/flags/ReleasedFlag;

    .line 131
    iget-object v2, v1, Lcom/android/systemui/biometrics/UdfpsController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 133
    check-cast v2, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 135
    invoke-virtual {v2, v0}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 137
    move-result v0

    .line 140
    if-eqz v0, :cond_5

    .line 141
    iget-object v2, v1, Lcom/android/systemui/biometrics/UdfpsController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 143
    iget-object v0, v1, Lcom/android/systemui/biometrics/UdfpsController;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 145
    iget v5, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 147
    move-wide/from16 v3, p1

    .line 149
    move/from16 v6, p3

    .line 151
    move/from16 v7, p4

    .line 153
    move/from16 v8, p5

    .line 155
    move/from16 v9, p6

    .line 157
    move/from16 v10, p7

    .line 159
    move v0, v11

    .line 161
    move/from16 v11, p8

    .line 162
    move v0, v13

    .line 164
    move-wide/from16 v12, p9

    .line 165
    move-wide/from16 v14, p11

    .line 167
    move/from16 v16, p13

    .line 169
    invoke-virtual/range {v2 .. v16}, Landroid/hardware/fingerprint/FingerprintManager;->onPointerDown(JIIFFFFFJJZ)V

    .line 171
    goto :goto_1

    .line 174
    :cond_5
    move v0, v13

    .line 175
    iget-object v2, v1, Lcom/android/systemui/biometrics/UdfpsController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 176
    iget-object v3, v1, Lcom/android/systemui/biometrics/UdfpsController;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 178
    iget v5, v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 180
    move/from16 v3, p4

    .line 182
    float-to-int v6, v3

    .line 184
    move/from16 v3, p5

    .line 185
    float-to-int v7, v3

    .line 187
    move-wide/from16 v3, p1

    .line 188
    move/from16 v8, p6

    .line 190
    move/from16 v9, p7

    .line 192
    invoke-virtual/range {v2 .. v9}, Landroid/hardware/fingerprint/FingerprintManager;->onPointerDown(JIIIFF)V

    .line 194
    :goto_1
    const-string v2, "UdfpsController.e2e.onPointerDown"

    .line 197
    invoke-static {v2, v0}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    .line 199
    iget-object v2, v1, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    .line 202
    iget-object v2, v2, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayView:Lcom/android/systemui/biometrics/UdfpsView;

    .line 204
    if-eqz v2, :cond_b

    .line 206
    iget-object v3, v1, Lcom/android/systemui/biometrics/UdfpsController;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 208
    iget v3, v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    .line 210
    const/4 v4, 0x3

    .line 212
    if-ne v3, v4, :cond_6

    .line 213
    const/4 v13, 0x1

    .line 215
    goto :goto_2

    .line 216
    :cond_6
    move v13, v0

    .line 217
    :goto_2
    if-eqz v13, :cond_b

    .line 218
    iget-boolean v0, v1, Lcom/android/systemui/biometrics/UdfpsController;->mIgnoreRefreshRate:Z

    .line 220
    if-eqz v0, :cond_7

    .line 222
    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/biometrics/UdfpsController;->dispatchOnUiReady(J)V

    .line 224
    goto/16 :goto_4

    .line 227
    :cond_7
    const/4 v0, 0x1

    .line 229
    iput-boolean v0, v2, Lcom/android/systemui/biometrics/UdfpsView;->isDisplayConfigured:Z

    .line 230
    iget-object v0, v2, Lcom/android/systemui/biometrics/UdfpsView;->animationViewController:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    .line 232
    if-eqz v0, :cond_8

    .line 234
    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->getView()Lcom/android/systemui/biometrics/UdfpsAnimationView;

    .line 236
    move-result-object v3

    .line 239
    invoke-virtual {v3}, Lcom/android/systemui/biometrics/UdfpsAnimationView;->onDisplayConfiguring()V

    .line 240
    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->getView()Lcom/android/systemui/biometrics/UdfpsAnimationView;

    .line 243
    move-result-object v0

    .line 246
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->postInvalidate()V

    .line 247
    :cond_8
    iget-object v0, v2, Lcom/android/systemui/biometrics/UdfpsView;->mUdfpsDisplayMode:Lcom/android/systemui/biometrics/UdfpsDisplayModeProvider;

    .line 250
    if-eqz v0, :cond_b

    .line 252
    check-cast v0, Lcom/android/systemui/biometrics/UdfpsDisplayMode;

    .line 254
    iget-object v2, v0, Lcom/android/systemui/biometrics/UdfpsDisplayMode;->execution:Lcom/android/systemui/util/concurrency/ExecutionImpl;

    .line 256
    iget-object v2, v2, Lcom/android/systemui/util/concurrency/ExecutionImpl;->mainLooper:Landroid/os/Looper;

    .line 258
    invoke-virtual {v2}, Landroid/os/Looper;->isCurrentThread()Z

    .line 260
    const-string v2, "enable"

    .line 263
    iget-object v3, v0, Lcom/android/systemui/biometrics/UdfpsDisplayMode;->logger:Lcom/android/systemui/biometrics/UdfpsLogger;

    .line 265
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 267
    sget-object v4, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 270
    const-string v5, "UdfpsDisplayMode"

    .line 272
    iget-object v6, v3, Lcom/android/systemui/biometrics/UdfpsLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 274
    const/4 v7, 0x0

    .line 276
    const/16 v8, 0x8

    .line 277
    const/4 v9, 0x0

    .line 279
    move-object/from16 p3, v6

    .line 280
    move-object/from16 p4, v5

    .line 282
    move-object/from16 p5, v4

    .line 284
    move-object/from16 p6, v2

    .line 286
    move-object/from16 p7, v7

    .line 288
    move/from16 p8, v8

    .line 290
    move-object/from16 p9, v9

    .line 292
    invoke-static/range {p3 .. p9}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 294
    iget-object v5, v0, Lcom/android/systemui/biometrics/UdfpsDisplayMode;->currentRequest:Lcom/android/systemui/biometrics/Request;

    .line 297
    if-eqz v5, :cond_9

    .line 299
    const-string v0, "enable | already requested"

    .line 301
    sget-object v2, Lcom/android/systemui/log/LogLevel;->ERROR:Lcom/android/systemui/log/LogLevel;

    .line 303
    const-string v4, "UdfpsDisplayMode"

    .line 305
    iget-object v3, v3, Lcom/android/systemui/biometrics/UdfpsLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 307
    const/4 v5, 0x0

    .line 309
    const/16 v6, 0x8

    .line 310
    const/4 v7, 0x0

    .line 312
    move-object/from16 p1, v3

    .line 313
    move-object/from16 p2, v4

    .line 315
    move-object/from16 p3, v2

    .line 317
    move-object/from16 p4, v0

    .line 319
    move-object/from16 p5, v5

    .line 321
    move/from16 p6, v6

    .line 323
    move-object/from16 p7, v7

    .line 325
    invoke-static/range {p1 .. p7}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 327
    goto/16 :goto_4

    .line 330
    :cond_9
    iget-object v5, v0, Lcom/android/systemui/biometrics/UdfpsDisplayMode;->authController:Lcom/android/systemui/biometrics/AuthController;

    .line 332
    iget-object v6, v5, Lcom/android/systemui/biometrics/AuthController;->mUdfpsRefreshRateRequestCallback:Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;

    .line 334
    if-nez v6, :cond_a

    .line 336
    const-string v0, "enable | mDisplayManagerCallback is null"

    .line 338
    sget-object v2, Lcom/android/systemui/log/LogLevel;->ERROR:Lcom/android/systemui/log/LogLevel;

    .line 340
    const-string v4, "UdfpsDisplayMode"

    .line 342
    iget-object v3, v3, Lcom/android/systemui/biometrics/UdfpsLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 344
    const/4 v5, 0x0

    .line 346
    const/16 v6, 0x8

    .line 347
    const/4 v7, 0x0

    .line 349
    move-object/from16 p1, v3

    .line 350
    move-object/from16 p2, v4

    .line 352
    move-object/from16 p3, v2

    .line 354
    move-object/from16 p4, v0

    .line 356
    move-object/from16 p5, v5

    .line 358
    move/from16 p6, v6

    .line 360
    move-object/from16 p7, v7

    .line 362
    invoke-static/range {p1 .. p7}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 364
    goto :goto_4

    .line 367
    :cond_a
    const-string v6, "UdfpsDisplayMode.enable"

    .line 368
    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 370
    new-instance v6, Lcom/android/systemui/biometrics/Request;

    .line 373
    iget-object v7, v0, Lcom/android/systemui/biometrics/UdfpsDisplayMode;->context:Landroid/content/Context;

    .line 375
    invoke-virtual {v7}, Landroid/content/Context;->getDisplayId()I

    .line 377
    move-result v7

    .line 380
    invoke-direct {v6, v7}, Lcom/android/systemui/biometrics/Request;-><init>(I)V

    .line 381
    iput-object v6, v0, Lcom/android/systemui/biometrics/UdfpsDisplayMode;->currentRequest:Lcom/android/systemui/biometrics/Request;

    .line 384
    :try_start_0
    iget-object v0, v5, Lcom/android/systemui/biometrics/AuthController;->mUdfpsRefreshRateRequestCallback:Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;

    .line 386
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 388
    invoke-interface {v0, v7}, Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;->onRequestEnabled(I)V

    .line 391
    const-string v0, "enable | requested optimal refresh rate for UDFPS"

    .line 394
    const-string v5, "UdfpsDisplayMode"

    .line 396
    iget-object v6, v3, Lcom/android/systemui/biometrics/UdfpsLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 398
    const/4 v7, 0x0

    .line 400
    const/16 v8, 0x8

    .line 401
    const/4 v9, 0x0

    .line 403
    move-object/from16 p3, v6

    .line 404
    move-object/from16 p4, v5

    .line 406
    move-object/from16 p5, v4

    .line 408
    move-object/from16 p6, v0

    .line 410
    move-object/from16 p7, v7

    .line 412
    move/from16 p8, v8

    .line 414
    move-object/from16 p9, v9

    .line 416
    invoke-static/range {p3 .. p9}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    goto :goto_3

    .line 421
    :catch_0
    move-exception v0

    .line 422
    sget-object v4, Lcom/android/systemui/log/LogLevel;->ERROR:Lcom/android/systemui/log/LogLevel;

    .line 423
    new-instance v5, Lcom/android/systemui/biometrics/UdfpsLogger$e$2;

    .line 425
    invoke-direct {v5, v2}, Lcom/android/systemui/biometrics/UdfpsLogger$e$2;-><init>(Ljava/lang/String;)V

    .line 427
    const-string v2, "UdfpsDisplayMode"

    .line 430
    iget-object v3, v3, Lcom/android/systemui/biometrics/UdfpsLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 432
    invoke-virtual {v3, v2, v4, v5, v0}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 434
    move-result-object v0

    .line 437
    invoke-virtual {v3, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 438
    :goto_3
    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/biometrics/UdfpsController;->dispatchOnUiReady(J)V

    .line 441
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 444
    :cond_b
    :goto_4
    iget-object v0, v1, Lcom/android/systemui/biometrics/UdfpsController;->mCallbacks:Ljava/util/Set;

    .line 447
    check-cast v0, Ljava/util/HashSet;

    .line 449
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 451
    move-result-object v0

    .line 454
    :cond_c
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 455
    move-result v1

    .line 458
    if-eqz v1, :cond_e

    .line 459
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 461
    move-result-object v1

    .line 464
    check-cast v1, Lcom/android/systemui/biometrics/UdfpsController$Callback;

    .line 465
    check-cast v1, Lcom/android/systemui/biometrics/AuthController$3;

    .line 467
    iget-object v1, v1, Lcom/android/systemui/biometrics/AuthController$3;->this$0:Lcom/android/systemui/biometrics/AuthController;

    .line 469
    iget-object v1, v1, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    .line 471
    if-eqz v1, :cond_c

    .line 473
    check-cast v1, Lcom/android/systemui/biometrics/AuthContainerView;

    .line 475
    iget-object v2, v1, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricViewAdapter;

    .line 477
    const-string v3, "AuthContainerView"

    .line 479
    if-eqz v2, :cond_d

    .line 481
    iget-object v2, v1, Lcom/android/systemui/biometrics/AuthContainerView;->mFailedModalities:Ljava/util/Set;

    .line 483
    const/16 v4, 0x8

    .line 485
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 487
    move-result-object v5

    .line 490
    check-cast v2, Ljava/util/HashSet;

    .line 491
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 493
    move-result v2

    .line 496
    if-eqz v2, :cond_c

    .line 497
    const-string/jumbo v2, "retrying failed modalities (pointer down)"

    .line 499
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v2, v1, Lcom/android/systemui/biometrics/AuthContainerView;->mFailedModalities:Ljava/util/Set;

    .line 505
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 507
    move-result-object v3

    .line 510
    check-cast v2, Ljava/util/HashSet;

    .line 511
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 513
    iget-object v1, v1, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricCallback:Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;

    .line 516
    const/4 v2, 0x4

    .line 518
    invoke-virtual {v1, v2}, Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;->onAction(I)V

    .line 519
    goto :goto_5

    .line 522
    :cond_d
    const-string v1, "onPointerDown(): mBiometricView is null"

    .line 523
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    goto :goto_5

    .line 528
    :cond_e
    return-void
.end method

.method public final onFingerUp(JLcom/android/systemui/biometrics/UdfpsView;)V
    .locals 15

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    .line 1
    invoke-virtual/range {v0 .. v14}, Lcom/android/systemui/biometrics/UdfpsController;->onFingerUp(JLcom/android/systemui/biometrics/UdfpsView;IFFFFFJJZ)V

    return-void
.end method

.method public final onFingerUp(JLcom/android/systemui/biometrics/UdfpsView;IFFFFFJJZ)V
    .locals 18

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/systemui/biometrics/UdfpsController;->mExecution:Lcom/android/systemui/util/concurrency/ExecutionImpl;

    invoke-virtual {v1}, Lcom/android/systemui/util/concurrency/ExecutionImpl;->assertIsMainThread()V

    const/4 v1, -0x1

    .line 3
    iput v1, v0, Lcom/android/systemui/biometrics/UdfpsController;->mActivePointerId:I

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lcom/android/systemui/biometrics/UdfpsController;->mAcquiredReceived:Z

    .line 5
    iget-boolean v2, v0, Lcom/android/systemui/biometrics/UdfpsController;->mOnFingerDown:Z

    if-eqz v2, :cond_1

    .line 6
    sget-object v2, Lcom/android/systemui/flags/Flags;->UDFPS_NEW_TOUCH_DETECTION:Lcom/android/systemui/flags/ReleasedFlag;

    iget-object v3, v0, Lcom/android/systemui/biometrics/UdfpsController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    check-cast v3, Lcom/android/systemui/flags/FeatureFlagsRelease;

    invoke-virtual {v3, v2}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    iget-object v3, v0, Lcom/android/systemui/biometrics/UdfpsController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v2, v0, Lcom/android/systemui/biometrics/UdfpsController;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v6, v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    move-wide/from16 v4, p1

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move-wide/from16 v13, p10

    move-wide/from16 v15, p12

    move/from16 v17, p14

    invoke-virtual/range {v3 .. v17}, Landroid/hardware/fingerprint/FingerprintManager;->onPointerUp(JIIFFFFFJJZ)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/biometrics/UdfpsController;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v2, v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    iget-object v3, v0, Lcom/android/systemui/biometrics/UdfpsController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    move-wide/from16 v4, p1

    invoke-virtual {v3, v4, v5, v2}, Landroid/hardware/fingerprint/FingerprintManager;->onPointerUp(JI)V

    .line 9
    :goto_0
    iget-object v2, v0, Lcom/android/systemui/biometrics/UdfpsController;->mCallbacks:Ljava/util/Set;

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/biometrics/UdfpsController$Callback;

    .line 10
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    .line 11
    :cond_1
    iput-boolean v1, v0, Lcom/android/systemui/biometrics/UdfpsController;->mOnFingerDown:Z

    .line 12
    iget-object v2, v0, Lcom/android/systemui/biometrics/UdfpsController;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v2, v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    move-object/from16 v1, p3

    .line 13
    iget-boolean v2, v1, Lcom/android/systemui/biometrics/UdfpsView;->isDisplayConfigured:Z

    if-eqz v2, :cond_3

    .line 14
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/biometrics/UdfpsView;->unconfigureDisplay$1()V

    .line 15
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/biometrics/UdfpsController;->cancelAodSendFingerUpAction()V

    return-void
.end method

.method public onTouch(JLandroid/view/MotionEvent;Z)Z
    .locals 30

    .line 1
    move-object/from16 v15, p0

    .line 2
    move-wide/from16 v1, p1

    .line 4
    move-object/from16 v14, p3

    .line 6
    move/from16 v0, p4

    .line 8
    sget-object v3, Lcom/android/systemui/flags/Flags;->UDFPS_NEW_TOUCH_DETECTION:Lcom/android/systemui/flags/ReleasedFlag;

    .line 10
    iget-object v4, v15, Lcom/android/systemui/biometrics/UdfpsController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 12
    check-cast v4, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 14
    invoke-virtual {v4, v3}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 16
    move-result v3

    .line 19
    const/4 v4, 0x1

    .line 20
    const-wide/16 v16, 0x32

    .line 21
    iget-object v12, v15, Lcom/android/systemui/biometrics/UdfpsController;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 23
    iget-object v13, v15, Lcom/android/systemui/biometrics/UdfpsController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 25
    const-string v5, " current: "

    .line 27
    const-string v6, "ignoring stale touch event: "

    .line 29
    const-string v7, "ignoring onTouch with null overlay"

    .line 31
    const-string v10, "UdfpsController"

    .line 33
    const/4 v8, -0x1

    .line 35
    if-eqz v3, :cond_37

    .line 36
    if-nez v0, :cond_0

    .line 38
    const-string v0, "ignoring the touch injected from outside of UdfpsView"

    .line 40
    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    goto/16 :goto_1a

    .line 45
    :cond_0
    iget-object v0, v15, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    .line 47
    if-nez v0, :cond_1

    .line 49
    invoke-static {v10, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    goto/16 :goto_1a

    .line 54
    :cond_1
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->matchesRequestId(J)Z

    .line 56
    move-result v0

    .line 59
    if-nez v0, :cond_2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-object v1, v15, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    .line 73
    iget-wide v1, v1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->requestId:J

    .line 75
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 83
    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    goto/16 :goto_1a

    .line 87
    :cond_2
    iget-object v0, v15, Lcom/android/systemui/biometrics/UdfpsController;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    .line 89
    iget-object v0, v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->qsTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;

    .line 91
    iget v0, v0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsTransitionFraction:F

    .line 93
    const/4 v3, 0x0

    .line 95
    cmpl-float v0, v0, v3

    .line 96
    if-nez v0, :cond_36

    .line 98
    iget-object v0, v15, Lcom/android/systemui/biometrics/UdfpsController;->mPrimaryBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;

    .line 100
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->isInTransit()Z

    .line 102
    move-result v0

    .line 105
    if-eqz v0, :cond_3

    .line 106
    goto/16 :goto_1a

    .line 108
    :cond_3
    iget v0, v15, Lcom/android/systemui/biometrics/UdfpsController;->mActivePointerId:I

    .line 110
    iget-object v3, v15, Lcom/android/systemui/biometrics/UdfpsController;->mOverlayParams:Lcom/android/settingslib/udfps/UdfpsOverlayParams;

    .line 112
    iget-object v5, v15, Lcom/android/systemui/biometrics/UdfpsController;->mTouchProcessor:Lcom/android/systemui/biometrics/udfps/SinglePointerTouchProcessor;

    .line 114
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 119
    move-result v6

    .line 122
    sget-object v7, Lcom/android/systemui/biometrics/udfps/InteractionEvent;->UP:Lcom/android/systemui/biometrics/udfps/InteractionEvent;

    .line 123
    sget-object v11, Lcom/android/systemui/biometrics/udfps/InteractionEvent;->UNCHANGED:Lcom/android/systemui/biometrics/udfps/InteractionEvent;

    .line 125
    sget-object v9, Lcom/android/systemui/biometrics/udfps/InteractionEvent;->CANCEL:Lcom/android/systemui/biometrics/udfps/InteractionEvent;

    .line 127
    packed-switch v6, :pswitch_data_0

    .line 129
    :pswitch_0
    new-instance v3, Lcom/android/systemui/biometrics/udfps/TouchProcessorResult$Failure;

    .line 132
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 134
    move-result v0

    .line 137
    invoke-static {v0}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    .line 138
    move-result-object v0

    .line 141
    const-string v5, "Unsupported MotionEvent."

    .line 142
    invoke-static {v5, v0}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    move-result-object v0

    .line 147
    invoke-direct {v3, v0}, Lcom/android/systemui/biometrics/udfps/TouchProcessorResult$Failure;-><init>(Ljava/lang/String;)V

    .line 148
    goto/16 :goto_f

    .line 151
    :pswitch_1
    new-instance v0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;

    .line 153
    invoke-direct {v0}, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;-><init>()V

    .line 155
    sget-object v3, Lcom/android/systemui/biometrics/udfps/SinglePointerTouchProcessorKt;->SUPPORTED_ROTATIONS:Ljava/util/Set;

    .line 158
    new-instance v3, Lcom/android/systemui/biometrics/udfps/TouchProcessorResult$ProcessedTouch;

    .line 160
    invoke-direct {v3, v9, v8, v0}, Lcom/android/systemui/biometrics/udfps/TouchProcessorResult$ProcessedTouch;-><init>(Lcom/android/systemui/biometrics/udfps/InteractionEvent;ILcom/android/systemui/biometrics/udfps/NormalizedTouchData;)V

    .line 162
    goto/16 :goto_f

    .line 165
    :pswitch_2
    invoke-static {v14, v0, v3, v5}, Lcom/android/systemui/biometrics/udfps/SinglePointerTouchProcessor;->processTouch$preprocess(Landroid/view/MotionEvent;ILcom/android/settingslib/udfps/UdfpsOverlayParams;Lcom/android/systemui/biometrics/udfps/SinglePointerTouchProcessor;)Lcom/android/systemui/biometrics/udfps/PreprocessedTouch;

    .line 167
    move-result-object v0

    .line 170
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 171
    move-result v3

    .line 174
    invoke-virtual {v14, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 175
    move-result v3

    .line 178
    sget-object v5, Lcom/android/systemui/biometrics/udfps/SinglePointerTouchProcessorKt;->SUPPORTED_ROTATIONS:Ljava/util/Set;

    .line 179
    iget-object v5, v0, Lcom/android/systemui/biometrics/udfps/PreprocessedTouch;->pointersOnSensor:Ljava/util/List;

    .line 181
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 183
    move-result v6

    .line 186
    iget-object v0, v0, Lcom/android/systemui/biometrics/udfps/PreprocessedTouch;->data:Ljava/util/List;

    .line 187
    if-ne v6, v4, :cond_8

    .line 189
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    move-result-object v6

    .line 194
    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 195
    move-result v6

    .line 198
    if-eqz v6, :cond_8

    .line 199
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 201
    move-result-object v0

    .line 204
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 205
    move-result v5

    .line 208
    if-eqz v5, :cond_6

    .line 209
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 211
    move-result-object v5

    .line 214
    move-object v6, v5

    .line 215
    check-cast v6, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;

    .line 216
    iget v6, v6, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->pointerId:I

    .line 218
    if-ne v6, v3, :cond_5

    .line 220
    move v6, v4

    .line 222
    goto :goto_0

    .line 223
    :cond_5
    const/4 v6, 0x0

    .line 224
    :goto_0
    if-eqz v6, :cond_4

    .line 225
    goto :goto_1

    .line 227
    :cond_6
    const/4 v5, 0x0

    .line 228
    :goto_1
    check-cast v5, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;

    .line 229
    if-nez v5, :cond_7

    .line 231
    new-instance v5, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;

    .line 233
    invoke-direct {v5}, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;-><init>()V

    .line 235
    :cond_7
    new-instance v0, Lcom/android/systemui/biometrics/udfps/TouchProcessorResult$ProcessedTouch;

    .line 238
    invoke-direct {v0, v7, v8, v5}, Lcom/android/systemui/biometrics/udfps/TouchProcessorResult$ProcessedTouch;-><init>(Lcom/android/systemui/biometrics/udfps/InteractionEvent;ILcom/android/systemui/biometrics/udfps/NormalizedTouchData;)V

    .line 240
    :goto_2
    move-object v3, v0

    .line 243
    goto/16 :goto_f

    .line 244
    :cond_8
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 246
    move-result-object v5

    .line 249
    :cond_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 250
    move-result v6

    .line 253
    if-eqz v6, :cond_b

    .line 254
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 256
    move-result-object v6

    .line 259
    move-object v7, v6

    .line 260
    check-cast v7, Ljava/lang/Number;

    .line 261
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 263
    move-result v7

    .line 266
    if-eq v7, v3, :cond_a

    .line 267
    move v7, v4

    .line 269
    goto :goto_3

    .line 270
    :cond_a
    const/4 v7, 0x0

    .line 271
    :goto_3
    if-eqz v7, :cond_9

    .line 272
    goto :goto_4

    .line 274
    :cond_b
    const/4 v6, 0x0

    .line 275
    :goto_4
    check-cast v6, Ljava/lang/Integer;

    .line 276
    if-eqz v6, :cond_c

    .line 278
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 280
    move-result v8

    .line 283
    :cond_c
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 284
    move-result-object v3

    .line 287
    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 288
    move-result v5

    .line 291
    if-eqz v5, :cond_f

    .line 292
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 294
    move-result-object v5

    .line 297
    move-object v6, v5

    .line 298
    check-cast v6, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;

    .line 299
    iget v6, v6, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->pointerId:I

    .line 301
    if-ne v6, v8, :cond_e

    .line 303
    move v6, v4

    .line 305
    goto :goto_5

    .line 306
    :cond_e
    const/4 v6, 0x0

    .line 307
    :goto_5
    if-eqz v6, :cond_d

    .line 308
    goto :goto_6

    .line 310
    :cond_f
    const/4 v5, 0x0

    .line 311
    :goto_6
    check-cast v5, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;

    .line 312
    if-nez v5, :cond_10

    .line 314
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 316
    move-result-object v0

    .line 319
    move-object v5, v0

    .line 320
    check-cast v5, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;

    .line 321
    if-nez v5, :cond_10

    .line 323
    new-instance v5, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;

    .line 325
    invoke-direct {v5}, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;-><init>()V

    .line 327
    :cond_10
    new-instance v3, Lcom/android/systemui/biometrics/udfps/TouchProcessorResult$ProcessedTouch;

    .line 330
    invoke-direct {v3, v11, v8, v5}, Lcom/android/systemui/biometrics/udfps/TouchProcessorResult$ProcessedTouch;-><init>(Lcom/android/systemui/biometrics/udfps/InteractionEvent;ILcom/android/systemui/biometrics/udfps/NormalizedTouchData;)V

    .line 332
    goto/16 :goto_f

    .line 335
    :pswitch_3
    invoke-static {v14, v0, v3, v5}, Lcom/android/systemui/biometrics/udfps/SinglePointerTouchProcessor;->processTouch$preprocess(Landroid/view/MotionEvent;ILcom/android/settingslib/udfps/UdfpsOverlayParams;Lcom/android/systemui/biometrics/udfps/SinglePointerTouchProcessor;)Lcom/android/systemui/biometrics/udfps/PreprocessedTouch;

    .line 337
    move-result-object v0

    .line 340
    sget-object v3, Lcom/android/systemui/biometrics/udfps/SinglePointerTouchProcessorKt;->SUPPORTED_ROTATIONS:Ljava/util/Set;

    .line 341
    iget v3, v0, Lcom/android/systemui/biometrics/udfps/PreprocessedTouch;->previousPointerOnSensorId:I

    .line 343
    if-eq v3, v8, :cond_11

    .line 345
    move v5, v4

    .line 347
    goto :goto_7

    .line 348
    :cond_11
    const/4 v5, 0x0

    .line 349
    :goto_7
    iget-object v6, v0, Lcom/android/systemui/biometrics/udfps/PreprocessedTouch;->pointersOnSensor:Ljava/util/List;

    .line 350
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 352
    move-result v18

    .line 355
    xor-int/lit8 v18, v18, 0x1

    .line 356
    invoke-static {v6}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 358
    move-result-object v6

    .line 361
    check-cast v6, Ljava/lang/Integer;

    .line 362
    if-eqz v6, :cond_12

    .line 364
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 366
    move-result v6

    .line 369
    goto :goto_8

    .line 370
    :cond_12
    move v6, v8

    .line 371
    :goto_8
    iget-object v0, v0, Lcom/android/systemui/biometrics/udfps/PreprocessedTouch;->data:Ljava/util/List;

    .line 372
    if-nez v5, :cond_17

    .line 374
    if-eqz v18, :cond_17

    .line 376
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 378
    move-result-object v0

    .line 381
    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 382
    move-result v3

    .line 385
    if-eqz v3, :cond_15

    .line 386
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 388
    move-result-object v3

    .line 391
    move-object v5, v3

    .line 392
    check-cast v5, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;

    .line 393
    iget v5, v5, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->pointerId:I

    .line 395
    if-ne v5, v6, :cond_14

    .line 397
    move v5, v4

    .line 399
    goto :goto_9

    .line 400
    :cond_14
    const/4 v5, 0x0

    .line 401
    :goto_9
    if-eqz v5, :cond_13

    .line 402
    goto :goto_a

    .line 404
    :cond_15
    const/4 v3, 0x0

    .line 405
    :goto_a
    check-cast v3, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;

    .line 406
    if-nez v3, :cond_16

    .line 408
    new-instance v3, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;

    .line 410
    invoke-direct {v3}, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;-><init>()V

    .line 412
    :cond_16
    new-instance v0, Lcom/android/systemui/biometrics/udfps/TouchProcessorResult$ProcessedTouch;

    .line 415
    sget-object v5, Lcom/android/systemui/biometrics/udfps/InteractionEvent;->DOWN:Lcom/android/systemui/biometrics/udfps/InteractionEvent;

    .line 417
    iget v6, v3, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->pointerId:I

    .line 419
    invoke-direct {v0, v5, v6, v3}, Lcom/android/systemui/biometrics/udfps/TouchProcessorResult$ProcessedTouch;-><init>(Lcom/android/systemui/biometrics/udfps/InteractionEvent;ILcom/android/systemui/biometrics/udfps/NormalizedTouchData;)V

    .line 421
    goto/16 :goto_2

    .line 424
    :cond_17
    if-eqz v5, :cond_1c

    .line 426
    if-nez v18, :cond_1c

    .line 428
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 430
    move-result-object v0

    .line 433
    :cond_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 434
    move-result v5

    .line 437
    if-eqz v5, :cond_1a

    .line 438
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 440
    move-result-object v5

    .line 443
    move-object v6, v5

    .line 444
    check-cast v6, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;

    .line 445
    iget v6, v6, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->pointerId:I

    .line 447
    if-ne v6, v3, :cond_19

    .line 449
    move v6, v4

    .line 451
    goto :goto_b

    .line 452
    :cond_19
    const/4 v6, 0x0

    .line 453
    :goto_b
    if-eqz v6, :cond_18

    .line 454
    goto :goto_c

    .line 456
    :cond_1a
    const/4 v5, 0x0

    .line 457
    :goto_c
    check-cast v5, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;

    .line 458
    if-nez v5, :cond_1b

    .line 460
    new-instance v5, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;

    .line 462
    invoke-direct {v5}, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;-><init>()V

    .line 464
    :cond_1b
    new-instance v0, Lcom/android/systemui/biometrics/udfps/TouchProcessorResult$ProcessedTouch;

    .line 467
    invoke-direct {v0, v7, v8, v5}, Lcom/android/systemui/biometrics/udfps/TouchProcessorResult$ProcessedTouch;-><init>(Lcom/android/systemui/biometrics/udfps/InteractionEvent;ILcom/android/systemui/biometrics/udfps/NormalizedTouchData;)V

    .line 469
    goto/16 :goto_2

    .line 472
    :cond_1c
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 474
    move-result-object v3

    .line 477
    :cond_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 478
    move-result v5

    .line 481
    if-eqz v5, :cond_1f

    .line 482
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 484
    move-result-object v5

    .line 487
    move-object v7, v5

    .line 488
    check-cast v7, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;

    .line 489
    iget v7, v7, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->pointerId:I

    .line 491
    if-ne v7, v6, :cond_1e

    .line 493
    move v7, v4

    .line 495
    goto :goto_d

    .line 496
    :cond_1e
    const/4 v7, 0x0

    .line 497
    :goto_d
    if-eqz v7, :cond_1d

    .line 498
    goto :goto_e

    .line 500
    :cond_1f
    const/4 v5, 0x0

    .line 501
    :goto_e
    check-cast v5, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;

    .line 502
    if-nez v5, :cond_20

    .line 504
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 506
    move-result-object v0

    .line 509
    move-object v5, v0

    .line 510
    check-cast v5, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;

    .line 511
    if-nez v5, :cond_20

    .line 513
    new-instance v5, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;

    .line 515
    invoke-direct {v5}, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;-><init>()V

    .line 517
    :cond_20
    new-instance v0, Lcom/android/systemui/biometrics/udfps/TouchProcessorResult$ProcessedTouch;

    .line 520
    invoke-direct {v0, v11, v6, v5}, Lcom/android/systemui/biometrics/udfps/TouchProcessorResult$ProcessedTouch;-><init>(Lcom/android/systemui/biometrics/udfps/InteractionEvent;ILcom/android/systemui/biometrics/udfps/NormalizedTouchData;)V

    .line 522
    goto/16 :goto_2

    .line 525
    :goto_f
    instance-of v0, v3, Lcom/android/systemui/biometrics/udfps/TouchProcessorResult$Failure;

    .line 527
    if-eqz v0, :cond_21

    .line 529
    check-cast v3, Lcom/android/systemui/biometrics/udfps/TouchProcessorResult$Failure;

    .line 531
    iget-object v0, v3, Lcom/android/systemui/biometrics/udfps/TouchProcessorResult$Failure;->reason:Ljava/lang/String;

    .line 533
    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    goto/16 :goto_1a

    .line 538
    :cond_21
    check-cast v3, Lcom/android/systemui/biometrics/udfps/TouchProcessorResult$ProcessedTouch;

    .line 540
    iget v0, v3, Lcom/android/systemui/biometrics/udfps/TouchProcessorResult$ProcessedTouch;->pointerOnSensorId:I

    .line 542
    iput v0, v15, Lcom/android/systemui/biometrics/UdfpsController;->mActivePointerId:I

    .line 544
    iget-object v8, v3, Lcom/android/systemui/biometrics/udfps/TouchProcessorResult$ProcessedTouch;->event:Lcom/android/systemui/biometrics/udfps/InteractionEvent;

    .line 546
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 548
    move-result v0

    .line 551
    iget-object v7, v3, Lcom/android/systemui/biometrics/udfps/TouchProcessorResult$ProcessedTouch;->touchData:Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;

    .line 552
    iget-object v6, v15, Lcom/android/systemui/biometrics/UdfpsController;->mAlternateBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;

    .line 554
    iget-object v5, v15, Lcom/android/systemui/biometrics/UdfpsController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 556
    if-eqz v0, :cond_26

    .line 558
    if-eq v0, v4, :cond_24

    .line 560
    const/4 v3, 0x2

    .line 562
    if-eq v0, v3, :cond_24

    .line 563
    const/4 v1, 0x3

    .line 565
    if-eq v0, v1, :cond_22

    .line 566
    goto :goto_10

    .line 568
    :cond_22
    iget-object v0, v15, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    .line 569
    iget-object v0, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayView:Lcom/android/systemui/biometrics/UdfpsView;

    .line 571
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getRawX()F

    .line 573
    move-result v1

    .line 576
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getRawY()F

    .line 577
    move-result v2

    .line 580
    invoke-virtual {v15, v0, v1, v2, v4}, Lcom/android/systemui/biometrics/UdfpsController;->isWithinSensorArea(Lcom/android/systemui/biometrics/UdfpsView;FFZ)Z

    .line 581
    move-result v0

    .line 584
    if-nez v0, :cond_23

    .line 585
    iget v0, v15, Lcom/android/systemui/biometrics/UdfpsController;->mActivePointerId:I

    .line 587
    const/4 v1, -0x1

    .line 589
    if-ne v0, v1, :cond_23

    .line 590
    invoke-virtual {v6}, Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;->isVisibleState()Z

    .line 592
    move-result v0

    .line 595
    if-eqz v0, :cond_23

    .line 596
    iget-object v0, v15, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 598
    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onTouch(Landroid/view/MotionEvent;)Z

    .line 600
    :cond_23
    :goto_10
    move-object/from16 v23, v5

    .line 603
    move-object/from16 v24, v6

    .line 605
    move-object/from16 v28, v7

    .line 607
    move-object/from16 v25, v8

    .line 609
    move-object/from16 v26, v10

    .line 611
    move-object/from16 v27, v11

    .line 613
    move-object/from16 v18, v12

    .line 615
    move-object v15, v14

    .line 617
    goto :goto_11

    .line 618
    :cond_24
    invoke-virtual {v9, v8}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    .line 619
    move-result v0

    .line 622
    if-eqz v0, :cond_25

    .line 623
    const-string v0, "This is a CANCEL event that\'s reported as an UP event!"

    .line 625
    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_25
    const/4 v0, 0x0

    .line 630
    iput-boolean v0, v15, Lcom/android/systemui/biometrics/UdfpsController;->mAttemptedToDismissKeyguard:Z

    .line 631
    iget-object v0, v15, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    .line 633
    iget-object v3, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayView:Lcom/android/systemui/biometrics/UdfpsView;

    .line 635
    iget v4, v7, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->pointerId:I

    .line 637
    iget v9, v7, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->x:F

    .line 639
    iget v13, v7, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->y:F

    .line 641
    iget v0, v7, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->minor:F

    .line 643
    move-object/from16 v18, v8

    .line 645
    iget v8, v7, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->major:F

    .line 647
    move-object/from16 v19, v10

    .line 649
    iget v10, v7, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->orientation:F

    .line 651
    move-object/from16 p4, v11

    .line 653
    move-object/from16 v20, v12

    .line 655
    iget-wide v11, v7, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->time:J

    .line 657
    iget-wide v14, v7, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->gestureStart:J

    .line 659
    invoke-interface {v5}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    .line 661
    move-result v21

    .line 664
    move/from16 v22, v0

    .line 665
    move-object/from16 v0, p0

    .line 667
    move-wide/from16 v1, p1

    .line 669
    move-object/from16 v23, v5

    .line 671
    move v5, v9

    .line 673
    move-object/from16 v24, v6

    .line 674
    move v6, v13

    .line 676
    move-object v13, v7

    .line 677
    move/from16 v7, v22

    .line 678
    move-object/from16 v9, v18

    .line 680
    move-object/from16 v25, v9

    .line 682
    move v9, v10

    .line 684
    move-object/from16 v27, p4

    .line 685
    move-object/from16 v26, v19

    .line 687
    move-wide v10, v11

    .line 689
    move-object/from16 v28, v13

    .line 690
    move-object/from16 v18, v20

    .line 692
    move-wide v12, v14

    .line 694
    move-object/from16 v15, p3

    .line 695
    move/from16 v14, v21

    .line 697
    invoke-virtual/range {v0 .. v14}, Lcom/android/systemui/biometrics/UdfpsController;->onFingerUp(JLcom/android/systemui/biometrics/UdfpsView;IFFFFFJJZ)V

    .line 699
    :goto_11
    const/4 v0, 0x0

    .line 702
    goto :goto_12

    .line 703
    :cond_26
    move-object/from16 v23, v5

    .line 704
    move-object/from16 v24, v6

    .line 706
    move-object/from16 v28, v7

    .line 708
    move-object/from16 v25, v8

    .line 710
    move-object/from16 v26, v10

    .line 712
    move-object/from16 v27, v11

    .line 714
    move-object/from16 v18, v12

    .line 716
    move-object v15, v14

    .line 718
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/biometrics/UdfpsController;->shouldTryToDismissKeyguard()Z

    .line 719
    move-result v0

    .line 722
    if-eqz v0, :cond_27

    .line 723
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/biometrics/UdfpsController;->tryDismissingKeyguard()V

    .line 725
    :cond_27
    move-object/from16 v14, v28

    .line 728
    iget v3, v14, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->pointerId:I

    .line 730
    iget v4, v14, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->x:F

    .line 732
    iget v5, v14, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->y:F

    .line 734
    iget v6, v14, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->minor:F

    .line 736
    iget v7, v14, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->major:F

    .line 738
    iget v8, v14, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->orientation:F

    .line 740
    iget-wide v9, v14, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->time:J

    .line 742
    iget-wide v11, v14, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->gestureStart:J

    .line 744
    invoke-interface/range {v23 .. v23}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    .line 746
    move-result v19

    .line 749
    const/16 v0, 0xd

    .line 750
    move v15, v0

    .line 752
    move-object/from16 v0, p0

    .line 753
    move-wide/from16 v1, p1

    .line 755
    move-object/from16 v28, v14

    .line 757
    move-object v14, v13

    .line 759
    move/from16 v13, v19

    .line 760
    invoke-virtual/range {v0 .. v13}, Lcom/android/systemui/biometrics/UdfpsController;->onFingerDown(JIFFFFFJJZ)V

    .line 762
    invoke-interface {v14, v15}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch(I)Z

    .line 765
    const/4 v0, 0x1

    .line 768
    :goto_12
    move-object/from16 v2, v25

    .line 769
    move-object/from16 v1, v27

    .line 771
    if-ne v2, v1, :cond_28

    .line 773
    move-object/from16 v12, v18

    .line 775
    check-cast v12, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 777
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 779
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 782
    move-result-wide v3

    .line 785
    move-object/from16 v15, p0

    .line 786
    iget-wide v5, v15, Lcom/android/systemui/biometrics/UdfpsController;->mLastTouchInteractionTime:J

    .line 788
    sub-long/2addr v3, v5

    .line 790
    cmp-long v1, v3, v16

    .line 791
    if-gez v1, :cond_29

    .line 793
    move/from16 p1, v0

    .line 795
    move-object/from16 v5, v28

    .line 797
    goto/16 :goto_17

    .line 799
    :cond_28
    move-object/from16 v15, p0

    .line 801
    :cond_29
    move-object/from16 v12, v18

    .line 803
    check-cast v12, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 805
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 807
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 810
    move-result-wide v3

    .line 813
    iput-wide v3, v15, Lcom/android/systemui/biometrics/UdfpsController;->mLastTouchInteractionTime:J

    .line 814
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 816
    move-result v1

    .line 819
    if-eqz v1, :cond_2c

    .line 820
    const/4 v3, 0x1

    .line 822
    const/4 v4, 0x2

    .line 823
    if-eq v1, v3, :cond_2b

    .line 824
    if-eq v1, v4, :cond_2a

    .line 826
    const/4 v1, 0x0

    .line 828
    goto :goto_13

    .line 829
    :cond_2a
    const/4 v1, 0x3

    .line 830
    goto :goto_13

    .line 831
    :cond_2b
    move v1, v4

    .line 832
    goto :goto_13

    .line 833
    :cond_2c
    const/4 v4, 0x2

    .line 834
    const/4 v3, 0x1

    .line 835
    move v1, v3

    .line 836
    :goto_13
    iget-object v5, v15, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    .line 837
    if-nez v5, :cond_2d

    .line 839
    goto :goto_14

    .line 841
    :cond_2d
    iget v5, v5, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->requestReason:I

    .line 842
    const/4 v6, 0x4

    .line 844
    if-eq v5, v3, :cond_2f

    .line 845
    if-eq v5, v4, :cond_2f

    .line 847
    const/4 v7, 0x3

    .line 849
    if-eq v5, v7, :cond_2e

    .line 850
    if-eq v5, v6, :cond_30

    .line 852
    :goto_14
    const/4 v3, -0x1

    .line 854
    goto :goto_15

    .line 855
    :cond_2e
    move v3, v4

    .line 856
    goto :goto_15

    .line 857
    :cond_2f
    move v3, v6

    .line 858
    :cond_30
    :goto_15
    iget-object v4, v15, Lcom/android/systemui/biometrics/UdfpsController;->mSessionTracker:Lcom/android/systemui/log/SessionTracker;

    .line 859
    invoke-virtual {v4, v3}, Lcom/android/systemui/log/SessionTracker;->getSessionId(I)Lcom/android/internal/logging/InstanceId;

    .line 861
    move-result-object v3

    .line 864
    if-eqz v3, :cond_31

    .line 865
    invoke-virtual {v3}, Lcom/android/internal/logging/InstanceId;->getId()I

    .line 867
    move-result v3

    .line 870
    goto :goto_16

    .line 871
    :cond_31
    const/4 v3, -0x1

    .line 872
    :goto_16
    iget-object v4, v15, Lcom/android/systemui/biometrics/UdfpsController;->mContext:Landroid/content/Context;

    .line 873
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 875
    move-result-object v4

    .line 878
    const v5, 0x10e00fe    # @android:integer/config_stableDeviceDisplayHeight

    .line 879
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    .line 882
    move-result v4

    .line 885
    move-object/from16 v5, v28

    .line 886
    iget v6, v5, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->x:F

    .line 888
    invoke-interface/range {v23 .. v23}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    .line 890
    move-result v7

    .line 893
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    .line 894
    move-result-object v8

    .line 897
    const/16 v9, 0x241

    .line 898
    invoke-virtual {v8, v9}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 900
    invoke-virtual {v8, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 903
    invoke-virtual {v8, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 906
    invoke-virtual {v8, v3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 909
    invoke-virtual {v8, v6}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    .line 912
    iget v1, v5, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->y:F

    .line 915
    invoke-virtual {v8, v1}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    .line 917
    iget v6, v5, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->minor:F

    .line 920
    invoke-virtual {v8, v6}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    .line 922
    iget v9, v5, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->major:F

    .line 925
    invoke-virtual {v8, v9}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    .line 927
    iget v10, v5, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->orientation:F

    .line 930
    invoke-virtual {v8, v10}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    .line 932
    iget-wide v11, v5, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->time:J

    .line 935
    invoke-virtual {v8, v11, v12}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 937
    iget-wide v13, v5, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->gestureStart:J

    .line 940
    invoke-virtual {v8, v13, v14}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 942
    invoke-virtual {v8, v7}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 945
    invoke-virtual {v8}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 948
    invoke-virtual {v8}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    .line 951
    move-result-object v7

    .line 954
    invoke-static {v7}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 955
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    .line 958
    move-result v7

    .line 961
    if-eqz v7, :cond_32

    .line 962
    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 964
    move-result-object v2

    .line 967
    const-string v7, "\n        |NormalizedTouchData ["

    .line 968
    const-string v8, "] {\n        |     pointerId: "

    .line 970
    invoke-static {v7, v2, v8}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    move-result-object v2

    .line 975
    iget v7, v5, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->pointerId:I

    .line 976
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 978
    const-string v7, "\n        |             x: "

    .line 981
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    iget v7, v5, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->x:F

    .line 986
    const-string v8, "\n        |             y: "

    .line 988
    move/from16 p1, v0

    .line 990
    const-string v0, "\n        |         minor: "

    .line 992
    invoke-static {v2, v7, v8, v1, v0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    .line 994
    const-string v0, "\n        |         major: "

    .line 997
    const-string v1, "\n        |   orientation: "

    .line 999
    invoke-static {v2, v6, v0, v9, v1}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    .line 1001
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1004
    const-string v0, "\n        |          time: "

    .line 1007
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1012
    const-string v0, "\n        |  gestureStart: "

    .line 1015
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1017
    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1020
    const-string v0, "\n        |}\n        "

    .line 1023
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1028
    move-result-object v0

    .line 1031
    invoke-static {v0}, Lkotlin/text/StringsKt__IndentKt;->trimMargin$default(Ljava/lang/String;)Ljava/lang/String;

    .line 1032
    move-result-object v0

    .line 1035
    move-object/from16 v8, v26

    .line 1036
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1041
    const-string/jumbo v1, "sessionId: "

    .line 1043
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1046
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1049
    const-string v1, ", isAod: "

    .line 1052
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1054
    invoke-interface/range {v23 .. v23}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    .line 1057
    move-result v1

    .line 1060
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1061
    const-string v1, ", touchConfigId: "

    .line 1064
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1069
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1072
    move-result-object v0

    .line 1075
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    goto :goto_17

    .line 1079
    :cond_32
    move/from16 p1, v0

    .line 1080
    :goto_17
    iget-object v0, v15, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    .line 1082
    iget-object v0, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayView:Lcom/android/systemui/biometrics/UdfpsView;

    .line 1084
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getRawX()F

    .line 1086
    move-result v1

    .line 1089
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getRawY()F

    .line 1090
    move-result v2

    .line 1093
    const/4 v3, 0x1

    .line 1094
    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/systemui/biometrics/UdfpsController;->isWithinSensorArea(Lcom/android/systemui/biometrics/UdfpsView;FFZ)Z

    .line 1095
    move-result v0

    .line 1098
    if-nez v0, :cond_34

    .line 1099
    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;->isVisibleState()Z

    .line 1101
    move-result v0

    .line 1104
    if-eqz v0, :cond_33

    .line 1105
    goto :goto_18

    .line 1107
    :cond_33
    move/from16 v0, p1

    .line 1108
    goto :goto_19

    .line 1110
    :cond_34
    :goto_18
    const/4 v0, 0x1

    .line 1111
    :goto_19
    if-eqz v0, :cond_35

    .line 1112
    iget-object v0, v15, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    .line 1114
    iget-object v0, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayView:Lcom/android/systemui/biometrics/UdfpsView;

    .line 1116
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 1118
    move-result-object v0

    .line 1121
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getInputToken()Landroid/os/IBinder;

    .line 1122
    move-result-object v0

    .line 1125
    iget-object v1, v15, Lcom/android/systemui/biometrics/UdfpsController;->mInputManager:Landroid/hardware/input/InputManager;

    .line 1126
    invoke-virtual {v1, v0}, Landroid/hardware/input/InputManager;->pilferPointers(Landroid/os/IBinder;)V

    .line 1128
    :cond_35
    iget-object v0, v15, Lcom/android/systemui/biometrics/UdfpsController;->mOverlayParams:Lcom/android/settingslib/udfps/UdfpsOverlayParams;

    .line 1131
    iget-object v0, v0, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->nativeSensorBounds:Landroid/graphics/Rect;

    .line 1133
    invoke-virtual {v5, v0}, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->isWithinBounds(Landroid/graphics/Rect;)Z

    .line 1135
    move-result v0

    .line 1138
    goto :goto_1b

    .line 1139
    :cond_36
    :goto_1a
    const/4 v0, 0x0

    .line 1140
    :goto_1b
    return v0

    .line 1141
    :cond_37
    move-object v8, v10

    .line 1142
    move-object/from16 v18, v12

    .line 1143
    move-object v14, v13

    .line 1145
    const/4 v3, 0x2

    .line 1146
    const/16 v4, 0xd

    .line 1147
    const/4 v9, 0x3

    .line 1149
    iget-object v10, v15, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    .line 1150
    if-nez v10, :cond_38

    .line 1152
    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    goto :goto_1c

    .line 1157
    :cond_38
    invoke-virtual {v10, v1, v2}, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->matchesRequestId(J)Z

    .line 1158
    move-result v7

    .line 1161
    if-nez v7, :cond_39

    .line 1162
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1164
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1166
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1169
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1172
    iget-object v1, v15, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    .line 1175
    iget-wide v1, v1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->requestId:J

    .line 1177
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1182
    move-result-object v0

    .line 1185
    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    :goto_1c
    const/4 v0, 0x0

    .line 1189
    goto/16 :goto_22

    .line 1190
    :cond_39
    iget-object v5, v15, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    .line 1192
    iget-object v5, v5, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayView:Lcom/android/systemui/biometrics/UdfpsView;

    .line 1194
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 1196
    move-result v6

    .line 1199
    if-eqz v6, :cond_47

    .line 1200
    const/4 v7, 0x1

    .line 1202
    if-eq v6, v7, :cond_45

    .line 1203
    if-eq v6, v3, :cond_3a

    .line 1205
    if-eq v6, v9, :cond_45

    .line 1207
    const/4 v3, 0x7

    .line 1209
    if-eq v6, v3, :cond_3a

    .line 1210
    const/16 v3, 0x9

    .line 1212
    if-eq v6, v3, :cond_47

    .line 1214
    const/16 v0, 0xa

    .line 1216
    if-eq v6, v0, :cond_45

    .line 1218
    goto :goto_1c

    .line 1220
    :cond_3a
    const-string v3, "UdfpsController.onTouch.ACTION_MOVE"

    .line 1221
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1223
    iget v3, v15, Lcom/android/systemui/biometrics/UdfpsController;->mActivePointerId:I

    .line 1226
    const/4 v4, -0x1

    .line 1228
    if-ne v3, v4, :cond_3b

    .line 1229
    const/4 v3, 0x0

    .line 1231
    move-object/from16 v4, p3

    .line 1232
    invoke-virtual {v4, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 1234
    move-result v6

    .line 1237
    goto :goto_1d

    .line 1238
    :cond_3b
    move-object/from16 v4, p3

    .line 1239
    const/4 v6, 0x0

    .line 1241
    invoke-virtual {v4, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 1242
    move-result v3

    .line 1245
    move/from16 v29, v6

    .line 1246
    move v6, v3

    .line 1248
    move/from16 v3, v29

    .line 1249
    :goto_1d
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 1251
    move-result v7

    .line 1254
    if-ne v6, v7, :cond_44

    .line 1255
    invoke-virtual {v4, v6}, Landroid/view/MotionEvent;->getX(I)F

    .line 1257
    move-result v7

    .line 1260
    invoke-virtual {v4, v6}, Landroid/view/MotionEvent;->getY(I)F

    .line 1261
    move-result v8

    .line 1264
    invoke-virtual {v15, v5, v7, v8, v0}, Lcom/android/systemui/biometrics/UdfpsController;->isWithinSensorArea(Lcom/android/systemui/biometrics/UdfpsView;FFZ)Z

    .line 1265
    move-result v7

    .line 1268
    if-nez v0, :cond_3c

    .line 1269
    if-eqz v7, :cond_3d

    .line 1271
    :cond_3c
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/biometrics/UdfpsController;->shouldTryToDismissKeyguard()Z

    .line 1273
    move-result v0

    .line 1276
    if-eqz v0, :cond_3d

    .line 1277
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/biometrics/UdfpsController;->tryDismissingKeyguard()V

    .line 1279
    goto/16 :goto_20

    .line 1282
    :cond_3d
    iget-object v0, v15, Lcom/android/systemui/biometrics/UdfpsController;->mOverlayParams:Lcom/android/settingslib/udfps/UdfpsOverlayParams;

    .line 1284
    iget-object v8, v15, Lcom/android/systemui/biometrics/UdfpsController;->mUdfpsUtils:Lcom/android/settingslib/udfps/UdfpsUtils;

    .line 1286
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1288
    new-instance v8, Landroid/graphics/Point;

    .line 1291
    invoke-virtual {v4, v6}, Landroid/view/MotionEvent;->getRawX(I)F

    .line 1293
    move-result v10

    .line 1296
    float-to-int v10, v10

    .line 1297
    invoke-virtual {v4, v6}, Landroid/view/MotionEvent;->getRawY(I)F

    .line 1298
    move-result v11

    .line 1301
    float-to-int v11, v11

    .line 1302
    invoke-direct {v8, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 1303
    iget v10, v0, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->rotation:I

    .line 1306
    const/4 v11, 0x1

    .line 1308
    if-eq v10, v11, :cond_3e

    .line 1309
    if-ne v10, v9, :cond_3f

    .line 1311
    :cond_3e
    invoke-static {v10, v3}, Landroid/util/RotationUtils;->deltaRotation(II)I

    .line 1313
    move-result v9

    .line 1316
    iget v10, v0, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->logicalDisplayWidth:I

    .line 1317
    iget v11, v0, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->logicalDisplayHeight:I

    .line 1319
    invoke-static {v8, v9, v10, v11}, Landroid/util/RotationUtils;->rotatePoint(Landroid/graphics/Point;III)V

    .line 1321
    :cond_3f
    iget v9, v8, Landroid/graphics/Point;->x:I

    .line 1324
    int-to-float v9, v9

    .line 1326
    iget v0, v0, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->scaleFactor:F

    .line 1327
    div-float/2addr v9, v0

    .line 1329
    float-to-int v9, v9

    .line 1330
    iput v9, v8, Landroid/graphics/Point;->x:I

    .line 1331
    iget v9, v8, Landroid/graphics/Point;->y:I

    .line 1333
    int-to-float v9, v9

    .line 1335
    div-float/2addr v9, v0

    .line 1336
    float-to-int v0, v9

    .line 1337
    iput v0, v8, Landroid/graphics/Point;->y:I

    .line 1338
    if-eqz v7, :cond_43

    .line 1340
    iget-object v0, v15, Lcom/android/systemui/biometrics/UdfpsController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1342
    if-nez v0, :cond_40

    .line 1344
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 1346
    move-result-object v0

    .line 1349
    iput-object v0, v15, Lcom/android/systemui/biometrics/UdfpsController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1350
    :cond_40
    iget-object v0, v15, Lcom/android/systemui/biometrics/UdfpsController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1352
    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1354
    iget-object v0, v15, Lcom/android/systemui/biometrics/UdfpsController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1357
    const/16 v5, 0x3e8

    .line 1359
    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1361
    iget-object v0, v15, Lcom/android/systemui/biometrics/UdfpsController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1364
    iget v5, v15, Lcom/android/systemui/biometrics/UdfpsController;->mActivePointerId:I

    .line 1366
    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 1368
    move-result v7

    .line 1371
    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 1372
    move-result v0

    .line 1375
    float-to-double v9, v7

    .line 1376
    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    .line 1377
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 1379
    move-result-wide v9

    .line 1382
    float-to-double v13, v0

    .line 1383
    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 1384
    move-result-wide v11

    .line 1387
    add-double/2addr v11, v9

    .line 1388
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    .line 1389
    move-result-wide v9

    .line 1392
    double-to-float v0, v9

    .line 1393
    invoke-virtual {v4, v6}, Landroid/view/MotionEvent;->getTouchMinor(I)F

    .line 1394
    move-result v5

    .line 1397
    invoke-virtual {v4, v6}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    .line 1398
    move-result v4

    .line 1401
    const v6, 0x443b8000    # 750.0f

    .line 1402
    cmpl-float v6, v0, v6

    .line 1405
    if-lez v6, :cond_41

    .line 1407
    const/4 v6, 0x1

    .line 1409
    goto :goto_1e

    .line 1410
    :cond_41
    move v6, v3

    .line 1411
    :goto_1e
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1412
    move-result-object v7

    .line 1415
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1416
    move-result-object v9

    .line 1419
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1420
    move-result-object v0

    .line 1423
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1424
    move-result-object v10

    .line 1427
    filled-new-array {v7, v9, v0, v10}, [Ljava/lang/Object;

    .line 1428
    move-result-object v0

    .line 1431
    const-string v7, "minor: %.1f, major: %.1f, v: %.1f, exceedsVelocityThreshold: %b"

    .line 1432
    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1434
    move-object/from16 v12, v18

    .line 1437
    check-cast v12, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 1439
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1441
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1444
    move-result-wide v9

    .line 1447
    iget-wide v11, v15, Lcom/android/systemui/biometrics/UdfpsController;->mTouchLogTime:J

    .line 1448
    sub-long/2addr v9, v11

    .line 1450
    iget-boolean v0, v15, Lcom/android/systemui/biometrics/UdfpsController;->mOnFingerDown:Z

    .line 1451
    if-nez v0, :cond_42

    .line 1453
    iget-boolean v0, v15, Lcom/android/systemui/biometrics/UdfpsController;->mAcquiredReceived:Z

    .line 1455
    if-nez v0, :cond_42

    .line 1457
    if-nez v6, :cond_42

    .line 1459
    iget-object v0, v15, Lcom/android/systemui/biometrics/UdfpsController;->mOverlayParams:Lcom/android/settingslib/udfps/UdfpsOverlayParams;

    .line 1461
    iget v0, v0, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->scaleFactor:F

    .line 1463
    div-float v6, v5, v0

    .line 1465
    div-float v7, v4, v0

    .line 1467
    iget v0, v8, Landroid/graphics/Point;->x:I

    .line 1469
    iget v3, v8, Landroid/graphics/Point;->y:I

    .line 1471
    const/4 v4, -0x1

    .line 1473
    int-to-float v5, v0

    .line 1474
    int-to-float v8, v3

    .line 1475
    const/4 v9, 0x0

    .line 1476
    const-wide/16 v10, 0x0

    .line 1477
    const-wide/16 v12, 0x0

    .line 1479
    const/4 v14, 0x0

    .line 1481
    const/16 v16, 0x1

    .line 1482
    move-object/from16 v0, p0

    .line 1484
    move-wide/from16 v1, p1

    .line 1486
    move v3, v4

    .line 1488
    move v4, v5

    .line 1489
    move v5, v8

    .line 1490
    move v8, v9

    .line 1491
    move-wide v9, v10

    .line 1492
    move-wide v11, v12

    .line 1493
    move v13, v14

    .line 1494
    invoke-virtual/range {v0 .. v13}, Lcom/android/systemui/biometrics/UdfpsController;->onFingerDown(JIFFFFFJJZ)V

    .line 1495
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1498
    move-result-wide v0

    .line 1501
    iput-wide v0, v15, Lcom/android/systemui/biometrics/UdfpsController;->mTouchLogTime:J

    .line 1502
    move/from16 v3, v16

    .line 1504
    goto :goto_1f

    .line 1506
    :cond_42
    cmp-long v0, v9, v16

    .line 1507
    if-ltz v0, :cond_44

    .line 1509
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1511
    move-result-wide v0

    .line 1514
    iput-wide v0, v15, Lcom/android/systemui/biometrics/UdfpsController;->mTouchLogTime:J

    .line 1515
    goto :goto_1f

    .line 1517
    :cond_43
    invoke-virtual {v15, v1, v2, v5}, Lcom/android/systemui/biometrics/UdfpsController;->onFingerUp(JLcom/android/systemui/biometrics/UdfpsView;)V

    .line 1518
    new-instance v0, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda0;

    .line 1521
    invoke-direct {v0, v3, v15, v8}, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1523
    iget-object v1, v15, Lcom/android/systemui/biometrics/UdfpsController;->mFgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 1526
    check-cast v1, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 1528
    invoke-virtual {v1, v0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 1530
    :cond_44
    :goto_1f
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1533
    goto :goto_20

    .line 1536
    :cond_45
    const/4 v0, -0x1

    .line 1537
    const/4 v3, 0x0

    .line 1538
    const-string v6, "UdfpsController.onTouch.ACTION_UP"

    .line 1539
    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1541
    iput v0, v15, Lcom/android/systemui/biometrics/UdfpsController;->mActivePointerId:I

    .line 1544
    iget-object v0, v15, Lcom/android/systemui/biometrics/UdfpsController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1546
    if-eqz v0, :cond_46

    .line 1548
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1550
    const/4 v0, 0x0

    .line 1553
    iput-object v0, v15, Lcom/android/systemui/biometrics/UdfpsController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1554
    :cond_46
    iput-boolean v3, v15, Lcom/android/systemui/biometrics/UdfpsController;->mAttemptedToDismissKeyguard:Z

    .line 1556
    invoke-virtual {v15, v1, v2, v5}, Lcom/android/systemui/biometrics/UdfpsController;->onFingerUp(JLcom/android/systemui/biometrics/UdfpsView;)V

    .line 1558
    invoke-interface {v14, v4}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch(I)Z

    .line 1561
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1564
    :goto_20
    move v0, v3

    .line 1567
    goto :goto_22

    .line 1568
    :cond_47
    move-object/from16 v4, p3

    .line 1569
    const/4 v1, 0x0

    .line 1571
    const/4 v2, 0x1

    .line 1572
    const-string v3, "UdfpsController.onTouch.ACTION_DOWN"

    .line 1573
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1575
    iget-object v3, v15, Lcom/android/systemui/biometrics/UdfpsController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1578
    if-nez v3, :cond_48

    .line 1580
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 1582
    move-result-object v3

    .line 1585
    iput-object v3, v15, Lcom/android/systemui/biometrics/UdfpsController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1586
    goto :goto_21

    .line 1588
    :cond_48
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1589
    :goto_21
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    .line 1592
    move-result v3

    .line 1595
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    .line 1596
    move-result v6

    .line 1599
    invoke-virtual {v15, v5, v3, v6, v0}, Lcom/android/systemui/biometrics/UdfpsController;->isWithinSensorArea(Lcom/android/systemui/biometrics/UdfpsView;FFZ)Z

    .line 1600
    move-result v3

    .line 1603
    if-eqz v3, :cond_49

    .line 1604
    const-string v5, "UdfpsController.e2e.onPointerDown"

    .line 1606
    invoke-static {v5, v1}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    .line 1608
    invoke-virtual {v4, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 1611
    move-result v5

    .line 1614
    iput v5, v15, Lcom/android/systemui/biometrics/UdfpsController;->mActivePointerId:I

    .line 1615
    iget-object v5, v15, Lcom/android/systemui/biometrics/UdfpsController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1617
    invoke-virtual {v5, v4}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1619
    iput-boolean v1, v15, Lcom/android/systemui/biometrics/UdfpsController;->mAcquiredReceived:Z

    .line 1622
    move v1, v2

    .line 1624
    :cond_49
    if-nez v3, :cond_4a

    .line 1625
    if-eqz v0, :cond_4b

    .line 1627
    :cond_4a
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/biometrics/UdfpsController;->shouldTryToDismissKeyguard()Z

    .line 1629
    move-result v0

    .line 1632
    if-eqz v0, :cond_4b

    .line 1633
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/biometrics/UdfpsController;->tryDismissingKeyguard()V

    .line 1635
    :cond_4b
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1638
    move v0, v1

    .line 1641
    :goto_22
    return v0

    .line 1642
    nop

    .line 1643
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
    .line 1644
.end method

.method public playStartHaptic()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 2
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mVibrator:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 10
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 12
    move-result v2

    .line 15
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mContext:Landroid/content/Context;

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 18
    move-result-object v3

    .line 21
    sget-object v4, Lcom/android/systemui/biometrics/UdfpsController;->EFFECT_CLICK:Landroid/os/VibrationEffect;

    .line 22
    const-string/jumbo v5, "udfps-onStart-click"

    .line 24
    sget-object v6, Lcom/android/systemui/biometrics/UdfpsController;->UDFPS_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 27
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    .line 29
    :cond_0
    return-void
    .line 32
.end method

.method public final shouldTryToDismissKeyguard()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayView:Lcom/android/systemui/biometrics/UdfpsView;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsView;->getAnimationViewController()Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    .line 10
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    instance-of v0, v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;

    .line 16
    if-eqz v0, :cond_1

    .line 18
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 20
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 22
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    .line 24
    if-eqz v0, :cond_1

    .line 26
    iget-boolean p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mAttemptedToDismissKeyguard:Z

    .line 28
    if-nez p0, :cond_1

    .line 30
    const/4 p0, 0x1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/4 p0, 0x0

    .line 34
    :goto_1
    return p0
    .line 35
.end method

.method public final showUdfpsOverlay(Lcom/android/systemui/biometrics/UdfpsControllerOverlay;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mExecution:Lcom/android/systemui/util/concurrency/ExecutionImpl;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/util/concurrency/ExecutionImpl;->assertIsMainThread()V

    .line 4
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    .line 7
    const/4 v0, 0x4

    .line 9
    iget v1, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->requestReason:I

    .line 10
    if-ne v1, v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 14
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    .line 16
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    const-string p0, "UdfpsController"

    .line 22
    const-string p1, "Attempting to showUdfpsOverlay when fingerprint detection isn\'t running on keyguard. Skip show."

    .line 24
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOverlayParams:Lcom/android/settingslib/udfps/UdfpsOverlayParams;

    .line 30
    iget-object v2, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 32
    iget-object v3, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayView:Lcom/android/systemui/biometrics/UdfpsView;

    .line 34
    const/4 v4, 0x0

    .line 36
    if-nez v3, :cond_6

    .line 37
    iput-object v0, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayParams:Lcom/android/settingslib/udfps/UdfpsOverlayParams;

    .line 39
    new-instance v3, Landroid/graphics/Rect;

    .line 41
    iget-object v5, v0, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->sensorBounds:Landroid/graphics/Rect;

    .line 43
    invoke-direct {v3, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 45
    iput-object v3, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->sensorBounds:Landroid/graphics/Rect;

    .line 48
    const/4 v3, 0x1

    .line 50
    :try_start_0
    iget-object v5, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->inflater:Landroid/view/LayoutInflater;

    .line 51
    const/4 v6, 0x0

    .line 53
    const v7, 0x7f0d03d8    # @layout/udfps_view 'res/layout/udfps_view.xml'

    .line 54
    invoke-virtual {v5, v7, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 57
    move-result-object v5

    .line 60
    check-cast v5, Lcom/android/systemui/biometrics/UdfpsView;

    .line 61
    invoke-virtual {v5, v0}, Lcom/android/systemui/biometrics/UdfpsView;->setOverlayParams(Lcom/android/settingslib/udfps/UdfpsOverlayParams;)V

    .line 63
    iget-object v0, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->udfpsDisplayModeProvider:Lcom/android/systemui/biometrics/UdfpsDisplayModeProvider;

    .line 66
    invoke-virtual {v5, v0}, Lcom/android/systemui/biometrics/UdfpsView;->setUdfpsDisplayModeProvider(Lcom/android/systemui/biometrics/UdfpsDisplayModeProvider;)V

    .line 68
    invoke-virtual {p1, p0, v5}, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->inflateUdfpsAnimation(Lcom/android/systemui/biometrics/UdfpsController;Lcom/android/systemui/biometrics/UdfpsView;)Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    .line 71
    move-result-object v0

    .line 74
    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 77
    invoke-virtual {v5, v0}, Lcom/android/systemui/biometrics/UdfpsView;->setAnimationViewController(Lcom/android/systemui/biometrics/UdfpsAnimationViewController;)V

    .line 80
    :cond_1
    const/4 v6, 0x2

    .line 83
    if-eq v1, v3, :cond_3

    .line 84
    if-eq v1, v6, :cond_3

    .line 86
    const/4 v7, 0x3

    .line 88
    if-ne v1, v7, :cond_2

    .line 89
    goto :goto_0

    .line 91
    :cond_2
    move v1, v4

    .line 92
    goto :goto_1

    .line 93
    :cond_3
    :goto_0
    move v1, v3

    .line 94
    :goto_1
    if-eqz v1, :cond_4

    .line 95
    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 97
    :cond_4
    iget-object v1, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->windowManager:Landroid/view/WindowManager;

    .line 100
    iget-object v6, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->coreLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 102
    invoke-virtual {p1, v6, v0}, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->updateDimensions(Landroid/view/WindowManager$LayoutParams;Lcom/android/systemui/biometrics/UdfpsAnimationViewController;)V

    .line 104
    invoke-interface {v1, v5, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    iget-object v0, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->sensorBounds:Landroid/graphics/Rect;

    .line 110
    invoke-virtual {v5, v0}, Lcom/android/systemui/biometrics/UdfpsView;->setSensorRect(Landroid/graphics/Rect;)V

    .line 112
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 115
    move-result v0

    .line 118
    iput-boolean v0, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->touchExplorationEnabled:Z

    .line 119
    new-instance v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay$show$1$1;

    .line 121
    invoke-direct {v0, p1, v5}, Lcom/android/systemui/biometrics/UdfpsControllerOverlay$show$1$1;-><init>(Lcom/android/systemui/biometrics/UdfpsControllerOverlay;Lcom/android/systemui/biometrics/UdfpsView;)V

    .line 123
    iput-object v0, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayTouchListener:Lcom/android/systemui/biometrics/UdfpsControllerOverlay$show$1$1;

    .line 126
    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 128
    iget-object v0, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayTouchListener:Lcom/android/systemui/biometrics/UdfpsControllerOverlay$show$1$1;

    .line 131
    if-eqz v0, :cond_5

    .line 133
    invoke-virtual {v0, v3}, Lcom/android/systemui/biometrics/UdfpsControllerOverlay$show$1$1;->onTouchExplorationStateChanged(Z)V

    .line 135
    :cond_5
    iget-object v0, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 138
    sget-object v1, Lcom/android/systemui/flags/Flags;->UDFPS_NEW_TOUCH_DETECTION:Lcom/android/systemui/flags/ReleasedFlag;

    .line 140
    check-cast v0, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 142
    invoke-virtual {v0, v1}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 144
    move-result v0

    .line 147
    invoke-virtual {v5, v0}, Lcom/android/systemui/biometrics/UdfpsView;->setUseExpandedOverlay(Z)V

    .line 148
    iput-object v5, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayView:Lcom/android/systemui/biometrics/UdfpsView;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    goto :goto_2

    .line 153
    :catch_0
    move-exception p1

    .line 154
    const-string v0, "UdfpsControllerOverlay"

    .line 155
    const-string/jumbo v1, "showUdfpsOverlay | failed to add window"

    .line 157
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    goto :goto_2

    .line 163
    :cond_6
    move v3, v4

    .line 164
    :goto_2
    if-eqz v3, :cond_7

    .line 165
    iput-boolean v4, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOnFingerDown:Z

    .line 167
    iput-boolean v4, p0, Lcom/android/systemui/biometrics/UdfpsController;->mAttemptedToDismissKeyguard:Z

    .line 169
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOrientationListener:Lcom/android/systemui/biometrics/BiometricDisplayListener;

    .line 171
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDisplayListener;->enable()V

    .line 173
    :cond_7
    return-void
    .line 176
.end method

.method public tryAodSendFingerUp()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mIsAodInterruptActive:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsController;->cancelAodSendFingerUpAction()V

    .line 7
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    .line 10
    if-eqz v0, :cond_1

    .line 12
    iget-object v1, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayView:Lcom/android/systemui/biometrics/UdfpsView;

    .line 14
    if-eqz v1, :cond_1

    .line 16
    iget-wide v2, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->requestId:J

    .line 18
    invoke-virtual {p0, v2, v3, v1}, Lcom/android/systemui/biometrics/UdfpsController;->onFingerUp(JLcom/android/systemui/biometrics/UdfpsView;)V

    .line 20
    :cond_1
    return-void
    .line 23
.end method

.method public final tryDismissingKeyguard()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOnFingerDown:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsController;->playStartHaptic()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 9
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyKeyguardAuthenticated(Z)V

    .line 12
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mAttemptedToDismissKeyguard:Z

    .line 16
    return-void
    .line 18
.end method
