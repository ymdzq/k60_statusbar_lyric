.class public final Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mBottomIconIsDeep:Z

.field public mBottomIconRectDeepState:I

.field public mBottomIconRectLandscape:Ljava/lang/String;

.field public mBottomIconRectSmallScreen:Ljava/lang/String;

.field public mBouncerShow:Z

.field public mClockStyleIsDeep:Z

.field public mClockStyleRectLandscape:Ljava/lang/String;

.field public mClockStyleRectSmallScreen:Ljava/lang/String;

.field public mColorMap:Ljava/util/Map;

.field public final mContext:Landroid/content/Context;

.field public mFilterColorMap:Ljava/util/Map;

.field public mFingerPrintIsDeep:Z

.field public mFingerPrintRectLandscape:Ljava/lang/String;

.field public mFingerPrintRectSmallScreen:Ljava/lang/String;

.field public mIsLightLockWallpaper:Z

.field public mKeyguardColorScheme:I

.field public final mKeyguardCommonSettingObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public volatile mKeyguardWallpaperBlurPreview:Landroid/graphics/drawable/Drawable;

.field public final mKeyguardWallpaperBlurPreviewChangeListeners:Ljava/util/ArrayList;

.field public mKeyguardWallpaperRatio:F

.field public mKeyguardWallpaperState:Z

.field public mKeyguardWallpaperType:Ljava/lang/String;

.field public mMagazineScriptIsDeep:Z

.field public mMagazineScriptRectLandscape:Ljava/lang/String;

.field public mMagazineScriptSmallScreen:Ljava/lang/String;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mMiuiKeyguardUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

.field public volatile mMiuiWallpaperManager:Lcom/miui/miwallpaper/MiuiWallpaperManager;

.field public mNeedUpdateKeyguardWallpaperBlurPreview:Z

.field public mOrientation:I

.field public mPartDeepMap:Ljava/util/Map;

.field public mSmallestScreenWidthDp:I

.field public mStatusBarIsDeep:Z

.field public mStatusBarRectLandscape:Ljava/lang/String;

.field public mStatusBarRectSmallScreen:Ljava/lang/String;

.field public final mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

.field public mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mUseWallpaperBlur:Z

.field public final mWakefulnessLifecycleObserver:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$8;

.field public mWallpaperBlurColor:I

.field public mWallpaperUpdateColor:Z

.field public final remoteViewCallback:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$4;

