.class public final Lcom/android/keyguard/magazine/LockScreenMagazineController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/miui/interfaces/IPanelExpansionObserver$NotificationPanelExpansionListener;


# instance fields
.field public final lockScreenMagazineCloseCallback:Lcom/android/keyguard/magazine/LockScreenMagazineController$2;

.field public mBarState:I

.field public final mBroadcastReceiver:Lcom/android/keyguard/magazine/LockScreenMagazineController$3;

.field public final mContext:Landroid/content/Context;

.field public mCurrentTouchDownTime:J

.field public mFullScreenAnimator:Landroid/animation/ValueAnimator;

.field public mFullScreenRemoteView:Landroid/widget/RemoteViews;

.field public mGXZWIconCenterX:I

.field public mGXZWIconCenterY:I

.field public final mHandler:Lcom/android/keyguard/magazine/LockScreenMagazineController$1;

.field public mHasAttachedToWindow:Z

.field public mInitPreResElapsedRealtime:J

.field public mInitialTouchX:F

.field public mInitialTouchY:F

.field public mIsCompleteInitiation:Z

.field public mIsDefaultLockscreenTheme:Z

.field public mIsDeviceProvisioned:Z

.field public mIsDisableMagazineByGlobalCarousel:Z

.field public final mIsForceDisableMagazine:Z

.field public mIsJumpingIntent:Z

.field public mIsKeyguardSupportDisplayMagazine:Z

.field public mIsLockScreenMagazineClosed:Z

.field public mIsLockScreenMagazinePkgExist:Z

.field public mIsSupportLockScreenMagazineLeft:Z

.field public mIsSupportLockScreenMagazineLeftOverlay:Z

.field public mIsSwitchAnimating:Z

.field public final mKeyguardCommonSettingObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver;

.field public mKeyguardShowing:Z

.field public final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public mLockScreenLeftOverlayAvailable:Z

.field public mLockScreenMagazinePre:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

.field public mLockScreenMagazinePreViewVisible:Z

.field public mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

.field public mMainRemoteView:Landroid/widget/RemoteViews;

.field public final mMiuiKeyguardUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

.field public mMiuiNotificationPanelViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

.field public mNonFullScreenAnimator:Landroid/animation/ValueAnimator;

.field public final mPanelExpansionObserver:Lcom/miui/systemui/functions/PanelExpansionObserver;

.field public mPreLeftScreenActivityName:Ljava/lang/String;

.field public mPreLeftScreenDrawableResName:Ljava/lang/String;

.field public mPreMainEntryDarkIcon:Landroid/graphics/drawable/Drawable;

.field public mPreMainEntryLightIcon:Landroid/graphics/drawable/Drawable;

.field public mPreSettingsDeeplink:Ljava/lang/String;

.field public mPreTransToLeftScreenDrawableResName:Ljava/lang/String;

.field public final mPreViewClickListener:Lcom/android/keyguard/magazine/LockScreenMagazineController$6;

.field public mPreViewShowing:Z

.field public mQsExpanded:Z

.field public final mResetClockRunnable:Lcom/android/keyguard/magazine/LockScreenMagazineController$9;

.field public mScaledTouchSlop:I

.field public mScreenHeight:F

.field public mScreenWidth:F

.field public mStartedWakingUp:Z

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final mSupportGestureWakeup:Z

.field public mSwitchAnimator:Landroid/animation/AnimatorSet;

.field public mUninvalidBottomAreaHeight:I

.field public mUninvalidGXZWAreaRadius:I

.field public mUninvalidStartEndAreaWidth:I

.field public mUninvalidTopAreaHeight:I

.field public mUnlockWithFingerprintPossible:Z

.field public final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mUpdateMonitorInjector:Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;


