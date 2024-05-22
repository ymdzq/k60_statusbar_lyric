.class public final Lcom/android/systemui/statusbar/phone/BiometricUnlockController;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final UI_EVENT_LOGGER:Lcom/android/internal/logging/UiEventLogger;


# instance fields
.field public final mAuthController:Lcom/android/systemui/biometrics/AuthController;

.field public mAuthenticatedUserId:I

.field public mBiometricAuthenticated:Z

.field public mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

.field public final mBiometricUnlockEventsListeners:Ljava/util/Set;

.field public final mContext:Landroid/content/Context;

.field public final mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

.field public mFadedAwayAfterWakeAndUnlock:Z

.field public mFpiState:Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

.field public final mHandler:Landroid/os/Handler;

.field public mHasFace:Z

.field public final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field public final mKeyguardEditorHelper:Lcom/android/keyguard/KeyguardEditorHelper;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

.field public final mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field public final mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field public final mLogger:Lcom/android/keyguard/logging/BiometricUnlockLogger;

.field public final mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public mMode:I

.field public final mMultiUserController:Lcom/miui/systemui/MultiUserController;

.field public final mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field public mPendingAuthenticated:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mReleaseBiometricWakeLockRunnable:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$1;

.field public final mScreenObserver:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$4;

.field public final mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

.field public final mSessionTracker:Lcom/android/systemui/log/SessionTracker;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final mSystemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

