.class public final Lcom/android/systemui/statusbar/KeyguardIndicationController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field public mBatteryLevel:I

.field public mBatteryPresent:Z

.field public mBiometricErrorMessageToShowOnScreenOn:Ljava/lang/String;

.field public mBiometricMessage:Ljava/lang/CharSequence;

.field public mBiometricMessageFollowUp:Ljava/lang/CharSequence;

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public mBroadcastReceiver:Lcom/android/systemui/statusbar/KeyguardIndicationController$3;

.field public mChargingSpeed:I

.field public mChargingTimeRemaining:J

.field public mChargingWattage:I

.field public final mCoExFaceAcquisitionMsgIdsToShow:Ljava/util/Set;

.field public mComputePowerIndication:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public mDarkStyle:Z

.field public final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final mDockManager:Lcom/android/systemui/dock/DockManager;

.field public mDozing:Z

.field public mEnableBatteryDefender:Z

.field public final mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final mFaceAcquiredMessageDeferral:Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;

.field public mFaceLockedOutThisAuthSession:Z

.field public final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public mFpiState:Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

.field public final mHandler:Lcom/android/systemui/statusbar/KeyguardIndicationController$2;

.field public final mHideBiometricMessageHandler:Lcom/android/systemui/util/AlarmTimeout;

.field public final mHideTransientMessageHandler:Lcom/android/systemui/util/AlarmTimeout;

.field public mIncompatibleCharger:Z

.field public mIndicationArea:Landroid/view/ViewGroup;

.field public mInited:Z

.field public mInitialTextColorState:Landroid/content/res/ColorStateList;

.field public final mKeyguardLogger:Lcom/android/keyguard/logging/KeyguardLogger;

.field public final mKeyguardStateCallback:Lcom/android/systemui/statusbar/KeyguardIndicationController$5;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mLockScreenIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

.field public mMiuiUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

.field public mOrganizationOwnedDevice:Z

.field public mPersistentUnlockMessage:Ljava/lang/String;

.field public mPowerCharged:Z

.field public mPowerPluggedIn:Z

.field public mPowerPluggedInDock:Z

.field public mPowerPluggedInWired:Z

.field public mPowerPluggedInWireless:Z

.field public mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

.field public final mScreenObserver:Lcom/android/systemui/statusbar/KeyguardIndicationController$1;

.field public mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final mStatusBarStateListener:Lcom/android/systemui/statusbar/KeyguardIndicationController$4;

.field public mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

.field public mTransientIndication:Ljava/lang/CharSequence;

.field public mTrustGrantedIndication:Ljava/lang/CharSequence;

.field public mUpArrow:Landroid/widget/ImageView;

.field public mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public mVisible:Z