# direct methods
.method public static -$$Nest$mcheckLeftScreenActivityExist(Lcom/android/keyguard/magazine/LockScreenMagazineController;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    move-result v0

    .line 8
    const-string v1, ""

    .line 9
    if-nez v0, :cond_1

    .line 11
    :try_start_0
    const-string v0, "/"

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    array-length v0, p1

    .line 21
    const/4 v2, 0x1

    .line 22
    if-le v0, v2, :cond_0

    .line 23
    aget-object v1, p1, v2

    .line 25
    :cond_0
    new-instance p1, Landroid/content/Intent;

    .line 27
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 29
    new-instance v0, Landroid/content/ComponentName;

    .line 32
    sget-object v2, Lcom/android/keyguard/magazine/utils/LockScreenMagazineUtils;->LOCK_SCREEN_MAGAZINE_PACKAGE_NAME:Ljava/lang/String;

    .line 34
    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 39
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mContext:Landroid/content/Context;

    .line 42
    invoke-static {p0, p1}, Lcom/miui/systemui/util/CommonUtil;->resolveIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    .line 44
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    if-nez p0, :cond_1

    .line 48
    goto :goto_0

    .line 50
    :catch_0
    move-exception p0

    .line 51
    const-string p1, "LockScreenMagazineController"

    .line 52
    const-string v0, "handlePreLeftScreenActivityName failed"

    .line 54
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    :goto_0
    const/4 v1, 0x0

    .line 59
    :cond_1
    return-object v1
    .line 60
.end method

.method public static -$$Nest$mqueryLockScreenMagazineWallpaperInfo(Lcom/android/keyguard/magazine/LockScreenMagazineController;)V
    .locals 5

    .line 1
    const-string v0, "LockScreenMagazineController"

    .line 2
    iget-boolean v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsKeyguardSupportDisplayMagazine:Z

    .line 4
    if-eqz v1, :cond_3

    .line 6
    const-class v1, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 8
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    move-result-object v2

    .line 13
    check-cast v2, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 14
    invoke-virtual {v2}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->isMagazineWallpaper()Z

    .line 16
    move-result v2

    .line 19
    if-eqz v2, :cond_3

    .line 20
    :try_start_0
    new-instance v2, Lcom/google/gson/Gson;

    .line 22
    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 24
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 30
    check-cast v1, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 31
    iget-object v3, v1, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mMiuiWallpaperManager:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    .line 33
    if-nez v3, :cond_0

    .line 35
    const/4 v1, 0x0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v1, v1, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mMiuiWallpaperManager:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    .line 39
    invoke-virtual {v1}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->isServiceReady()Z

    .line 41
    move-result v3

    .line 44
    if-eqz v3, :cond_1

    .line 45
    sget-boolean v3, Lcom/miui/miwallpaper/MiuiWallpaperManager;->IS_FOLD_DEVICE:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :try_start_1
    iget-object v1, v1, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mService:Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;

    .line 49
    check-cast v1, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub$Proxy;

    .line 51
    invoke-virtual {v1}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub$Proxy;->getGalleryJson()Ljava/lang/String;

    .line 53
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception v1

    .line 58
    :try_start_2
    const-string v3, "MiuiWallpaperManager"

    .line 59
    const-string v4, "getMiuiWallpaperPath fail : "

    .line 61
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    :cond_1
    const-string v1, ""

    .line 66
    :goto_0
    const-class v3, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 68
    invoke-virtual {v2, v3, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    move-result-object v1

    .line 73
    check-cast v1, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 74
    iput-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 76
    goto :goto_1

    .line 78
    :catch_0
    move-exception v1

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    .line 80
    const-string v3, "getLockScreenMagazineWallpaperInfo fromJson error:"

    .line 82
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-static {v1, v2, v0}, Lcom/android/keyguard/WallpaperProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 87
    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 90
    if-nez v1, :cond_2

    .line 92
    new-instance v1, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 94
    invoke-direct {v1}, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;-><init>()V

    .line 96
    iput-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 99
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 101
    const-string v2, "queryLockScreenMagazineWallpaperInfo mLockScreenMagazineWallpaperInfo="

    .line 103
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    iget-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object v1

    .line 116
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 120
    invoke-virtual {v0}, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->initExtra()V

    .line 122
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->updateLockScreenMagazineWallpaperInfo()V

    .line 125
    :cond_3
    return-void
    .line 128
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardCommonSettingObserver;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 5
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mInitPreResElapsedRealtime:J

    .line 9
    new-instance v0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 11
    invoke-direct {v0}, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 16
    new-instance v0, Lcom/android/keyguard/magazine/LockScreenMagazineController$1;

    .line 18
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 20
    move-result-object v1

    .line 23
    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/magazine/LockScreenMagazineController$1;-><init>(Lcom/android/keyguard/magazine/LockScreenMagazineController;Landroid/os/Looper;)V

    .line 24
    iput-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mHandler:Lcom/android/keyguard/magazine/LockScreenMagazineController$1;

    .line 27
    new-instance v0, Lcom/android/keyguard/magazine/LockScreenMagazineController$2;

    .line 29
    invoke-direct {v0, p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController$2;-><init>(Lcom/android/keyguard/magazine/LockScreenMagazineController;)V

    .line 31
    iput-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->lockScreenMagazineCloseCallback:Lcom/android/keyguard/magazine/LockScreenMagazineController$2;

    .line 34
    new-instance v0, Lcom/android/keyguard/magazine/LockScreenMagazineController$3;

    .line 36
    invoke-direct {v0, p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController$3;-><init>(Lcom/android/keyguard/magazine/LockScreenMagazineController;)V

    .line 38
    iput-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mBroadcastReceiver:Lcom/android/keyguard/magazine/LockScreenMagazineController$3;

    .line 41
    new-instance v0, Lcom/android/keyguard/magazine/LockScreenMagazineController$4;

    .line 43
    invoke-direct {v0, p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController$4;-><init>(Lcom/android/keyguard/magazine/LockScreenMagazineController;)V

    .line 45
    iput-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 48
    new-instance v0, Lcom/android/keyguard/magazine/LockScreenMagazineController$5;

    .line 50
    invoke-direct {v0, p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController$5;-><init>(Lcom/android/keyguard/magazine/LockScreenMagazineController;)V

    .line 52
    iput-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mMiuiKeyguardUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

    .line 55
    new-instance v0, Lcom/android/keyguard/magazine/LockScreenMagazineController$6;

    .line 57
    invoke-direct {v0, p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController$6;-><init>(Lcom/android/keyguard/magazine/LockScreenMagazineController;)V

    .line 59
    iput-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mPreViewClickListener:Lcom/android/keyguard/magazine/LockScreenMagazineController$6;

    .line 62
    new-instance v0, Lcom/android/keyguard/magazine/LockScreenMagazineController$9;

    .line 64
    invoke-direct {v0, p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController$9;-><init>(Lcom/android/keyguard/magazine/LockScreenMagazineController;)V

    .line 66
    iput-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mResetClockRunnable:Lcom/android/keyguard/magazine/LockScreenMagazineController$9;

    .line 69
    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsLockScreenMagazinePkgExist:Z

    .line 72
    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazinePreViewVisible:Z

    .line 75
    iput-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsJumpingIntent:Z

    .line 77
    iput-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 81
    const-class p2, Lcom/android/keyguard/KeyguardSecurityModel;

    .line 83
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 85
    move-result-object p2

    .line 88
    check-cast p2, Lcom/android/keyguard/KeyguardSecurityModel;

    .line 89
    iput-object p3, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 91
    iput-object p4, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mKeyguardCommonSettingObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 93
    const-class p2, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 95
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 97
    move-result-object p2

    .line 100
    check-cast p2, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 101
    iput-object p2, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mUpdateMonitorInjector:Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 103
    sget-boolean p2, Lcom/miui/utils/configs/MiuiConfigs;->SUPPORT_GESTURE_WAKEUP:Z

    .line 105
    iput-boolean p2, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mSupportGestureWakeup:Z

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 109
    move-result-object p1

    .line 112
    const p2, 0x7f050019    # @bool/config_disableLockScreenMagazine 'false'

    .line 113
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 116
    move-result p1

    .line 119
    iput-boolean p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsForceDisableMagazine:Z

    .line 120
    const-class p1, Lcom/miui/systemui/functions/PanelExpansionObserver;

    .line 122
    invoke-static {p1}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 124
    move-result-object p1

    .line 127
    check-cast p1, Lcom/miui/systemui/functions/PanelExpansionObserver;

    .line 128
    iput-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mPanelExpansionObserver:Lcom/miui/systemui/functions/PanelExpansionObserver;

    .line 130
    iget-boolean p1, p3, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    .line 132
    iput-boolean p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsDeviceProvisioned:Z

    .line 134
    invoke-static {}, Lcom/miui/systemui/util/CommonUtil;->isDefaultLockScreenTheme()Z

    .line 136
    move-result p1

    .line 139
    iput-boolean p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsDefaultLockscreenTheme:Z

    .line 140
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->updateKeyguardSupportDisplayMagazineState()V

    .line 142
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->initLockScreenMagazinePreRes()V

    .line 145
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->initAntiMistakeOperation()V

    .line 148
    return-void
    .line 151
.end method


# virtual methods
.method public final cancelSwitchAnimate()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 7
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    .line 10
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 12
    iput-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mFullScreenAnimator:Landroid/animation/ValueAnimator;

    .line 17
    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 21
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mFullScreenAnimator:Landroid/animation/ValueAnimator;

    .line 24
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 26
    iput-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mFullScreenAnimator:Landroid/animation/ValueAnimator;

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mNonFullScreenAnimator:Landroid/animation/ValueAnimator;

    .line 31
    if-eqz v0, :cond_2

    .line 33
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 35
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mNonFullScreenAnimator:Landroid/animation/ValueAnimator;

    .line 38
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 40
    iput-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mNonFullScreenAnimator:Landroid/animation/ValueAnimator;

    .line 43
    :cond_2
    return-void
    .line 45
.end method

.method public final getPreLeftScreenIntent()Landroid/content/Intent;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSupportLockScreenMagazineLeft:Z

    .line 2
    const-string v1, "LockScreenMagazineController"

    .line 4
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    const-string p0, "isSupportLockScreenMagazineLeft is false, return null"

    .line 9
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    return-object v2

    .line 14
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mPreLeftScreenActivityName:Ljava/lang/String;

    .line 15
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    new-instance v0, Landroid/content/Intent;

    .line 23
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 25
    new-instance v3, Landroid/content/ComponentName;

    .line 28
    sget-object v4, Lcom/android/keyguard/magazine/utils/LockScreenMagazineUtils;->LOCK_SCREEN_MAGAZINE_PACKAGE_NAME:Ljava/lang/String;

    .line 30
    invoke-direct {v3, v4, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 35
    const/high16 p0, 0x10000000

    .line 38
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 40
    const-string p0, "from"

    .line 43
    const-string v3, "keyguard"

    .line 45
    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    const-string p0, "entry_source"

    .line 50
    const-string/jumbo v3, "swipe"

    .line 52
    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    move-object v2, v0

    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception p0

    .line 60
    const-string v0, "catch exception in getPreLeftScreenIntent"

    .line 61
    invoke-static {v1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    :cond_1
    :goto_0
    return-object v2
    .line 66
.end method

.method public final handleSingleClickEvent()Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsKeyguardSupportDisplayMagazine:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_d

    .line 5
    const-class v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 7
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 12
    check-cast v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 13
    iget-object v0, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardMoveHelper:Lcom/android/keyguard/KeyguardMoveHelper;

    .line 15
    const/4 v2, 0x1

    .line 17
    if-eqz v0, :cond_0

    .line 18
    iget-boolean v3, v0, Lcom/android/keyguard/KeyguardMoveHelper;->mSwipingInProgress:Z

    .line 20
    if-ne v3, v2, :cond_0

    .line 22
    move v3, v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v3, v1

    .line 26
    :goto_0
    if-nez v3, :cond_4

    .line 27
    if-eqz v0, :cond_2

    .line 29
    iget v0, v0, Lcom/android/keyguard/KeyguardMoveHelper;->mCurrentScreen:I

    .line 31
    if-nez v0, :cond_1

    .line 33
    move v0, v2

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v0, v1

    .line 37
    :goto_1
    if-ne v0, v2, :cond_2

    .line 38
    move v0, v2

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    move v0, v1

    .line 42
    :goto_2
    if-eqz v0, :cond_3

    .line 43
    goto :goto_3

    .line 45
    :cond_3
    move v0, v1

    .line 46
    goto :goto_4

    .line 47
    :cond_4
    :goto_3
    move v0, v2

    .line 48
    :goto_4
    if-eqz v0, :cond_5

    .line 49
    goto/16 :goto_8

    .line 51
    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 53
    invoke-virtual {v0}, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->isDataEmpty()Z

    .line 55
    move-result v0

    .line 58
    const-class v3, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 59
    if-eqz v0, :cond_6

    .line 61
    move v0, v1

    .line 63
    goto :goto_5

    .line 64
    :cond_6
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 65
    move-result-object v0

    .line 68
    check-cast v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 69
    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->isMagazineWallpaper()Z

    .line 71
    move-result v0

    .line 74
    :goto_5
    if-eqz v0, :cond_b

    .line 75
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    .line 77
    if-eqz v0, :cond_7

    .line 79
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 81
    move-result v0

    .line 84
    if-nez v0, :cond_a

    .line 85
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    .line 87
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    .line 89
    move-result v0

    .line 92
    if-nez v0, :cond_a

    .line 93
    iget-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSwitchAnimating:Z

    .line 95
    if-eqz v0, :cond_7

    .line 97
    goto :goto_7

    .line 99
    :cond_7
    iget-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mPreViewShowing:Z

    .line 100
    if-eqz v0, :cond_8

    .line 102
    invoke-virtual {p0, v1}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->startSwitchAnimator(Z)V

    .line 104
    goto :goto_6

    .line 107
    :cond_8
    invoke-virtual {p0, v2}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->startSwitchAnimator(Z)V

    .line 108
    invoke-static {}, Lcom/android/keyguard/analytics/AnalyticsHelper;->getInstance()Lcom/android/keyguard/analytics/AnalyticsHelper;

    .line 111
    move-result-object v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    new-instance v3, Ljava/util/HashMap;

    .line 118
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 120
    const-string v4, "action"

    .line 123
    const-string/jumbo v5, "show"

    .line 125
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v4, "lock_screen_magazine_action"

    .line 131
    invoke-virtual {v0, v4, v3}, Lcom/android/keyguard/analytics/AnalyticsHelper;->track(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 133
    invoke-static {}, Lcom/android/keyguard/magazine/utils/LockScreenMagazineUtils;->isGlobalNeedFeature()Z

    .line 136
    move-result v0

    .line 139
    if-nez v0, :cond_9

    .line 140
    goto :goto_6

    .line 142
    :cond_9
    new-instance v0, Lcom/android/keyguard/magazine/utils/LockScreenMagazineUtils$1;

    .line 143
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mContext:Landroid/content/Context;

    .line 145
    invoke-direct {v0, p0}, Lcom/android/keyguard/magazine/utils/LockScreenMagazineUtils$1;-><init>(Landroid/content/Context;)V

    .line 147
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 150
    new-array v1, v1, [Ljava/lang/Void;

    .line 152
    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 154
    :goto_6
    move v1, v2

    .line 157
    :cond_a
    :goto_7
    return v1

    .line 158
    :cond_b
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 159
    move-result-object v0

    .line 162
    check-cast v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 163
    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->isMagazineWallpaper()Z

    .line 165
    move-result v0

    .line 168
    if-nez v0, :cond_c

    .line 169
    iget-boolean p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSupportLockScreenMagazineLeft:Z

    .line 171
    if-eqz p0, :cond_c

    .line 173
    const-class p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;

    .line 175
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 177
    move-result-object p0

    .line 180
    check-cast p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;

    .line 181
    invoke-virtual {p0, v2, v1}, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->startButtonLayoutAnimate(ZZ)V

    .line 183
    :cond_c
    invoke-static {}, Lcom/android/keyguard/analytics/AnalyticsHelper;->getInstance()Lcom/android/keyguard/analytics/AnalyticsHelper;

    .line 186
    move-result-object p0

    .line 189
    const-string v0, "action_main_screen_click"

    .line 190
    invoke-virtual {p0, v0}, Lcom/android/keyguard/analytics/AnalyticsHelper;->record(Ljava/lang/String;)V

    .line 192
    :cond_d
    :goto_8
    return v1
    .line 195
.end method

.method public final initAntiMistakeOperation()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mContext:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 4
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 8
    move-result v1

    .line 11
    iput v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mScaledTouchSlop:I

    .line 12
    const-string v1, "display"

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 19
    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 20
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 23
    move-result-object v1

    .line 26
    new-instance v2, Landroid/graphics/Point;

    .line 27
    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 29
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 32
    iget v1, v2, Landroid/graphics/Point;->x:I

    .line 35
    iget v3, v2, Landroid/graphics/Point;->y:I

    .line 37
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 39
    move-result v1

    .line 42
    int-to-float v1, v1

    .line 43
    iput v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mScreenWidth:F

    .line 44
    iget v1, v2, Landroid/graphics/Point;->x:I

    .line 46
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 48
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 50
    move-result v1

    .line 53
    int-to-float v1, v1

    .line 54
    iput v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mScreenHeight:F

    .line 55
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 57
    move-result-object v1

    .line 60
    const v2, 0x7f0705f8    # @dimen/lock_screen_magazine_click_uninvalid_top_area_height '40.0dp'

    .line 61
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 64
    move-result v1

    .line 67
    iput v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mUninvalidTopAreaHeight:I

    .line 68
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 70
    move-result-object v1

    .line 73
    const v2, 0x7f0705f5    # @dimen/lock_screen_magazine_click_uninvalid_bottom_area_height '65.45dp'

    .line 74
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 77
    move-result v1

    .line 80
    iput v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mUninvalidBottomAreaHeight:I

    .line 81
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 83
    move-result-object v1

    .line 86
    const v2, 0x7f0705f7    # @dimen/lock_screen_magazine_click_uninvalid_start_end_area_width '18.18dp'

    .line 87
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 90
    move-result v1

    .line 93
    iput v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mUninvalidStartEndAreaWidth:I

    .line 94
    sget-boolean v1, Lcom/miui/utils/configs/MiuiConfigs;->GXZW_SENSOR:Z

    .line 96
    if-eqz v1, :cond_0

    .line 98
    invoke-static {v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->getFodPosition(Landroid/content/Context;)Landroid/graphics/Rect;

    .line 100
    move-result-object v1

    .line 103
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 104
    move-result v2

    .line 107
    div-int/lit8 v2, v2, 0x2

    .line 108
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 110
    add-int/2addr v3, v2

    .line 112
    iput v3, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mGXZWIconCenterX:I

    .line 113
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 115
    add-int/2addr v1, v2

    .line 117
    iput v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mGXZWIconCenterY:I

    .line 118
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 120
    move-result-object v0

    .line 123
    const v1, 0x7f0705f6    # @dimen/lock_screen_magazine_click_uninvalid_gxzw_icon_area_margin '48.36dp'

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 127
    move-result v0

    .line 130
    add-int/2addr v0, v2

    .line 131
    iput v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mUninvalidGXZWAreaRadius:I

    .line 132
    :cond_0
    return-void
    .line 134
.end method

.method public final initLockScreenMagazinePreRes()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsKeyguardSupportDisplayMagazine:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    iput-boolean v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSupportLockScreenMagazineLeft:Z

    .line 7
    return-void

    .line 9
    :cond_0
    const-string v0, "LockScreenMagazineController"

    .line 10
    const-string v2, "initLockScreenMagazinePreRes"

    .line 12
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    new-instance v0, Lcom/android/keyguard/magazine/LockScreenMagazineController$10;

    .line 17
    invoke-direct {v0, p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController$10;-><init>(Lcom/android/keyguard/magazine/LockScreenMagazineController;)V

    .line 19
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 22
    new-array v1, v1, [Ljava/lang/Void;

    .line 24
    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 26
    return-void
    .line 29
.end method

.method public final onDensityOrFontScaleChanged(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->initAntiMistakeOperation()V

    .line 4
    :cond_0
    return-void
    .line 7
.end method

.method public final onPanelExpanded(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onQsExpanded(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mQsExpanded:Z

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput-boolean p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mQsExpanded:Z

    .line 6
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->reset()V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public final onStateChanged(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mBarState:I

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mBarState:I

    .line 6
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->reset()V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public final reset()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->cancelSwitchAnimate()V

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mHandler:Lcom/android/keyguard/magazine/LockScreenMagazineController$1;

    .line 5
    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mResetClockRunnable:Lcom/android/keyguard/magazine/LockScreenMagazineController$9;

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    iget-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mPreViewShowing:Z

    .line 12
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    iput-boolean v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mPreViewShowing:Z

    .line 17
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mUpdateMonitorInjector:Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 19
    invoke-virtual {v0, v1}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->handleLockScreenMagazinePreViewVisibilityChanged(Z)V

    .line 21
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mKeyguardShowing:Z

    .line 24
    iget-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 26
    const/4 v3, 0x0

    .line 28
    const/4 v4, 0x4

    .line 29
    const/high16 v5, 0x3f800000    # 1.0f

    .line 30
    const/4 v6, 0x1

    .line 32
    if-eqz v0, :cond_2

    .line 33
    iget v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mBarState:I

    .line 35
    if-ne v0, v6, :cond_2

    .line 37
    iget-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mQsExpanded:Z

    .line 39
    if-nez v0, :cond_2

    .line 41
    iget-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsDefaultLockscreenTheme:Z

    .line 43
    if-eqz v0, :cond_2

    .line 45
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 49
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    .line 52
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 54
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 57
    if-eqz v0, :cond_1

    .line 59
    iget-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSupportLockScreenMagazineLeft:Z

    .line 61
    if-eqz v0, :cond_1

    .line 63
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->GXZW_SENSOR:Z

    .line 65
    if-nez v0, :cond_1

    .line 67
    iget-boolean v0, v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerIsOrWillBeShowing:Z

    .line 69
    if-nez v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    .line 73
    invoke-virtual {v0, v1}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->setMainLayoutVisible(I)V

    .line 75
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    .line 78
    invoke-virtual {v0, v5}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->setMainLayoutAlpha(F)V

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    .line 83
    invoke-virtual {v0, v4}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->setFullScreenLayoutVisible(I)V

    .line 85
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    .line 88
    invoke-virtual {v0, v3}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->setFullScreenLayoutAlpha(F)V

    .line 90
    goto :goto_0

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    .line 94
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    .line 99
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 101
    :goto_0
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    .line 104
    move-result v0

    .line 107
    if-eqz v0, :cond_4

    .line 108
    const-class v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 110
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 112
    move-result-object v0

    .line 115
    check-cast v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 116
    iget-object v0, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardMoveHelper:Lcom/android/keyguard/KeyguardMoveHelper;

    .line 118
    if-eqz v0, :cond_3

    .line 120
    iget v0, v0, Lcom/android/keyguard/KeyguardMoveHelper;->mCurrentScreen:I

    .line 122
    goto :goto_1

    .line 124
    :cond_3
    move v0, v6

    .line 125
    :goto_1
    if-ne v0, v6, :cond_4

    .line 126
    invoke-virtual {p0, v5}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->setPanelViewAlpha(F)V

    .line 128
    :cond_4
    return-void
    .line 131
.end method

.method public final setPanelViewAlpha(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mMiuiNotificationPanelViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 4
    iget v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mMagazineAlpha:F

    .line 6
    cmpl-float v1, v1, p1

    .line 8
    if-eqz v1, :cond_0

    .line 10
    iput p1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mMagazineAlpha:F

    .line 12
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 14
    if-eqz v1, :cond_0

    .line 16
    iget v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mAlpha:F

    .line 18
    mul-float/2addr v0, p1

    .line 20
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mMiuiNotificationPanelViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 24
    iget-object v0, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardSignatureLayer:Landroid/widget/FrameLayout;

    .line 26
    const-class v1, Lcom/android/keyguard/injector/KeyguardClockInjector;

    .line 28
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 33
    check-cast v2, Lcom/android/keyguard/injector/KeyguardClockInjector;

    .line 34
    iget-object v2, v2, Lcom/android/keyguard/injector/KeyguardClockInjector;->mKeyguardClockView:Lcom/android/keyguard/clock/KeyguardClockContainer;

    .line 36
    invoke-virtual {v2}, Lcom/android/keyguard/clock/KeyguardClockContainer;->getMHasNotification()Z

    .line 38
    move-result v2

    .line 41
    if-eqz v2, :cond_1

    .line 42
    const/4 v2, 0x0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move v2, p1

    .line 46
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 47
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mMiuiNotificationPanelViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 50
    iget-object v0, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardForegroundLayer:Landroid/widget/FrameLayout;

    .line 52
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 54
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mMiuiNotificationPanelViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 57
    iget-object v0, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardBackgroundLayer:Landroid/widget/FrameLayout;

    .line 59
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 61
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->setMainLayoutAlpha(F)V

    .line 66
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 69
    move-result-object p0

    .line 72
    check-cast p0, Lcom/android/keyguard/injector/KeyguardClockInjector;

    .line 73
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardClockInjector;->mKeyguardClockView:Lcom/android/keyguard/clock/KeyguardClockContainer;

    .line 75
    if-eqz p0, :cond_2

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/keyguard/clock/KeyguardClockContainer;->setMagazineAlpha(F)V

    .line 79
    :cond_2
    const-class p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;

    .line 82
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 84
    move-result-object p0

    .line 87
    check-cast p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;

    .line 88
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mKeyguardBottomAreaView:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 90
    if-nez p0, :cond_3

    .line 92
    goto :goto_1

    .line 94
    :cond_3
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 95
    :goto_1
    return-void
    .line 98
.end method

.method public final startMagazinePreviewActivity(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsJumpingIntent:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsJumpingIntent:Z

    .line 8
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 10
    const/4 v1, 0x0

    .line 12
    iget-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mContext:Landroid/content/Context;

    .line 13
    const-string v3, "LockScreenMagazineController"

    .line 15
    if-eqz v0, :cond_1

    .line 17
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->getPreLeftScreenIntent()Landroid/content/Intent;

    .line 19
    move-result-object p1

    .line 22
    if-eqz p1, :cond_3

    .line 23
    const-string v0, "entry_source"

    .line 25
    const-string v4, "cta"

    .line 27
    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    :try_start_0
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 32
    invoke-virtual {v2, p1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 37
    :catch_0
    move-exception p1

    .line 38
    const-string/jumbo v0, "startMagazineActivity: failed "

    .line 39
    invoke-static {v3, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    goto :goto_0

    .line 45
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    .line 46
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 48
    const-string/jumbo v4, "sourceFrom"

    .line 51
    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 57
    move-result-wide v4

    .line 60
    const-wide/16 v6, 0x258

    .line 61
    add-long/2addr v4, v6

    .line 63
    const-string/jumbo p1, "showtime"

    .line 64
    invoke-virtual {v0, p1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 67
    const-string p1, "com.mfashiongallery.emag/com.mfashiongallery.emag.ProxyActivityToLockWallpaperPreview"

    .line 70
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 72
    move-result-object p1

    .line 75
    if-eqz p1, :cond_2

    .line 76
    new-instance v4, Landroid/content/Intent;

    .line 78
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 80
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 83
    const/high16 p1, 0x10000000

    .line 86
    invoke-virtual {v4, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 88
    invoke-virtual {v4, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 91
    invoke-static {v2, v1, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    .line 94
    move-result-object p1

    .line 97
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 98
    move-result-object p1

    .line 101
    :try_start_1
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 102
    invoke-virtual {v2, v4, p1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 104
    goto :goto_0

    .line 107
    :catch_1
    move-exception p1

    .line 108
    const-string/jumbo v0, "start activity failed."

    .line 109
    invoke-static {v3, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    goto :goto_0

    .line 115
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 116
    const-string/jumbo v4, "start activity failed result:"

    .line 118
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    const-string v0, "component:"

    .line 127
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    move-result-object p1

    .line 138
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_3
    :goto_0
    iput-boolean v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsJumpingIntent:Z

    .line 142
    return-void
.end method

.method public final startSwitchAnimator(Z)V
    .locals 7

    .line 1
    iput-boolean p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mPreViewShowing:Z

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mUpdateMonitorInjector:Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->handleLockScreenMagazinePreViewVisibilityChanged(Z)V

    .line 6
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->cancelSwitchAnimate()V

    .line 9
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 12
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    .line 17
    const/4 v0, 0x2

    .line 19
    new-array v1, v0, [F

    .line 20
    const/4 v2, 0x0

    .line 22
    const/high16 v3, 0x3f800000    # 1.0f

    .line 23
    if-eqz p1, :cond_0

    .line 25
    move v4, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v4, v3

    .line 29
    :goto_0
    const/4 v5, 0x0

    .line 30
    aput v4, v1, v5

    .line 31
    if-eqz p1, :cond_1

    .line 33
    move v4, v3

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v4, v2

    .line 37
    :goto_1
    const/4 v6, 0x1

    .line 38
    aput v4, v1, v6

    .line 39
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 41
    move-result-object v1

    .line 44
    iput-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mFullScreenAnimator:Landroid/animation/ValueAnimator;

    .line 45
    if-eqz p1, :cond_2

    .line 47
    sget-object v4, Lcom/miui/utils/animation/Ease$Cubic;->easeInOut:Lcom/miui/utils/animation/Ease$Sine$1;

    .line 49
    goto :goto_2

    .line 51
    :cond_2
    sget-object v4, Lcom/miui/utils/animation/Ease$Quint;->easeOut:Lcom/miui/utils/animation/Ease$Sine$1;

    .line 52
    :goto_2
    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 54
    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mFullScreenAnimator:Landroid/animation/ValueAnimator;

    .line 57
    new-instance v4, Lcom/android/keyguard/magazine/LockScreenMagazineController$$ExternalSyntheticLambda0;

    .line 59
    invoke-direct {v4, p0, v5}, Lcom/android/keyguard/magazine/LockScreenMagazineController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/magazine/LockScreenMagazineController;I)V

    .line 61
    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 64
    new-array v0, v0, [F

    .line 67
    if-eqz p1, :cond_3

    .line 69
    move v1, v3

    .line 71
    goto :goto_3

    .line 72
    :cond_3
    move v1, v2

    .line 73
    :goto_3
    aput v1, v0, v5

    .line 74
    if-eqz p1, :cond_4

    .line 76
    goto :goto_4

    .line 78
    :cond_4
    move v2, v3

    .line 79
    :goto_4
    aput v2, v0, v6

    .line 80
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 82
    move-result-object v0

    .line 85
    iput-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mNonFullScreenAnimator:Landroid/animation/ValueAnimator;

    .line 86
    if-eqz p1, :cond_5

    .line 88
    sget-object v1, Lcom/miui/utils/animation/Ease$Quint;->easeOut:Lcom/miui/utils/animation/Ease$Sine$1;

    .line 90
    goto :goto_5

    .line 92
    :cond_5
    sget-object v1, Lcom/miui/utils/animation/Ease$Cubic;->easeInOut:Lcom/miui/utils/animation/Ease$Sine$1;

    .line 93
    :goto_5
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 95
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mNonFullScreenAnimator:Landroid/animation/ValueAnimator;

    .line 98
    new-instance v1, Lcom/android/keyguard/magazine/LockScreenMagazineController$$ExternalSyntheticLambda0;

    .line 100
    invoke-direct {v1, p0, v6}, Lcom/android/keyguard/magazine/LockScreenMagazineController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/magazine/LockScreenMagazineController;I)V

    .line 102
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 105
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    .line 108
    const-wide/16 v1, 0x1f4

    .line 110
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 112
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    .line 115
    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mFullScreenAnimator:Landroid/animation/ValueAnimator;

    .line 117
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 119
    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mNonFullScreenAnimator:Landroid/animation/ValueAnimator;

    .line 123
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 125
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    .line 128
    new-instance v1, Lcom/android/keyguard/magazine/LockScreenMagazineController$8;

    .line 130
    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/magazine/LockScreenMagazineController$8;-><init>(Lcom/android/keyguard/magazine/LockScreenMagazineController;Z)V

    .line 132
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 135
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    .line 138
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 140
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mHandler:Lcom/android/keyguard/magazine/LockScreenMagazineController$1;

    .line 143
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mResetClockRunnable:Lcom/android/keyguard/magazine/LockScreenMagazineController$9;

    .line 145
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 147
    if-eqz p1, :cond_6

    .line 150
    const-wide/16 v1, 0x1388

    .line 152
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 154
    :cond_6
    return-void
    .line 157
.end method

.method public final updateKeyguardSupportDisplayMagazineState()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsDeviceProvisioned:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsForceDisableMagazine:Z

    .line 6
    if-nez v0, :cond_0

    .line 8
    sget-object v0, Lcom/android/keyguard/utils/MiuiKeyguardUtils;->sRegionSupportMiHomeList:Ljava/util/List;

    .line 10
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    .line 12
    const/4 v1, 0x1

    .line 14
    xor-int/2addr v0, v1

    .line 15
    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 18
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 20
    move-result v2

    .line 23
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlocked(I)Z

    .line 24
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    iget-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsDefaultLockscreenTheme:Z

    .line 30
    if-eqz v0, :cond_0

    .line 32
    goto :goto_0

    .line 34
    :cond_0
    const/4 v1, 0x0

    .line 35
    :goto_0
    iput-boolean v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsKeyguardSupportDisplayMagazine:Z

    .line 36
    return-void
    .line 38
.end method

.method public final updateLockScreenMagazineWallpaperInfo()V
    .locals 7

    .line 1
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 2
    if-eqz v0, :cond_4

    .line 4
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    .line 6
    if-eqz v0, :cond_4

    .line 8
    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mMainRemoteView:Landroid/widget/RemoteViews;

    .line 10
    iget-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mFullScreenRemoteView:Landroid/widget/RemoteViews;

    .line 12
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    if-eqz v1, :cond_0

    .line 16
    iget-object v5, v0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainRemoteView:Landroid/widget/RemoteViews;

    .line 18
    if-eqz v5, :cond_0

    .line 20
    invoke-virtual {v1}, Landroid/widget/RemoteViews;->getLayoutId()I

    .line 22
    move-result v5

    .line 25
    iget-object v6, v0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainRemoteView:Landroid/widget/RemoteViews;

    .line 26
    invoke-virtual {v6}, Landroid/widget/RemoteViews;->getLayoutId()I

    .line 28
    move-result v6

    .line 31
    if-eq v5, v6, :cond_1

    .line 32
    :cond_0
    iget-object v5, v0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteMainLayout:Landroid/widget/LinearLayout;

    .line 34
    iget-object v6, v0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteMainView:Landroid/view/View;

    .line 36
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 38
    iput-object v4, v0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteMainView:Landroid/view/View;

    .line 41
    iput-boolean v3, v0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainRemoteViewApplyed:Z

    .line 43
    :cond_1
    if-eqz v2, :cond_2

    .line 45
    iget-object v5, v0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenRemoteView:Landroid/widget/RemoteViews;

    .line 47
    if-eqz v5, :cond_2

    .line 49
    invoke-virtual {v2}, Landroid/widget/RemoteViews;->getLayoutId()I

    .line 51
    move-result v5

    .line 54
    iget-object v6, v0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenRemoteView:Landroid/widget/RemoteViews;

    .line 55
    invoke-virtual {v6}, Landroid/widget/RemoteViews;->getLayoutId()I

    .line 57
    move-result v6

    .line 60
    if-eq v5, v6, :cond_3

    .line 61
    :cond_2
    iget-object v5, v0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteFullScreenLayout:Landroid/widget/LinearLayout;

    .line 63
    iget-object v6, v0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteFullScreenView:Landroid/view/View;

    .line 65
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 67
    iput-object v4, v0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteFullScreenView:Landroid/view/View;

    .line 70
    iput-boolean v3, v0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenRemoteViewApplyed:Z

    .line 72
    :cond_3
    iput-object v1, v0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainRemoteView:Landroid/widget/RemoteViews;

    .line 74
    iput-object v2, v0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenRemoteView:Landroid/widget/RemoteViews;

    .line 76
    :cond_4
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    .line 78
    if-eqz p0, :cond_6

    .line 80
    const-class v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 82
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 84
    move-result-object v0

    .line 87
    check-cast v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 88
    iget-object v0, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 90
    iput-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 92
    if-eqz v0, :cond_6

    .line 94
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 96
    if-nez v1, :cond_5

    .line 98
    iget-object v0, v0, Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;->content:Ljava/lang/String;

    .line 100
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 102
    move-result v0

    .line 105
    if-nez v0, :cond_5

    .line 106
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 108
    iget-object v1, v0, Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;->content:Ljava/lang/String;

    .line 110
    const-string v2, "\\s*"

    .line 112
    const-string v3, ""

    .line 114
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    move-result-object v1

    .line 119
    iput-object v1, v0, Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;->content:Ljava/lang/String;

    .line 120
    :cond_5
    new-instance v0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$9;

    .line 122
    invoke-direct {v0, p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$9;-><init>(Lcom/android/keyguard/magazine/LockScreenMagazinePreView;)V

    .line 124
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 127
    :cond_6
    const-class p0, Lcom/android/keyguard/injector/KeyguardClockInjector;

    .line 130
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 132
    move-result-object p0

    .line 135
    check-cast p0, Lcom/android/keyguard/injector/KeyguardClockInjector;

    .line 136
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardClockInjector;->mKeyguardClockView:Lcom/android/keyguard/clock/KeyguardClockContainer;

    .line 138
    if-eqz p0, :cond_7

    .line 140
    new-instance v0, Lcom/android/keyguard/magazine/LockScreenMagazineController$7;

    .line 142
    invoke-direct {v0, p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController$7;-><init>(Lcom/android/keyguard/clock/KeyguardClockContainer;)V

    .line 144
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 147
    :cond_7
    return-void
    .line 150
.end method
