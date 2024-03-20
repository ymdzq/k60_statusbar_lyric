.class public final Lcom/android/systemui/statusbar/phone/DozeServiceHost;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/doze/DozeHost;


# static fields
.field public static mClockColorMap:Ljava/util/HashMap; = null

.field public static mClockStyleIsDeep:Z = false

.field public static mInteractive:Z = false

.field public static mIsLinkageState:Z = false

.field public static mIsShowDualClock:Z = false

.field public static mIsSuperSaveOpen:Z = false

.field public static mKeyguardBouncerShowing:Z = false

.field public static mKeyguardOccluded:Z = false

.field public static mKeyguardShowing:Z = false

.field public static mLockscreenIsDefaultTheme:Z = false

.field public static mShouldDozeAfterScreenOff:Z = false

.field public static needUpdateDozeAfterScreenOffLate:Z = false


# instance fields
.field public final dozeServices:Ljava/util/ArrayList;

.field public mAlwaysOnSuppressed:Z

.field public mAmbientIndicationContainer:Landroid/view/View;

.field public mAnimateWakeup:Z

.field public mAodEnable:Z

.field public mAodEnableSetting:Lcom/android/systemui/statusbar/phone/DozeServiceHost$3;

.field public mAodFocusViewListener:Lcom/android/systemui/statusbar/notification/focus/AodFocusController$$ExternalSyntheticLambda0;

.field public mAodStyleStateSetting:Lcom/android/systemui/statusbar/phone/DozeServiceHost$3;

.field public mAodUsingLinkageStyle:Z

.field public mAodUsingSuperWallpaperStyle:Z

.field public mAodUsingSuperWallpaperStyleSetting:Lcom/android/systemui/statusbar/phone/DozeServiceHost$3;

.field public mAodView:Landroid/view/ViewGroup;

.field public final mAssistManagerLazy:Ldagger/Lazy;

.field public final mAuthController:Lcom/android/systemui/biometrics/AuthController;

.field public final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field public final mBiometricUnlockControllerLazy:Ldagger/Lazy;

.field public final mBurnInInteractor:Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;

.field public final mCallbacks:Ljava/util/ArrayList;

.field public mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public final mDozeInteractor:Lcom/android/systemui/keyguard/domain/interactor/DozeInteractor;

.field public final mDozeLog:Lcom/android/systemui/doze/DozeLog;

.field public final mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

.field public final mDozingChanged:Lcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda0;

.field public mDozingRequested:Z

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mHandler:Landroid/os/Handler;

.field public final mHeadsUpManagerPhone:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field public mIgnoreTouchWhilePulsing:Z

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public mMiuiKeyguardUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

.field public final mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field public mNotificationPanel:Lcom/android/systemui/shade/ShadeViewController;

.field public final mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field public mNotificationShadeWindowViewController:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

.field public final mNotificationWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

.field public final mOnHeadsUpChangedListener:Lcom/android/systemui/statusbar/phone/DozeServiceHost$9;

.field public mPendingScreenOffCallback:Ljava/lang/Runnable;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

.field public mPulsePending:Z

.field public mPulsing:Z

.field public volatile mScreenOffNeedLinkageAnim:Z

.field public mScreenStateGXZWRequested:Z

.field public final mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final mSettingsManager:Lcom/miui/systemui/SettingsManager;

.field public mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field public final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public final mSupportAod:Z

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field mWakeLockScreenPerformsAuth:Z

