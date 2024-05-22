.class public final Lcom/android/keyguard/magazine/LockScreenMagazineController$5;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/magazine/LockScreenMagazineController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$5;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onLockScreenMagazinePreViewVisibilityChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$5;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 2
    iput-boolean p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazinePreViewVisible:Z

    .line 4
    return-void
    .line 6
.end method

.method public final onLockWallpaperChange(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/miui/systemui/util/CommonUtil;->isDefaultLockScreenTheme()Z

    .line 2
    move-result p1

    .line 5
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$5;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 6
    iget-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsDefaultLockscreenTheme:Z

    .line 8
    if-eq v0, p1, :cond_0

    .line 10
    iput-boolean p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsDefaultLockscreenTheme:Z

    .line 12
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->updateKeyguardSupportDisplayMagazineState()V

    .line 14
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->initLockScreenMagazinePreRes()V

    .line 17
    :cond_0
    invoke-static {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->-$$Nest$mqueryLockScreenMagazineWallpaperInfo(Lcom/android/keyguard/magazine/LockScreenMagazineController;)V

    .line 20
    const-class p1, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 23
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 28
    check-cast v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 29
    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->isMagazineWallpaper()Z

    .line 31
    move-result v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    new-instance v0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 37
    invoke-direct {v0}, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 42
    invoke-virtual {v0}, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->initExtra()V

    .line 44
    :cond_1
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 47
    if-eqz v0, :cond_3

    .line 49
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 51
    move-result-object p1

    .line 54
    check-cast p1, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 55
    invoke-virtual {p1}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->isMagazineWallpaper()Z

    .line 57
    move-result p1

    .line 60
    if-nez p1, :cond_3

    .line 61
    iget-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mMainRemoteView:Landroid/widget/RemoteViews;

    .line 63
    const/4 v0, 0x0

    .line 65
    if-eqz p1, :cond_2

    .line 66
    iput-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mMainRemoteView:Landroid/widget/RemoteViews;

    .line 68
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mFullScreenRemoteView:Landroid/widget/RemoteViews;

    .line 70
    if-eqz p1, :cond_3

    .line 72
    iput-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mFullScreenRemoteView:Landroid/widget/RemoteViews;

    .line 74
    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->updateLockScreenMagazineWallpaperInfo()V

    .line 76
    return-void
    .line 79
.end method

.method public final onMagazineResourceInited()V
    .locals 3

    .line 1
    const-string v0, "LockScreenMagazineController"

    .line 2
    const-string/jumbo v1, "refresh MagazineInfo after MagazineRes Initialization complete"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$5;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 10
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    new-instance v1, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$9;

    .line 17
    invoke-direct {v1, v0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$9;-><init>(Lcom/android/keyguard/magazine/LockScreenMagazinePreView;)V

    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 22
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    .line 25
    iget-object v1, v0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineController:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 27
    iget-boolean v2, v1, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsDeviceProvisioned:Z

    .line 29
    if-nez v2, :cond_0

    .line 31
    goto :goto_0

    .line 33
    :cond_0
    iget-object v1, v1, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mPreSettingsDeeplink:Ljava/lang/String;

    .line 34
    new-instance v2, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$1;

    .line 36
    invoke-direct {v2, v0, v1}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$1;-><init>(Lcom/android/keyguard/magazine/LockScreenMagazinePreView;Ljava/lang/String;)V

    .line 38
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 41
    const/4 v1, 0x0

    .line 43
    new-array v1, v1, [Ljava/lang/Void;

    .line 44
    invoke-virtual {v2, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 46
    :goto_0
    const-class v0, Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;

    .line 49
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 51
    move-result-object v0

    .line 54
    check-cast v0, Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;

    .line 55
    iget-object v0, v0, Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;->mKeyguardLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;

    .line 57
    invoke-virtual {v0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->inflateLeftView()V

    .line 59
    const-class v0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;

    .line 62
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 64
    move-result-object v0

    .line 67
    check-cast v0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;

    .line 68
    invoke-virtual {v0}, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->updateLeftIcon()V

    .line 70
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->reset()V

    .line 73
    return-void
    .line 76
.end method

.method public final onRegionChanged()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$5;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 2
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->updateKeyguardSupportDisplayMagazineState()V

    .line 4
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->initLockScreenMagazinePreRes()V

    .line 7
    return-void
    .line 10
.end method