.field public final wallpaperCallback:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardCommonSettingObserver;Lcom/android/systemui/UiOffloadThread;Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mNeedUpdateKeyguardWallpaperBlurPreview:Z

    .line 6
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mWallpaperUpdateColor:Z

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iput-object v1, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mKeyguardWallpaperBlurPreviewChangeListeners:Ljava/util/ArrayList;

    .line 16
    new-instance v1, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3;

    .line 18
    invoke-direct {v1, p0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3;-><init>(Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;)V

    .line 20
    iput-object v1, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->wallpaperCallback:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3;

    .line 23
    new-instance v1, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$4;

    .line 25
    invoke-direct {v1, p0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$4;-><init>(Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;)V

    .line 27
    iput-object v1, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->remoteViewCallback:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$4;

    .line 30
    new-instance v1, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$6;

    .line 32
    invoke-direct {v1, p0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$6;-><init>(Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;)V

    .line 34
    iput-object v1, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 37
    new-instance v1, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$7;

    .line 39
    invoke-direct {v1, p0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$7;-><init>(Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;)V

    .line 41
    iput-object v1, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mMiuiKeyguardUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

    .line 44
    new-instance v1, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$8;

    .line 46
    invoke-direct {v1, p0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$8;-><init>(Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;)V

    .line 48
    iput-object v1, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mWakefulnessLifecycleObserver:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$8;

    .line 51
    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mKeyguardWallpaperState:Z

    .line 53
    const/high16 v0, -0x40800000    # -1.0f

    .line 55
    iput v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mKeyguardWallpaperRatio:F

    .line 57
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mKeyguardCommonSettingObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 61
    iput-object p3, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    .line 63
    iput-object p4, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mMainHandler:Landroid/os/Handler;

    .line 65
    iput-object p5, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 69
    move-result-object p2

    .line 72
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 73
    move-result-object p2

    .line 76
    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    .line 77
    iput p2, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mOrientation:I

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 81
    move-result-object p1

    .line 84
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 85
    move-result-object p1

    .line 88
    iget p1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 89
    iput p1, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mSmallestScreenWidthDp:I

    .line 91
    return-void
    .line 93
.end method


# virtual methods
.method public final getKeyguardWallPaperPreview(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mMiuiWallpaperManager:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object v1

    .line 13
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mMiuiWallpaperManager:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    .line 14
    invoke-virtual {p0, p1}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->getFitScreenWallpaperPreview(Landroid/content/Context;)Landroid/graphics/Bitmap;

    .line 16
    move-result-object p0

    .line 19
    invoke-direct {v0, v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 20
    return-object v0
    .line 23
.end method

.method public final hideKeyguardWallpaper()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mKeyguardCommonSettingObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 2
    iget v0, v0, Lcom/android/keyguard/KeyguardCommonSettingObserver;->animationRate:I

    .line 4
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x2

    .line 8
    if-eq v0, v3, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mKeyguardCommonSettingObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 11
    iget v0, v0, Lcom/android/keyguard/KeyguardCommonSettingObserver;->mMiuiWallpaperContentState:I

    .line 13
    if-eq v0, v3, :cond_0

    .line 15
    move v0, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, v2

    .line 19
    :goto_0
    if-eqz v0, :cond_4

    .line 20
    iget-object v4, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mKeyguardCommonSettingObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 22
    iget v4, v4, Lcom/android/keyguard/KeyguardCommonSettingObserver;->mMiuiWallpaperContentState:I

    .line 24
    if-ne v4, v1, :cond_2

    .line 26
    const-class v0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;

    .line 28
    invoke-static {v0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 33
    check-cast v0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;

    .line 34
    iget-boolean v0, v0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->mFastUnlock:Z

    .line 36
    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 40
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 42
    if-eqz v0, :cond_3

    .line 44
    :cond_1
    sget-boolean v0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockUtils;->sIsScreenTurnOnDelayed:Z

    .line 46
    if-nez v0, :cond_3

    .line 48
    goto :goto_1

    .line 50
    :cond_2
    if-nez v4, :cond_4

    .line 51
    iget-boolean v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mBouncerShow:Z

    .line 53
    if-eqz v0, :cond_3

    .line 55
    iget-boolean v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mUseWallpaperBlur:Z

    .line 57
    if-eqz v0, :cond_3

    .line 59
    :goto_1
    move v0, v1

    .line 61
    goto :goto_2

    .line 62
    :cond_3
    move v0, v2

    .line 63
    :cond_4
    :goto_2
    const/4 v4, 0x0

    .line 64
    if-eqz v0, :cond_6

    .line 65
    iget-boolean v5, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mUseWallpaperBlur:Z

    .line 67
    if-eqz v5, :cond_6

    .line 69
    iget-boolean v5, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mBouncerShow:Z

    .line 71
    if-nez v5, :cond_5

    .line 73
    iget v5, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mKeyguardWallpaperRatio:F

    .line 75
    cmpl-float v5, v5, v4

    .line 77
    if-nez v5, :cond_5

    .line 79
    goto :goto_3

    .line 81
    :cond_5
    move v3, v2

    .line 82
    goto :goto_3

    .line 83
    :cond_6
    move v3, v1

    .line 84
    :goto_3
    invoke-virtual {p0, v2, v0, v3, v2}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->updateKeyguardWallpaperStateAnim(ZZIZ)V

    .line 85
    if-eq v3, v1, :cond_8

    .line 88
    const-class p0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 90
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 92
    move-result-object p0

    .line 95
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 96
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 98
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getShadeViewController()Lcom/android/systemui/shade/ShadeViewController;

    .line 100
    move-result-object p0

    .line 103
    check-cast p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 104
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardForegroundLayer:Landroid/widget/FrameLayout;

    .line 106
    if-eqz p0, :cond_8

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 110
    move-result-object v0

    .line 113
    if-eqz v0, :cond_7

    .line 114
    const/16 p0, 0x64

    .line 116
    int-to-float p0, p0

    .line 118
    mul-float/2addr v4, p0

    .line 119
    float-to-int p0, v4

    .line 120
    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->setWallpaperBlur(I)V

    .line 121
    goto :goto_4

    .line 124
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 125
    move-result-object v0

    .line 128
    new-instance v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$setWallpaperSyncBlur$1;

    .line 129
    invoke-direct {v1, v4, p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$setWallpaperSyncBlur$1;-><init>(FLandroid/view/View;)V

    .line 131
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 134
    :cond_8
    :goto_4
    return-void
    .line 137
.end method

.method public final initKeyguardWallpaperManager()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mMiuiWallpaperManager:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mMiuiWallpaperManager:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    .line 7
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->wallpaperCallback:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3;

    .line 9
    invoke-virtual {v0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->isServiceReady()Z

    .line 11
    move-result v3

    .line 14
    if-eqz v3, :cond_0

    .line 15
    :try_start_0
    iget-object v3, v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mWallpaperChangeCallbacks:Ljava/util/HashMap;

    .line 17
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    :try_start_1
    iget-object v4, v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mWallpaperChangeCallbacks:Ljava/util/HashMap;

    .line 20
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :try_start_2
    iget-object v0, v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mService:Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;

    .line 26
    check-cast v0, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub$Proxy;

    .line 28
    invoke-virtual {v0, v2}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub$Proxy;->unRegisterWallpaperChangeListener(Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 30
    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 35
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 36
    :catchall_1
    move-exception v0

    .line 37
    const-string v2, "MiuiWallpaperManager"

    .line 38
    const-string/jumbo v3, "unRegisterWallpaperChangeListener fail : "

    .line 40
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mMiuiWallpaperManager:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    .line 46
    :cond_1
    sget-object v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->sInstance:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    .line 48
    if-eqz v0, :cond_4

    .line 50
    sget-object v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->sInstance:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    .line 52
    invoke-virtual {v0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->isServiceReady()Z

    .line 54
    move-result v2

    .line 57
    const-string v3, "MiuiWallpaperManager"

    .line 58
    if-eqz v2, :cond_3

    .line 60
    const-string/jumbo v2, "unBindService..."

    .line 62
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :try_start_5
    iget-object v2, v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 68
    if-eqz v2, :cond_2

    .line 70
    iget-object v2, v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mService:Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;

    .line 72
    check-cast v2, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub$Proxy;

    .line 74
    iget-object v2, v2, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 76
    iget-object v4, v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 78
    const/4 v5, 0x0

    .line 80
    invoke-interface {v2, v4, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 81
    goto :goto_1

    .line 84
    :catch_0
    move-exception v2

    .line 85
    const-string/jumbo v4, "unLinkFailed"

    .line 86
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    :cond_2
    :goto_1
    iget-object v2, v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mContext:Landroid/content/Context;

    .line 92
    iget-object v4, v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mBroadcastReceiver:Lcom/miui/miwallpaper/MiuiWallpaperManager$2;

    .line 94
    invoke-virtual {v2, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 96
    iget-object v2, v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mContext:Landroid/content/Context;

    .line 99
    iget-object v0, v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mServiceConnection:Lcom/miui/miwallpaper/MiuiWallpaperManager$1;

    .line 101
    invoke-virtual {v2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 103
    :cond_3
    new-instance v0, Ljava/lang/Exception;

    .line 106
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 108
    const-string/jumbo v2, "staticDestroy, set sInstance null"

    .line 111
    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    sput-object v1, Lcom/miui/miwallpaper/MiuiWallpaperManager;->sInstance:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    .line 117
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mContext:Landroid/content/Context;

    .line 119
    new-instance v1, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$2;

    .line 121
    invoke-direct {v1, p0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$2;-><init>(Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;)V

    .line 123
    new-instance p0, Landroid/os/UserHandle;

    .line 126
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 128
    move-result v2

    .line 131
    invoke-direct {p0, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 132
    sget-object v2, Lcom/miui/miwallpaper/MiuiWallpaperManager;->sInstance:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    .line 135
    if-nez v2, :cond_7

    .line 137
    const-class v2, Lcom/miui/miwallpaper/MiuiWallpaperManager;

    .line 139
    monitor-enter v2

    .line 141
    :try_start_6
    sget-object v3, Lcom/miui/miwallpaper/MiuiWallpaperManager;->sInstance:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    .line 142
    if-nez v3, :cond_5

    .line 144
    const-string v3, "MiuiWallpaperManager"

    .line 146
    const-string v4, "initForUser..."

    .line 148
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v3, Lcom/miui/miwallpaper/MiuiWallpaperManager;

    .line 153
    invoke-direct {v3, v0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;-><init>(Landroid/content/Context;)V

    .line 155
    sput-object v3, Lcom/miui/miwallpaper/MiuiWallpaperManager;->sInstance:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    .line 158
    sget-object v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->sInstance:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    .line 160
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    new-instance v3, Landroid/content/IntentFilter;

    .line 165
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 167
    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    .line 170
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    .line 175
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    const-string v4, "package"

    .line 180
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 182
    iget-object v4, v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mBroadcastReceiver:Lcom/miui/miwallpaper/MiuiWallpaperManager$2;

    .line 185
    iget-object v0, v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mContext:Landroid/content/Context;

    .line 187
    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 189
    sget-object v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->sInstance:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    .line 192
    iget-object v0, v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mInitCallbacks:Ljava/util/HashSet;

    .line 194
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->sInstance:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    .line 199
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    new-instance v1, Landroid/content/Intent;

    .line 204
    const-string v3, "android.service.wallpaper.WallPaperControllerService"

    .line 206
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    const-string v3, "com.miui.miwallpaper"

    .line 211
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 213
    :try_start_7
    iget-object v3, v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mContext:Landroid/content/Context;

    .line 216
    iget-object v0, v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mServiceConnection:Lcom/miui/miwallpaper/MiuiWallpaperManager$1;

    .line 218
    const/4 v4, 0x1

    .line 220
    invoke-virtual {v3, v1, v0, v4, p0}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 221
    goto :goto_2

    .line 224
    :catchall_2
    move-exception p0

    .line 225
    :try_start_8
    const-string v0, "MiuiWallpaperManager"

    .line 226
    const-string v1, "bindServiceAsUser fail"

    .line 228
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    goto :goto_2

    .line 233
    :cond_5
    sget-object p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->sInstance:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    .line 234
    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mService:Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;

    .line 236
    if-eqz p0, :cond_6

    .line 238
    sget-object p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->sInstance:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    .line 240
    invoke-virtual {v1, p0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$2;->onMiuiWallpaperInitialized(Lcom/miui/miwallpaper/MiuiWallpaperManager;)V

    .line 242
    :cond_6
    :goto_2
    monitor-exit v2

    .line 245
    goto :goto_3

    .line 246
    :catchall_3
    move-exception p0

    .line 247
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 248
    throw p0

    .line 249
    :cond_7
    sget-object p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->sInstance:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    .line 250
    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mService:Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;

    .line 252
    if-eqz p0, :cond_8

    .line 254
    sget-object p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->sInstance:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    .line 256
    invoke-virtual {v1, p0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$2;->onMiuiWallpaperInitialized(Lcom/miui/miwallpaper/MiuiWallpaperManager;)V

    .line 258
    :cond_8
    :goto_3
    return-void
    .line 261
.end method

.method public final isDefaultLockScreenTheme()Z
    .locals 1

    .line 1
    const-string v0, "maml"

    .line 2
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mKeyguardWallpaperType:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p0

    .line 9
    xor-int/lit8 p0, p0, 0x1

    .line 10
    return p0
    .line 12
.end method

.method public final isMagazineWallpaper()Z
    .locals 1

    .line 1
    const-string v0, "gallery"

    .line 2
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mKeyguardWallpaperType:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method

.method public final showWallpaperScreenOnAnim(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mMiuiWallpaperManager:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    const-string/jumbo v0, "showWallpaperScreenOnAnim: "

    .line 7
    const-string v1, "MiuiKeyguardWallPaperManager"

    .line 10
    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 12
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mMiuiWallpaperManager:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    .line 15
    invoke-virtual {p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->isServiceReady()Z

    .line 17
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    :try_start_0
    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mService:Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;

    .line 23
    check-cast p0, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub$Proxy;

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 30
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 33
    :try_start_1
    const-string v1, "com.miui.miwallpaper.IMiuiWallpaperManagerService"

    .line 34
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 36
    const/4 v1, 0x1

    .line 39
    if-eqz p1, :cond_1

    .line 40
    move p1, v1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 p1, 0x0

    .line 44
    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget-object p0, p0, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 48
    const/16 p1, 0x11

    .line 50
    const/4 v2, 0x0

    .line 52
    invoke-interface {p0, p1, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :try_start_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 56
    goto :goto_1

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 61
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 64
    :catchall_1
    move-exception p0

    .line 65
    const-string p1, "MiuiWallpaperManager"

    .line 66
    const-string/jumbo v0, "showWallpaperScreenOnAnim fail"

    .line 68
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    :cond_2
    :goto_1
    return-void
    .line 74
.end method

.method public final updateColorAndDeep()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mColorMap:Ljava/util/Map;

    .line 2
    const-string v1, "MiuiKeyguardWallPaperManager"

    .line 4
    if-eqz v0, :cond_1d

    .line 6
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mPartDeepMap:Ljava/util/Map;

    .line 8
    if-eqz v0, :cond_1d

    .line 10
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mFilterColorMap:Ljava/util/Map;

    .line 12
    if-nez v0, :cond_0

    .line 14
    goto/16 :goto_17

    .line 16
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mContext:Landroid/content/Context;

    .line 18
    invoke-static {v0}, Lcom/miui/utils/configs/MiuiConfigs;->isPadOrFoldLargeScreen(Landroid/content/Context;)Z

    .line 20
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    const-string v2, "magazine_script_rect"

    .line 24
    const-string v3, "finger_print_rect"

    .line 26
    const-string v4, "clock_style_rect"

    .line 28
    const-string/jumbo v5, "status_bar_rect"

    .line 30
    const-string v6, "bottom_icon_rect"

    .line 33
    const/4 v7, 0x0

    .line 35
    const/4 v8, 0x1

    .line 36
    if-eqz v0, :cond_6

    .line 37
    :try_start_1
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mContext:Landroid/content/Context;

    .line 39
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 45
    move-result-object v0

    .line 48
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 49
    const/4 v9, 0x2

    .line 51
    if-ne v9, v0, :cond_1

    .line 52
    move v0, v8

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    move v0, v7

    .line 56
    :goto_0
    if-eqz v0, :cond_2

    .line 57
    iget-object v9, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mBottomIconRectLandscape:Ljava/lang/String;

    .line 59
    goto :goto_1

    .line 61
    :cond_2
    move-object v9, v6

    .line 62
    :goto_1
    if-eqz v0, :cond_3

    .line 63
    iget-object v10, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mStatusBarRectLandscape:Ljava/lang/String;

    .line 65
    goto :goto_2

    .line 67
    :cond_3
    move-object v10, v5

    .line 68
    :goto_2
    if-eqz v0, :cond_4

    .line 69
    iget-object v11, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mClockStyleRectLandscape:Ljava/lang/String;

    .line 71
    goto :goto_3

    .line 73
    :cond_4
    move-object v11, v4

    .line 74
    :goto_3
    if-eqz v0, :cond_5

    .line 75
    iget-object v12, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mFingerPrintRectLandscape:Ljava/lang/String;

    .line 77
    goto :goto_4

    .line 79
    :cond_5
    move-object v12, v3

    .line 80
    :goto_4
    if-eqz v0, :cond_b

    .line 81
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mMagazineScriptRectLandscape:Ljava/lang/String;

    .line 83
    goto :goto_9

    .line 85
    :cond_6
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_FOLD:Z

    .line 86
    if-eqz v0, :cond_7

    .line 88
    iget-object v9, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mBottomIconRectSmallScreen:Ljava/lang/String;

    .line 90
    goto :goto_5

    .line 92
    :cond_7
    move-object v9, v6

    .line 93
    :goto_5
    if-eqz v0, :cond_8

    .line 94
    iget-object v10, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mStatusBarRectSmallScreen:Ljava/lang/String;

    .line 96
    goto :goto_6

    .line 98
    :cond_8
    move-object v10, v5

    .line 99
    :goto_6
    if-eqz v0, :cond_9

    .line 100
    iget-object v11, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mClockStyleRectSmallScreen:Ljava/lang/String;

    .line 102
    goto :goto_7

    .line 104
    :cond_9
    move-object v11, v4

    .line 105
    :goto_7
    if-eqz v0, :cond_a

    .line 106
    iget-object v12, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mFingerPrintRectSmallScreen:Ljava/lang/String;

    .line 108
    goto :goto_8

    .line 110
    :cond_a
    move-object v12, v3

    .line 111
    :goto_8
    if-eqz v0, :cond_b

    .line 112
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mMagazineScriptSmallScreen:Ljava/lang/String;

    .line 114
    goto :goto_9

    .line 116
    :cond_b
    move-object v0, v2

    .line 117
    :goto_9
    iget-object v13, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mFilterColorMap:Ljava/util/Map;

    .line 118
    invoke-interface {v13}, Ljava/util/Map;->clear()V

    .line 120
    iget-object v13, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mFilterColorMap:Ljava/util/Map;

    .line 123
    iget-object v14, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mColorMap:Ljava/util/Map;

    .line 125
    invoke-interface {v14, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    move-result-object v14

    .line 130
    invoke-interface {v13, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v6, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mFilterColorMap:Ljava/util/Map;

    .line 134
    iget-object v13, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mColorMap:Ljava/util/Map;

    .line 136
    invoke-interface {v13, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    move-result-object v13

    .line 141
    invoke-interface {v6, v5, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v5, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mFilterColorMap:Ljava/util/Map;

    .line 145
    iget-object v6, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mColorMap:Ljava/util/Map;

    .line 147
    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    move-result-object v6

    .line 152
    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v4, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mFilterColorMap:Ljava/util/Map;

    .line 156
    iget-object v5, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mColorMap:Ljava/util/Map;

    .line 158
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    move-result-object v5

    .line 163
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mFilterColorMap:Ljava/util/Map;

    .line 167
    iget-object v4, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mColorMap:Ljava/util/Map;

    .line 169
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    move-result-object v4

    .line 174
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mPartDeepMap:Ljava/util/Map;

    .line 178
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    move-result-object v2

    .line 183
    check-cast v2, Ljava/lang/Integer;

    .line 184
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 186
    move-result v2

    .line 189
    iput v2, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mBottomIconRectDeepState:I

    .line 190
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mPartDeepMap:Ljava/util/Map;

    .line 192
    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    move-result-object v2

    .line 197
    check-cast v2, Ljava/lang/Integer;

    .line 198
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 200
    move-result v2

    .line 203
    if-ne v2, v8, :cond_c

    .line 204
    move v2, v8

    .line 206
    goto :goto_a

    .line 207
    :cond_c
    move v2, v7

    .line 208
    :goto_a
    iput-boolean v2, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mStatusBarIsDeep:Z

    .line 209
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mPartDeepMap:Ljava/util/Map;

    .line 211
    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    move-result-object v2

    .line 216
    check-cast v2, Ljava/lang/Integer;

    .line 217
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 219
    move-result v2

    .line 222
    if-ne v2, v8, :cond_d

    .line 223
    move v2, v8

    .line 225
    goto :goto_b

    .line 226
    :cond_d
    move v2, v7

    .line 227
    :goto_b
    iput-boolean v2, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mClockStyleIsDeep:Z

    .line 228
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mPartDeepMap:Ljava/util/Map;

    .line 230
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    move-result-object v2

    .line 235
    check-cast v2, Ljava/lang/Integer;

    .line 236
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 238
    move-result v2

    .line 241
    if-ne v2, v8, :cond_e

    .line 242
    move v2, v8

    .line 244
    goto :goto_c

    .line 245
    :cond_e
    move v2, v7

    .line 246
    :goto_c
    iput-boolean v2, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mFingerPrintIsDeep:Z

    .line 247
    iget v2, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mBottomIconRectDeepState:I

    .line 249
    if-ne v2, v8, :cond_f

    .line 251
    move v2, v8

    .line 253
    goto :goto_d

    .line 254
    :cond_f
    move v2, v7

    .line 255
    :goto_d
    iput-boolean v2, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mBottomIconIsDeep:Z

    .line 256
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mPartDeepMap:Ljava/util/Map;

    .line 258
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    move-result-object v0

    .line 263
    check-cast v0, Ljava/lang/Integer;

    .line 264
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 266
    move-result v0

    .line 269
    if-ne v0, v8, :cond_10

    .line 270
    move v0, v8

    .line 272
    goto :goto_e

    .line 273
    :cond_10
    move v0, v7

    .line 274
    :goto_e
    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mMagazineScriptIsDeep:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 275
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mKeyguardCommonSettingObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 277
    iget v0, v0, Lcom/android/keyguard/KeyguardCommonSettingObserver;->mColorScheme:I

    .line 279
    iput v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mKeyguardColorScheme:I

    .line 281
    sget-object v0, Lcom/android/keyguard/utils/MiuiKeyguardUtils;->sRegionSupportMiHomeList:Ljava/util/List;

    .line 283
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mContext:Landroid/content/Context;

    .line 285
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 287
    move-result-object v0

    .line 290
    const-string/jumbo v1, "wallpaper_changed_2"

    .line 291
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 294
    move-result-object v0

    .line 297
    const-string v1, "com.miui.aod"

    .line 298
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 300
    move-result v0

    .line 303
    if-nez v0, :cond_11

    .line 304
    iget v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mKeyguardColorScheme:I

    .line 306
    rem-int/lit8 v0, v0, 0x3

    .line 308
    add-int/2addr v0, v8

    .line 310
    iput v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mKeyguardColorScheme:I

    .line 311
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mContext:Landroid/content/Context;

    .line 313
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 315
    move-result-object v0

    .line 318
    const-string v1, "color_scheme"

    .line 319
    iget v2, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mKeyguardColorScheme:I

    .line 321
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 323
    :cond_11
    const-class v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 326
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 328
    move-result-object v0

    .line 331
    check-cast v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 332
    iget-object v1, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->constantLockscreenInfo:Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;

    .line 334
    invoke-virtual {v1}, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;->getClockInfo()Lcom/android/keyguard/wallpaper/entity/ClockInfo;

    .line 336
    move-result-object v1

    .line 339
    invoke-virtual {v1}, Lcom/android/keyguard/wallpaper/entity/ClockInfo;->getTemplateId()Ljava/lang/String;

    .line 340
    move-result-object v1

    .line 343
    const-string v2, "doodle"

    .line 344
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 346
    move-result v2

    .line 349
    const-wide/high16 v3, 0x404e000000000000L    # 60.0

    .line 350
    if-eqz v2, :cond_16

    .line 352
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mPartDeepMap:Ljava/util/Map;

    .line 354
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    move-result-object v1

    .line 359
    check-cast v1, Ljava/lang/Integer;

    .line 360
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 362
    move-result v1

    .line 365
    const/4 v2, -0x1

    .line 366
    if-ne v1, v2, :cond_1c

    .line 367
    iget v1, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mKeyguardColorScheme:I

    .line 369
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mFilterColorMap:Ljava/util/Map;

    .line 371
    iget-object v0, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->constantLockscreenInfo:Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;

    .line 373
    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;->getDoodle()Lcom/android/keyguard/wallpaper/entity/DoodleInfo;

    .line 375
    move-result-object v0

    .line 378
    if-eqz v0, :cond_13

    .line 379
    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/entity/DoodleInfo;->isAutoSolidColor()Z

    .line 381
    move-result v5

    .line 384
    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/entity/DoodleInfo;->getSolidColor()I

    .line 385
    move-result v0

    .line 388
    if-eqz v2, :cond_12

    .line 389
    invoke-static {v1, v8, v2}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->getDoodleOrSmartFrameColors(IZLjava/util/Map;)Lkotlin/Triple;

    .line 391
    move-result-object v1

    .line 394
    goto :goto_f

    .line 395
    :cond_12
    const/4 v1, 0x0

    .line 396
    :goto_f
    if-eqz v5, :cond_14

    .line 397
    if-eqz v1, :cond_14

    .line 399
    invoke-virtual {v1}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    .line 401
    move-result-object v1

    .line 404
    check-cast v1, Ljava/lang/Integer;

    .line 405
    if-eqz v1, :cond_14

    .line 407
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 409
    move-result v0

    .line 412
    goto :goto_10

    .line 413
    :cond_13
    move v0, v7

    .line 414
    :cond_14
    :goto_10
    new-instance v1, Lcom/miui/clock/hct/Hct;

    .line 415
    invoke-direct {v1, v0}, Lcom/miui/clock/hct/Hct;-><init>(I)V

    .line 417
    iget-wide v0, v1, Lcom/miui/clock/hct/Hct;->tone:D

    .line 420
    cmpg-double v0, v0, v3

    .line 422
    if-gez v0, :cond_15

    .line 424
    goto :goto_11

    .line 426
    :cond_15
    move v8, v7

    .line 427
    :goto_11
    iput-boolean v8, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mStatusBarIsDeep:Z

    .line 428
    goto :goto_16

    .line 430
    :cond_16
    const-string/jumbo v2, "smart_frame"

    .line 431
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 434
    move-result v1

    .line 437
    if-eqz v1, :cond_1c

    .line 438
    iget v1, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mKeyguardColorScheme:I

    .line 440
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mFilterColorMap:Ljava/util/Map;

    .line 442
    iget-object v5, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->constantLockscreenInfo:Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;

    .line 444
    invoke-virtual {v5}, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;->getSmartFrame()Lcom/android/keyguard/wallpaper/entity/SmartFrameInfo;

    .line 446
    move-result-object v5

    .line 449
    if-eqz v5, :cond_19

    .line 450
    iget-object v0, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mContext:Landroid/content/Context;

    .line 452
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 454
    move-result-object v0

    .line 457
    const-string v6, "power_supersave_mode_open"

    .line 458
    invoke-static {v0, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 460
    move-result v0

    .line 463
    if-eqz v0, :cond_17

    .line 464
    move v0, v8

    .line 466
    goto :goto_12

    .line 467
    :cond_17
    move v0, v7

    .line 468
    :goto_12
    if-eqz v0, :cond_18

    .line 469
    const/high16 v0, -0x1000000

    .line 471
    goto :goto_13

    .line 473
    :cond_18
    invoke-virtual {v5}, Lcom/android/keyguard/wallpaper/entity/SmartFrameInfo;->getSolidColor()I

    .line 474
    move-result v0

    .line 477
    :goto_13
    invoke-virtual {v5}, Lcom/android/keyguard/wallpaper/entity/SmartFrameInfo;->isAutoSolidColor()Z

    .line 478
    move-result v5

    .line 481
    if-eqz v5, :cond_1a

    .line 482
    if-eqz v2, :cond_19

    .line 484
    invoke-static {v1, v7, v2}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->getDoodleOrSmartFrameColors(IZLjava/util/Map;)Lkotlin/Triple;

    .line 486
    move-result-object v1

    .line 489
    invoke-virtual {v1}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    .line 490
    move-result-object v1

    .line 493
    check-cast v1, Ljava/lang/Integer;

    .line 494
    if-eqz v1, :cond_1a

    .line 496
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 498
    move-result v0

    .line 501
    goto :goto_14

    .line 502
    :cond_19
    move v0, v7

    .line 503
    :cond_1a
    :goto_14
    new-instance v1, Lcom/miui/clock/hct/Hct;

    .line 504
    invoke-direct {v1, v0}, Lcom/miui/clock/hct/Hct;-><init>(I)V

    .line 506
    iget-wide v0, v1, Lcom/miui/clock/hct/Hct;->tone:D

    .line 509
    cmpg-double v0, v0, v3

    .line 511
    if-gez v0, :cond_1b

    .line 513
    goto :goto_15

    .line 515
    :cond_1b
    move v8, v7

    .line 516
    :goto_15
    iput-boolean v8, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mStatusBarIsDeep:Z

    .line 517
    iput-boolean v8, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mFingerPrintIsDeep:Z

    .line 519
    iput-boolean v8, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mBottomIconIsDeep:Z

    .line 521
    :cond_1c
    :goto_16
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mMainHandler:Landroid/os/Handler;

    .line 523
    new-instance v1, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$$ExternalSyntheticLambda0;

    .line 525
    invoke-direct {v1, v7, p0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 527
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 530
    return-void

    .line 533
    :catch_0
    move-exception p0

    .line 534
    const-string v0, "color maps or part deep map parse error: "

    .line 535
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 537
    return-void

    .line 540
    :cond_1d
    :goto_17
    const-string/jumbo p0, "updateColorAndDeep, all color maps or deep map could not be null"

    .line 541
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    return-void
    .line 547
.end method

.method public final updateKeyguardWallpaperRatio(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mMiuiWallpaperManager:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mKeyguardWallpaperRatio:F

    .line 7
    cmpl-float v0, v0, p1

    .line 9
    if-eqz v0, :cond_1

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    const-string/jumbo v1, "updateKeyguardWallpaperRatio:ratio= "

    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ",duration= 0"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 32
    const-string v1, "MiuiKeyguardWallPaperManager"

    .line 33
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iput p1, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mKeyguardWallpaperRatio:F

    .line 38
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mMiuiWallpaperManager:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    .line 40
    invoke-virtual {p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->isServiceReady()Z

    .line 42
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    :try_start_0
    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mService:Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;

    .line 48
    check-cast p0, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub$Proxy;

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 55
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 58
    :try_start_1
    const-string v1, "com.miui.miwallpaper.IMiuiWallpaperManagerService"

    .line 59
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 64
    const-wide/16 v1, 0x0

    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 69
    iget-object p0, p0, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 72
    const/4 p1, 0x0

    .line 74
    const/4 v1, 0x1

    .line 75
    const/16 v2, 0x13

    .line 76
    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :try_start_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 81
    goto :goto_0

    .line 84
    :catchall_0
    move-exception p0

    .line 85
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 86
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 89
    :catchall_1
    move-exception p0

    .line 90
    const-string p1, "MiuiWallpaperManager"

    .line 91
    const-string/jumbo v0, "updateKeyguardWallpaperRatio fail"

    .line 93
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    :cond_1
    :goto_0
    return-void
    .line 99
.end method

.method public final updateKeyguardWallpaperState(ZZ)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, -0x1

    .line 3
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->updateKeyguardWallpaperStateAnim(ZZIZ)V

    .line 4
    return-void
    .line 7
.end method

.method public final updateKeyguardWallpaperStateAnim(ZZIZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mMiuiWallpaperManager:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mKeyguardWallpaperState:Z

    .line 7
    if-ne v0, p1, :cond_1

    .line 9
    if-eqz p4, :cond_3

    .line 11
    :cond_1
    const-string/jumbo p4, "updateKeyguardWallpaperState: "

    .line 13
    const-string v0, ",anim :"

    .line 16
    const-string v1, ",animMode: "

    .line 18
    invoke-static {p4, p1, v0, p2, v1}, Lcom/android/keyguard/MiuiLockPatternChecker$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    move-result-object p4

    .line 23
    const-string v0, "MiuiKeyguardWallPaperManager"

    .line 24
    invoke-static {p4, p3, v0}, Lcom/android/keyguard/AwesomeLockScreen$2$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 26
    iput-boolean p1, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mKeyguardWallpaperState:Z

    .line 29
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mMiuiWallpaperManager:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    .line 31
    invoke-virtual {p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->isServiceReady()Z

    .line 33
    move-result p4

    .line 36
    if-eqz p4, :cond_3

    .line 37
    :try_start_0
    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mService:Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;

    .line 39
    check-cast p0, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub$Proxy;

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 46
    move-result-object p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 49
    :try_start_1
    const-string v0, "com.miui.miwallpaper.IMiuiWallpaperManagerService"

    .line 50
    invoke-virtual {p4, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 52
    const/4 v0, 0x1

    .line 55
    if-eqz p1, :cond_2

    .line 56
    move p1, v0

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const/4 p1, 0x0

    .line 60
    :goto_0
    invoke-virtual {p4, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    invoke-virtual {p4, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    invoke-virtual {p4, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget-object p0, p0, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 70
    const/16 p1, 0x17

    .line 72
    const/4 p2, 0x0

    .line 74
    invoke-interface {p0, p1, p4, p2, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :try_start_2
    invoke-virtual {p4}, Landroid/os/Parcel;->recycle()V

    .line 78
    goto :goto_1

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    invoke-virtual {p4}, Landroid/os/Parcel;->recycle()V

    .line 83
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 86
    :catchall_1
    move-exception p0

    .line 87
    const-string p1, "MiuiWallpaperManager"

    .line 88
    const-string/jumbo p2, "updateKeyguardWallpaperStateAnim fail"

    .line 90
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    :cond_3
    :goto_1
    return-void
    .line 96
.end method
