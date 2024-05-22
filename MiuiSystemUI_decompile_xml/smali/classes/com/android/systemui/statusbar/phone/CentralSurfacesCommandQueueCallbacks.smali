.class public final Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# static fields
.field public static final HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;


# instance fields
.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mAssistManager:Lcom/android/systemui/assist/AssistManager;

.field public final mCameraLaunchGestureVibrationEffect:Landroid/os/VibrationEffect;

.field public final mCameraLauncherLazy:Ldagger/Lazy;

.field public final mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public final mDisableFlagsLogger:Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;

.field public mDisabled1:I

.field public final mDisplayId:I

.field public final mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

.field public final mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public final mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mQSHost:Lcom/android/systemui/qs/QSHost;

.field public final mQsController:Lcom/android/systemui/shade/QuickSettingsController;

.field public final mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

.field public final mShadeController:Lcom/android/systemui/shade/ShadeController;

.field public final mShadeViewController:Lcom/android/systemui/shade/ShadeViewController;

.field public final mStatusBarHideIconsForBouncerManager:Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;

.field public final mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field public final mSystemBarAttributesListener:Lcom/android/systemui/statusbar/phone/SystemBarAttributesListener;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mVibrateOnOpening:Z

.field public final mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

.field public final mVibratorOptional:Ljava/util/Optional;

