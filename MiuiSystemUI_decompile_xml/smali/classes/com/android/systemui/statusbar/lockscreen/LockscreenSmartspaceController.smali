.class public final Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field public final bypassStateChangedListener:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$bypassStateChangedListener$1;

.field public final configChangeListener:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$configChangeListener$1;

.field public final configPlugin:Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final contentResolver:Landroid/content/ContentResolver;

.field public final context:Landroid/content/Context;

.field public final datePlugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

.field public final deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public final deviceProvisionedListener:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$deviceProvisionedListener$1;

.field public final execution:Lcom/android/systemui/util/concurrency/ExecutionImpl;

.field public final falsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final featureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public isRegionSamplersCreated:Z

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mSplitShadeEnabled:Z

.field public managedUserHandle:Landroid/os/UserHandle;

.field public final plugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

.field public final regionSamplers:Ljava/util/Map;

.field public final secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public session:Landroid/app/smartspace/SmartspaceSession;

.field public final sessionListener:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$sessionListener$1;

.field public final settingsObserver:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$settingsObserver$1;

.field public showNotifications:Z

.field public showSensitiveContentForCurrentUser:Z

.field public showSensitiveContentForManagedUser:Z

.field public final smartspaceManager:Landroid/app/smartspace/SmartspaceManager;

.field public final smartspaceViews:Ljava/util/Set;

.field public final stateChangeListener:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$stateChangeListener$1;

.field public final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final statusBarStateListener:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$statusBarStateListener$1;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final uiExecutor:Ljava/util/concurrent/Executor;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;

.field public final userTrackerCallback:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$userTrackerCallback$1;

