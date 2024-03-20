.class public final Lcom/android/systemui/MiuiVendorServices;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public mBackgroundHandler:Landroid/os/Handler;

.field public final mCallback:Lcom/android/systemui/MiuiVendorServices$1;

.field public mContext:Landroid/content/Context;

.field public mFgsManagerController:Lcom/android/systemui/qs/FgsManagerController;

.field public mHeadsetPolicy:Lcom/android/systemui/vendor/HeadsetPolicy;

.field public mKeyguardSensorInjector:Lcom/android/keyguard/injector/KeyguardSensorInjector;

.field public mMIUIStrongToastControl:Lcom/android/systemui/toast/MIUIStrongToastControl;

.field public mMiLinkIconControl:Lcom/android/systemui/statusbar/MiLinkIconControl;

.field public mMiuiHeadsUpPolicy:Lcom/android/systemui/statusbar/policy/MiuiHeadsUpPolicy;

.field public mMiuiKeyguardWallPaperManager:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

.field public mMiuiOperatorCustomizedPolicy:Lcom/android/systemui/MiuiOperatorCustomizedPolicy;

.field public mMiuiPrivacyController:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

.field public mNotificationNavigationCoordinator:Lcom/android/systemui/statusbar/notification/NotificationPanelNavigationBarCoordinator;

.field public mOledScreenHelper:Lcom/miui/systemui/display/OLEDScreenHelper;

.field public mOrientationPolicy:Lcom/android/systemui/vendor/OrientationPolicy;

.field public mToggleManagerController:Lcom/android/systemui/statusbar/ToggleManagerController;

.field public mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public miuiNotificationCenter:Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/systemui/MiuiVendorServices$1;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/systemui/MiuiVendorServices$1;-><init>(Lcom/android/systemui/MiuiVendorServices;)V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/MiuiVendorServices;->mCallback:Lcom/android/systemui/MiuiVendorServices$1;

    .line 10
    return-void
    .line 12
.end method

.method public static initForDependency()V
    .locals 1

    .line 1
    const-class v0, Lcom/miui/systemui/SettingsManager;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    const-class v0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;

    .line 7
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    const-class v0, Lcom/android/systemui/statusbar/notification/unimportant/UnimportantSdk;

    .line 12
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    .line 17
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    return-void
    .line 22
.end method