.field public final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x32

    .line 2
    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    .line 4
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 8
    return-void
    .line 10
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/shade/QuickSettingsController;Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/systemui/shade/ShadeController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/shade/ShadeViewController;Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;Lcom/android/internal/logging/MetricsLogger;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/assist/AssistManager;Lcom/android/systemui/statusbar/phone/DozeServiceHost;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;Landroid/os/PowerManager;Lcom/android/systemui/statusbar/VibratorHelper;Ljava/util/Optional;Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;ILcom/android/systemui/statusbar/phone/SystemBarAttributesListener;Ldagger/Lazy;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 7

    move-object v0, p0

    move-object v1, p4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v2, p1

    .line 2
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    move-object v2, p2

    .line 3
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    move-object v2, p3

    .line 4
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mContext:Landroid/content/Context;

    move-object v2, p5

    .line 5
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    move-object v2, p6

    .line 6
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object v2, p7

    .line 7
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mShadeViewController:Lcom/android/systemui/shade/ShadeViewController;

    move-object v2, p8

    .line 8
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    move-object/from16 v2, p9

    .line 9
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move-object/from16 v2, p10

    .line 10
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v2, p11

    .line 11
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 v2, p12

    .line 12
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-object/from16 v2, p13

    .line 13
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    move-object/from16 v2, p14

    .line 14
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object/from16 v2, p15

    .line 15
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v2, p16

    .line 16
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    move-object/from16 v2, p17

    .line 17
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    move-object/from16 v2, p18

    .line 18
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    move-object/from16 v2, p19

    .line 19
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mStatusBarHideIconsForBouncerManager:Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;

    move-object/from16 v2, p20

    .line 20
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v2, p21

    .line 21
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    move-object/from16 v2, p22

    .line 22
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mVibratorOptional:Ljava/util/Optional;

    move-object/from16 v3, p23

    .line 23
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mDisableFlagsLogger:Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;

    move/from16 v3, p24

    .line 24
    iput v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mDisplayId:I

    move-object/from16 v3, p26

    .line 25
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mCameraLauncherLazy:Ldagger/Lazy;

    move-object/from16 v3, p27

    .line 26
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    move-object/from16 v3, p28

    .line 27
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mQSHost:Lcom/android/systemui/qs/QSHost;

    const v3, 0x7f05006e    # @bool/config_vibrateOnIconAnimation 'false'

    .line 28
    invoke-virtual {p4, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mVibrateOnOpening:Z

    .line 29
    invoke-virtual/range {p22 .. p22}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p22 .. p22}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    const/4 v4, 0x4

    const/4 v5, 0x1

    filled-new-array {v4, v5}, [I

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/os/Vibrator;->areAllPrimitivesSupported([I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 30
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v1

    .line 31
    invoke-virtual {v1, v4}, Landroid/os/VibrationEffect$Composition;->addPrimitive(I)Landroid/os/VibrationEffect$Composition;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0x32

    .line 32
    invoke-virtual {v1, v5, v2, v3}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    move-result-object v1

    .line 33
    invoke-virtual {v1}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object v1

    goto :goto_1

    .line 34
    :cond_0
    invoke-virtual/range {p22 .. p22}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_1

    invoke-virtual/range {p22 .. p22}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->hasAmplitudeControl()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 35
    sget-object v1, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->CAMERA_LAUNCH_GESTURE_VIBRATION_TIMINGS:[J

    sget-object v2, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->CAMERA_LAUNCH_GESTURE_VIBRATION_AMPLITUDES:[I

    invoke-static {v1, v2, v4}, Landroid/os/VibrationEffect;->createWaveform([J[II)Landroid/os/VibrationEffect;

    move-result-object v1

    goto :goto_1

    :cond_1
    const v2, 0x7f030045    # @array/config_cameraLaunchGestureVibePattern

    .line 36
    invoke-virtual {p4, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 37
    array-length v2, v1

    new-array v2, v2, [J

    const/4 v3, 0x0

    .line 38
    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_2

    .line 39
    aget v5, v1, v3

    int-to-long v5, v5

    aput-wide v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 40
    :cond_2
    invoke-static {v2, v4}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v1

    .line 41
    :goto_1
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mCameraLaunchGestureVibrationEffect:Landroid/os/VibrationEffect;

    move-object/from16 v1, p25

    .line 42
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mSystemBarAttributesListener:Lcom/android/systemui/statusbar/phone/SystemBarAttributesListener;

    move-object/from16 v1, p29

    .line 43
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-void
.end method


# virtual methods
.method public final abortTransient(II)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mDisplayId:I

    .line 2
    if-eq p1, v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 7
    move-result p1

    .line 10
    and-int/2addr p1, p2

    .line 11
    if-nez p1, :cond_1

    .line 12
    return-void

    .line 14
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 15
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 17
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mTransientShown:Z

    .line 19
    if-eqz p1, :cond_2

    .line 21
    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mTransientShown:Z

    .line 24
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->maybeUpdateBarMode()V

    .line 26
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mTransientObserver:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TransientObserver;

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TransientObserver;->setTransientShowing(Z)V

    .line 31
    :cond_2
    return-void
    .line 34
.end method

.method public final addQsTile(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mQSHost:Lcom/android/systemui/qs/QSHost;

    .line 2
    invoke-interface {p0, p1}, Lcom/android/systemui/qs/QSHost;->addTile(Landroid/content/ComponentName;)V

    .line 4
    return-void
    .line 7
.end method

.method public final animateCollapsePanels(IZ)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    .line 2
    check-cast p0, Lcom/android/systemui/shade/ShadeControllerImpl;

    .line 4
    const/4 v0, 0x0

    .line 6
    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/android/systemui/shade/ShadeControllerImpl;->animateCollapsePanels(IFZZ)V

    .line 9
    return-void
    .line 12
.end method

.method public final animateExpandNotificationsPanel()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mShadeViewController:Lcom/android/systemui/shade/ShadeViewController;

    .line 11
    check-cast p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 13
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 15
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setHeadsUpGoingAwayAnimationsAllowed(Z)V

    .line 18
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 21
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->releaseAllImmediately()V

    .line 23
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 26
    const/4 v2, 0x1

    .line 28
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setHeadsUpGoingAwayAnimationsAllowed(Z)V

    .line 29
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSplitShadeEnabled:Z

    .line 32
    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isShadeFullyExpanded()Z

    .line 36
    move-result v0

    .line 39
    if-nez v0, :cond_3

    .line 40
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isExpandingOrCollapsing()Z

    .line 42
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    goto :goto_0

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 49
    iget-boolean v3, v0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 51
    if-eqz v3, :cond_2

    .line 53
    const/4 p0, 0x0

    .line 55
    const/4 v3, 0x0

    .line 56
    invoke-virtual {v0, v3, v2, p0, v1}, Lcom/android/systemui/shade/QuickSettingsController;->flingQs(FILcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda3;Z)V

    .line 57
    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->expand(Z)V

    .line 61
    :cond_3
    :goto_0
    return-void
    .line 64
.end method

.method public final animateExpandSettingsPanel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    .line 4
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 11
    check-cast p1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    .line 13
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isCurrentUserSetup()Z

    .line 15
    move-result p1

    .line 18
    if-nez p1, :cond_1

    .line 19
    return-void

    .line 21
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mShadeViewController:Lcom/android/systemui/shade/ShadeViewController;

    .line 22
    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 24
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->expandToQs()V

    .line 26
    return-void
    .line 29
.end method

.method public final appTransitionCancelled(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final appTransitionFinished(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final clickTile(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 2
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    .line 6
    if-eqz p0, :cond_1

    .line 8
    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 13
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mRecords:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p0

    .line 19
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 29
    check-cast v0, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    .line 30
    iget-object v1, v0, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 32
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    iget-object p0, v0, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 44
    const/4 p1, 0x0

    .line 46
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/qs/QSTile;->click(Landroid/view/View;)V

    .line 47
    :cond_1
    return-void
    .line 50
.end method

.method public final disable(IIIZ)V
    .locals 5

    .line 1
    iget p4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mDisplayId:I

    .line 2
    if-eq p1, p4, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iput p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mDisabled1:I

    .line 7
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    .line 9
    iget-boolean p4, p1, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->remoteInputActive:Z

    .line 11
    if-eqz p4, :cond_1

    .line 13
    iget-boolean p4, p1, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->isLandscape:Z

    .line 15
    if-eqz p4, :cond_1

    .line 17
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->shouldUseSplitNotificationShade:Z

    .line 19
    if-nez p1, :cond_1

    .line 21
    or-int/lit8 p1, p3, 0x1

    .line 23
    goto :goto_0

    .line 25
    :cond_1
    move p1, p3

    .line 26
    :goto_0
    new-instance p4, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;

    .line 27
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 29
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 31
    iget v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisabled1:I

    .line 33
    iget v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisabled2:I

    .line 35
    invoke-direct {p4, v1, v2}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;-><init>(II)V

    .line 37
    new-instance v1, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;

    .line 40
    invoke-direct {v1, p2, p3}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;-><init>(II)V

    .line 42
    new-instance p3, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;

    .line 45
    invoke-direct {p3, p2, p1}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;-><init>(II)V

    .line 47
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mDisableFlagsLogger:Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;

    .line 50
    invoke-virtual {v2, p4, v1, p3}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;->getDisableFlagsString(Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;)Ljava/lang/String;

    .line 52
    move-result-object p3

    .line 55
    const-string p4, "CentralSurfaces"

    .line 56
    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget p3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisabled1:I

    .line 61
    xor-int/2addr p3, p2

    .line 63
    iput p2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisabled1:I

    .line 64
    iget p4, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisabled2:I

    .line 66
    xor-int/2addr p4, p1

    .line 68
    iput p1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisabled2:I

    .line 69
    const/high16 v1, 0x10000

    .line 71
    and-int v2, p3, v1

    .line 73
    const/4 v3, 0x0

    .line 75
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    .line 76
    if-eqz v2, :cond_2

    .line 78
    and-int/2addr p2, v1

    .line 80
    if-eqz p2, :cond_2

    .line 81
    move-object p2, v4

    .line 83
    check-cast p2, Lcom/android/systemui/shade/ShadeControllerImpl;

    .line 84
    invoke-virtual {p2, v3}, Lcom/android/systemui/shade/ShadeControllerImpl;->animateCollapseShade(I)V

    .line 86
    :cond_2
    const/high16 p2, 0x40000

    .line 89
    and-int/2addr p3, p2

    .line 91
    const/4 v1, 0x1

    .line 92
    if-eqz p3, :cond_4

    .line 93
    iget p3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisabled1:I

    .line 95
    and-int/2addr p2, p3

    .line 97
    if-eqz p2, :cond_3

    .line 98
    move p2, v1

    .line 100
    goto :goto_1

    .line 101
    :cond_3
    move p2, v3

    .line 102
    :goto_1
    if-eqz p2, :cond_4

    .line 103
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 105
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->releaseAllImmediately()V

    .line 107
    :cond_4
    and-int/lit8 p2, p4, 0x1

    .line 110
    if-eqz p2, :cond_5

    .line 112
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateQsExpansionEnabled()V

    .line 114
    :cond_5
    and-int/lit8 p2, p4, 0x4

    .line 117
    if-eqz p2, :cond_6

    .line 119
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateQsExpansionEnabled()V

    .line 121
    and-int/lit8 p2, p1, 0x4

    .line 124
    if-eqz p2, :cond_6

    .line 126
    check-cast v4, Lcom/android/systemui/shade/ShadeControllerImpl;

    .line 128
    invoke-virtual {v4, v3}, Lcom/android/systemui/shade/ShadeControllerImpl;->animateCollapseShade(I)V

    .line 130
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mShadeViewController:Lcom/android/systemui/shade/ShadeViewController;

    .line 133
    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 135
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    .line 137
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    and-int/2addr p1, v1

    .line 142
    if-eqz p1, :cond_7

    .line 143
    move v3, v1

    .line 145
    :cond_7
    iget-boolean p1, p0, Lcom/android/systemui/shade/ShadeHeaderController;->qsDisabled:Z

    .line 146
    if-ne v3, p1, :cond_8

    .line 148
    goto :goto_2

    .line 150
    :cond_8
    iput-boolean v3, p0, Lcom/android/systemui/shade/ShadeHeaderController;->qsDisabled:Z

    .line 151
    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeHeaderController;->updateVisibility()V

    .line 153
    :goto_2
    return-void
    .line 156
.end method

.method public final dismissKeyboardShortcutsMenu()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 2
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMessageRouter:Lcom/android/systemui/util/concurrency/MessageRouter;

    .line 6
    move-object v0, p0

    .line 8
    check-cast v0, Lcom/android/systemui/util/concurrency/MessageRouterImpl;

    .line 9
    const/16 v1, 0x403

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/concurrency/MessageRouterImpl;->cancelMessages(I)V

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    const-wide/16 v2, 0x0

    .line 19
    check-cast p0, Lcom/android/systemui/util/concurrency/MessageRouterImpl;

    .line 21
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/util/concurrency/MessageRouterImpl;->sendMessageDelayed(IJ)V

    .line 23
    return-void
    .line 26
.end method

.method public final handleSystemKey(Landroid/view/KeyEvent;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_5

    .line 8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 10
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 12
    if-eqz v0, :cond_5

    .line 14
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 16
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 18
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 20
    if-eqz v1, :cond_0

    .line 22
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    .line 24
    if-nez v0, :cond_0

    .line 26
    goto/16 :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 30
    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    .line 32
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isCurrentUserSetup()Z

    .line 34
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    return-void

    .line 40
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 41
    move-result v0

    .line 44
    const/16 v1, 0x118

    .line 45
    const/4 v2, 0x0

    .line 47
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mShadeViewController:Lcom/android/systemui/shade/ShadeViewController;

    .line 48
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 50
    if-ne v1, v0, :cond_2

    .line 52
    const/16 p0, 0x1ed

    .line 54
    invoke-virtual {v4, p0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 56
    const/high16 p0, 0x3f800000    # 1.0f

    .line 59
    check-cast v3, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 61
    invoke-virtual {v3, p0, v2}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->collapse(FZ)V

    .line 63
    goto :goto_0

    .line 66
    :cond_2
    const/16 v0, 0x119

    .line 67
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 69
    move-result p1

    .line 72
    if-ne v0, p1, :cond_5

    .line 73
    const/16 p1, 0x1ee

    .line 75
    invoke-virtual {v4, p1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 77
    move-object p1, v3

    .line 80
    check-cast p1, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 81
    invoke-virtual {p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 83
    move-result v0

    .line 86
    const/4 v1, 0x1

    .line 87
    if-eqz v0, :cond_4

    .line 88
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mVibrateOnOpening:Z

    .line 90
    if-eqz p1, :cond_3

    .line 92
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 94
    const/4 v0, 0x2

    .line 96
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(I)V

    .line 97
    :cond_3
    check-cast v3, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 100
    invoke-virtual {v3, v1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->expand(Z)V

    .line 102
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 105
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 107
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setWillExpand(Z)V

    .line 109
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 112
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->unpinAll(Z)Z

    .line 114
    const-string p0, "panel_open"

    .line 117
    invoke-virtual {v4, p0, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 119
    goto :goto_0

    .line 122
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 123
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 125
    if-nez v0, :cond_5

    .line 127
    invoke-virtual {p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->isExpandingOrCollapsing()Z

    .line 129
    move-result p1

    .line 132
    if-nez p1, :cond_5

    .line 133
    const/4 p1, 0x0

    .line 135
    const/4 v0, 0x0

    .line 136
    invoke-virtual {p0, v0, v2, p1, v2}, Lcom/android/systemui/shade/QuickSettingsController;->flingQs(FILcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda3;Z)V

    .line 137
    const-string p0, "panel_open_qs"

    .line 140
    invoke-virtual {v4, p0, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 142
    :cond_5
    :goto_0
    return-void
    .line 145
.end method

.method public final onCameraLaunchGestureDetected(I)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 6
    check-cast v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 8
    iput v1, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLastCameraLaunchSource:I

    .line 10
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isGoingToSleep()Z

    .line 12
    move-result v3

    .line 15
    const/4 v4, 0x1

    .line 16
    if-eqz v3, :cond_0

    .line 17
    iput-boolean v4, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLaunchCameraOnFinishedGoingToSleep:Z

    .line 19
    return-void

    .line 21
    :cond_0
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mCameraLauncherLazy:Ldagger/Lazy;

    .line 22
    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 24
    move-result-object v5

    .line 27
    check-cast v5, Lcom/android/systemui/shade/CameraLauncher;

    .line 28
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mShadeViewController:Lcom/android/systemui/shade/ShadeViewController;

    .line 30
    check-cast v6, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 32
    iget v7, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 34
    iget-object v5, v5, Lcom/android/systemui/shade/CameraLauncher;->mCameraGestureHelper:Lcom/android/systemui/camera/CameraGestureHelper;

    .line 36
    iget-object v8, v5, Lcom/android/systemui/camera/CameraGestureHelper;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 38
    check-cast v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 40
    iget-object v9, v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 42
    iget-object v10, v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 44
    check-cast v10, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    .line 46
    iget v11, v10, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    .line 48
    const/4 v12, 0x0

    .line 50
    invoke-virtual {v9, v12, v11}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    .line 51
    move-result v9

    .line 54
    const/4 v11, 0x0

    .line 55
    const/4 v13, 0x2

    .line 56
    if-eqz v9, :cond_1

    .line 57
    goto :goto_1

    .line 59
    :cond_1
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isKeyguardShowing()Z

    .line 60
    move-result v9

    .line 63
    if-eqz v9, :cond_4

    .line 64
    iget-object v9, v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 66
    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 68
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 70
    move-result v14

    .line 73
    invoke-virtual {v9, v14}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 74
    move-result-object v9

    .line 77
    sget-object v14, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 78
    if-eq v9, v14, :cond_2

    .line 80
    move v9, v4

    .line 82
    goto :goto_0

    .line 83
    :cond_2
    move v9, v11

    .line 84
    :goto_0
    if-eqz v9, :cond_4

    .line 85
    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 87
    iget v9, v10, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    .line 89
    invoke-virtual {v8, v12, v9}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    .line 91
    move-result v8

    .line 94
    and-int/2addr v8, v13

    .line 95
    if-nez v8, :cond_3

    .line 96
    goto :goto_2

    .line 98
    :cond_3
    :goto_1
    move v8, v11

    .line 99
    goto :goto_3

    .line 100
    :cond_4
    :goto_2
    move v8, v4

    .line 101
    :goto_3
    if-nez v8, :cond_5

    .line 102
    goto :goto_6

    .line 104
    :cond_5
    invoke-virtual {v5}, Lcom/android/systemui/camera/CameraGestureHelper;->getStartCameraIntent()Landroid/content/Intent;

    .line 105
    move-result-object v8

    .line 108
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 109
    move-result v9

    .line 112
    iget-object v10, v5, Lcom/android/systemui/camera/CameraGestureHelper;->packageManager:Landroid/content/pm/PackageManager;

    .line 113
    const/high16 v14, 0x10000

    .line 115
    invoke-virtual {v10, v8, v14, v9}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    .line 117
    move-result-object v8

    .line 120
    if-eqz v8, :cond_6

    .line 121
    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 123
    if-eqz v8, :cond_6

    .line 125
    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 127
    goto :goto_4

    .line 129
    :cond_6
    move-object v8, v12

    .line 130
    :goto_4
    if-eqz v8, :cond_9

    .line 131
    if-nez v7, :cond_8

    .line 133
    iget-object v5, v5, Lcom/android/systemui/camera/CameraGestureHelper;->activityManager:Landroid/app/ActivityManager;

    .line 135
    invoke-virtual {v5, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 137
    move-result-object v5

    .line 140
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 141
    move-result v7

    .line 144
    xor-int/2addr v7, v4

    .line 145
    if-eqz v7, :cond_7

    .line 146
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 148
    move-result-object v5

    .line 151
    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 152
    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 154
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 156
    move-result-object v5

    .line 159
    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 160
    move-result v5

    .line 163
    if-eqz v5, :cond_7

    .line 164
    move v5, v4

    .line 166
    goto :goto_5

    .line 167
    :cond_7
    move v5, v11

    .line 168
    :goto_5
    if-nez v5, :cond_9

    .line 169
    :cond_8
    move v5, v4

    .line 171
    goto :goto_7

    .line 172
    :cond_9
    :goto_6
    move v5, v11

    .line 173
    :goto_7
    if-nez v5, :cond_a

    .line 174
    return-void

    .line 176
    :cond_a
    iget-boolean v5, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDeviceInteractive:Z

    .line 177
    if-nez v5, :cond_b

    .line 179
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 181
    move-result-wide v7

    .line 184
    const-string v5, "com.android.systemui:CAMERA_GESTURE"

    .line 185
    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mPowerManager:Landroid/os/PowerManager;

    .line 187
    const/4 v10, 0x5

    .line 189
    invoke-virtual {v9, v7, v8, v10, v5}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 190
    :cond_b
    new-instance v5, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks$$ExternalSyntheticLambda0;

    .line 193
    invoke-direct {v5, v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;)V

    .line 195
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mVibratorOptional:Ljava/util/Optional;

    .line 198
    invoke-virtual {v7, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 200
    if-ne v1, v4, :cond_c

    .line 203
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 205
    iput-boolean v4, v5, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSecureCameraLaunched:Z

    .line 207
    sget-object v7, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_CAMERA_LAUNCHED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 209
    invoke-virtual {v5, v13, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState(ILcom/android/keyguard/FaceAuthUiEvent;)V

    .line 211
    :cond_c
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 214
    check-cast v5, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 216
    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 218
    if-nez v5, :cond_f

    .line 220
    new-instance v15, Landroid/content/Intent;

    .line 222
    const-string v2, "android.media.action.STILL_IMAGE_CAMERA"

    .line 224
    invoke-direct {v15, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 226
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mContext:Landroid/content/Context;

    .line 229
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 231
    move-result-object v2

    .line 234
    const v3, 0x7f1302c7    # @string/config_cameraGesturePackage ''

    .line 235
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 238
    move-result-object v2

    .line 241
    if-eqz v2, :cond_d

    .line 242
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 244
    move-result v3

    .line 247
    if-nez v3, :cond_d

    .line 248
    move-object v12, v2

    .line 250
    :cond_d
    if-eqz v12, :cond_e

    .line 251
    invoke-virtual {v15, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    :cond_e
    const-string v2, "com.android.systemui.camera_launch_source"

    .line 256
    invoke-virtual {v15, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 258
    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 261
    const/16 v16, 0x0

    .line 263
    const/16 v17, 0x1

    .line 265
    const/16 v18, 0x1

    .line 267
    const/16 v19, 0x0

    .line 269
    const/16 v20, 0x0

    .line 271
    const/16 v21, 0x0

    .line 273
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 275
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 277
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    .line 279
    move-result-object v22

    .line 282
    invoke-interface/range {v14 .. v22}, Lcom/android/systemui/plugins/ActivityStarter;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZZLcom/android/systemui/plugins/ActivityStarter$Callback;ILcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Landroid/os/UserHandle;)V

    .line 283
    goto :goto_8

    .line 286
    :cond_f
    iget-boolean v5, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDeviceInteractive:Z

    .line 287
    if-nez v5, :cond_10

    .line 289
    const-wide/16 v7, 0x1770

    .line 291
    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 293
    invoke-virtual {v5, v7, v8}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 295
    :cond_10
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 298
    iget v5, v5, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    .line 300
    if-eq v5, v13, :cond_11

    .line 302
    if-ne v5, v4, :cond_12

    .line 304
    :cond_11
    move v11, v4

    .line 306
    :cond_12
    if-eqz v11, :cond_15

    .line 307
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 309
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    .line 311
    move-result v5

    .line 314
    if-eqz v5, :cond_13

    .line 315
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset(Z)V

    .line 317
    :cond_13
    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 320
    move-result-object v0

    .line 323
    check-cast v0, Lcom/android/systemui/shade/CameraLauncher;

    .line 324
    invoke-virtual {v6}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 326
    move-result v3

    .line 329
    if-nez v3, :cond_14

    .line 330
    iget-object v3, v0, Lcom/android/systemui/shade/CameraLauncher;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 332
    iput-boolean v4, v3, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->launchingAffordance:Z

    .line 334
    :cond_14
    iget-object v0, v0, Lcom/android/systemui/shade/CameraLauncher;->mCameraGestureHelper:Lcom/android/systemui/camera/CameraGestureHelper;

    .line 336
    invoke-virtual {v0, v1}, Lcom/android/systemui/camera/CameraGestureHelper;->launchCamera(I)V

    .line 338
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateScrimController()V

    .line 341
    goto :goto_8

    .line 344
    :cond_15
    iput-boolean v4, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLaunchCameraWhenFinishedWaking:Z

    .line 345
    :goto_8
    return-void
    .line 347
.end method

.method public final onEmergencyActionLaunchGestureDetected()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 2
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 4
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getEmergencyActionIntent()Landroid/content/Intent;

    .line 6
    move-result-object v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    const-string p0, "CentralSurfaces"

    .line 12
    const-string v0, "Couldn\'t find an app to process the emergency intent."

    .line 14
    invoke-static {p0, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    return-void

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 20
    iget v3, v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    .line 22
    const/4 v4, 0x3

    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v6, 0x1

    .line 26
    if-ne v3, v4, :cond_1

    .line 27
    move v3, v6

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move v3, v5

    .line 31
    :goto_0
    if-eqz v3, :cond_2

    .line 32
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLaunchEmergencyActionOnFinishedGoingToSleep:Z

    .line 34
    return-void

    .line 36
    :cond_2
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDeviceInteractive:Z

    .line 37
    if-nez v3, :cond_3

    .line 39
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 41
    move-result-wide v3

    .line 44
    const-string v7, "com.android.systemui:EMERGENCY_GESTURE"

    .line 45
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mPowerManager:Landroid/os/PowerManager;

    .line 47
    const/4 v9, 0x4

    .line 49
    invoke-virtual {v8, v3, v4, v9, v7}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 50
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 53
    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 55
    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 57
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 59
    if-nez v3, :cond_4

    .line 61
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 63
    const/4 v3, 0x0

    .line 65
    const/4 p0, 0x1

    .line 66
    const/4 v5, 0x1

    .line 67
    const/4 v6, 0x0

    .line 68
    const/4 v7, 0x0

    .line 69
    const/4 v8, 0x0

    .line 70
    check-cast v4, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 71
    invoke-virtual {v4}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    .line 73
    move-result-object v9

    .line 76
    move v4, p0

    .line 77
    invoke-interface/range {v1 .. v9}, Lcom/android/systemui/plugins/ActivityStarter;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZZLcom/android/systemui/plugins/ActivityStarter$Callback;ILcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Landroid/os/UserHandle;)V

    .line 78
    return-void

    .line 81
    :cond_4
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDeviceInteractive:Z

    .line 82
    if-nez v3, :cond_5

    .line 84
    const-wide/16 v7, 0x1770

    .line 86
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 88
    invoke-virtual {v3, v7, v8}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 90
    :cond_5
    iget v1, v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    .line 93
    const/4 v3, 0x2

    .line 95
    if-eq v1, v3, :cond_6

    .line 96
    if-ne v1, v6, :cond_7

    .line 98
    :cond_6
    move v5, v6

    .line 100
    :cond_7
    if-eqz v5, :cond_9

    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 103
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    .line 105
    move-result v1

    .line 108
    if-eqz v1, :cond_8

    .line 109
    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset(Z)V

    .line 111
    :cond_8
    check-cast v4, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 114
    invoke-virtual {v4}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    .line 116
    move-result-object v0

    .line 119
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mContext:Landroid/content/Context;

    .line 120
    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 122
    return-void

    .line 125
    :cond_9
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLaunchEmergencyActionWhenFinishedWaking:Z

    .line 126
    return-void
    .line 128
.end method

.method public final onRecentsAnimationStateChanged(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 2
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 4
    const/4 v0, 0x2

    .line 6
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->setInteracting(IZ)V

    .line 7
    return-void
    .line 10
.end method

.method public final onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    iget v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mDisplayId:I

    .line 3
    move v3, p1

    .line 5
    if-eq v3, v1, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mSystemBarAttributesListener:Lcom/android/systemui/statusbar/phone/SystemBarAttributesListener;

    .line 9
    move v3, p1

    .line 11
    move v4, p2

    .line 12
    move-object v5, p3

    .line 13
    move v6, p4

    .line 14
    move/from16 v7, p5

    .line 15
    move/from16 v8, p6

    .line 17
    move-object/from16 v9, p7

    .line 19
    move-object/from16 v10, p8

    .line 21
    invoke-virtual/range {v2 .. v10}, Lcom/android/systemui/statusbar/phone/SystemBarAttributesListener;->onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;)V

    .line 23
    return-void
    .line 26
.end method

.method public final remQsTile(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mQSHost:Lcom/android/systemui/qs/QSHost;

    .line 2
    invoke-interface {p0, p1}, Lcom/android/systemui/qs/QSHost;->removeTileByUser(Landroid/content/ComponentName;)V

    .line 4
    return-void
    .line 7
.end method

.method public final setTopAppHidesStatusBar(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 2
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 4
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mTopHidesStatusBar:Z

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mStatusBarHideIconsForBouncerManager:Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;

    .line 8
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;->topAppHidesStatusBar:Z

    .line 10
    if-nez p1, :cond_0

    .line 12
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;->wereIconsJustHidden:Z

    .line 14
    if-eqz p1, :cond_0

    .line 16
    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;->wereIconsJustHidden:Z

    .line 19
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 21
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;->displayId:I

    .line 23
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(I)V

    .line 25
    :cond_0
    const/4 p1, 0x1

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;->updateHideIconsForBouncer(Z)V

    .line 29
    return-void
    .line 32
.end method

.method public final showAssistDisclosure()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistDisclosure:Lcom/android/systemui/assist/AssistDisclosure;

    .line 4
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure;->mShowRunnable:Lcom/android/systemui/assist/AssistDisclosure$1;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/assist/AssistDisclosure;->mHandler:Landroid/os/Handler;

    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    return-void
    .line 16
.end method

.method public final showPinningEnterExitToast(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 2
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 4
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayId:I

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNavigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarController;->getNavigationBarView(I)Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 10
    move-result-object v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    const/4 p0, 0x1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    iget-object p1, v1, Lcom/android/systemui/navigationbar/NavigationBarView;->mScreenPinningNotify:Lcom/android/systemui/navigationbar/ScreenPinningNotify;

    .line 19
    iget-object p1, p1, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->mContext:Landroid/content/Context;

    .line 21
    const v0, 0x7f130a61    # @string/screen_pinning_toast_start 'This app is pinned'

    .line 23
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 29
    invoke-static {p1, v0, p0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 30
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 34
    goto :goto_0

    .line 37
    :cond_0
    iget-object p1, v1, Lcom/android/systemui/navigationbar/NavigationBarView;->mScreenPinningNotify:Lcom/android/systemui/navigationbar/ScreenPinningNotify;

    .line 38
    iget-object p1, p1, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->mContext:Landroid/content/Context;

    .line 40
    const v0, 0x7f130a54    # @string/screen_pinning_exit 'App unpinned'

    .line 42
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 48
    invoke-static {p1, v0, p0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 49
    move-result-object p0

    .line 52
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 53
    goto :goto_0

    .line 56
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    if-nez v0, :cond_2

    .line 62
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mTaskbarDelegate:Lcom/android/systemui/navigationbar/TaskbarDelegate;

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    :cond_2
    :goto_0
    return-void
    .line 69
.end method

.method public final showPinningEscapeToast()V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 2
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 4
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayId:I

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNavigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarController;->getNavigationBarView(I)Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 10
    move-result-object v1

    .line 13
    if-eqz v1, :cond_6

    .line 14
    iget-object p0, v1, Lcom/android/systemui/navigationbar/NavigationBarView;->mScreenPinningNotify:Lcom/android/systemui/navigationbar/ScreenPinningNotify;

    .line 16
    iget v0, v1, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    .line 18
    const/4 v2, 0x2

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x1

    .line 22
    if-ne v0, v2, :cond_0

    .line 23
    move v0, v4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v0, v3

    .line 27
    :goto_0
    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRecentsButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 28
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getVisibility()I

    .line 32
    move-result v1

    .line 35
    if-nez v1, :cond_1

    .line 36
    move v3, v4

    .line 38
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 42
    move-result-wide v1

    .line 45
    iget-wide v5, p0, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->mLastShowToastTime:J

    .line 46
    sub-long v5, v1, v5

    .line 48
    const-wide/16 v7, 0x3e8

    .line 50
    cmp-long v5, v5, v7

    .line 52
    if-gez v5, :cond_2

    .line 54
    const-string p0, "ScreenPinningNotify"

    .line 56
    const-string v0, "Ignore toast since it is requested in very short interval."

    .line 58
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    goto :goto_2

    .line 63
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->mLastToast:Landroid/widget/Toast;

    .line 64
    if-eqz v5, :cond_3

    .line 66
    invoke-virtual {v5}, Landroid/widget/Toast;->cancel()V

    .line 68
    :cond_3
    if-eqz v0, :cond_4

    .line 71
    const v0, 0x7f130a5d    # @string/screen_pinning_toast_gesture_mode 'Slide up from the bottom of the screen and pause to unpin this app'

    .line 73
    goto :goto_1

    .line 76
    :cond_4
    if-eqz v3, :cond_5

    .line 77
    const v0, 0x7f130a5f    # @string/screen_pinning_toast_navigation_mode 'Press and hold the back and preview buttons to unpin this app'

    .line 79
    goto :goto_1

    .line 82
    :cond_5
    const v0, 0x7f130a60    # @string/screen_pinning_toast_recents_invisible 'To unpin this app, touch & hold Back and Home buttons'

    .line 83
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->mContext:Landroid/content/Context;

    .line 86
    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 88
    move-result-object v0

    .line 91
    invoke-static {v3, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 92
    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 96
    iput-object v0, p0, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->mLastToast:Landroid/widget/Toast;

    .line 99
    iput-wide v1, p0, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->mLastShowToastTime:J

    .line 101
    goto :goto_2

    .line 103
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 104
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    if-nez v0, :cond_7

    .line 109
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mTaskbarDelegate:Lcom/android/systemui/navigationbar/TaskbarDelegate;

    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    :cond_7
    :goto_2
    return-void
    .line 116
.end method

.method public final showScreenPinningRequest(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 2
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 4
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 11
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->showScreenPinningRequest$1(I)V

    .line 15
    return-void
    .line 18
.end method

.method public final showTransient(IIZ)V
    .locals 0

    .line 1
    iget p3, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mDisplayId:I

    .line 2
    if-eq p1, p3, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 7
    move-result p1

    .line 10
    and-int/2addr p1, p2

    .line 11
    if-nez p1, :cond_1

    .line 12
    return-void

    .line 14
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 15
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 17
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mTransientShown:Z

    .line 19
    if-nez p1, :cond_2

    .line 21
    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mTransientShown:Z

    .line 24
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNoAnimationOnNextBarModeChange:Z

    .line 26
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->maybeUpdateBarMode()V

    .line 28
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mTransientObserver:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TransientObserver;

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TransientObserver;->setTransientShowing(Z)V

    .line 33
    :cond_2
    return-void
    .line 36
.end method

.method public final showWirelessChargingAnimation(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    return-void
    .line 7
.end method

.method public final startAssist(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mDisabled1:I

    .line 2
    const/high16 v1, 0x2000000

    .line 4
    and-int/2addr v0, v1

    .line 6
    if-nez v0, :cond_0

    .line 7
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/systemui/assist/AssistManager;->startAssist(Landroid/os/Bundle;)V

    .line 11
    :cond_0
    return-void
    .line 14
.end method

.method public final suppressAmbientDisplay(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAlwaysOnSuppressed:Z

    .line 4
    if-ne p1, v0, :cond_0

    .line 6
    goto :goto_1

    .line 8
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAlwaysOnSuppressed:Z

    .line 9
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 11
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 29
    check-cast v1, Lcom/android/systemui/doze/DozeHost$Callback;

    .line 30
    invoke-interface {v1, p1}, Lcom/android/systemui/doze/DozeHost$Callback;->onAlwaysOnSuppressedChanged(Z)V

    .line 32
    goto :goto_0

    .line 35
    :cond_1
    const-string/jumbo v0, "suppressAmbientDisplay"

    .line 36
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->sendCommand(ILjava/lang/String;)V

    .line 39
    :goto_1
    return-void
    .line 42
.end method

.method public final toggleKeyboardShortcutsMenu(I)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 2
    new-instance v0, Lcom/android/systemui/statusbar/phone/CentralSurfaces$KeyboardShortcutsMessage;

    .line 4
    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/CentralSurfaces$KeyboardShortcutsMessage;-><init>(I)V

    .line 6
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 9
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMessageRouter:Lcom/android/systemui/util/concurrency/MessageRouter;

    .line 11
    const-class v1, Lcom/android/systemui/statusbar/phone/CentralSurfaces$KeyboardShortcutsMessage;

    .line 13
    check-cast p1, Lcom/android/systemui/util/concurrency/MessageRouterImpl;

    .line 15
    iget-object v2, p1, Lcom/android/systemui/util/concurrency/MessageRouterImpl;->mDataMessageCancelers:Ljava/util/Map;

    .line 17
    monitor-enter v2

    .line 19
    :try_start_0
    iget-object v3, p1, Lcom/android/systemui/util/concurrency/MessageRouterImpl;->mDataMessageCancelers:Ljava/util/Map;

    .line 20
    check-cast v3, Ljava/util/HashMap;

    .line 22
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 24
    move-result v3

    .line 27
    if-eqz v3, :cond_1

    .line 28
    iget-object v3, p1, Lcom/android/systemui/util/concurrency/MessageRouterImpl;->mDataMessageCancelers:Ljava/util/Map;

    .line 30
    check-cast v3, Ljava/util/HashMap;

    .line 32
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object v3

    .line 37
    check-cast v3, Ljava/util/List;

    .line 38
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object v3

    .line 43
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result v4

    .line 47
    if-eqz v4, :cond_0

    .line 48
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object v4

    .line 53
    check-cast v4, Ljava/lang/Runnable;

    .line 54
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 56
    goto :goto_0

    .line 59
    :cond_0
    iget-object p1, p1, Lcom/android/systemui/util/concurrency/MessageRouterImpl;->mDataMessageCancelers:Ljava/util/Map;

    .line 60
    check-cast p1, Ljava/util/HashMap;

    .line 62
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 67
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMessageRouter:Lcom/android/systemui/util/concurrency/MessageRouter;

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    check-cast p0, Lcom/android/systemui/util/concurrency/MessageRouterImpl;

    .line 73
    const-class p1, Lcom/android/systemui/statusbar/phone/CentralSurfaces$KeyboardShortcutsMessage;

    .line 75
    iget-object v1, p0, Lcom/android/systemui/util/concurrency/MessageRouterImpl;->mDelayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 77
    new-instance v2, Lcom/android/systemui/util/concurrency/MessageRouterImpl$$ExternalSyntheticLambda1;

    .line 79
    invoke-direct {v2, p0, v0}, Lcom/android/systemui/util/concurrency/MessageRouterImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/util/concurrency/MessageRouterImpl;Lcom/android/systemui/statusbar/phone/CentralSurfaces$KeyboardShortcutsMessage;)V

    .line 81
    const-wide/16 v3, 0x0

    .line 84
    invoke-interface {v1, v2, v3, v4}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 86
    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/android/systemui/util/concurrency/MessageRouterImpl;->mDataMessageCancelers:Ljava/util/Map;

    .line 90
    monitor-enter v1

    .line 92
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/util/concurrency/MessageRouterImpl;->mDataMessageCancelers:Ljava/util/Map;

    .line 93
    new-instance v3, Ljava/util/ArrayList;

    .line 95
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 97
    check-cast v2, Ljava/util/HashMap;

    .line 100
    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object p0, p0, Lcom/android/systemui/util/concurrency/MessageRouterImpl;->mDataMessageCancelers:Ljava/util/Map;

    .line 105
    check-cast p0, Ljava/util/HashMap;

    .line 107
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    move-result-object p0

    .line 112
    check-cast p0, Ljava/util/List;

    .line 113
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    monitor-exit v1

    .line 118
    return-void

    .line 119
    :catchall_0
    move-exception p0

    .line 120
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    throw p0

    .line 122
    :catchall_1
    move-exception p0

    .line 123
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 124
    throw p0
    .line 125
.end method

.method public final togglePanel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 2
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 4
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPanelExpanded:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    .line 10
    check-cast p0, Lcom/android/systemui/shade/ShadeControllerImpl;

    .line 12
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/ShadeControllerImpl;->animateCollapseShade(I)V

    .line 15
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->animateExpandNotificationsPanel()V

    .line 19
    :goto_0
    return-void
    .line 22
.end method