# direct methods
.method public static -$$Nest$mhandleFingerprintStateChanged(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    .line 5
    move-result v1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    const-class v1, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 11
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 16
    check-cast v1, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-static {}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->shouldListenForFingerprintWhenUnlocked()Z

    .line 22
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    goto :goto_0

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFpiState:Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 29
    sget-object v2, Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->FAILED:Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 31
    if-ne v1, v2, :cond_1

    .line 33
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 35
    if-eqz v0, :cond_1

    .line 37
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->GXZW_SENSOR:Z

    .line 39
    if-nez v0, :cond_1

    .line 41
    sget v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->$r8$clinit:I

    .line 43
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->isGxzwLowPosition()Z

    .line 45
    move-result v0

    .line 48
    if-nez v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 51
    const v1, 0x7f130437    # @string/fingerprint_try_again_text 'Try again'

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 59
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/CharSequence;)V

    .line 60
    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/util/wakelock/WakeLock$Builder;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/app/admin/DevicePolicyManager;Lcom/android/internal/app/IBatteryStats;Landroid/os/UserManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;Lcom/android/keyguard/logging/KeyguardLogger;Landroid/app/AlarmManager;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p18

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x1

    .line 2
    iput-boolean v3, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryPresent:Z

    .line 3
    new-instance v4, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mScreenObserver:Lcom/android/systemui/statusbar/KeyguardIndicationController$1;

    .line 4
    new-instance v5, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v5, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarStateListener:Lcom/android/systemui/statusbar/KeyguardIndicationController$4;

    .line 5
    new-instance v5, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v5, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardStateCallback:Lcom/android/systemui/statusbar/KeyguardIndicationController$5;

    .line 6
    new-instance v5, Lcom/android/systemui/statusbar/KeyguardIndicationController$6;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$6;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v5, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mMiuiUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

    .line 7
    iput-object v1, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 8
    sget v5, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->$r8$clinit:I

    .line 9
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->isGxzwLowPosition()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, ""

    goto :goto_0

    :cond_0
    const v5, 0x7f130376    # @string/default_lockscreen_unlock_hint_text 'Swipe up to unlock'

    .line 10
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_0
    iput-object v5, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPersistentUnlockMessage:Ljava/lang/String;

    move-object/from16 v5, p8

    .line 11
    iput-object v5, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-object/from16 v5, p9

    .line 12
    iput-object v5, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    move-object v5, p4

    .line 13
    iput-object v5, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v5, p5

    .line 14
    iput-object v5, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-object v5, p6

    .line 15
    iput-object v5, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v5, p7

    .line 16
    iput-object v5, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDockManager:Lcom/android/systemui/dock/DockManager;

    const-string v5, "Doze:KeyguardIndication"

    move-object v6, p3

    .line 17
    iput-object v5, v6, Lcom/android/systemui/util/wakelock/WakeLock$Builder;->mTag:Ljava/lang/String;

    .line 18
    invoke-virtual {p3}, Lcom/android/systemui/util/wakelock/WakeLock$Builder;->build()Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object v5

    const-string v6, "inner wakelock required"

    .line 19
    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v5, p10

    .line 20
    iput-object v5, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v5, p11

    .line 21
    iput-object v5, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v5, p12

    .line 22
    iput-object v5, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-object/from16 v5, p13

    .line 23
    iput-object v5, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-object/from16 v5, p14

    .line 24
    iput-object v5, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object/from16 v5, p17

    .line 25
    iput-object v5, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardLogger:Lcom/android/keyguard/logging/KeyguardLogger;

    move-object/from16 v5, p15

    .line 26
    iget-object v5, v5, Lcom/android/systemui/keyguard/Lifecycle;->mObservers:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, p19

    .line 28
    iput-object v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    move-object/from16 v4, p20

    .line 29
    iput-object v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    move-object/from16 v4, p16

    .line 30
    iput-object v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFaceAcquiredMessageDeferral:Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;

    .line 31
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mCoExFaceAcquisitionMsgIdsToShow:Ljava/util/Set;

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f030056    # @array/config_face_help_msgs_when_fingerprint_enrolled

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 33
    array-length v4, v1

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_1

    aget v7, v1, v6

    .line 34
    iget-object v8, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mCoExFaceAcquisitionMsgIdsToShow:Ljava/util/Set;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    check-cast v8, Ljava/util/HashSet;

    invoke-virtual {v8, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 35
    :cond_1
    new-instance v1, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;

    move-object v4, p2

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Lcom/android/systemui/statusbar/KeyguardIndicationController$2;

    .line 36
    new-instance v4, Lcom/android/systemui/util/AlarmTimeout;

    new-instance v6, Lcom/android/systemui/statusbar/KeyguardIndicationController$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v5}, Lcom/android/systemui/statusbar/KeyguardIndicationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)V

    const-string v5, "KeyguardIndication"

    invoke-direct {v4, v2, v6, v5, v1}, Lcom/android/systemui/util/AlarmTimeout;-><init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHideTransientMessageHandler:Lcom/android/systemui/util/AlarmTimeout;

    .line 37
    new-instance v4, Lcom/android/systemui/util/AlarmTimeout;

    new-instance v6, Lcom/android/systemui/statusbar/KeyguardIndicationController$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)V

    invoke-direct {v4, v2, v6, v5, v1}, Lcom/android/systemui/util/AlarmTimeout;-><init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHideBiometricMessageHandler:Lcom/android/systemui/util/AlarmTimeout;

    return-void
.end method