.field public final weatherPlugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/flags/FeatureFlags;Landroid/app/smartspace/SmartspaceManager;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/settings/UserTracker;Landroid/content/ContentResolver;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/concurrency/ExecutionImpl;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/os/Handler;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;)V
    .locals 4

    move-object v0, p0

    move-object/from16 v1, p12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v2, p1

    .line 2
    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->context:Landroid/content/Context;

    move-object v2, p2

    .line 3
    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    move-object v2, p3

    .line 4
    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->smartspaceManager:Landroid/app/smartspace/SmartspaceManager;

    move-object v2, p4

    .line 5
    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    move-object v2, p5

    .line 6
    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object v2, p6

    .line 7
    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    move-object v2, p7

    .line 8
    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    move-object v2, p8

    .line 9
    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    move-object v2, p9

    .line 10
    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->contentResolver:Landroid/content/ContentResolver;

    move-object v2, p10

    .line 11
    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object v2, p11

    .line 12
    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 13
    iput-object v1, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object/from16 v2, p13

    .line 14
    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-object/from16 v2, p14

    .line 15
    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v2, p16

    .line 16
    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->execution:Lcom/android/systemui/util/concurrency/ExecutionImpl;

    move-object/from16 v2, p17

    .line 17
    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->uiExecutor:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    move-object/from16 v3, p20

    .line 18
    invoke-virtual {v3, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    iput-object v3, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->datePlugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    move-object/from16 v3, p21

    .line 19
    invoke-virtual {v3, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    iput-object v3, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->weatherPlugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    move-object/from16 v3, p22

    .line 20
    invoke-virtual {v3, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    iput-object v3, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->plugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    move-object/from16 v3, p23

    .line 21
    invoke-virtual {v3, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;

    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->configPlugin:Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;

    .line 22
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->smartspaceViews:Ljava/util/Set;

    .line 23
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->regionSamplers:Ljava/util/Map;

    .line 24
    sget-object v2, Lcom/android/systemui/flags/Flags;->NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 25
    new-instance v2, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$stateChangeListener$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$stateChangeListener$1;-><init>(Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->stateChangeListener:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$stateChangeListener$1;

    .line 26
    new-instance v2, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$sessionListener$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$sessionListener$1;-><init>(Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->sessionListener:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$sessionListener$1;

    .line 27
    new-instance v2, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$userTrackerCallback$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$userTrackerCallback$1;-><init>(Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->userTrackerCallback:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$userTrackerCallback$1;

    .line 28
    new-instance v2, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$settingsObserver$1;

    move-object/from16 v3, p19

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$settingsObserver$1;-><init>(Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->settingsObserver:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$settingsObserver$1;

    .line 29
    new-instance v2, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$configChangeListener$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$configChangeListener$1;-><init>(Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->configChangeListener:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$configChangeListener$1;

    .line 30
    new-instance v2, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$statusBarStateListener$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$statusBarStateListener$1;-><init>(Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->statusBarStateListener:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$statusBarStateListener$1;

    .line 31
    new-instance v2, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$deviceProvisionedListener$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$deviceProvisionedListener$1;-><init>(Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->deviceProvisionedListener:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$deviceProvisionedListener$1;

    .line 32
    new-instance v3, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$bypassStateChangedListener$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$bypassStateChangedListener$1;-><init>(Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->bypassStateChangedListener:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$bypassStateChangedListener$1;

    .line 33
    check-cast v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->addCallback(Ljava/lang/Object;)V

    move-object/from16 v1, p15

    .line 34
    invoke-virtual {v1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    return-void
.end method

.method public static final access$updateTextColorFromWallpaper(Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->context:Landroid/content/Context;

    .line 2
    const v1, 0x7f0408ae    # @attr/wallpaperTextColor

    .line 4
    const/4 v2, 0x0

    .line 7
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 8
    move-result v0

    .line 11
    iget-object p0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->smartspaceViews:Ljava/util/Set;

    .line 12
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object p0

    .line 17
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 27
    check-cast v1, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

    .line 28
    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;->setPrimaryTextColor(I)V

    .line 30
    goto :goto_0

    .line 33
    :cond_0
    return-void
    .line 34
.end method


# virtual methods
.method public final buildView(Landroid/view/ViewGroup;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;)Landroid/view/View;
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-interface {p2, p1}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->getView(Landroid/view/ViewGroup;)Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

    .line 6
    move-result-object p1

    .line 9
    if-eqz p3, :cond_1

    .line 10
    invoke-interface {p1, p3}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;->registerConfigProvider(Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;)V

    .line 12
    :cond_1
    const-string p3, "lockscreen"

    .line 15
    invoke-interface {p1, p3}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;->setUiSurface(Ljava/lang/String;)V

    .line 17
    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;->registerDataProvider(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;)V

    .line 20
    new-instance p2, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$buildView$2;

    .line 23
    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$buildView$2;-><init>(Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;)V

    .line 25
    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;->setIntentStarter(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$IntentStarter;)V

    .line 28
    iget-object p2, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 31
    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;->setFalsingManager(Lcom/android/systemui/plugins/FalsingManager;)V

    .line 33
    iget-object p2, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 36
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 38
    move-result p2

    .line 41
    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;->setKeyguardBypassEnabled(Z)V

    .line 42
    check-cast p1, Landroid/view/View;

    .line 45
    iget-object p0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->stateChangeListener:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$stateChangeListener$1;

    .line 47
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 49
    return-object p1
    .line 52
.end method

.method public final connectSession()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->plugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->weatherPlugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->datePlugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    .line 6
    if-nez v2, :cond_0

    .line 8
    if-nez v1, :cond_0

    .line 10
    if-nez v0, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->session:Landroid/app/smartspace/SmartspaceSession;

    .line 15
    if-nez v3, :cond_6

    .line 17
    iget-object v3, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->smartspaceViews:Ljava/util/Set;

    .line 19
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    .line 21
    move-result v3

    .line 24
    if-eqz v3, :cond_1

    .line 25
    goto/16 :goto_0

    .line 27
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 29
    check-cast v3, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    .line 31
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isDeviceProvisioned()Z

    .line 33
    move-result v4

    .line 36
    if-eqz v4, :cond_6

    .line 37
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isCurrentUserSetup()Z

    .line 39
    move-result v4

    .line 42
    if-nez v4, :cond_2

    .line 43
    goto/16 :goto_0

    .line 45
    :cond_2
    new-instance v4, Landroid/app/smartspace/SmartspaceConfig$Builder;

    .line 47
    iget-object v5, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->context:Landroid/content/Context;

    .line 49
    const-string v6, "lockscreen"

    .line 51
    invoke-direct {v4, v5, v6}, Landroid/app/smartspace/SmartspaceConfig$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v4}, Landroid/app/smartspace/SmartspaceConfig$Builder;->build()Landroid/app/smartspace/SmartspaceConfig;

    .line 56
    move-result-object v4

    .line 59
    iget-object v5, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->smartspaceManager:Landroid/app/smartspace/SmartspaceManager;

    .line 60
    invoke-virtual {v5, v4}, Landroid/app/smartspace/SmartspaceManager;->createSmartspaceSession(Landroid/app/smartspace/SmartspaceConfig;)Landroid/app/smartspace/SmartspaceSession;

    .line 62
    move-result-object v4

    .line 65
    const-string v5, "LockscreenSmartspaceController"

    .line 66
    const-string v6, "Starting smartspace session for lockscreen"

    .line 68
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v5, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->uiExecutor:Ljava/util/concurrent/Executor;

    .line 73
    iget-object v6, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->sessionListener:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$sessionListener$1;

    .line 75
    invoke-virtual {v4, v5, v6}, Landroid/app/smartspace/SmartspaceSession;->addOnTargetsAvailableListener(Ljava/util/concurrent/Executor;Landroid/app/smartspace/SmartspaceSession$OnTargetsAvailableListener;)V

    .line 77
    iput-object v4, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->session:Landroid/app/smartspace/SmartspaceSession;

    .line 80
    iget-object v4, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->deviceProvisionedListener:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$deviceProvisionedListener$1;

    .line 82
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 84
    iget-object v3, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->userTrackerCallback:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$userTrackerCallback$1;

    .line 87
    iget-object v4, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 89
    check-cast v4, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 91
    invoke-virtual {v4, v3, v5}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 93
    iget-object v3, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 96
    check-cast v3, Lcom/android/systemui/util/settings/SecureSettingsImpl;

    .line 98
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    const-string v4, "lock_screen_allow_private_notifications"

    .line 103
    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 105
    move-result-object v4

    .line 108
    iget-object v5, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->contentResolver:Landroid/content/ContentResolver;

    .line 109
    const/4 v6, 0x1

    .line 111
    iget-object v7, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->settingsObserver:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$settingsObserver$1;

    .line 112
    const/4 v8, -0x1

    .line 114
    invoke-virtual {v5, v4, v6, v7, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 115
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    const-string v3, "lock_screen_show_notifications"

    .line 121
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 123
    move-result-object v3

    .line 126
    invoke-virtual {v5, v3, v6, v7, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 127
    iget-object v3, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 130
    check-cast v3, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 132
    iget-object v4, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->configChangeListener:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$configChangeListener$1;

    .line 134
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 136
    iget-object v3, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 139
    iget-object v4, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->statusBarStateListener:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$statusBarStateListener$1;

    .line 141
    invoke-interface {v3, v4}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 143
    iget-object v3, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 146
    iget-object v4, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->bypassStateChangedListener:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$bypassStateChangedListener$1;

    .line 148
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->registerOnBypassStateChangedListener(Lcom/android/systemui/statusbar/phone/KeyguardBypassController$OnBypassStateChangedListener;)V

    .line 150
    if-eqz v2, :cond_3

    .line 153
    new-instance v3, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$connectSession$1;

    .line 155
    const/4 v4, 0x0

    .line 157
    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$connectSession$1;-><init>(Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;I)V

    .line 158
    invoke-interface {v2, v3}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->registerSmartspaceEventNotifier(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;)V

    .line 161
    :cond_3
    if-eqz v1, :cond_4

    .line 164
    new-instance v2, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$connectSession$1;

    .line 166
    invoke-direct {v2, p0, v6}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$connectSession$1;-><init>(Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;I)V

    .line 168
    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->registerSmartspaceEventNotifier(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;)V

    .line 171
    :cond_4
    if-eqz v0, :cond_5

    .line 174
    new-instance v1, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$connectSession$1;

    .line 176
    const/4 v2, 0x2

    .line 178
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$connectSession$1;-><init>(Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;I)V

    .line 179
    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->registerSmartspaceEventNotifier(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;)V

    .line 182
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->updateBypassEnabled()V

    .line 185
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->reloadSmartspace()V

    .line 188
    :cond_6
    :goto_0
    return-void
    .line 191
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->regionSamplers:Ljava/util/Map;

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 4
    move-result p2

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    const-string v1, "Region Samplers: "

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object p2

    .line 21
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 22
    new-instance p2, Ljava/util/ArrayList;

    .line 25
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 27
    move-result v0

    .line 30
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    check-cast p0, Ljava/util/LinkedHashMap;

    .line 34
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 36
    move-result-object p0

    .line 39
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object p0

    .line 43
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object v0

    .line 53
    check-cast v0, Ljava/util/Map$Entry;

    .line 54
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 56
    move-result-object v0

    .line 59
    check-cast v0, Lcom/android/systemui/shared/regionsampling/RegionSampler;

    .line 60
    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/regionsampling/RegionSampler;->dump(Ljava/io/PrintWriter;)V

    .line 62
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 65
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 67
    goto :goto_0

    .line 70
    :cond_0
    return-void
    .line 71
.end method

.method public final isDateWeatherDecoupled()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->execution:Lcom/android/systemui/util/concurrency/ExecutionImpl;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/util/concurrency/ExecutionImpl;->assertIsMainThread()V

    .line 4
    sget-object v0, Lcom/android/systemui/flags/Flags;->SMARTSPACE_DATE_WEATHER_DECOUPLED:Lcom/android/systemui/flags/SysPropBooleanFlag;

    .line 7
    iget-object v1, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 9
    check-cast v1, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    iget-object v2, v0, Lcom/android/systemui/flags/SysPropBooleanFlag;->name:Ljava/lang/String;

    .line 16
    iget-object v3, v1, Lcom/android/systemui/flags/FeatureFlagsRelease;->mSystemProperties:Lcom/android/systemui/flags/SystemPropertiesHelper;

    .line 18
    invoke-virtual {v0}, Lcom/android/systemui/flags/SysPropBooleanFlag;->getDefault()Ljava/lang/Boolean;

    .line 20
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    move-result v0

    .line 27
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 31
    move-result v0

    .line 34
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabledInternal(Ljava/lang/String;Z)Z

    .line 35
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->datePlugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    .line 41
    if-eqz v0, :cond_0

    .line 43
    iget-object p0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->weatherPlugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    .line 45
    if-eqz p0, :cond_0

    .line 47
    const/4 p0, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 p0, 0x0

    .line 51
    :goto_0
    return p0
    .line 52
.end method

.method public final isEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->execution:Lcom/android/systemui/util/concurrency/ExecutionImpl;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/util/concurrency/ExecutionImpl;->assertIsMainThread()V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->plugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    .line 7
    if-eqz p0, :cond_0

    .line 9
    const/4 p0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return p0
    .line 14
.end method

.method public final reloadSmartspace()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 2
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 5
    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 7
    move-result v1

    .line 10
    iget-object v2, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 11
    const/4 v3, 0x0

    .line 13
    const-string v4, "lock_screen_show_notifications"

    .line 14
    invoke-interface {v2, v3, v1, v4}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(IILjava/lang/String;)I

    .line 16
    move-result v1

    .line 19
    const/4 v4, 0x1

    .line 20
    if-ne v1, v4, :cond_0

    .line 21
    move v1, v4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v1, v3

    .line 25
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->showNotifications:Z

    .line 26
    move-object v1, v0

    .line 28
    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 29
    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 31
    move-result v1

    .line 34
    const-string v5, "lock_screen_allow_private_notifications"

    .line 35
    invoke-interface {v2, v3, v1, v5}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(IILjava/lang/String;)I

    .line 37
    move-result v1

    .line 40
    if-ne v1, v4, :cond_1

    .line 41
    move v1, v4

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move v1, v3

    .line 45
    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->showSensitiveContentForCurrentUser:Z

    .line 46
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 48
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserProfiles()Ljava/util/List;

    .line 50
    move-result-object v0

    .line 53
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 54
    move-result-object v0

    .line 57
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    move-result v1

    .line 61
    const/4 v6, 0x0

    .line 62
    if-eqz v1, :cond_3

    .line 63
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    move-result-object v1

    .line 68
    check-cast v1, Landroid/content/pm/UserInfo;

    .line 69
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 71
    move-result v7

    .line 74
    if-eqz v7, :cond_2

    .line 75
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 77
    move-result-object v0

    .line 80
    goto :goto_2

    .line 81
    :cond_3
    move-object v0, v6

    .line 82
    :goto_2
    iput-object v0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->managedUserHandle:Landroid/os/UserHandle;

    .line 83
    if-eqz v0, :cond_4

    .line 85
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 87
    move-result v0

    .line 90
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    move-result-object v6

    .line 94
    :cond_4
    if-eqz v6, :cond_6

    .line 95
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 97
    move-result v0

    .line 100
    invoke-interface {v2, v3, v0, v5}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(IILjava/lang/String;)I

    .line 101
    move-result v0

    .line 104
    if-ne v0, v4, :cond_5

    .line 105
    move v3, v4

    .line 107
    :cond_5
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->showSensitiveContentForManagedUser:Z

    .line 108
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->session:Landroid/app/smartspace/SmartspaceSession;

    .line 110
    if-eqz p0, :cond_7

    .line 112
    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceSession;->requestSmartspaceUpdate()V

    .line 114
    :cond_7
    return-void
    .line 117
.end method

.method public final updateBypassEnabled()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 4
    move-result v0

    .line 7
    iget-object p0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->smartspaceViews:Ljava/util/Set;

    .line 8
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object p0

    .line 13
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 23
    check-cast v1, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

    .line 24
    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;->setKeyguardBypassEnabled(Z)V

    .line 26
    goto :goto_0

    .line 29
    :cond_0
    return-void
    .line 30
.end method
