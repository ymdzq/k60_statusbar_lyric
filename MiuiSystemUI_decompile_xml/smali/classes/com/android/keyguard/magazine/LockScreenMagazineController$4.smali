.class public final Lcom/android/keyguard/magazine/LockScreenMagazineController$4;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/magazine/LockScreenMagazineController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$4;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onDeviceProvisioned()V
    .locals 3

    .line 1
    sget-object v0, Lcom/miui/utils/configs/MiuiConfigs;->CUSTOMIZED_REGION:Ljava/lang/String;

    .line 2
    const-string/jumbo v0, "ro.com.miui.rsa.feature"

    .line 4
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 10
    const-string v1, ""

    .line 11
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    move-result v0

    .line 16
    xor-int/lit8 v0, v0, 0x1

    .line 17
    sput-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_RSA4_FROM_WC:Z

    .line 19
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$4;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 21
    iget-boolean v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mHasAttachedToWindow:Z

    .line 23
    if-eqz v1, :cond_0

    .line 25
    if-eqz v0, :cond_0

    .line 27
    const-class v0, Lcom/miui/interfaces/SettingsObserver;

    .line 29
    invoke-static {v0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 34
    check-cast v1, Lcom/miui/interfaces/SettingsObserver;

    .line 35
    iget-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->lockScreenMagazineCloseCallback:Lcom/android/keyguard/magazine/LockScreenMagazineController$2;

    .line 37
    invoke-virtual {v1, v2}, Lcom/miui/interfaces/SettingsObserver;->removeCallback(Lcom/miui/interfaces/SettingsObserver$Callback;)V

    .line 39
    invoke-static {v0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    move-result-object v0

    .line 45
    check-cast v0, Lcom/miui/interfaces/SettingsObserver;

    .line 46
    const-string v1, "lock_wallpaper_provider_authority"

    .line 48
    filled-new-array {v1}, [Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 53
    invoke-virtual {v0, v2, v1}, Lcom/miui/interfaces/SettingsObserver;->addCallback(Lcom/miui/interfaces/SettingsObserver$Callback;[Ljava/lang/String;)V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 57
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    .line 59
    iput-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsDeviceProvisioned:Z

    .line 61
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->updateKeyguardSupportDisplayMagazineState()V

    .line 63
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->initLockScreenMagazinePreRes()V

    .line 66
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    .line 69
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineController:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 71
    iget-boolean v1, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsDeviceProvisioned:Z

    .line 73
    if-nez v1, :cond_1

    .line 75
    goto :goto_0

    .line 77
    :cond_1
    iget-object v0, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mPreSettingsDeeplink:Ljava/lang/String;

    .line 78
    new-instance v1, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$1;

    .line 80
    invoke-direct {v1, p0, v0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$1;-><init>(Lcom/android/keyguard/magazine/LockScreenMagazinePreView;Ljava/lang/String;)V

    .line 82
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 85
    const/4 v0, 0x0

    .line 87
    new-array v0, v0, [Ljava/lang/Void;

    .line 88
    invoke-virtual {v1, p0, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 90
    :goto_0
    return-void
    .line 93
.end method

.method public final onKeyguardVisibilityChanged(Z)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$4;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 2
    iget-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mKeyguardShowing:Z

    .line 4
    if-eq p1, v0, :cond_1

    .line 6
    iput-boolean p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mKeyguardShowing:Z

    .line 8
    if-eqz p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 12
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 14
    move-result v0

    .line 17
    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    .line 18
    move-result p1

    .line 21
    iput-boolean p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mUnlockWithFingerprintPossible:Z

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 24
    move-result-wide v0

    .line 27
    iget-wide v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mInitPreResElapsedRealtime:J

    .line 28
    sub-long v2, v0, v2

    .line 30
    const-wide/32 v4, 0xa4cb800

    .line 32
    cmp-long p1, v2, v4

    .line 35
    if-lez p1, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->initLockScreenMagazinePreRes()V

    .line 39
    iput-wide v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mInitPreResElapsedRealtime:J

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->reset()V

    .line 44
    :cond_1
    return-void
    .line 47
.end method

.method public final onUserSwitchComplete(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$4;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 2
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->updateLockScreenMagazineWallpaperInfo()V

    .line 4
    return-void
    .line 7
.end method

.method public final onUserUnlocked()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$4;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 2
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->updateKeyguardSupportDisplayMagazineState()V

    .line 4
    invoke-static {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->-$$Nest$mqueryLockScreenMagazineWallpaperInfo(Lcom/android/keyguard/magazine/LockScreenMagazineController;)V

    .line 7
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->initLockScreenMagazinePreRes()V

    .line 10
    return-void
    .line 13
.end method