.field public mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field final mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    .line 2
    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->UI_EVENT_LOGGER:Lcom/android/internal/logging/UiEventLogger;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Landroid/os/Handler;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/content/res/Resources;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/dump/DumpManager;Landroid/os/PowerManager;Lcom/android/keyguard/logging/BiometricUnlockLogger;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/log/SessionTracker;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/util/time/SystemClock;Landroid/content/Context;Lcom/miui/systemui/MultiUserController;Lcom/android/keyguard/KeyguardEditorHelper;)V
    .locals 7

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p6

    .line 3
    move-object v2, p8

    .line 4
    move-object/from16 v3, p14

    .line 5
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 7
    const/4 v4, 0x0

    .line 10
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticated:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    .line 11
    new-instance v4, Ljava/util/HashSet;

    .line 13
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 15
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricUnlockEventsListeners:Ljava/util/Set;

    .line 18
    new-instance v4, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$1;

    .line 20
    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$1;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    .line 22
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mReleaseBiometricWakeLockRunnable:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$1;

    .line 25
    new-instance v4, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$3;

    .line 27
    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$3;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    .line 29
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 32
    new-instance v5, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$4;

    .line 34
    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$4;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    .line 36
    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mScreenObserver:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$4;

    .line 39
    move-object/from16 v6, p23

    .line 41
    iput-object v6, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mContext:Landroid/content/Context;

    .line 43
    move-object/from16 v6, p24

    .line 45
    iput-object v6, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMultiUserController:Lcom/miui/systemui/MultiUserController;

    .line 47
    const-class v6, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 49
    invoke-static {v6}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 51
    move-result-object v6

    .line 54
    check-cast v6, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 55
    invoke-virtual {v6, p0}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->registerCallback(Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;)V

    .line 57
    move-object/from16 v6, p25

    .line 60
    iput-object v6, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardEditorHelper:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 62
    move-object/from16 v6, p11

    .line 64
    iput-object v6, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    .line 66
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 68
    invoke-virtual {p6, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 70
    move-object/from16 v1, p13

    .line 73
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 75
    move-object/from16 v1, p19

    .line 77
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 79
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 81
    iget-object v1, v3, Lcom/android/systemui/keyguard/Lifecycle;->mObservers:Ljava/util/ArrayList;

    .line 83
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    move-object/from16 v1, p15

    .line 88
    iget-object v1, v1, Lcom/android/systemui/keyguard/Lifecycle;->mObservers:Ljava/util/ArrayList;

    .line 90
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    move-object v1, p3

    .line 95
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 96
    move-object v1, p1

    .line 98
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 99
    move-object v1, p2

    .line 101
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 102
    move-object v1, p4

    .line 104
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 105
    move-object v1, p5

    .line 107
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHandler:Landroid/os/Handler;

    .line 108
    const v1, 0x7f0b0066    # @integer/fp_consecutive_failure_time_ms '3500'

    .line 110
    move-object v3, p7

    .line 113
    invoke-virtual {p7, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 114
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 117
    iput-object v0, v2, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->unlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 119
    move-object/from16 v1, p9

    .line 121
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 123
    move-object/from16 v1, p16

    .line 125
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    .line 127
    move-object/from16 v1, p17

    .line 129
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 131
    move-object/from16 v1, p18

    .line 133
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mSessionTracker:Lcom/android/systemui/log/SessionTracker;

    .line 135
    move-object/from16 v1, p20

    .line 137
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    .line 139
    move-object/from16 v1, p21

    .line 141
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 143
    move-object/from16 v1, p12

    .line 145
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLogger:Lcom/android/keyguard/logging/BiometricUnlockLogger;

    .line 147
    move-object/from16 v1, p22

    .line 149
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 151
    const-class v1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 153
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 155
    move-result-object v1

    .line 158
    move-object/from16 v2, p10

    .line 159
    invoke-virtual {v2, v1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 161
    return-void
.end method

.method public static toSubtype(Landroid/hardware/biometrics/BiometricSourceType;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$5;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    .line 2
    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    .line 4
    move-result p0

    .line 7
    aget p0, v0, p0

    .line 8
    const/4 v0, 0x1

    .line 10
    if-eq p0, v0, :cond_2

    .line 11
    const/4 v1, 0x2

    .line 13
    if-eq p0, v1, :cond_1

    .line 14
    const/4 v0, 0x3

    .line 16
    if-eq p0, v0, :cond_0

    .line 17
    return v0

    .line 19
    :cond_0
    return v1

    .line 20
    :cond_1
    return v0

    .line 21
    :cond_2
    const/4 p0, 0x0

    .line 22
    return p0
    .line 23
.end method


# virtual methods
.method public final calculateMode(Landroid/hardware/biometrics/BiometricSourceType;Z)I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 6
    const/4 v4, 0x4

    .line 8
    const/4 v5, 0x5

    .line 9
    const/4 v6, 0x3

    .line 10
    const/4 v7, 0x0

    .line 11
    const/4 v8, 0x1

    .line 12
    if-eq v1, v2, :cond_d

    .line 13
    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->IRIS:Landroid/hardware/biometrics/BiometricSourceType;

    .line 15
    if-ne v1, v2, :cond_0

    .line 17
    goto/16 :goto_3

    .line 19
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 21
    iget-object v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 23
    iget v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mAuthenticatedUserId:I

    .line 25
    move/from16 v11, p2

    .line 27
    invoke-virtual {v1, v11, v2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isBiometricAllowedForUser(ZI)Z

    .line 29
    move-result v1

    .line 32
    if-nez v1, :cond_1

    .line 33
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 35
    move-result-object v2

    .line 38
    invoke-interface {v2}, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;->onUdfpsPointerUp()V

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    const-string/jumbo v9, "unlockingAllowed is false; mAuthenticatedUserId="

    .line 44
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    iget v9, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mAuthenticatedUserId:I

    .line 50
    const-string v10, "BiometricUnlockCtrl"

    .line 52
    invoke-static {v2, v9, v10}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 54
    :cond_1
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 57
    iget-boolean v15, v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 59
    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 61
    check-cast v9, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 63
    iget-boolean v14, v9, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 65
    iget-boolean v9, v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    .line 67
    if-eqz v1, :cond_2

    .line 69
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLogger:Lcom/android/keyguard/logging/BiometricUnlockLogger;

    .line 71
    invoke-virtual {v2, v15, v14, v9}, Lcom/android/keyguard/logging/BiometricUnlockLogger;->logCalculateModeForFingerprintUnlockingAllowed(ZZZ)V

    .line 73
    move v2, v14

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    iget-object v9, v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 78
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 80
    move-result v10

    .line 83
    invoke-virtual {v9, v10}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    .line 84
    move-result v10

    .line 87
    iget-object v2, v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 88
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 90
    move-result v9

    .line 93
    invoke-virtual {v2, v9}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isNonStrongBiometricAllowedAfterIdleTimeout(I)Z

    .line 94
    move-result v12

    .line 97
    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLogger:Lcom/android/keyguard/logging/BiometricUnlockLogger;

    .line 98
    move/from16 v11, p2

    .line 100
    move v13, v15

    .line 102
    move v2, v14

    .line 103
    invoke-virtual/range {v9 .. v14}, Lcom/android/keyguard/logging/BiometricUnlockLogger;->logCalculateModeForFingerprintUnlockingNotAllowed(IZZZZ)V

    .line 104
    :goto_0
    if-nez v15, :cond_8

    .line 107
    const-class v9, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;

    .line 109
    invoke-static {v9}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 111
    move-result-object v9

    .line 114
    check-cast v9, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;

    .line 115
    iget-boolean v9, v9, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->mFastUnlock:Z

    .line 117
    if-nez v9, :cond_8

    .line 119
    if-nez v2, :cond_4

    .line 121
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    .line 123
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->isKeyguardShowDelayed()Z

    .line 125
    move-result v2

    .line 128
    if-nez v2, :cond_4

    .line 129
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 131
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    .line 133
    move-result v0

    .line 136
    if-eqz v0, :cond_3

    .line 137
    goto :goto_1

    .line 139
    :cond_3
    move v3, v4

    .line 140
    goto :goto_2

    .line 141
    :cond_4
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 142
    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    .line 144
    if-eqz v2, :cond_5

    .line 146
    move v7, v8

    .line 148
    :cond_5
    if-eqz v7, :cond_6

    .line 149
    if-eqz v1, :cond_6

    .line 151
    const/4 v3, 0x2

    .line 153
    goto :goto_2

    .line 154
    :cond_6
    if-nez v1, :cond_7

    .line 155
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 157
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 159
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    .line 161
    if-nez v0, :cond_b

    .line 163
    :cond_7
    :goto_1
    move v3, v8

    .line 165
    goto :goto_2

    .line 166
    :cond_8
    if-eqz v2, :cond_c

    .line 167
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    .line 169
    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 171
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->primaryBouncerIsOrWillBeShowing()Z

    .line 173
    move-result v2

    .line 176
    if-eqz v2, :cond_9

    .line 177
    if-eqz v1, :cond_9

    .line 179
    const/4 v3, 0x7

    .line 181
    goto :goto_2

    .line 182
    :cond_9
    if-eqz v1, :cond_a

    .line 183
    move v3, v5

    .line 185
    goto :goto_2

    .line 186
    :cond_a
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    .line 187
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 189
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    .line 191
    move-result v0

    .line 194
    if-nez v0, :cond_c

    .line 195
    :cond_b
    move v3, v6

    .line 197
    goto :goto_2

    .line 198
    :cond_c
    move v3, v7

    .line 199
    :goto_2
    return v3

    .line 200
    :cond_d
    :goto_3
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 201
    iget-boolean v2, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 203
    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 205
    move-object v15, v9

    .line 207
    check-cast v15, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 208
    iget-boolean v14, v15, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 210
    iget-object v9, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 212
    iget v10, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mAuthenticatedUserId:I

    .line 214
    invoke-virtual {v9, v8, v10}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isBiometricAllowedForUser(ZI)Z

    .line 216
    move-result v16

    .line 219
    iget-boolean v9, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    .line 220
    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 222
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 224
    move-result v10

    .line 227
    if-nez v10, :cond_10

    .line 228
    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    .line 230
    iget-object v10, v10, Lcom/android/systemui/biometrics/AuthController;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    .line 232
    if-nez v10, :cond_e

    .line 234
    move v10, v7

    .line 236
    goto :goto_4

    .line 237
    :cond_e
    iget-boolean v10, v10, Lcom/android/systemui/biometrics/UdfpsController;->mOnFingerDown:Z

    .line 238
    :goto_4
    if-eqz v10, :cond_f

    .line 240
    goto :goto_5

    .line 242
    :cond_f
    move v12, v7

    .line 243
    goto :goto_6

    .line 244
    :cond_10
    :goto_5
    move v12, v8

    .line 245
    :goto_6
    if-eqz v16, :cond_11

    .line 246
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLogger:Lcom/android/keyguard/logging/BiometricUnlockLogger;

    .line 248
    invoke-virtual {v1, v2, v14, v9, v12}, Lcom/android/keyguard/logging/BiometricUnlockLogger;->logCalculateModeForPassiveAuthUnlockingAllowed(ZZZZ)V

    .line 250
    move v1, v12

    .line 253
    move-object v3, v13

    .line 254
    move/from16 v17, v14

    .line 255
    goto :goto_7

    .line 257
    :cond_11
    iget-object v9, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 258
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 260
    move-result v10

    .line 263
    invoke-virtual {v9, v10}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    .line 264
    move-result v10

    .line 267
    iget-object v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 268
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 270
    move-result v9

    .line 273
    invoke-virtual {v1, v9}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isNonStrongBiometricAllowedAfterIdleTimeout(I)Z

    .line 274
    move-result v11

    .line 277
    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLogger:Lcom/android/keyguard/logging/BiometricUnlockLogger;

    .line 278
    move v1, v12

    .line 280
    move v12, v2

    .line 281
    move-object v3, v13

    .line 282
    move v13, v14

    .line 283
    move/from16 v17, v14

    .line 284
    move v14, v1

    .line 286
    invoke-virtual/range {v9 .. v14}, Lcom/android/keyguard/logging/BiometricUnlockLogger;->logCalculateModeForPassiveAuthUnlockingNotAllowed(IZZZZ)V

    .line 287
    :goto_7
    if-nez v2, :cond_17

    .line 290
    if-nez v17, :cond_12

    .line 292
    if-eqz v1, :cond_16

    .line 294
    move v3, v8

    .line 296
    goto :goto_b

    .line 297
    :cond_12
    if-nez v16, :cond_13

    .line 298
    if-eqz v1, :cond_1c

    .line 300
    goto :goto_a

    .line 302
    :cond_13
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 303
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    .line 305
    if-eqz v0, :cond_14

    .line 307
    move v7, v8

    .line 309
    :cond_14
    if-eqz v7, :cond_15

    .line 310
    if-eqz v1, :cond_16

    .line 312
    goto :goto_8

    .line 314
    :cond_15
    if-eqz v1, :cond_16

    .line 315
    :goto_8
    const/4 v3, 0x2

    .line 317
    goto :goto_b

    .line 318
    :cond_16
    move v3, v4

    .line 319
    goto :goto_b

    .line 320
    :cond_17
    if-eqz v16, :cond_18

    .line 321
    iget-boolean v2, v15, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    .line 323
    if-eqz v2, :cond_18

    .line 325
    goto :goto_9

    .line 327
    :cond_18
    if-eqz v17, :cond_1c

    .line 328
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    .line 330
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 332
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->primaryBouncerIsOrWillBeShowing()Z

    .line 334
    move-result v0

    .line 337
    if-nez v0, :cond_19

    .line 338
    iget-boolean v0, v3, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->altBouncerShowing:Z

    .line 340
    if-eqz v0, :cond_1a

    .line 342
    :cond_19
    if-eqz v16, :cond_1a

    .line 344
    const/4 v3, 0x7

    .line 346
    goto :goto_b

    .line 347
    :cond_1a
    if-eqz v16, :cond_1b

    .line 348
    :goto_9
    move v3, v5

    .line 350
    goto :goto_b

    .line 351
    :cond_1b
    if-eqz v1, :cond_1c

    .line 352
    :goto_a
    move v3, v6

    .line 354
    goto :goto_b

    .line 355
    :cond_1c
    move v3, v7

    .line 356
    :goto_b
    return v3
    .line 357
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string p2, " BiometricUnlockController:"

    .line 2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    const-string p2, "   mMode="

    .line 7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    iget p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 12
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 14
    const-string p2, "   mWakeLock="

    .line 17
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 22
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 24
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 27
    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUdfpsSupported()Z

    .line 29
    move-result p2

    .line 32
    if-eqz p2, :cond_0

    .line 33
    const-string p2, "   mNumConsecutiveFpFailures="

    .line 35
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 37
    const/4 p2, 0x0

    .line 40
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 41
    const-string p2, "   time since last failure="

    .line 44
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 46
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 49
    check-cast p0, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 56
    move-result-wide v0

    .line 59
    const-wide/16 v2, 0x0

    .line 60
    sub-long/2addr v0, v2

    .line 62
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 63
    :cond_0
    return-void
    .line 66
.end method

.method public final isWakeAndUnlock()Z
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 2
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    const/4 v1, 0x2

    .line 7
    if-eq p0, v1, :cond_1

    .line 8
    const/4 v1, 0x6

    .line 10
    if-ne p0, v1, :cond_0

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :cond_1
    :goto_0
    return v0
    .line 15
.end method

.method public final onBiometricAcquired(Landroid/hardware/biometrics/BiometricSourceType;I)V
    .locals 7

    .line 1
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    if-eqz p2, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 9
    if-ne v0, p1, :cond_1

    .line 11
    if-eqz p2, :cond_1

    .line 13
    return-void

    .line 15
    :cond_1
    sget-object p2, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 16
    if-ne p1, p2, :cond_2

    .line 18
    sget-object p2, Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->ACQUIRED:Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 20
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFpiState:Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 22
    :cond_2
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 24
    sget-object p2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 26
    if-ne p1, p2, :cond_3

    .line 28
    const/4 p2, 0x0

    .line 30
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->recordKeyguardUnlockWay(Z)V

    .line 31
    :cond_3
    const-string p2, "BiometricUnlockController#onBiometricAcquired"

    .line 34
    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->releaseBiometricWakeLock()V

    .line 39
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 42
    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    .line 44
    move-result p2

    .line 47
    if-eqz p2, :cond_6

    .line 48
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 50
    invoke-virtual {p2}, Lcom/android/internal/util/LatencyTracker;->isEnabled()Z

    .line 52
    move-result v0

    .line 55
    if-eqz v0, :cond_5

    .line 56
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 58
    if-ne p1, v0, :cond_4

    .line 60
    const/4 p1, 0x7

    .line 62
    goto :goto_0

    .line 63
    :cond_4
    const/4 p1, 0x2

    .line 64
    :goto_0
    invoke-virtual {p2, p1}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 65
    :cond_5
    const-string/jumbo p1, "wake-and-unlock:wakelock"

    .line 68
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    .line 71
    const/4 v0, 0x1

    .line 73
    invoke-virtual {p2, v0, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 74
    move-result-object p1

    .line 77
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 78
    const-string p1, "acquiring wake-and-unlock"

    .line 80
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 82
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 85
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 87
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 90
    const-string v3, "biometric acquired, grabbing biometric wakelock"

    .line 93
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLogger:Lcom/android/keyguard/logging/BiometricUnlockLogger;

    .line 95
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    sget-object v2, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 100
    iget-object v0, p1, Lcom/android/keyguard/logging/BiometricUnlockLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 102
    const-string v1, "BiometricUnlockLogger"

    .line 104
    const/4 v4, 0x0

    .line 106
    const/16 v5, 0x8

    .line 107
    const/4 v6, 0x0

    .line 109
    invoke-static/range {v0 .. v6}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 110
    const-wide/16 p1, 0x3a98

    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHandler:Landroid/os/Handler;

    .line 115
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mReleaseBiometricWakeLockRunnable:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$1;

    .line 117
    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 119
    :cond_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 122
    return-void
    .line 125
.end method

.method public final onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 3

    .line 1
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    sget-object v0, Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->FAILED:Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 6
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFpiState:Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 8
    :cond_0
    new-instance v0, Landroid/metrics/LogMaker;

    .line 10
    const/16 v1, 0x6a1

    .line 12
    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 14
    const/16 v1, 0xb

    .line 17
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 19
    move-result-object v0

    .line 22
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->toSubtype(Landroid/hardware/biometrics/BiometricSourceType;)I

    .line 23
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 27
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 31
    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 33
    sget-object v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->FAILURE_EVENT_BY_SOURCE_TYPE:Ljava/util/Map;

    .line 36
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 41
    check-cast v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    .line 42
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 44
    move-result-object v0

    .line 47
    new-instance v1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda3;

    .line 48
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    .line 50
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 56
    invoke-virtual {v0}, Lcom/android/internal/util/LatencyTracker;->isEnabled()Z

    .line 58
    move-result v1

    .line 61
    if-eqz v1, :cond_2

    .line 62
    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 64
    if-ne p1, v1, :cond_1

    .line 66
    const/4 v1, 0x7

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const/4 v1, 0x2

    .line 70
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionCancel(I)V

    .line 71
    :cond_2
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 74
    const/4 p1, 0x0

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->recordKeyguardUnlockWay(Z)V

    .line 77
    sget-boolean p1, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    .line 80
    if-eqz p1, :cond_3

    .line 82
    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 84
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 86
    move-result-object p1

    .line 89
    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 90
    iget-boolean p1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 92
    if-nez p1, :cond_3

    .line 94
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 96
    move-result-wide v0

    .line 99
    const-string p1, "android.policy:FINGERPRINT"

    .line 100
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    .line 102
    invoke-virtual {v2, v0, v1, p1}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 104
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->releaseBiometricWakeLock()V

    .line 107
    return-void
    .line 110
.end method

.method public final onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 9

    .line 1
    const-string v0, "BiometricUnlockController#onBiometricUnlocked"

    .line 2
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricAuthenticated:Z

    .line 7
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 12
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isGoingToShowKeyguard()Z

    .line 14
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLogger:Lcom/android/keyguard/logging/BiometricUnlockLogger;

    .line 21
    const-string v5, "Device is going to sleep, aborting keyguardDone"

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    sget-object v4, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 28
    iget-object v2, p1, Lcom/android/keyguard/logging/BiometricUnlockLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 30
    const-string v3, "BiometricUnlockLogger"

    .line 32
    const/4 v6, 0x0

    .line 34
    const/16 v7, 0x8

    .line 35
    const/4 v8, 0x0

    .line 37
    invoke-static/range {v2 .. v8}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 38
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 41
    move-result-object p1

    .line 44
    invoke-interface {p1}, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;->onUdfpsPointerUp()V

    .line 45
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 48
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearBiometricRecognized()V

    .line 50
    const-class p0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;

    .line 53
    invoke-static {p0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 55
    move-result-object p0

    .line 58
    check-cast p0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;

    .line 59
    iput-boolean v1, p0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->mFastUnlock:Z

    .line 61
    iput-boolean v1, p0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->mFastUnlockInScreenOff:Z

    .line 63
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 65
    return-void

    .line 68
    :cond_1
    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricAuthenticated:Z

    .line 70
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHasFace:Z

    .line 72
    iput p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mAuthenticatedUserId:I

    .line 74
    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 76
    if-ne p2, v2, :cond_2

    .line 78
    sget-object v2, Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->SUCCEEDED:Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 80
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFpiState:Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 82
    :cond_2
    sget-boolean v2, Lcom/miui/utils/configs/MiuiConfigs;->GXZW_SENSOR:Z

    .line 84
    const/4 v3, 0x2

    .line 86
    if-nez v2, :cond_e

    .line 87
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 89
    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isGoingToShowKeyguard()Z

    .line 91
    move-result v2

    .line 94
    if-eqz v2, :cond_e

    .line 95
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mContext:Landroid/content/Context;

    .line 97
    invoke-static {v2}, Lcom/miui/systemui/util/CommonUtil;->isTopActivityLauncher(Landroid/content/Context;)Z

    .line 99
    move-result v2

    .line 102
    if-eqz v2, :cond_d

    .line 103
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 105
    iget-object v2, v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 107
    invoke-virtual {v2, p3, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isBiometricAllowedForUser(ZI)Z

    .line 109
    move-result v2

    .line 112
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 113
    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    .line 115
    if-eqz v4, :cond_3

    .line 117
    move v4, v0

    .line 119
    goto :goto_0

    .line 120
    :cond_3
    move v4, v1

    .line 121
    :goto_0
    if-eqz v4, :cond_4

    .line 122
    if-eqz v2, :cond_4

    .line 124
    move v2, v3

    .line 126
    goto :goto_2

    .line 127
    :cond_4
    if-nez v2, :cond_6

    .line 128
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 130
    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 132
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    .line 134
    if-nez v2, :cond_5

    .line 136
    goto :goto_1

    .line 138
    :cond_5
    move v2, v1

    .line 139
    goto :goto_2

    .line 140
    :cond_6
    :goto_1
    move v2, v0

    .line 141
    :goto_2
    const-class v4, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 142
    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 144
    move-result-object v4

    .line 147
    check-cast v4, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 148
    iget v5, v4, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->mFingerprintMode:I

    .line 150
    if-eq v5, v2, :cond_7

    .line 152
    iput v2, v4, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->mFingerprintMode:I

    .line 154
    :cond_7
    if-nez v2, :cond_8

    .line 156
    iput v1, v4, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->mAuthFingerprintId:I

    .line 158
    :cond_8
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 160
    iget-boolean v4, v4, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 162
    if-nez v4, :cond_c

    .line 164
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 166
    move-result v4

    .line 169
    if-ne v4, p1, :cond_c

    .line 170
    if-eq v2, v3, :cond_9

    .line 172
    if-ne v2, v0, :cond_c

    .line 174
    :cond_9
    const-string p1, "miui_keyguard_fingerprint"

    .line 176
    const-string p2, "Unlock by fingerprint, keyguard is not showing and wake up"

    .line 178
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const-class p1, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 183
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 185
    move-result-object p1

    .line 188
    check-cast p1, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 189
    invoke-virtual {p1}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->hideKeyguardWallpaper()V

    .line 191
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 194
    monitor-enter v2

    .line 196
    :try_start_0
    iget-boolean p1, v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingLock:Z

    .line 197
    if-nez p1, :cond_a

    .line 199
    iget-object p1, v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/KeyguardViewMediator$12;

    .line 201
    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 203
    move-result p1

    .line 206
    if-eqz p1, :cond_b

    .line 207
    :cond_a
    iput-boolean v1, v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingLock:Z

    .line 209
    iget p1, v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    .line 211
    invoke-virtual {v2, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->playSound(I)V

    .line 213
    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetAppLock()V

    .line 216
    iget-object p1, v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/KeyguardViewMediator$12;

    .line 219
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 221
    :cond_b
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->recordKeyguardUnlockWay(Z)V

    .line 225
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    .line 228
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 230
    move-result-wide p1

    .line 233
    const-string p3, "android.policy:FINGERPRINT"

    .line 234
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 236
    goto :goto_3

    .line 239
    :catchall_0
    move-exception p0

    .line 240
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    throw p0

    .line 242
    :cond_c
    new-instance v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    .line 243
    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;-><init>(ILandroid/hardware/biometrics/BiometricSourceType;Z)V

    .line 245
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticated:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    .line 248
    :goto_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 250
    return-void

    .line 253
    :cond_d
    const-string p0, "miui_keyguard_fingerprint"

    .line 254
    const-string p1, "Unlock by fingerprint failed because keyguard is not showing"

    .line 256
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    return-void

    .line 261
    :cond_e
    const-class v2, Lcom/android/systemui/UiOffloadThread;

    .line 262
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 264
    move-result-object v2

    .line 267
    check-cast v2, Lcom/android/systemui/UiOffloadThread;

    .line 268
    new-instance v4, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda0;

    .line 270
    invoke-direct {v4, p0, p2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Landroid/hardware/biometrics/BiometricSourceType;)V

    .line 272
    invoke-virtual {v2, v4}, Lcom/android/systemui/UiOffloadThread;->execute(Ljava/lang/Runnable;)V

    .line 275
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 278
    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 280
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    .line 282
    if-nez v2, :cond_10

    .line 284
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 286
    invoke-virtual {v2, p2, p3}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->onBiometricAuthenticated(Landroid/hardware/biometrics/BiometricSourceType;Z)Z

    .line 288
    move-result v2

    .line 291
    if-eqz v2, :cond_f

    .line 292
    goto :goto_4

    .line 294
    :cond_f
    move v0, v1

    .line 295
    :cond_10
    :goto_4
    if-eqz v0, :cond_17

    .line 296
    const-class v0, Lcom/android/systemui/UiOffloadThread;

    .line 298
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 300
    move-result-object v0

    .line 303
    check-cast v0, Lcom/android/systemui/UiOffloadThread;

    .line 304
    new-instance v2, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda1;

    .line 306
    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    .line 308
    invoke-virtual {v0, v2}, Lcom/android/systemui/UiOffloadThread;->execute(Ljava/lang/Runnable;)V

    .line 311
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->calculateMode(Landroid/hardware/biometrics/BiometricSourceType;Z)I

    .line 314
    move-result p3

    .line 317
    iput p3, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 318
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMultiUserController:Lcom/miui/systemui/MultiUserController;

    .line 320
    invoke-virtual {p3, p1}, Lcom/miui/systemui/MultiUserController;->allowUnlock(I)Lcom/miui/systemui/MultiUserController$UserSwitchableResult;

    .line 322
    move-result-object p3

    .line 325
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 326
    move-result v0

    .line 329
    const-string v2, "onBiometricAuthenticated userId="

    .line 330
    const-string v4, ";getCurrentUser="

    .line 332
    const-string v5, ";mMode="

    .line 334
    invoke-static {v2, p1, v4, v0, v5}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    move-result-object v2

    .line 339
    iget v4, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 340
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 342
    const-string v4, ";canSwitchUser="

    .line 345
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    iget-boolean p3, p3, Lcom/miui/systemui/MultiUserController$UserSwitchableResult;->canSwitch:Z

    .line 350
    const-string v4, "BiometricUnlockCtrl"

    .line 352
    invoke-static {v2, p3, v4}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 354
    const-class v2, Lcom/miui/interfaces/keyguard/IMiuiFaceUnlockManager;

    .line 357
    if-eq v0, p1, :cond_12

    .line 359
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 361
    const/4 v5, 0x3

    .line 363
    if-eq v0, v5, :cond_12

    .line 364
    if-eqz v0, :cond_12

    .line 366
    const/4 v6, 0x4

    .line 368
    if-eq v0, v6, :cond_12

    .line 369
    if-eqz p3, :cond_11

    .line 371
    invoke-static {v2}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 373
    move-result-object p3

    .line 376
    check-cast p3, Lcom/miui/interfaces/keyguard/IMiuiFaceUnlockManager;

    .line 377
    check-cast p3, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;

    .line 379
    invoke-virtual {p3}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->isFaceUnlockSuccessAndStayScreen()Z

    .line 381
    move-result p3

    .line 384
    if-nez p3, :cond_11

    .line 385
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    .line 387
    move-result-object p3

    .line 390
    invoke-interface {p3, p1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 391
    goto :goto_5

    .line 394
    :catch_0
    move-exception p1

    .line 395
    const-string/jumbo p3, "switchUser failed"

    .line 396
    invoke-static {v4, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 399
    goto :goto_5

    .line 402
    :cond_11
    iput v5, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 403
    :cond_12
    :goto_5
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 405
    iget p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 407
    sget-object p3, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 409
    const-class v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 411
    if-ne p2, p3, :cond_14

    .line 413
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 415
    move-result-object p3

    .line 418
    check-cast p3, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 419
    iget v0, p3, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->mFingerprintMode:I

    .line 421
    if-eq v0, p1, :cond_13

    .line 423
    iput p1, p3, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->mFingerprintMode:I

    .line 425
    :cond_13
    if-nez p1, :cond_15

    .line 427
    iput v1, p3, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->mAuthFingerprintId:I

    .line 429
    goto :goto_6

    .line 431
    :cond_14
    sget-object p3, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 432
    if-ne p2, p3, :cond_15

    .line 434
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 436
    move-result-object p3

    .line 439
    check-cast p3, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 440
    iput p1, p3, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->mFaceUnlockMode:I

    .line 442
    :cond_15
    :goto_6
    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 444
    if-ne p2, p1, :cond_16

    .line 446
    sget-boolean p1, Lcom/miui/utils/configs/MiuiConfigs;->BROAD_SIDE_FP:Z

    .line 448
    if-eqz p1, :cond_16

    .line 450
    invoke-static {v2}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 452
    move-result-object p1

    .line 455
    check-cast p1, Lcom/miui/interfaces/keyguard/IMiuiFaceUnlockManager;

    .line 456
    check-cast p1, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;

    .line 458
    invoke-virtual {p1}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->isFaceUnlockSuccessAndStayScreen()Z

    .line 460
    move-result p1

    .line 463
    if-eqz p1, :cond_16

    .line 464
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 466
    invoke-virtual {p1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState(I)V

    .line 468
    :cond_16
    iget p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 471
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->startWakeAndUnlock(I)V

    .line 473
    goto :goto_7

    .line 476
    :cond_17
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLogger:Lcom/android/keyguard/logging/BiometricUnlockLogger;

    .line 477
    const-string v3, "onBiometricUnlocked aborted by bypass controller"

    .line 479
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 481
    sget-object v2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 484
    iget-object v0, p0, Lcom/android/keyguard/logging/BiometricUnlockLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 486
    const-string v1, "BiometricUnlockLogger"

    .line 488
    const/4 v4, 0x0

    .line 490
    const/16 v5, 0x8

    .line 491
    const/4 v6, 0x0

    .line 493
    invoke-static/range {v0 .. v6}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 494
    :goto_7
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 497
    return-void
    .line 500
.end method

.method public final onBiometricDetected()V
    .locals 1

    .line 1
    const-string v0, "BiometricUnlockController#onBiometricDetected"

    .line 2
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 7
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 13
    return-void

    .line 16
    :cond_0
    const/4 v0, 0x3

    .line 17
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->startWakeAndUnlock(I)V

    .line 18
    return-void
    .line 21
.end method

.method public final onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 10

    .line 1
    new-instance p2, Landroid/metrics/LogMaker;

    .line 2
    const/16 v0, 0x6a1

    .line 4
    invoke-direct {p2, v0}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 6
    const/16 v0, 0xf

    .line 9
    invoke-virtual {p2, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 11
    move-result-object p2

    .line 14
    invoke-static {p3}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->toSubtype(Landroid/hardware/biometrics/BiometricSourceType;)I

    .line 15
    move-result v0

    .line 18
    invoke-virtual {p2, v0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 19
    move-result-object p2

    .line 22
    const/16 v0, 0x6cd

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object v1

    .line 28
    invoke-virtual {p2, v0, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 29
    move-result-object p2

    .line 32
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 33
    invoke-virtual {v0, p2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 35
    sget-object p2, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->ERROR_EVENT_BY_SOURCE_TYPE:Ljava/util/Map;

    .line 38
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    move-result-object p2

    .line 43
    check-cast p2, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    .line 44
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 46
    move-result-object p2

    .line 49
    new-instance v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda2;

    .line 50
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    .line 52
    invoke-virtual {p2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 55
    sget-object p2, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 58
    const/4 v0, 0x1

    .line 60
    const/4 v1, 0x0

    .line 61
    if-ne p3, p2, :cond_1

    .line 62
    const/4 p2, 0x7

    .line 64
    if-eq p1, p2, :cond_0

    .line 65
    const/16 p2, 0x9

    .line 67
    if-ne p1, p2, :cond_1

    .line 69
    :cond_0
    move p2, v0

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    move p2, v1

    .line 73
    :goto_0
    const/4 v2, 0x3

    .line 74
    if-eqz p2, :cond_2

    .line 75
    const-string v6, "fingerprint locked out"

    .line 77
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLogger:Lcom/android/keyguard/logging/BiometricUnlockLogger;

    .line 79
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    sget-object v5, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 84
    iget-object v3, p2, Lcom/android/keyguard/logging/BiometricUnlockLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 86
    const-string v4, "BiometricUnlockLogger"

    .line 88
    const/4 v7, 0x0

    .line 90
    const/16 v8, 0x8

    .line 91
    const/4 v9, 0x0

    .line 93
    invoke-static/range {v3 .. v9}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 94
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->startWakeAndUnlock(I)V

    .line 97
    sget-object p2, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->UI_EVENT_LOGGER:Lcom/android/internal/logging/UiEventLogger;

    .line 100
    sget-object v3, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->BIOMETRIC_BOUNCER_SHOWN:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    .line 102
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mSessionTracker:Lcom/android/systemui/log/SessionTracker;

    .line 104
    invoke-virtual {v4, v0}, Lcom/android/systemui/log/SessionTracker;->getSessionId(I)Lcom/android/internal/logging/InstanceId;

    .line 106
    move-result-object v0

    .line 109
    check-cast p2, Lcom/android/internal/logging/UiEventLoggerImpl;

    .line 110
    invoke-virtual {p2, v3, v0}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V

    .line 112
    :cond_2
    sget-object p2, Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->ERROR:Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 115
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFpiState:Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 117
    sget-object p2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 119
    if-ne p3, p2, :cond_3

    .line 121
    if-ne p1, v2, :cond_3

    .line 123
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHasFace:Z

    .line 125
    if-eqz p1, :cond_3

    .line 127
    sget-boolean p1, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    .line 129
    if-nez p1, :cond_3

    .line 131
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->startWakeAndUnlock(I)V

    .line 133
    const-class p1, Lcom/miui/interfaces/IHapticFeedBack;

    .line 136
    invoke-static {p1}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 138
    move-result-object p1

    .line 141
    check-cast p1, Lcom/miui/interfaces/IHapticFeedBack;

    .line 142
    check-cast p1, Lcom/miui/systemui/functions/HapticFeedBackImpl;

    .line 144
    const/16 p2, 0xcf

    .line 146
    const/16 p3, 0x52

    .line 148
    const/4 v0, 0x0

    .line 150
    invoke-virtual {p1, p2, v0, p3, v1}, Lcom/miui/systemui/functions/HapticFeedBackImpl;->extExtHapticFeedback(ILjava/lang/String;II)V

    .line 151
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHasFace:Z

    .line 154
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->releaseBiometricWakeLock()V

    .line 156
    return-void
    .line 159
.end method

.method public final onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricAuthenticated:Z

    .line 3
    sget-object p2, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 5
    if-ne p3, p2, :cond_0

    .line 7
    sget-object p2, Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->HELP:Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 9
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFpiState:Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 11
    :cond_0
    sget-object p2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 13
    if-ne p3, p2, :cond_1

    .line 15
    const/4 p2, 0x5

    .line 17
    if-eq p1, p2, :cond_1

    .line 18
    const/16 p2, 0x2711

    .line 20
    if-eq p1, p2, :cond_1

    .line 22
    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHasFace:Z

    .line 25
    :cond_1
    return-void
    .line 27
.end method

.method public final onBiometricRunningStateChanged(Landroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 2

    .line 1
    const-string v0, "onBiometricRunningStateChanged running="

    .line 2
    const-string v1, "BiometricUnlockCtrl"

    .line 4
    invoke-static {v0, p2, v1}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 6
    if-eqz p2, :cond_2

    .line 9
    sget-object p2, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 11
    if-ne p1, p2, :cond_2

    .line 13
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFpiState:Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 15
    sget-object p2, Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->ERROR:Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 17
    if-ne p1, p2, :cond_0

    .line 19
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 21
    iget-boolean p1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintLockedOut:Z

    .line 23
    if-eqz p1, :cond_1

    .line 25
    :cond_0
    sget-object p1, Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->NONE:Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 27
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFpiState:Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 29
    :cond_1
    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricAuthenticated:Z

    .line 32
    :cond_2
    return-void
    .line 34
.end method

.method public final onKeyguardBouncerStateChanged(Z)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->resetMode()V

    .line 4
    :cond_0
    return-void
    .line 7
.end method

.method public final onPreBiometricAuthenticated(I)V
    .locals 9

    .line 1
    const-string v0, "FingerprintUnlockController#onPreFingerprintAuthenticated"

    .line 2
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 7
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isGoingToShowKeyguard()Z

    .line 9
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    const-class v2, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;

    .line 14
    if-eqz v0, :cond_0

    .line 16
    const-string p1, "BiometricUnlockCtrl"

    .line 18
    const-string v0, "Device is going to sleep, aborting keyguardDone"

    .line 20
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 25
    move-result-object p1

    .line 28
    invoke-interface {p1}, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;->onUdfpsPointerUp()V

    .line 29
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 32
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearBiometricRecognized()V

    .line 34
    invoke-static {v2}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    move-result-object p0

    .line 40
    check-cast p0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;

    .line 41
    iput-boolean v1, p0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->mFastUnlock:Z

    .line 43
    iput-boolean v1, p0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->mFastUnlockInScreenOff:Z

    .line 45
    return-void

    .line 47
    :cond_0
    const-class v0, Lcom/miui/interfaces/keyguard/IMiuiFaceUnlockManager;

    .line 48
    invoke-static {v0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 50
    move-result-object v0

    .line 53
    check-cast v0, Lcom/miui/interfaces/keyguard/IMiuiFaceUnlockManager;

    .line 54
    check-cast v0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;

    .line 56
    invoke-virtual {v0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->isFaceUnlockSuccessAndStayScreen()Z

    .line 58
    move-result v0

    .line 61
    if-eqz v0, :cond_1

    .line 62
    const-class p0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 64
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 66
    move-result-object p0

    .line 69
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 70
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->collapsePanels()V

    .line 74
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 78
    const/4 v3, 0x1

    .line 80
    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    .line 81
    move-result v0

    .line 84
    if-eqz v0, :cond_7

    .line 85
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 87
    move-result v0

    .line 90
    if-ne v0, p1, :cond_7

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 93
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerIsOrWillBeShowing:Z

    .line 95
    if-nez v0, :cond_7

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardEditorHelper:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 99
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardEditorHelper;->isInEnterEditorMode()Z

    .line 101
    move-result v0

    .line 104
    if-nez v0, :cond_7

    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 107
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    .line 109
    move-result v0

    .line 112
    if-eqz v0, :cond_7

    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardEditorHelper:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 115
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardEditorHelper;->isInExitEditorMode()Z

    .line 117
    move-result v0

    .line 120
    if-eqz v0, :cond_3

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardEditorHelper:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 123
    iget-object v4, v0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditLeash:Landroid/view/SurfaceControl;

    .line 125
    if-eqz v4, :cond_2

    .line 127
    invoke-virtual {v4}, Landroid/view/SurfaceControl;->isValid()Z

    .line 129
    move-result v4

    .line 132
    if-eqz v4, :cond_2

    .line 133
    :try_start_0
    new-instance v4, Landroid/view/SurfaceControl$Transaction;

    .line 135
    invoke-direct {v4}, Landroid/view/SurfaceControl$Transaction;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 137
    :try_start_1
    iget-object v5, v0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditLeash:Landroid/view/SurfaceControl;

    .line 140
    invoke-virtual {v4, v5, v1}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 142
    move-result-object v5

    .line 145
    invoke-virtual {v5}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 146
    new-instance v5, Landroid/os/Bundle;

    .line 149
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 151
    const-string v6, "action_finish_editor"

    .line 154
    invoke-virtual {v0, v5, v6}, Lcom/android/keyguard/KeyguardEditorHelper;->sendCommandToEditor(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 156
    iget-object v5, v0, Lcom/android/keyguard/KeyguardEditorHelper;->mHandler:Lcom/android/keyguard/KeyguardEditorHelper$1;

    .line 159
    new-instance v6, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticLambda1;

    .line 161
    invoke-direct {v6, v0}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardEditorHelper;)V

    .line 163
    const-wide/16 v7, 0xc8

    .line 166
    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 168
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardEditorHelper;->setExitFromBouncerAnimIsRunning(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    :try_start_2
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 174
    goto :goto_1

    .line 177
    :catchall_0
    move-exception v0

    .line 178
    :try_start_3
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 179
    goto :goto_0

    .line 182
    :catchall_1
    move-exception v4

    .line 183
    :try_start_4
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 184
    :goto_0
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 187
    :catchall_2
    move-exception v0

    .line 188
    sget-object v4, Lcom/android/keyguard/KeyguardEditorHelper;->TAG:Ljava/lang/String;

    .line 189
    const-string v5, "makeEditorInVisible apply transaction visible fail"

    .line 191
    invoke-static {v4, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    :cond_2
    :goto_1
    const-class v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 196
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 198
    move-result-object v0

    .line 201
    check-cast v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 202
    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->hideKeyguardWallpaper()V

    .line 204
    :cond_3
    invoke-static {v2}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 207
    move-result-object v0

    .line 210
    check-cast v0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;

    .line 211
    invoke-virtual {v0}, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->onStartFastUnlock()V

    .line 213
    iput-boolean v3, v0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->mFastUnlock:Z

    .line 216
    const-class v2, Lmiui/stub/MiuiStub$3;

    .line 218
    invoke-static {v2}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 220
    move-result-object v2

    .line 223
    check-cast v2, Lmiui/stub/MiuiStub$3;

    .line 224
    invoke-virtual {v2}, Lmiui/stub/MiuiStub$3;->isDeviceInteractive()Z

    .line 226
    move-result v2

    .line 229
    if-eqz v2, :cond_4

    .line 230
    sget-boolean v2, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockUtils;->sIsScreenTurnOnDelayed:Z

    .line 232
    if-eqz v2, :cond_5

    .line 234
    :cond_4
    move v1, v3

    .line 236
    :cond_5
    iput-boolean v1, v0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->mFastUnlockInScreenOff:Z

    .line 237
    invoke-static {}, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->hideKeyguardWallpaper()V

    .line 239
    iput-boolean v3, v0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->mFastUnlock:Z

    .line 242
    sget-boolean v1, Lcom/miui/utils/configs/MiuiConfigs;->GXZW_SENSOR:Z

    .line 244
    if-eqz v1, :cond_6

    .line 246
    invoke-virtual {v0}, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->hideKeyguardFast()V

    .line 248
    invoke-virtual {v0}, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->wakeupIfNeed()V

    .line 251
    goto :goto_2

    .line 254
    :cond_6
    invoke-virtual {v0}, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->wakeupIfNeed()V

    .line 255
    invoke-virtual {v0}, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->hideKeyguardFast()V

    .line 258
    :goto_2
    invoke-virtual {v0}, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->onFinishFashUnlock()V

    .line 261
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 264
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V

    .line 266
    :cond_7
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 269
    return-void
    .line 272
.end method

.method public final recordKeyguardUnlockWay(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 2
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 4
    const-class v1, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 6
    if-ne p0, v0, :cond_0

    .line 8
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 13
    check-cast p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 14
    const-string v0, "face"

    .line 16
    invoke-virtual {p0, v0, p1}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->setKeyguardUnlockWay(Ljava/lang/String;Z)V

    .line 18
    goto :goto_0

    .line 21
    :cond_0
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 22
    if-ne p0, v0, :cond_1

    .line 24
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    move-result-object p0

    .line 29
    check-cast p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 30
    const-string v0, "fp"

    .line 32
    invoke-virtual {p0, v0, p1}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->setKeyguardUnlockWay(Ljava/lang/String;Z)V

    .line 34
    :cond_1
    :goto_0
    return-void
    .line 37
.end method

.method public final releaseBiometricWakeLock()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mReleaseBiometricWakeLockRunnable:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$1;

    .line 6
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHandler:Landroid/os/Handler;

    .line 8
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    const-string/jumbo v5, "releasing biometric wakelock"

    .line 13
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLogger:Lcom/android/keyguard/logging/BiometricUnlockLogger;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    sget-object v4, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 21
    iget-object v2, v0, Lcom/android/keyguard/logging/BiometricUnlockLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 23
    const-string v3, "BiometricUnlockLogger"

    .line 25
    const/4 v6, 0x0

    .line 27
    const/16 v7, 0x8

    .line 28
    const/4 v8, 0x0

    .line 30
    invoke-static/range {v2 .. v8}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 34
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 36
    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 40
    :cond_0
    return-void
    .line 42
.end method

.method public final resetMode()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 5
    check-cast v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 7
    iget-object v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 9
    iget-boolean v3, v2, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceDozeBrightness:Z

    .line 11
    if-nez v3, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    iput-boolean v0, v2, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceDozeBrightness:Z

    .line 16
    invoke-virtual {v1, v2}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 18
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricUnlockEventsListeners:Ljava/util/Set;

    .line 21
    check-cast v1, Ljava/util/HashSet;

    .line 23
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v1

    .line 28
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v2

    .line 38
    check-cast v2, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUnlockEventsListener;

    .line 39
    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUnlockEventsListener;->onResetMode()V

    .line 41
    goto :goto_1

    .line 44
    :cond_1
    const-class v1, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 45
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 47
    move-result-object v2

    .line 50
    check-cast v2, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 51
    iget v3, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 53
    iput v3, v2, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->mFaceUnlockMode:I

    .line 55
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    move-result-object v1

    .line 60
    check-cast v1, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 61
    iget p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 63
    iget v2, v1, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->mFingerprintMode:I

    .line 65
    if-eq v2, p0, :cond_2

    .line 67
    iput p0, v1, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->mFingerprintMode:I

    .line 69
    :cond_2
    if-nez p0, :cond_3

    .line 71
    iput v0, v1, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->mAuthFingerprintId:I

    .line 73
    :cond_3
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 75
    move-result-object p0

    .line 78
    invoke-interface {p0}, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;->resetGxzwUnlockMode()V

    .line 79
    return-void
    .line 82
.end method

.method public final startWakeAndUnlock(I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLogger:Lcom/android/keyguard/logging/BiometricUnlockLogger;

    .line 6
    invoke-virtual {v2, v1}, Lcom/android/keyguard/logging/BiometricUnlockLogger;->logStartWakeAndUnlock(I)V

    .line 8
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 11
    iget-boolean v4, v3, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 13
    iput v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 15
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 17
    const/4 v6, 0x2

    .line 19
    const/4 v7, 0x1

    .line 20
    if-ne v1, v6, :cond_1

    .line 21
    move-object v1, v5

    .line 23
    check-cast v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 24
    iget-object v8, v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 26
    iget-boolean v9, v8, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceDozeBrightness:Z

    .line 28
    if-ne v9, v7, :cond_0

    .line 30
    goto :goto_0

    .line 32
    :cond_0
    iput-boolean v7, v8, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceDozeBrightness:Z

    .line 33
    invoke-virtual {v1, v8}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 35
    :cond_1
    :goto_0
    iget v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 38
    const/4 v8, 0x0

    .line 40
    const/4 v9, 0x6

    .line 41
    if-ne v1, v9, :cond_2

    .line 42
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 44
    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    .line 46
    move-result v1

    .line 49
    if-nez v1, :cond_2

    .line 50
    move v1, v7

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    move v1, v8

    .line 54
    :goto_1
    iget v10, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 55
    if-eqz v10, :cond_5

    .line 57
    if-nez v1, :cond_5

    .line 59
    if-eqz v4, :cond_3

    .line 61
    iget-boolean v1, v3, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    .line 63
    if-eqz v1, :cond_4

    .line 65
    :cond_3
    const-string v13, "bio wakelock: Authenticated, waking up..."

    .line 67
    sget-object v12, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 69
    iget-object v10, v2, Lcom/android/keyguard/logging/BiometricUnlockLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 71
    const-string v11, "BiometricUnlockLogger"

    .line 73
    const/4 v14, 0x0

    .line 75
    const/16 v15, 0x8

    .line 76
    const/16 v16, 0x0

    .line 78
    invoke-static/range {v10 .. v16}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 80
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 83
    check-cast v1, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 85
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 90
    move-result-wide v1

    .line 93
    const-string v3, "android.policy:BIOMETRIC"

    .line 94
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    .line 96
    const/16 v10, 0x11

    .line 98
    invoke-virtual {v4, v1, v2, v10, v3}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 100
    :cond_4
    const-string/jumbo v1, "release wake-and-unlock"

    .line 103
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->releaseBiometricWakeLock()V

    .line 109
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 112
    :cond_5
    iget v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 115
    if-eq v1, v7, :cond_d

    .line 117
    if-eq v1, v6, :cond_d

    .line 119
    const/4 v2, 0x3

    .line 121
    if-eq v1, v2, :cond_c

    .line 122
    const/4 v2, 0x5

    .line 124
    if-eq v1, v2, :cond_7

    .line 125
    if-eq v1, v9, :cond_d

    .line 127
    const/4 v2, 0x7

    .line 129
    if-eq v1, v2, :cond_6

    .line 130
    goto/16 :goto_3

    .line 132
    :cond_6
    const-string v1, "MODE_DISMISS_BOUNCER"

    .line 134
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 136
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    .line 139
    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 141
    invoke-virtual {v1, v8}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyKeyguardAuthenticated(Z)V

    .line 143
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 146
    goto/16 :goto_3

    .line 149
    :cond_7
    const-string v1, "MODE_UNLOCK_COLLAPSING"

    .line 151
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 153
    const-class v1, Lcom/miui/interfaces/keyguard/IMiuiFaceUnlockManager;

    .line 156
    invoke-static {v1}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 158
    move-result-object v1

    .line 161
    check-cast v1, Lcom/miui/interfaces/keyguard/IMiuiFaceUnlockManager;

    .line 162
    check-cast v1, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;

    .line 164
    invoke-virtual {v1}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->isFaceUnlockSuccessAndStayScreen()Z

    .line 166
    move-result v1

    .line 169
    const-class v2, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 170
    if-eqz v1, :cond_8

    .line 172
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    .line 174
    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 176
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->primaryBouncerIsOrWillBeShowing()Z

    .line 178
    move-result v1

    .line 181
    if-nez v1, :cond_8

    .line 182
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 184
    move-result-object v1

    .line 187
    check-cast v1, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 188
    invoke-virtual {v1}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->isFingerprintUnlock()Z

    .line 190
    move-result v1

    .line 193
    if-eqz v1, :cond_b

    .line 194
    :cond_8
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    .line 196
    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 198
    invoke-virtual {v1, v8}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyKeyguardAuthenticated(Z)V

    .line 200
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 203
    move-result-object v1

    .line 206
    check-cast v1, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 207
    invoke-virtual {v1}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->isFaceUnlock()Z

    .line 209
    move-result v1

    .line 212
    if-eqz v1, :cond_b

    .line 213
    const-class v1, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;

    .line 215
    invoke-static {v1}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 217
    move-result-object v1

    .line 220
    check-cast v1, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;

    .line 221
    invoke-virtual {v1}, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->onStartFastUnlock()V

    .line 223
    iput-boolean v7, v1, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->mFastUnlock:Z

    .line 226
    const-class v2, Lmiui/stub/MiuiStub$3;

    .line 228
    invoke-static {v2}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 230
    move-result-object v2

    .line 233
    check-cast v2, Lmiui/stub/MiuiStub$3;

    .line 234
    invoke-virtual {v2}, Lmiui/stub/MiuiStub$3;->isDeviceInteractive()Z

    .line 236
    move-result v2

    .line 239
    if-eqz v2, :cond_9

    .line 240
    sget-boolean v2, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockUtils;->sIsScreenTurnOnDelayed:Z

    .line 242
    if-eqz v2, :cond_a

    .line 244
    :cond_9
    move v8, v7

    .line 246
    :cond_a
    iput-boolean v8, v1, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->mFastUnlockInScreenOff:Z

    .line 247
    invoke-static {}, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->hideKeyguardWallpaper()V

    .line 249
    invoke-virtual {v1}, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->hideKeyguardFast()V

    .line 252
    invoke-virtual {v1}, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->onFinishFashUnlock()V

    .line 255
    :cond_b
    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->recordKeyguardUnlockWay(Z)V

    .line 258
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 261
    goto :goto_3

    .line 264
    :cond_c
    const-string v1, "MODE_SHOW_BOUNCER"

    .line 265
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 267
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    .line 270
    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 272
    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showPrimaryBouncer(Z)V

    .line 274
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 277
    goto :goto_3

    .line 280
    :cond_d
    if-ne v1, v6, :cond_e

    .line 281
    const-string v1, "MODE_WAKE_AND_UNLOCK_PULSING"

    .line 283
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 285
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 288
    invoke-virtual {v1, v8, v7}, Lcom/android/systemui/statusbar/NotificationMediaManager;->updateMediaMetaData(ZZ)V

    .line 290
    goto :goto_2

    .line 293
    :cond_e
    if-ne v1, v7, :cond_f

    .line 294
    const-string v1, "MODE_WAKE_AND_UNLOCK"

    .line 296
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 298
    goto :goto_2

    .line 301
    :cond_f
    const-string v1, "MODE_WAKE_AND_UNLOCK_FROM_DREAM"

    .line 302
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 304
    :goto_2
    check-cast v5, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 307
    invoke-virtual {v5, v8}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->setNotificationShadeFocusable(Z)V

    .line 309
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 312
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 314
    const-string v2, "KeyguardViewMediator#onWakeAndUnlocking"

    .line 317
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 319
    iput-boolean v7, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    .line 322
    iget-object v2, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 324
    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 326
    move-result-object v2

    .line 329
    check-cast v2, Lcom/android/keyguard/KeyguardViewController;

    .line 330
    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 332
    invoke-virtual {v2, v8}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyKeyguardAuthenticated(Z)V

    .line 334
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    .line 337
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 340
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 343
    :goto_3
    iget v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 346
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricUnlockEventsListeners:Ljava/util/Set;

    .line 348
    check-cast v0, Ljava/util/HashSet;

    .line 350
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 352
    move-result-object v0

    .line 355
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 356
    move-result v2

    .line 359
    if-eqz v2, :cond_10

    .line 360
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 362
    move-result-object v2

    .line 365
    check-cast v2, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUnlockEventsListener;

    .line 366
    invoke-interface {v2, v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUnlockEventsListener;->onModeChanged(I)V

    .line 368
    goto :goto_4

    .line 371
    :cond_10
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 372
    return-void
    .line 375
.end method