.field public final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field public final mWakefulnessObserver:Lcom/android/systemui/statusbar/phone/DozeServiceHost$10;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/DozeLog;Landroid/os/PowerManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/statusbar/phone/ScrimController;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/keyguard/domain/interactor/DozeInteractor;Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;Lcom/miui/systemui/SettingsManager;Landroid/content/Context;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;)V
    .locals 3

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    .line 11
    const-string v1, "persist.sysui.wake_performs_auth"

    .line 13
    const/4 v2, 0x1

    .line 15
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 16
    move-result v1

    .line 19
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mWakeLockScreenPerformsAuth:Z

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    .line 22
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->dozeServices:Ljava/util/ArrayList;

    .line 27
    new-instance v1, Lcom/android/systemui/statusbar/phone/DozeServiceHost$9;

    .line 29
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost$9;-><init>(Lcom/android/systemui/statusbar/phone/DozeServiceHost;)V

    .line 31
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mOnHeadsUpChangedListener:Lcom/android/systemui/statusbar/phone/DozeServiceHost$9;

    .line 34
    const/4 v1, 0x0

    .line 36
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mScreenOffNeedLinkageAnim:Z

    .line 37
    new-instance v1, Lcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda0;

    .line 39
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/DozeServiceHost;)V

    .line 41
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozingChanged:Lcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda0;

    .line 44
    new-instance v1, Lcom/android/systemui/statusbar/phone/DozeServiceHost$10;

    .line 46
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost$10;-><init>(Lcom/android/systemui/statusbar/phone/DozeServiceHost;)V

    .line 48
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mWakefulnessObserver:Lcom/android/systemui/statusbar/phone/DozeServiceHost$10;

    .line 51
    move-object v1, p1

    .line 53
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    .line 54
    move-object v1, p2

    .line 56
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPowerManager:Landroid/os/PowerManager;

    .line 57
    move-object v1, p3

    .line 59
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 60
    move-object v1, p4

    .line 62
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 63
    move-object v1, p5

    .line 65
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 66
    move-object v1, p6

    .line 68
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mHeadsUpManagerPhone:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 69
    move-object v1, p7

    .line 71
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 72
    move-object v1, p8

    .line 74
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 75
    move-object v1, p9

    .line 77
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mBiometricUnlockControllerLazy:Ldagger/Lazy;

    .line 78
    move-object v1, p10

    .line 80
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAssistManagerLazy:Ldagger/Lazy;

    .line 81
    move-object v1, p11

    .line 83
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 84
    move-object v1, p12

    .line 86
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 87
    move-object/from16 v1, p13

    .line 89
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    .line 91
    move-object/from16 v1, p14

    .line 93
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 95
    move-object/from16 v1, p15

    .line 97
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mNotificationWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    .line 99
    move-object/from16 v1, p16

    .line 101
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    .line 103
    move-object/from16 v1, p17

    .line 105
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    .line 107
    move-object/from16 v1, p19

    .line 109
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mBurnInInteractor:Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;

    .line 111
    move-object/from16 v1, p18

    .line 113
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozeInteractor:Lcom/android/systemui/keyguard/domain/interactor/DozeInteractor;

    .line 115
    move-object/from16 v1, p21

    .line 117
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mContext:Landroid/content/Context;

    .line 119
    move-object/from16 v2, p22

    .line 121
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 123
    move-object/from16 v2, p23

    .line 125
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 127
    move-object/from16 v2, p24

    .line 129
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mExecutor:Ljava/util/concurrent/Executor;

    .line 131
    move-object/from16 v2, p20

    .line 133
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mSettingsManager:Lcom/miui/systemui/SettingsManager;

    .line 135
    sget-object v2, Lcom/miui/utils/configs/MiuiConfigs;->CUSTOMIZED_REGION:Ljava/lang/String;

    .line 137
    invoke-virtual/range {p21 .. p21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 139
    move-result-object v1

    .line 142
    const v2, 0x111012b    # @android:bool/config_dozePickupGestureEnabled

    .line 143
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 146
    move-result v1

    .line 149
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mSupportAod:Z

    .line 150
    new-instance v1, Landroid/os/Handler;

    .line 152
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 154
    move-result-object v2

    .line 157
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 158
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mHandler:Landroid/os/Handler;

    .line 161
    return-void
.end method


# virtual methods
.method public final dispatchFocusNotification(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    const-string v1, "callBits"

    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9
    const-string p1, "currentKey"

    .line 12
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->dozeServices:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object p0

    .line 22
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 32
    check-cast p1, Lcom/android/systemui/doze/DozeService;

    .line 33
    const/16 p2, 0x800

    .line 35
    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/doze/DozeService;->onSystemUIAction(ILandroid/os/Bundle;)Ljava/util/Map;

    .line 37
    goto :goto_0

    .line 40
    :cond_0
    return-void
    .line 41
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    const-string v1, "keyEvent"

    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 9
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->dozeServices:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object p0

    .line 17
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 27
    check-cast p1, Lcom/android/systemui/doze/DozeService;

    .line 28
    const/16 v1, 0x100

    .line 30
    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/doze/DozeService;->onSystemUIAction(ILandroid/os/Bundle;)Ljava/util/Map;

    .line 32
    goto :goto_0

    .line 35
    :cond_0
    return-void
    .line 36
.end method

.method public final dozeTimeTick()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mNotificationPanel:Lcom/android/systemui/shade/ShadeViewController;

    .line 2
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 4
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockIconViewController:Lcom/android/keyguard/LockIconViewController;

    .line 6
    invoke-virtual {v1}, Lcom/android/keyguard/LockIconViewController;->updateBurnInOffsets()V

    .line 8
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    .line 11
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardStatusViewController;->dozeTimeTick()V

    .line 13
    iget v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInterpolatedDarkAmount:F

    .line 16
    const/4 v2, 0x0

    .line 18
    cmpl-float v1, v1, v2

    .line 19
    if-lez v1, :cond_0

    .line 21
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->positionClockAndNotifications(Z)V

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    .line 27
    invoke-virtual {v0}, Lcom/android/systemui/biometrics/AuthController;->dozeTimeTick()V

    .line 29
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAmbientIndicationContainer:Landroid/view/View;

    .line 32
    instance-of v1, v0, Lcom/android/systemui/doze/DozeReceiver;

    .line 34
    if-eqz v1, :cond_1

    .line 36
    check-cast v0, Lcom/android/systemui/doze/DozeReceiver;

    .line 38
    invoke-interface {v0}, Lcom/android/systemui/doze/DozeReceiver;->dozeTimeTick()V

    .line 40
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mBurnInInteractor:Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;

    .line 43
    iget-object v0, p0, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;->_dozeTimeTick:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 45
    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 47
    check-cast p0, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 54
    move-result-wide v1

    .line 57
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 58
    move-result-object p0

    .line 61
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 62
    return-void
    .line 65
.end method

.method public final extendPulse(I)V
    .locals 3

    .line 1
    const/16 v0, 0x8

    .line 2
    const/4 v1, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 7
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setWakeLockScreenSensorActive(Z)V

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 12
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    .line 14
    const/4 v2, 0x0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    move v0, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move v0, v2

    .line 21
    :goto_0
    if-eqz v0, :cond_3

    .line 22
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mHeadsUpManagerPhone:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 24
    iget-object v0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mAlertEntries:Landroid/util/ArrayMap;

    .line 26
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 28
    move-result v0

    .line 31
    xor-int/2addr v0, v1

    .line 32
    if-eqz v0, :cond_3

    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopHeadsUpEntry()Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    .line 35
    move-result-object p0

    .line 38
    if-nez p0, :cond_2

    .line 39
    goto :goto_1

    .line 41
    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->extended:Z

    .line 42
    if-nez p1, :cond_4

    .line 44
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->extended:Z

    .line 46
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->updateEntry(Z)V

    .line 48
    goto :goto_1

    .line 51
    :cond_3
    iget-object p0, p1, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    .line 52
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOut:Lcom/android/systemui/statusbar/phone/DozeScrimController$2;

    .line 54
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 56
    :cond_4
    :goto_1
    return-void
    .line 59
.end method

.method public final fireAodStateInternal(Z)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mScreenStateGXZWRequested:Z

    .line 4
    if-eqz p1, :cond_1

    .line 6
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    .line 8
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 10
    const-string v0, "flag"

    .line 13
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mScreenStateGXZWRequested:Z

    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 17
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->dozeServices:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object p0

    .line 25
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 35
    check-cast v0, Lcom/android/systemui/doze/DozeService;

    .line 36
    const/4 v1, 0x2

    .line 38
    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/doze/DozeService;->onSystemUIAction(ILandroid/os/Bundle;)Ljava/util/Map;

    .line 39
    goto :goto_0

    .line 42
    :cond_1
    return-void
    .line 43
.end method

.method public final pulseWhileDozing(Lcom/android/systemui/doze/DozeUi$1;I)V
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    if-ne p2, v0, :cond_0

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 5
    move-result-wide p1

    .line 8
    const-string v0, "com.android.systemui:LONG_PRESS"

    .line 9
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPowerManager:Landroid/os/PowerManager;

    .line 11
    const/4 v2, 0x4

    .line 13
    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 14
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAssistManagerLazy:Ldagger/Lazy;

    .line 17
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 19
    move-result-object p0

    .line 22
    check-cast p0, Lcom/android/systemui/assist/AssistManager;

    .line 23
    new-instance p1, Landroid/os/Bundle;

    .line 25
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/systemui/assist/AssistManager;->startAssist(Landroid/os/Bundle;)V

    .line 30
    return-void

    .line 33
    :cond_0
    const/16 v0, 0x8

    .line 34
    const/4 v1, 0x1

    .line 36
    if-ne p2, v0, :cond_1

    .line 37
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 39
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setWakeLockScreenSensorActive(Z)V

    .line 41
    :cond_1
    if-ne p2, v0, :cond_2

    .line 44
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mWakeLockScreenPerformsAuth:Z

    .line 46
    if-eqz v0, :cond_2

    .line 48
    move v0, v1

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/4 v0, 0x0

    .line 52
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPulsing:Z

    .line 53
    new-instance v1, Lcom/android/systemui/statusbar/phone/DozeServiceHost$8;

    .line 55
    invoke-direct {v1, p0, p1, v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost$8;-><init>(Lcom/android/systemui/statusbar/phone/DozeServiceHost;Lcom/android/systemui/doze/DozeUi$1;Z)V

    .line 57
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 60
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    .line 62
    if-eqz v0, :cond_4

    .line 64
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    .line 66
    if-eqz v0, :cond_3

    .line 68
    goto :goto_1

    .line 70
    :cond_3
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    .line 71
    iput p2, p1, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseReason:I

    .line 73
    goto :goto_2

    .line 75
    :cond_4
    :goto_1
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost$8;->onPulseFinished()V

    .line 76
    iget-boolean p2, p1, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    .line 79
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    .line 81
    if-nez p2, :cond_5

    .line 83
    const-string p1, "pulse - device isn\'t dozing"

    .line 85
    invoke-virtual {v0, p1}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(Ljava/lang/String;)V

    .line 87
    goto :goto_2

    .line 90
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    .line 91
    const-string v1, "pulse - already has pulse callback mPulseCallback="

    .line 93
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    .line 98
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object p1

    .line 106
    invoke-virtual {v0, p1}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(Ljava/lang/String;)V

    .line 107
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 110
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 112
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateScrimController()V

    .line 114
    return-void
    .line 117
.end method

.method public final sendCommand(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mSupportAod:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 7
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 9
    const-string v1, "action"

    .line 12
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    const-string/jumbo p2, "state"

    .line 17
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 20
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->dozeServices:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object p0

    .line 28
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object p1

    .line 38
    check-cast p1, Lcom/android/systemui/doze/DozeService;

    .line 39
    const/16 p2, 0x40

    .line 41
    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/doze/DozeService;->onSystemUIAction(ILandroid/os/Bundle;)Ljava/util/Map;

    .line 43
    goto :goto_0

    .line 46
    :cond_1
    return-void
    .line 47
.end method

.method public final setAodClockColor()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mSupportAod:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 7
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 9
    const-string v1, "flag"

    .line 12
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mClockStyleIsDeep:Z

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 16
    const-string v1, "map"

    .line 19
    sget-object v2, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mClockColorMap:Ljava/util/HashMap;

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 23
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->dozeServices:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object p0

    .line 31
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v1

    .line 41
    check-cast v1, Lcom/android/systemui/doze/DozeService;

    .line 42
    const/16 v2, 0x400

    .line 44
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/doze/DozeService;->onSystemUIAction(ILandroid/os/Bundle;)Ljava/util/Map;

    .line 46
    goto :goto_0

    .line 49
    :cond_1
    return-void
    .line 50
.end method

.method public final setAodDimmingScrim(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/systemui/doze/DozeLog;->traceSetAodDimmingScrim(F)V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 7
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontAlpha:F

    .line 9
    cmpl-float v0, v0, p1

    .line 11
    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 13
    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 15
    if-eqz v0, :cond_3

    .line 17
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 19
    if-ne v0, v2, :cond_0

    .line 21
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 23
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    .line 25
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDockManager:Lcom/android/systemui/dock/DockManager;

    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 36
    if-ne v0, v1, :cond_2

    .line 38
    :cond_1
    const/4 v0, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 v0, 0x0

    .line 42
    :goto_0
    if-eqz v0, :cond_3

    .line 43
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontAlpha:F

    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrims()V

    .line 47
    :cond_3
    iput p1, v2, Lcom/android/systemui/statusbar/phone/ScrimState;->mAodFrontScrimAlpha:F

    .line 50
    iput p1, v1, Lcom/android/systemui/statusbar/phone/ScrimState;->mAodFrontScrimAlpha:F

    .line 52
    return-void
    .line 54
.end method

.method public final stopDozing()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozingRequested:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozingRequested:Z

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->updateDozing()V

    .line 9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 12
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 14
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    .line 16
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    .line 18
    invoke-virtual {v1, v0}, Lcom/android/systemui/doze/DozeLog;->traceDozing(Z)V

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAodView:Landroid/view/ViewGroup;

    .line 23
    if-eqz v0, :cond_1

    .line 25
    const/16 v1, 0x8

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 29
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    .line 32
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 34
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->dozeServices:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 39
    move-result-object p0

    .line 42
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    move-result v1

    .line 46
    if-eqz v1, :cond_2

    .line 47
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    move-result-object v1

    .line 52
    check-cast v1, Lcom/android/systemui/doze/DozeService;

    .line 53
    const/16 v2, 0x10

    .line 55
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/doze/DozeService;->onSystemUIAction(ILandroid/os/Bundle;)Ljava/util/Map;

    .line 57
    goto :goto_0

    .line 60
    :cond_2
    return-void
    .line 61
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "PSB.DozeServiceHost[mCallbacks="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result p0

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    const-string p0, "]"

    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 26
    return-object p0
    .line 27
.end method

.method public final updateDozeAfterScreenOff(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->needUpdateDozeAfterScreenOffLate:Z

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->updateScreenOffNeedLinkageAnimState(I)V

    .line 5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mScreenOffNeedLinkageAnim:Z

    .line 8
    xor-int/lit8 v0, v0, 0x1

    .line 10
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mShouldDozeAfterScreenOff:Z

    .line 12
    if-ne v1, v0, :cond_0

    .line 14
    if-eqz p1, :cond_1

    .line 16
    :cond_0
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mShouldDozeAfterScreenOff:Z

    .line 18
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPowerManager:Landroid/os/PowerManager;

    .line 20
    invoke-virtual {p0, v0}, Landroid/os/PowerManager;->setDozeAfterScreenOff(Z)V

    .line 22
    :cond_1
    return-void
    .line 25
.end method

.method public final updateDozing()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mBiometricUnlockControllerLazy:Ldagger/Lazy;

    .line 5
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 11
    iget v0, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 13
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozingRequested:Z

    .line 15
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 21
    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 23
    iget v1, v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 25
    if-eq v1, v3, :cond_1

    .line 27
    :cond_0
    const/4 v1, 0x2

    .line 29
    if-ne v0, v1, :cond_2

    .line 30
    :cond_1
    move v1, v3

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    move v1, v2

    .line 34
    :goto_0
    if-eq v0, v3, :cond_4

    .line 35
    const/4 v3, 0x5

    .line 37
    if-ne v0, v3, :cond_3

    .line 38
    goto :goto_1

    .line 40
    :cond_3
    move v2, v1

    .line 41
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 44
    move-result-object v0

    .line 47
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    move-result v1

    .line 51
    if-eqz v1, :cond_5

    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    move-result-object v1

    .line 57
    check-cast v1, Lcom/android/systemui/doze/DozeHost$Callback;

    .line 58
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    goto :goto_2

    .line 63
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozeInteractor:Lcom/android/systemui/keyguard/domain/interactor/DozeInteractor;

    .line 64
    iget-object v0, v0, Lcom/android/systemui/keyguard/domain/interactor/DozeInteractor;->keyguardRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    .line 66
    check-cast v0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    .line 68
    iget-object v0, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->_isDozing:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 70
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 72
    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 76
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 79
    check-cast p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 81
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    .line 83
    if-ne v0, v2, :cond_6

    .line 85
    goto :goto_4

    .line 87
    :cond_6
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mListeners:Ljava/util/ArrayList;

    .line 90
    monitor-enter v0

    .line 92
    :try_start_0
    const-string v1, "StatusBarStateControllerImpl#setIsDozing"

    .line 93
    invoke-static {v1}, Lcom/android/systemui/DejankUtils;->startDetectingBlockingIpcs(Ljava/lang/String;)V

    .line 95
    new-instance v3, Ljava/util/ArrayList;

    .line 98
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mListeners:Ljava/util/ArrayList;

    .line 100
    invoke-direct {v3, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 102
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 105
    move-result-object p0

    .line 108
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    move-result v3

    .line 112
    if-eqz v3, :cond_7

    .line 113
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    move-result-object v3

    .line 118
    check-cast v3, Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;

    .line 119
    iget-object v3, v3, Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;->mListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 121
    invoke-interface {v3, v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;->onDozingChanged(Z)V

    .line 123
    goto :goto_3

    .line 126
    :cond_7
    invoke-static {v1}, Lcom/android/systemui/DejankUtils;->stopDetectingBlockingIpcs(Ljava/lang/String;)V

    .line 127
    monitor-exit v0

    .line 130
    :goto_4
    return-void

    .line 131
    :catchall_0
    move-exception p0

    .line 132
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    throw p0
    .line 134
.end method

.method public final updateLinkageState(Z)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/miui/utils/configs/MiuiConfigs;->isLiteOrLowDevice()Z

    .line 2
    move-result v0

    .line 5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mSupportAod:Z

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    if-eqz v1, :cond_0

    .line 11
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAodEnable:Z

    .line 13
    if-eqz v0, :cond_0

    .line 15
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAodUsingLinkageStyle:Z

    .line 17
    if-eqz v0, :cond_0

    .line 19
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mLockscreenIsDefaultTheme:Z

    .line 21
    if-eqz v0, :cond_0

    .line 23
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mIsSuperSaveOpen:Z

    .line 25
    if-nez v0, :cond_0

    .line 27
    const/4 v0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v0, v2

    .line 31
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    const-string v4, "LinkageState: "

    .line 34
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mIsLinkageState:Z

    .line 39
    const-string v5, "->"

    .line 41
    const-string v6, ","

    .line 43
    invoke-static {v3, v4, v5, v0, v6}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 45
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAodEnable:Z

    .line 54
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAodUsingLinkageStyle:Z

    .line 62
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mIsShowDualClock:Z

    .line 70
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mLockscreenIsDefaultTheme:Z

    .line 78
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mIsSuperSaveOpen:Z

    .line 86
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object v1

    .line 100
    const-string v3, "DozeServiceHost"

    .line 101
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mIsLinkageState:Z

    .line 106
    if-ne v1, v0, :cond_1

    .line 108
    if-eqz p1, :cond_2

    .line 110
    :cond_1
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mIsLinkageState:Z

    .line 112
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mContext:Landroid/content/Context;

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 116
    move-result-object p1

    .line 119
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mIsLinkageState:Z

    .line 120
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 122
    move-result v1

    .line 125
    const-string v3, "linkage_state"

    .line 126
    invoke-static {p1, v3, v0, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 128
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->updateDozeAfterScreenOff(Z)V

    .line 131
    :cond_2
    return-void
    .line 134
.end method

.method public final updateScreenOffNeedLinkageAnimState(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mSupportAod:Z

    .line 2
    if-eqz v0, :cond_2

    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAodEnable:Z

    .line 6
    if-eqz v0, :cond_2

    .line 8
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mIsLinkageState:Z

    .line 10
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mKeyguardShowing:Z

    .line 15
    if-eqz v0, :cond_0

    .line 17
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mKeyguardOccluded:Z

    .line 19
    if-nez v0, :cond_0

    .line 21
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mKeyguardBouncerShowing:Z

    .line 23
    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 27
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 29
    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 31
    if-eq v0, v1, :cond_1

    .line 33
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAodUsingSuperWallpaperStyle:Z

    .line 35
    if-eqz v0, :cond_2

    .line 37
    :cond_1
    const/4 v0, 0x3

    .line 39
    if-eq p1, v0, :cond_2

    .line 40
    goto :goto_0

    .line 42
    :cond_2
    const/4 v1, 0x0

    .line 43
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mScreenOffNeedLinkageAnim:Z

    .line 44
    return-void
    .line 46
.end method