# virtual methods
.method public final start()V
    .locals 10

    .line 1
    invoke-static {}, Lcom/android/systemui/MiuiVendorServices;->initForDependency()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/MiuiVendorServices;->mMiuiHeadsUpPolicy:Lcom/android/systemui/statusbar/policy/MiuiHeadsUpPolicy;

    .line 5
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MiuiHeadsUpPolicy;->headsUpManagerPhone:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 7
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 9
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MiuiHeadsUpPolicy;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 12
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MiuiHeadsUpPolicy;->mCloseSystemDialogReceiver:Lcom/android/systemui/statusbar/policy/MiuiHeadsUpPolicy$mCloseSystemDialogReceiver$1;

    .line 14
    new-instance v4, Landroid/content/IntentFilter;

    .line 16
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 18
    invoke-direct {v4, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 20
    const/4 v5, 0x0

    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v7, 0x0

    .line 25
    const/4 v8, 0x0

    .line 26
    const/16 v9, 0x3c

    .line 27
    invoke-static/range {v2 .. v9}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    .line 29
    const-class v1, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 32
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 37
    check-cast v2, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 38
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MiuiHeadsUpPolicy;->mKeyguardUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

    .line 40
    invoke-virtual {v2, v0}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->registerCallback(Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;)V

    .line 42
    iget-object v0, p0, Lcom/android/systemui/MiuiVendorServices;->mKeyguardSensorInjector:Lcom/android/keyguard/injector/KeyguardSensorInjector;

    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    iget-object v0, p0, Lcom/android/systemui/MiuiVendorServices;->mOrientationPolicy:Lcom/android/systemui/vendor/OrientationPolicy;

    .line 50
    iget-object v2, v0, Lcom/android/systemui/vendor/OrientationPolicy;->mContext:Landroid/content/Context;

    .line 52
    const-string/jumbo v3, "window"

    .line 54
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 57
    move-result-object v3

    .line 60
    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    .line 61
    move-result-object v3

    .line 64
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    .line 65
    move-result v4

    .line 68
    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->hasNavigationBar(I)Z

    .line 69
    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_0

    .line 73
    :catch_0
    const/4 v3, 0x0

    .line 74
    :goto_0
    if-eqz v3, :cond_0

    .line 75
    const-string v3, "display"

    .line 77
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    move-result-object v2

    .line 82
    check-cast v2, Landroid/hardware/display/DisplayManager;

    .line 83
    new-instance v3, Lcom/android/systemui/vendor/OrientationPolicy$CustomDisplayListener;

    .line 85
    invoke-direct {v3, v0}, Lcom/android/systemui/vendor/OrientationPolicy$CustomDisplayListener;-><init>(Lcom/android/systemui/vendor/OrientationPolicy;)V

    .line 87
    const/4 v4, 0x0

    .line 90
    invoke-virtual {v2, v3, v4}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 91
    invoke-virtual {v0}, Lcom/android/systemui/vendor/OrientationPolicy;->writeRotationForBsp()V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/MiuiVendorServices;->mNotificationNavigationCoordinator:Lcom/android/systemui/statusbar/notification/NotificationPanelNavigationBarCoordinator;

    .line 97
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/NotificationPanelNavigationBarCoordinator;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 99
    const-string v3, "NotificationPanelNavigationBarCoordinator"

    .line 101
    invoke-static {v2, v3, v0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 103
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/NotificationPanelNavigationBarCoordinator;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 106
    check-cast v2, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 108
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 110
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/NotificationPanelNavigationBarCoordinator;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 113
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 115
    iget-object v0, p0, Lcom/android/systemui/MiuiVendorServices;->mHeadsetPolicy:Lcom/android/systemui/vendor/HeadsetPolicy;

    .line 118
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    new-instance v7, Landroid/os/Handler;

    .line 123
    sget-object v2, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 125
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    .line 127
    move-result-object v2

    .line 130
    check-cast v2, Landroid/os/Looper;

    .line 131
    invoke-direct {v7, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 133
    new-instance v5, Landroid/content/IntentFilter;

    .line 136
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 138
    const-string v2, "android.intent.action.HEADSET_PLUG"

    .line 141
    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    iget-object v2, v0, Lcom/android/systemui/vendor/HeadsetPolicy;->mContext:Landroid/content/Context;

    .line 146
    iget-object v3, v0, Lcom/android/systemui/vendor/HeadsetPolicy;->mIntentReceiver:Lcom/android/systemui/vendor/HeadsetPolicy$mIntentReceiver$1;

    .line 148
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 150
    const/4 v6, 0x0

    .line 152
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 153
    iget-object v0, p0, Lcom/android/systemui/MiuiVendorServices;->mOledScreenHelper:Lcom/miui/systemui/display/OLEDScreenHelper;

    .line 156
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    sget-boolean v2, Lcom/miui/systemui/display/OLEDScreenHelper;->IS_OLED_SCREEN:Z

    .line 161
    if-nez v2, :cond_1

    .line 163
    goto :goto_1

    .line 165
    :cond_1
    :try_start_1
    iget-object v2, v0, Lcom/miui/systemui/display/OLEDScreenHelper;->screenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 166
    iget-object v3, v0, Lcom/miui/systemui/display/OLEDScreenHelper;->mScreenObserver:Lcom/miui/systemui/display/OLEDScreenHelper$mScreenObserver$1;

    .line 168
    invoke-virtual {v2, v3}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 170
    iget-object v2, v0, Lcom/miui/systemui/display/OLEDScreenHelper;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 173
    const-class v3, Lcom/miui/systemui/display/OLEDScreenHelper;

    .line 175
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 177
    move-result-object v3

    .line 180
    invoke-static {v2, v3, v0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 181
    iget-object v2, v0, Lcom/miui/systemui/display/OLEDScreenHelper;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 184
    iget-object v3, v0, Lcom/miui/systemui/display/OLEDScreenHelper;->mConfigurationListener:Lcom/miui/systemui/display/OLEDScreenHelper$mConfigurationListener$1;

    .line 186
    check-cast v2, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 188
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 190
    const-class v2, Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 193
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 195
    move-result-object v2

    .line 198
    check-cast v2, Lcom/android/systemui/statusbar/phone/MiuiLightBarController;

    .line 199
    new-instance v3, Lcom/miui/systemui/display/OLEDScreenHelper$start$1;

    .line 201
    invoke-direct {v3, v0}, Lcom/miui/systemui/display/OLEDScreenHelper$start$1;-><init>(Lcom/miui/systemui/display/OLEDScreenHelper;)V

    .line 203
    iput-object v3, v2, Lcom/android/systemui/statusbar/phone/MiuiLightBarController;->mBarModeChangeListener:Lcom/miui/systemui/display/OLEDScreenHelper$start$1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    goto :goto_1

    .line 208
    :catchall_0
    move-exception v0

    .line 209
    const-string v2, "OLEDScreenHelper"

    .line 210
    const-string/jumbo v3, "start failed"

    .line 212
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 215
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/MiuiVendorServices;->mMiuiKeyguardWallPaperManager:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 218
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    const-string v2, "MiuiKeyguardWallPaperManager"

    .line 223
    const-string v3, "MiuiKeyguardWallPaperManager start"

    .line 225
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    sget-boolean v2, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    .line 230
    if-nez v2, :cond_2

    .line 232
    sget-boolean v2, Lcom/miui/utils/configs/MiuiConfigs;->IS_FOLD:Z

    .line 234
    if-eqz v2, :cond_3

    .line 236
    :cond_2
    const-string/jumbo v2, "status_bar_rect_landscape"

    .line 238
    iput-object v2, v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mStatusBarRectLandscape:Ljava/lang/String;

    .line 241
    const-string v2, "clock_style_rect_landscape"

    .line 243
    iput-object v2, v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mClockStyleRectLandscape:Ljava/lang/String;

    .line 245
    const-string v2, "finger_print_rect_landscape"

    .line 247
    iput-object v2, v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mFingerPrintRectLandscape:Ljava/lang/String;

    .line 249
    const-string v2, "bottom_icon_rect_landscape"

    .line 251
    iput-object v2, v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mBottomIconRectLandscape:Ljava/lang/String;

    .line 253
    const-string v2, "magazine_script_rect_landscape"

    .line 255
    iput-object v2, v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mMagazineScriptRectLandscape:Ljava/lang/String;

    .line 257
    sget-boolean v2, Lcom/miui/utils/configs/MiuiConfigs;->IS_FOLD:Z

    .line 259
    if-eqz v2, :cond_3

    .line 261
    const-string/jumbo v2, "status_bar_rect_small_screen"

    .line 263
    iput-object v2, v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mStatusBarRectSmallScreen:Ljava/lang/String;

    .line 266
    const-string v2, "clock_style_rect_small_screen"

    .line 268
    iput-object v2, v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mClockStyleRectSmallScreen:Ljava/lang/String;

    .line 270
    const-string v2, "finger_print_rect_small_screen"

    .line 272
    iput-object v2, v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mFingerPrintRectSmallScreen:Ljava/lang/String;

    .line 274
    const-string v2, "bottom_icon_rect_small_screen"

    .line 276
    iput-object v2, v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mBottomIconRectSmallScreen:Ljava/lang/String;

    .line 278
    const-string v2, "magazine_script_rect_small_screen"

    .line 280
    iput-object v2, v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mMagazineScriptSmallScreen:Ljava/lang/String;

    .line 282
    :cond_3
    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->initKeyguardWallpaperManager()V

    .line 284
    const-class v2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 287
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 289
    move-result-object v2

    .line 292
    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 293
    iput-object v2, v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 295
    iget-object v3, v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 297
    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 299
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 302
    move-result-object v1

    .line 305
    check-cast v1, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 306
    iget-object v2, v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mMiuiKeyguardUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

    .line 308
    invoke-virtual {v1, v2}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->registerCallback(Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;)V

    .line 310
    const-class v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 313
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 315
    move-result-object v1

    .line 318
    check-cast v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 319
    iget-object v2, v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mWakefulnessLifecycleObserver:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$8;

    .line 321
    invoke-virtual {v1, v2}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 323
    const-class v1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 326
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 328
    move-result-object v1

    .line 331
    check-cast v1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 332
    new-instance v2, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$1;

    .line 334
    invoke-direct {v2, v0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$1;-><init>(Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;)V

    .line 336
    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 339
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 341
    const-class v0, Lcom/miui/systemui/functions/MiuiTopActivityObserver;

    .line 344
    invoke-static {v0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 346
    move-result-object v0

    .line 349
    check-cast v0, Lcom/miui/systemui/functions/MiuiTopActivityObserver;

    .line 350
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 352
    iget-object v0, p0, Lcom/android/systemui/MiuiVendorServices;->mMiuiOperatorCustomizedPolicy:Lcom/android/systemui/MiuiOperatorCustomizedPolicy;

    .line 355
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 357
    iget-object v0, p0, Lcom/android/systemui/MiuiVendorServices;->mToggleManagerController:Lcom/android/systemui/statusbar/ToggleManagerController;

    .line 360
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 362
    new-instance v3, Landroid/content/IntentFilter;

    .line 365
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 367
    const-string v1, "com.miui.app.ExtraStatusBarManager.action_TRIGGER_TOGGLE"

    .line 370
    invoke-virtual {v3, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 372
    iget-object v1, v0, Lcom/android/systemui/statusbar/ToggleManagerController;->mContext:Landroid/content/Context;

    .line 375
    iget-object v2, v0, Lcom/android/systemui/statusbar/ToggleManagerController;->mBroadcastReceiver:Lcom/android/systemui/statusbar/ToggleManagerController$1;

    .line 377
    const/4 v4, 0x0

    .line 379
    iget-object v5, v0, Lcom/android/systemui/statusbar/ToggleManagerController;->mBgHandler:Landroid/os/Handler;

    .line 380
    const/4 v6, 0x2

    .line 382
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 383
    iget-object v0, p0, Lcom/android/systemui/MiuiVendorServices;->mMiuiPrivacyController:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

    .line 386
    iget-object v1, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 388
    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 390
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 392
    iget-object v1, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 395
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 397
    iget-object v0, p0, Lcom/android/systemui/MiuiVendorServices;->mBackgroundHandler:Landroid/os/Handler;

    .line 400
    new-instance v1, Lcom/android/systemui/MiuiVendorServices$$ExternalSyntheticLambda0;

    .line 402
    invoke-direct {v1, p0}, Lcom/android/systemui/MiuiVendorServices$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/MiuiVendorServices;)V

    .line 404
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 407
    iget-object v0, p0, Lcom/android/systemui/MiuiVendorServices;->mFgsManagerController:Lcom/android/systemui/qs/FgsManagerController;

    .line 410
    check-cast v0, Lcom/android/systemui/qs/FgsManagerControllerImpl;

    .line 412
    invoke-virtual {v0}, Lcom/android/systemui/qs/FgsManagerControllerImpl;->init()V

    .line 414
    iget-object v0, p0, Lcom/android/systemui/MiuiVendorServices;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 417
    new-instance v1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 419
    iget-object v2, p0, Lcom/android/systemui/MiuiVendorServices;->mBackgroundHandler:Landroid/os/Handler;

    .line 421
    invoke-direct {v1, v2}, Lcom/android/wm/shell/common/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 423
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 426
    iget-object v2, p0, Lcom/android/systemui/MiuiVendorServices;->mCallback:Lcom/android/systemui/MiuiVendorServices$1;

    .line 428
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 430
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 433
    iget-object v0, p0, Lcom/android/systemui/MiuiVendorServices;->mMIUIStrongToastControl:Lcom/android/systemui/toast/MIUIStrongToastControl;

    .line 436
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 438
    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 440
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 442
    iget-object p0, p0, Lcom/android/systemui/MiuiVendorServices;->mMiLinkIconControl:Lcom/android/systemui/statusbar/MiLinkIconControl;

    .line 445
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 447
    return-void
    .line 450
.end method