.method public static updatePowerIndication()V
    .locals 4

    .line 1
    const-class v0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;

    .line 8
    iget-object v1, v0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 10
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    .line 12
    iget v1, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    .line 14
    iget-object v3, v0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mChargeAsyncTask:Landroid/os/AsyncTask;

    .line 16
    if-eqz v3, :cond_0

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    new-instance v3, Lcom/android/keyguard/injector/KeyguardIndicationInjector$4;

    .line 21
    invoke-direct {v3, v0, v2, v1}, Lcom/android/keyguard/injector/KeyguardIndicationInjector$4;-><init>(Lcom/android/keyguard/injector/KeyguardIndicationInjector;ZI)V

    .line 23
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 26
    const/4 v2, 0x0

    .line 28
    new-array v2, v2, [Ljava/lang/Void;

    .line 29
    invoke-virtual {v3, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 31
    move-result-object v1

    .line 34
    iput-object v1, v0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mChargeAsyncTask:Landroid/os/AsyncTask;

    .line 35
    :goto_0
    return-void
    .line 37
.end method


# virtual methods
.method public final clearUpArrowAnimation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Lcom/android/systemui/statusbar/KeyguardIndicationController$2;

    .line 2
    const/16 v1, 0x3e8

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpArrow:Landroid/widget/ImageView;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 13
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpArrow:Landroid/widget/ImageView;

    .line 16
    const/4 v1, 0x4

    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockScreenIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 22
    if-eqz v0, :cond_1

    .line 24
    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 26
    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDeviceEntryIndication(Z)V

    .line 30
    :cond_1
    return-void
    .line 33
.end method

.method public getTrustGrantedIndication()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTrustGrantedIndication:Ljava/lang/CharSequence;

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 6
    const v0, 0x7f1305da    # @string/keyguard_indication_trust_unlocked 'Kept unlocked by TrustAgent'

    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    check-cast v0, Ljava/lang/String;

    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 21
    :goto_0
    return-object p0
    .line 22
.end method

.method public final hideBiometricMessage()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBiometricMessage:Ljava/lang/CharSequence;

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBiometricMessageFollowUp:Ljava/lang/CharSequence;

    .line 6
    if-eqz v0, :cond_1

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBiometricMessage:Ljava/lang/CharSequence;

    .line 11
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBiometricMessageFollowUp:Ljava/lang/CharSequence;

    .line 13
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHideBiometricMessageHandler:Lcom/android/systemui/util/AlarmTimeout;

    .line 15
    invoke-virtual {v0}, Lcom/android/systemui/util/AlarmTimeout;->cancel()V

    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateBiometricMessage()V

    .line 20
    :cond_1
    return-void
    .line 23
.end method

.method public final hideTransientIndication()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    .line 7
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHideTransientMessageHandler:Lcom/android/systemui/util/AlarmTimeout;

    .line 9
    invoke-virtual {v0}, Lcom/android/systemui/util/AlarmTimeout;->cancel()V

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateTransient()V

    .line 14
    :cond_0
    return-void
    .line 17
.end method

.method public final init()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInited:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInited:Z

    .line 8
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDockManager:Lcom/android/systemui/dock/DockManager;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 15
    if-nez v0, :cond_1

    .line 17
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;

    .line 19
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    .line 21
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 26
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 28
    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 30
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 33
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarStateListener:Lcom/android/systemui/statusbar/KeyguardIndicationController$4;

    .line 35
    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 37
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 40
    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 42
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardStateCallback:Lcom/android/systemui/statusbar/KeyguardIndicationController$5;

    .line 44
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 46
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    .line 49
    move-result v0

    .line 52
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;->onDozingChanged(Z)V

    .line 53
    const-class v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 56
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 58
    move-result-object v0

    .line 61
    check-cast v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 62
    iget-boolean v0, v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mBottomIconIsDeep:Z

    .line 64
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setDarkStyle(Z)V

    .line 66
    const-class v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 69
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 71
    move-result-object v0

    .line 74
    check-cast v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 75
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mMiuiUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

    .line 77
    invoke-virtual {v0, p0}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->registerCallback(Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;)V

    .line 79
    return-void
    .line 82
.end method

.method public final setDarkStyle(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDarkStyle:Z

    .line 2
    if-eq v0, p1, :cond_1

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDarkStyle:Z

    .line 6
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 8
    if-eqz p1, :cond_0

    .line 10
    const p1, 0x7f06039a    # @color/miui_common_unlock_screen_common_dark_text_color '#b3000000'

    .line 12
    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    .line 15
    move-result p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const p1, 0x7f0603a2    # @color/miui_default_lock_screen_unlock_hint_text_color '#b3ffffff'

    .line 20
    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    .line 23
    move-result p1

    .line 26
    :goto_0
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 27
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    .line 31
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    .line 33
    xor-int/lit8 p1, p1, 0x1

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDeviceEntryIndication(Z)V

    .line 37
    :cond_1
    return-void
    .line 40
.end method

.method public final setIndicationArea(Landroid/view/ViewGroup;)V
    .locals 9

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIndicationArea:Landroid/view/ViewGroup;

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    .line 4
    const/4 v1, 0x0

    .line 6
    const/16 v2, 0x8

    .line 7
    if-eqz v0, :cond_0

    .line 9
    move v0, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, v2

    .line 13
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 14
    const v0, 0x7f0a0486    # @id/keyguard_indication_text

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 24
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 26
    const v0, 0x7f0a0487    # @id/keyguard_indication_text_bottom

    .line 28
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object v0

    .line 34
    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 35
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockScreenIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 37
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDarkStyle:Z

    .line 39
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 41
    if-eqz v0, :cond_1

    .line 43
    const v0, 0x7f06039a    # @color/miui_common_unlock_screen_common_dark_text_color '#b3000000'

    .line 45
    invoke-virtual {v3, v0}, Landroid/content/Context;->getColor(I)I

    .line 48
    move-result v0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const v0, 0x7f0603a2    # @color/miui_default_lock_screen_unlock_hint_text_color '#b3ffffff'

    .line 53
    invoke-virtual {v3, v0}, Landroid/content/Context;->getColor(I)I

    .line 56
    move-result v0

    .line 59
    :goto_1
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 60
    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    .line 66
    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->destroy()V

    .line 70
    :cond_2
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    .line 73
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockScreenIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 75
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 77
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 79
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardLogger:Lcom/android/keyguard/logging/KeyguardLogger;

    .line 81
    iget-object v8, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 83
    move-object v3, v0

    .line 85
    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/keyguard/logging/KeyguardLogger;Lcom/android/systemui/flags/FeatureFlags;)V

    .line 86
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    .line 89
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDeviceEntryIndication(Z)V

    .line 91
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$$ExternalSyntheticLambda2;

    .line 94
    invoke-direct {v0, v1, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 96
    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 99
    move-result-object v0

    .line 102
    check-cast v0, Ljava/lang/Boolean;

    .line 103
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 105
    move-result v0

    .line 108
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mOrganizationOwnedDevice:Z

    .line 109
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDeviceEntryIndication(Z)V

    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBroadcastReceiver:Lcom/android/systemui/statusbar/KeyguardIndicationController$3;

    .line 114
    if-nez v0, :cond_3

    .line 116
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;

    .line 118
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    .line 120
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBroadcastReceiver:Lcom/android/systemui/statusbar/KeyguardIndicationController$3;

    .line 123
    new-instance v0, Landroid/content/IntentFilter;

    .line 125
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 127
    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    .line 130
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string v1, "android.intent.action.USER_REMOVED"

    .line 135
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 140
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBroadcastReceiver:Lcom/android/systemui/statusbar/KeyguardIndicationController$3;

    .line 142
    invoke-virtual {v1, v3, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 144
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 147
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    .line 152
    move-result-object p1

    .line 155
    const v0, 0x7f0a04a5    # @id/keyguard_up_arrow

    .line 156
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 159
    move-result-object p1

    .line 162
    check-cast p1, Landroid/widget/ImageView;

    .line 163
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpArrow:Landroid/widget/ImageView;

    .line 165
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->isGxzwLowPosition()Z

    .line 167
    move-result p1

    .line 170
    if-eqz p1, :cond_4

    .line 171
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpArrow:Landroid/widget/ImageView;

    .line 173
    const/4 p1, 0x0

    .line 175
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 176
    :cond_4
    return-void
    .line 179
.end method

.method public setPowerPluggedIn(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    .line 2
    return-void
    .line 4
.end method

.method public final setVisible(Z)V
    .locals 3

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIndicationArea:Landroid/view/ViewGroup;

    .line 4
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    move v2, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/16 v2, 0x8

    .line 11
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 13
    if-eqz p1, :cond_2

    .line 16
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHideTransientMessageHandler:Lcom/android/systemui/util/AlarmTimeout;

    .line 18
    iget-boolean p1, p1, Lcom/android/systemui/util/AlarmTimeout;->mScheduled:Z

    .line 20
    if-nez p1, :cond_1

    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndication()V

    .line 24
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDeviceEntryIndication(Z)V

    .line 27
    goto :goto_1

    .line 30
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndication()V

    .line 31
    :goto_1
    return-void
    .line 34
.end method

.method public final showTransientIndication(Ljava/lang/CharSequence;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHideTransientMessageHandler:Lcom/android/systemui/util/AlarmTimeout;

    .line 4
    const/4 v0, 0x2

    .line 6
    const-wide/16 v1, 0x1004

    .line 7
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/systemui/util/AlarmTimeout;->schedule(IJ)Z

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateTransient()V

    .line 12
    return-void
    .line 15
.end method

.method public final updateBiometricMessage()V
    .locals 14

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDeviceEntryIndication(Z)V

    .line 7
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBiometricMessage:Ljava/lang/CharSequence;

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    move-result v0

    .line 16
    const-wide/16 v1, 0xa28

    .line 17
    const/4 v3, 0x1

    .line 19
    const-string/jumbo v4, "text color must be set"

    .line 20
    const-string v5, "message or icon must be set"

    .line 23
    const/16 v6, 0xb

    .line 25
    if-nez v0, :cond_3

    .line 27
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    .line 29
    const/4 v11, 0x0

    .line 31
    const/4 v10, 0x0

    .line 32
    iget-object v8, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBiometricMessage:Ljava/lang/CharSequence;

    .line 33
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 35
    move-result-object v12

    .line 38
    iget-object v9, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    .line 39
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    move-result v7

    .line 44
    if-nez v7, :cond_2

    .line 45
    if-eqz v9, :cond_1

    .line 47
    new-instance v13, Lcom/android/systemui/keyguard/KeyguardIndication;

    .line 49
    move-object v7, v13

    .line 51
    invoke-direct/range {v7 .. v12}, Lcom/android/systemui/keyguard/KeyguardIndication;-><init>(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Landroid/view/View$OnClickListener;Landroid/graphics/drawable/Drawable;Ljava/lang/Long;)V

    .line 52
    invoke-virtual {v0, v6, v13, v3}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->updateIndication(ILcom/android/systemui/keyguard/KeyguardIndication;Z)V

    .line 55
    goto :goto_0

    .line 58
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 59
    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    throw p0

    .line 64
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 65
    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    throw p0

    .line 70
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    .line 71
    invoke-virtual {v0, v6}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->hideIndication(I)V

    .line 73
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBiometricMessageFollowUp:Ljava/lang/CharSequence;

    .line 76
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    move-result v0

    .line 81
    const/16 v6, 0xc

    .line 82
    if-nez v0, :cond_6

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    .line 86
    const/4 v11, 0x0

    .line 88
    const/4 v10, 0x0

    .line 89
    iget-object v8, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBiometricMessageFollowUp:Ljava/lang/CharSequence;

    .line 90
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 92
    move-result-object v12

    .line 95
    iget-object v9, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    .line 96
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 98
    move-result p0

    .line 101
    if-nez p0, :cond_5

    .line 102
    if-eqz v9, :cond_4

    .line 104
    new-instance p0, Lcom/android/systemui/keyguard/KeyguardIndication;

    .line 106
    move-object v7, p0

    .line 108
    invoke-direct/range {v7 .. v12}, Lcom/android/systemui/keyguard/KeyguardIndication;-><init>(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Landroid/view/View$OnClickListener;Landroid/graphics/drawable/Drawable;Ljava/lang/Long;)V

    .line 109
    invoke-virtual {v0, v6, p0, v3}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->updateIndication(ILcom/android/systemui/keyguard/KeyguardIndication;Z)V

    .line 112
    goto :goto_1

    .line 115
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 116
    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 118
    throw p0

    .line 121
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 122
    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 124
    throw p0

    .line 127
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    .line 128
    invoke-virtual {p0, v6}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->hideIndication(I)V

    .line 130
    :goto_1
    return-void
    .line 133
.end method

.method public final updateDeviceEntryIndication(Z)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    .line 6
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    .line 8
    iget-object v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardLogger:Lcom/android/keyguard/logging/KeyguardLogger;

    .line 10
    invoke-virtual {v4, v1, v2, v3}, Lcom/android/keyguard/logging/KeyguardLogger;->logUpdateDeviceEntryIndication(ZZZ)V

    .line 12
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    .line 15
    if-nez v2, :cond_0

    .line 17
    return-void

    .line 19
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIndicationArea:Landroid/view/ViewGroup;

    .line 20
    const/4 v3, 0x0

    .line 22
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 23
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    .line 26
    if-eqz v2, :cond_1

    .line 28
    return-void

    .line 30
    :cond_1
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 31
    move-object v5, v2

    .line 33
    check-cast v5, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 34
    invoke-virtual {v5}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 36
    move-result v5

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateBiometricMessage()V

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateTransient()V

    .line 43
    iget-boolean v6, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mOrganizationOwnedDevice:Z

    .line 46
    const/4 v7, 0x1

    .line 48
    if-eqz v6, :cond_3

    .line 49
    sget-boolean v6, Lmiui/enterprise/EnterpriseManagerStub;->ENTERPRISE_ACTIVATED:Z

    .line 51
    if-eqz v6, :cond_2

    .line 53
    invoke-static {}, Lmiui/enterprise/DeviceHelperStub;->getInstance()Lmiui/enterprise/IDeviceHelper;

    .line 55
    move-result-object v6

    .line 58
    invoke-interface {v6}, Lmiui/enterprise/IDeviceHelper;->isDeviceOwnerReminderInfoHide()Z

    .line 59
    move-result v6

    .line 62
    if-eqz v6, :cond_2

    .line 63
    goto :goto_0

    .line 65
    :cond_2
    new-instance v6, Lcom/android/systemui/statusbar/KeyguardIndicationController$$ExternalSyntheticLambda3;

    .line 66
    invoke-direct {v6, v0, v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)V

    .line 68
    iget-object v8, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 71
    check-cast v8, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 73
    invoke-virtual {v8, v6}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 75
    goto :goto_0

    .line 78
    :cond_3
    iget-object v6, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    .line 79
    invoke-virtual {v6, v7}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->hideIndication(I)V

    .line 81
    :goto_0
    iget-object v9, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mComputePowerIndication:Ljava/lang/String;

    .line 84
    iget-boolean v6, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    .line 86
    const/4 v14, 0x0

    .line 88
    const-string/jumbo v15, "text color must be set"

    .line 89
    const-string v13, "message or icon must be set"

    .line 92
    const/4 v12, 0x3

    .line 94
    if-nez v6, :cond_4

    .line 95
    iget-boolean v6, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mEnableBatteryDefender:Z

    .line 97
    if-eqz v6, :cond_7

    .line 99
    :cond_4
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 101
    move-result v6

    .line 104
    if-nez v6, :cond_7

    .line 105
    iget-boolean v6, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    .line 107
    invoke-virtual {v4, v9, v6}, Lcom/android/keyguard/logging/KeyguardLogger;->logUpdateBatteryIndication(Ljava/lang/String;Z)V

    .line 109
    iget-object v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    .line 112
    const/4 v6, 0x0

    .line 114
    const/16 v16, 0x0

    .line 115
    iget-object v10, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    .line 117
    const-class v8, Lcom/android/keyguard/injector/KeyguardIndicationInjector;

    .line 119
    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 121
    move-result-object v8

    .line 124
    check-cast v8, Lcom/android/keyguard/injector/KeyguardIndicationInjector;

    .line 125
    iget-object v11, v8, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mBatteryIndicationClickListener:Lcom/android/keyguard/injector/KeyguardIndicationInjector$3;

    .line 127
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 129
    move-result v8

    .line 132
    if-nez v8, :cond_6

    .line 133
    if-eqz v10, :cond_5

    .line 135
    new-instance v8, Lcom/android/systemui/keyguard/KeyguardIndication;

    .line 137
    move-object/from16 v17, v8

    .line 139
    move v3, v12

    .line 141
    move-object/from16 v12, v16

    .line 142
    move-object v7, v13

    .line 144
    move-object v13, v6

    .line 145
    invoke-direct/range {v8 .. v13}, Lcom/android/systemui/keyguard/KeyguardIndication;-><init>(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Landroid/view/View$OnClickListener;Landroid/graphics/drawable/Drawable;Ljava/lang/Long;)V

    .line 146
    move-object/from16 v6, v17

    .line 149
    invoke-virtual {v4, v3, v6, v1}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->updateIndication(ILcom/android/systemui/keyguard/KeyguardIndication;Z)V

    .line 151
    goto :goto_1

    .line 154
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 155
    invoke-direct {v0, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 157
    throw v0

    .line 160
    :cond_6
    move-object v7, v13

    .line 161
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 162
    invoke-direct {v0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 164
    throw v0

    .line 167
    :cond_7
    move v3, v12

    .line 168
    move-object v7, v13

    .line 169
    sget-object v1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 170
    const-string v6, "KeyguardIndication"

    .line 172
    const-string v8, "hide battery indication"

    .line 174
    invoke-virtual {v4, v6, v1, v8, v14}, Lcom/android/keyguard/logging/KeyguardLogger;->log(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    iget-object v1, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    .line 179
    invoke-virtual {v1, v3}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->hideIndication(I)V

    .line 181
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getTrustGrantedIndication()Ljava/lang/String;

    .line 184
    move-result-object v9

    .line 187
    iget-object v1, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 188
    invoke-virtual {v1, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    .line 190
    move-result v3

    .line 193
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 194
    move-result v4

    .line 197
    const/4 v6, 0x6

    .line 198
    if-nez v4, :cond_a

    .line 199
    if-eqz v3, :cond_a

    .line 201
    iget-object v3, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    .line 203
    const/4 v13, 0x0

    .line 205
    const/4 v12, 0x0

    .line 206
    const/4 v11, 0x0

    .line 207
    iget-object v10, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    .line 208
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 210
    move-result v4

    .line 213
    if-nez v4, :cond_9

    .line 214
    if-eqz v10, :cond_8

    .line 216
    new-instance v4, Lcom/android/systemui/keyguard/KeyguardIndication;

    .line 218
    move-object v8, v4

    .line 220
    invoke-direct/range {v8 .. v13}, Lcom/android/systemui/keyguard/KeyguardIndication;-><init>(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Landroid/view/View$OnClickListener;Landroid/graphics/drawable/Drawable;Ljava/lang/Long;)V

    .line 221
    const/4 v5, 0x1

    .line 224
    invoke-virtual {v3, v6, v4, v5}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->updateIndication(ILcom/android/systemui/keyguard/KeyguardIndication;Z)V

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideBiometricMessage()V

    .line 228
    goto :goto_2

    .line 231
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 232
    invoke-direct {v0, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 234
    throw v0

    .line 237
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 238
    invoke-direct {v0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 240
    throw v0

    .line 243
    :cond_a
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 244
    move-result v4

    .line 247
    if-nez v4, :cond_d

    .line 248
    invoke-virtual {v1, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserTrustIsManaged(I)Z

    .line 250
    move-result v4

    .line 253
    if-eqz v4, :cond_d

    .line 254
    if-nez v3, :cond_d

    .line 256
    iget-object v3, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    .line 258
    const/4 v13, 0x0

    .line 260
    const/4 v12, 0x0

    .line 261
    const/4 v11, 0x0

    .line 262
    iget-object v10, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    .line 263
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 265
    move-result v4

    .line 268
    if-nez v4, :cond_c

    .line 269
    if-eqz v10, :cond_b

    .line 271
    new-instance v4, Lcom/android/systemui/keyguard/KeyguardIndication;

    .line 273
    const/4 v9, 0x0

    .line 275
    move-object v8, v4

    .line 276
    invoke-direct/range {v8 .. v13}, Lcom/android/systemui/keyguard/KeyguardIndication;-><init>(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Landroid/view/View$OnClickListener;Landroid/graphics/drawable/Drawable;Ljava/lang/Long;)V

    .line 277
    const/4 v5, 0x0

    .line 280
    invoke-virtual {v3, v6, v4, v5}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->updateIndication(ILcom/android/systemui/keyguard/KeyguardIndication;Z)V

    .line 281
    goto :goto_2

    .line 284
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 285
    invoke-direct {v0, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 287
    throw v0

    .line 290
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 291
    invoke-direct {v0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 293
    throw v0

    .line 296
    :cond_d
    iget-object v3, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    .line 297
    invoke-virtual {v3, v6}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->hideIndication(I)V

    .line 299
    :goto_2
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 302
    move-result v3

    .line 305
    iget-object v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 306
    const/4 v5, 0x4

    .line 308
    if-nez v3, :cond_10

    .line 309
    iget-object v3, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    .line 311
    const/4 v13, 0x0

    .line 313
    const/4 v12, 0x0

    .line 314
    const/4 v11, 0x0

    .line 315
    const v6, 0x7f060395    # @color/misalignment_text_color '#f28b82'

    .line 316
    invoke-virtual {v4, v6}, Landroid/content/Context;->getColor(I)I

    .line 319
    move-result v6

    .line 322
    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 323
    move-result-object v10

    .line 326
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 327
    move-result v6

    .line 330
    if-nez v6, :cond_f

    .line 331
    if-eqz v10, :cond_e

    .line 333
    new-instance v6, Lcom/android/systemui/keyguard/KeyguardIndication;

    .line 335
    const/4 v9, 0x0

    .line 337
    move-object v8, v6

    .line 338
    invoke-direct/range {v8 .. v13}, Lcom/android/systemui/keyguard/KeyguardIndication;-><init>(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Landroid/view/View$OnClickListener;Landroid/graphics/drawable/Drawable;Ljava/lang/Long;)V

    .line 339
    const/4 v8, 0x1

    .line 342
    invoke-virtual {v3, v5, v6, v8}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->updateIndication(ILcom/android/systemui/keyguard/KeyguardIndication;Z)V

    .line 343
    goto :goto_3

    .line 346
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 347
    invoke-direct {v0, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 349
    throw v0

    .line 352
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 353
    invoke-direct {v0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 355
    throw v0

    .line 358
    :cond_10
    iget-object v3, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    .line 359
    invoke-virtual {v3, v5}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->hideIndication(I)V

    .line 361
    :goto_3
    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogoutEnabled:Z

    .line 364
    if-eqz v1, :cond_11

    .line 366
    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 368
    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 370
    move-result v1

    .line 373
    if-eqz v1, :cond_11

    .line 374
    const/4 v5, 0x1

    .line 376
    goto :goto_4

    .line 377
    :cond_11
    const/4 v5, 0x0

    .line 378
    :goto_4
    const/4 v1, 0x2

    .line 379
    if-eqz v5, :cond_14

    .line 380
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    .line 382
    const/4 v13, 0x0

    .line 384
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 385
    move-result-object v3

    .line 388
    const v5, 0x104047e    # @android:string/keyboardview_keycode_shift

    .line 389
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 392
    move-result-object v9

    .line 395
    const v3, 0x1120123    # @android:^attr-private/textColorSearchUrl

    .line 396
    invoke-static {v3, v4}, Lcom/android/settingslib/Utils;->getColorAttr(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 399
    move-result-object v10

    .line 402
    const v3, 0x7f08129f    # @drawable/logout_button_background 'res/drawable/logout_button_background.xml'

    .line 403
    invoke-virtual {v4, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 406
    move-result-object v12

    .line 409
    new-instance v11, Lcom/android/systemui/statusbar/KeyguardIndicationController$$ExternalSyntheticLambda1;

    .line 410
    invoke-direct {v11, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    .line 412
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 415
    move-result v3

    .line 418
    if-nez v3, :cond_13

    .line 419
    if-eqz v10, :cond_12

    .line 421
    new-instance v3, Lcom/android/systemui/keyguard/KeyguardIndication;

    .line 423
    move-object v8, v3

    .line 425
    invoke-direct/range {v8 .. v13}, Lcom/android/systemui/keyguard/KeyguardIndication;-><init>(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Landroid/view/View$OnClickListener;Landroid/graphics/drawable/Drawable;Ljava/lang/Long;)V

    .line 426
    const/4 v5, 0x0

    .line 429
    invoke-virtual {v2, v1, v3, v5}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->updateIndication(ILcom/android/systemui/keyguard/KeyguardIndication;Z)V

    .line 430
    goto :goto_5

    .line 433
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 434
    invoke-direct {v0, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 436
    throw v0

    .line 439
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 440
    invoke-direct {v0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 442
    throw v0

    .line 445
    :cond_14
    const/4 v5, 0x0

    .line 446
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    .line 447
    invoke-virtual {v2, v1}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->hideIndication(I)V

    .line 449
    :goto_5
    iget-object v1, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPersistentUnlockMessage:Ljava/lang/String;

    .line 452
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 454
    move-result v1

    .line 457
    const/4 v2, 0x7

    .line 458
    if-nez v1, :cond_1a

    .line 459
    iget-object v1, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    .line 461
    iget-object v3, v1, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationMessages:Ljava/util/Map;

    .line 463
    check-cast v3, Ljava/util/HashMap;

    .line 465
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 467
    move-result-object v3

    .line 470
    invoke-interface {v3}, Ljava/util/Set;->size()I

    .line 471
    move-result v3

    .line 474
    if-lez v3, :cond_15

    .line 475
    const/4 v3, 0x1

    .line 477
    goto :goto_6

    .line 478
    :cond_15
    move v3, v5

    .line 479
    :goto_6
    if-eqz v3, :cond_17

    .line 480
    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationMessages:Ljava/util/Map;

    .line 482
    check-cast v1, Ljava/util/HashMap;

    .line 484
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 486
    move-result-object v1

    .line 489
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 490
    move-result-object v1

    .line 493
    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 494
    move-result v3

    .line 497
    if-eqz v3, :cond_17

    .line 498
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 500
    move-result-object v3

    .line 503
    check-cast v3, Ljava/lang/Integer;

    .line 504
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 506
    move-result v3

    .line 509
    if-eq v3, v2, :cond_16

    .line 510
    const/4 v3, 0x1

    .line 512
    goto :goto_7

    .line 513
    :cond_17
    move v3, v5

    .line 514
    :goto_7
    if-nez v3, :cond_1a

    .line 515
    iget-object v1, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    .line 517
    const/4 v13, 0x0

    .line 519
    const/4 v12, 0x0

    .line 520
    const/4 v11, 0x0

    .line 521
    iget-object v9, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPersistentUnlockMessage:Ljava/lang/String;

    .line 522
    iget-object v10, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    .line 524
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 526
    move-result v0

    .line 529
    if-nez v0, :cond_19

    .line 530
    if-eqz v10, :cond_18

    .line 532
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardIndication;

    .line 534
    move-object v8, v0

    .line 536
    invoke-direct/range {v8 .. v13}, Lcom/android/systemui/keyguard/KeyguardIndication;-><init>(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Landroid/view/View$OnClickListener;Landroid/graphics/drawable/Drawable;Ljava/lang/Long;)V

    .line 537
    const/4 v3, 0x1

    .line 540
    invoke-virtual {v1, v2, v0, v3}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->updateIndication(ILcom/android/systemui/keyguard/KeyguardIndication;Z)V

    .line 541
    goto :goto_8

    .line 544
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 545
    invoke-direct {v0, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 547
    throw v0

    .line 550
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 551
    invoke-direct {v0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 553
    throw v0

    .line 556
    :cond_1a
    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    .line 557
    invoke-virtual {v0, v2}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->hideIndication(I)V

    .line 559
    :goto_8
    return-void
    .line 562
.end method

.method public final updateTransient()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDeviceEntryIndication(Z)V

    .line 7
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    move-result v0

    .line 16
    const/4 v1, 0x5

    .line 17
    if-nez v0, :cond_3

    .line 18
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    .line 20
    const/4 v6, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    .line 24
    const-wide/16 v7, 0xa28

    .line 26
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    move-result-object v7

    .line 31
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    .line 32
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    move-result p0

    .line 37
    if-nez p0, :cond_2

    .line 38
    if-eqz v4, :cond_1

    .line 40
    new-instance p0, Lcom/android/systemui/keyguard/KeyguardIndication;

    .line 42
    move-object v2, p0

    .line 44
    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/keyguard/KeyguardIndication;-><init>(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Landroid/view/View$OnClickListener;Landroid/graphics/drawable/Drawable;Ljava/lang/Long;)V

    .line 45
    const/4 v2, 0x1

    .line 48
    invoke-virtual {v0, v1, p0, v2}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->updateIndication(ILcom/android/systemui/keyguard/KeyguardIndication;Z)V

    .line 49
    goto :goto_0

    .line 52
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 53
    const-string/jumbo v0, "text color must be set"

    .line 55
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    throw p0

    .line 61
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 62
    const-string v0, "message or icon must be set"

    .line 64
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    throw p0

    .line 69
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    .line 70
    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->hideIndication(I)V

    .line 72
    :goto_0
    return-void
    .line 75
.end method
