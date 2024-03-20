.class public final Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static mIsWallpaperastarget:Z


# instance fields
.field public final mCallbacks:Ljava/util/ArrayList;

.field public mDeclaredMethod:Ljava/lang/reflect/Method;

.field public volatile mFastUnlock:Z

.field public volatile mFastUnlockInScreenOff:Z

.field public final mKeyguardViewMediator:Lmiui/stub/MiuiStub$11;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->mFastUnlock:Z

    .line 6
    iput-boolean v0, p0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->mFastUnlockInScreenOff:Z

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->mCallbacks:Ljava/util/ArrayList;

    .line 15
    const-class v0, Lmiui/stub/MiuiStub$1;

    .line 17
    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Lmiui/stub/MiuiStub$1;

    .line 23
    invoke-virtual {v0}, Lmiui/stub/MiuiStub$1;->getSystemUIContext()Landroid/content/Context;

    .line 25
    move-result-object v0

    .line 28
    const-string v1, "power"

    .line 29
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 34
    check-cast v0, Landroid/os/PowerManager;

    .line 35
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->mPowerManager:Landroid/os/PowerManager;

    .line 37
    const-class v0, Lmiui/stub/MiuiStub$11;

    .line 39
    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 41
    move-result-object v0

    .line 44
    check-cast v0, Lmiui/stub/MiuiStub$11;

    .line 45
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->mKeyguardViewMediator:Lmiui/stub/MiuiStub$11;

    .line 47
    return-void
    .line 49
.end method

.method public static hideKeyguardWallpaper()V
    .locals 2

    .line 1
    const-class v0, Lmiui/stub/MiuiStub$18;

    .line 2
    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lmiui/stub/MiuiStub$18;

    .line 8
    iget-object v0, v0, Lmiui/stub/MiuiStub$18;->this$0:Lmiui/stub/MiuiStub;

    .line 10
    iget-object v0, v0, Lmiui/stub/MiuiStub;->mMiuiModuleProvider:Lmiui/stub/MiuiStub$MiuiModuleProvider;

    .line 12
    iget-object v0, v0, Lmiui/stub/MiuiStub$MiuiModuleProvider;->mKeyguardViewMediatorInjector:Ldagger/Lazy;

    .line 14
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/keyguard/injector/KeyguardViewMediatorInjector;

    .line 20
    iget-object v0, v0, Lcom/android/keyguard/injector/KeyguardViewMediatorInjector;->mContext:Landroid/content/Context;

    .line 22
    invoke-static {v0}, Lcom/miui/systemui/util/CommonUtil;->isTopActivityLauncher(Landroid/content/Context;)Z

    .line 24
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    const-class v1, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 30
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 35
    check-cast v1, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 36
    invoke-virtual {v1}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->hideKeyguardWallpaper()V

    .line 38
    :cond_0
    const-class v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 41
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 43
    move-result-object v1

    .line 46
    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 47
    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 49
    if-nez v1, :cond_1

    .line 51
    invoke-static {v0}, Lcom/miui/systemui/util/CommonUtil;->isTopActivityLauncher(Landroid/content/Context;)Z

    .line 53
    move-result v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    :cond_1
    invoke-static {}, Lcom/android/keyguard/utils/MiuiKeyguardUtils;->isDefaultKeyguardNotTheme()Z

    .line 59
    move-result v0

    .line 62
    if-nez v0, :cond_3

    .line 63
    :cond_2
    const-class v0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;

    .line 65
    invoke-static {v0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 67
    move-result-object v0

    .line 70
    check-cast v0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;

    .line 71
    const/4 v1, 0x0

    .line 73
    invoke-virtual {v0, v1}, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->setWallpaperAsTarget(Z)V

    .line 74
    :cond_3
    return-void
    .line 77
.end method


# virtual methods
.method public final hideKeyguardFast()V
    .locals 3

    .line 1
    const-class v0, Lmiui/stub/MiuiStub$18;

    .line 2
    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lmiui/stub/MiuiStub$18;

    .line 8
    iget-object v0, v0, Lmiui/stub/MiuiStub$18;->this$0:Lmiui/stub/MiuiStub;

    .line 10
    iget-object v0, v0, Lmiui/stub/MiuiStub;->mMiuiModuleProvider:Lmiui/stub/MiuiStub$MiuiModuleProvider;

    .line 12
    iget-object v0, v0, Lmiui/stub/MiuiStub$MiuiModuleProvider;->mKeyguardViewMediatorInjector:Ldagger/Lazy;

    .line 14
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/keyguard/injector/KeyguardViewMediatorInjector;

    .line 20
    invoke-virtual {v0}, Lcom/android/keyguard/injector/KeyguardViewMediatorInjector;->keyguardGoingAway()V

    .line 22
    const-class v0, Lmiui/stub/MiuiStub$9;

    .line 25
    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 30
    check-cast v0, Lmiui/stub/MiuiStub$9;

    .line 31
    iget-object v0, v0, Lmiui/stub/MiuiStub$9;->this$0:Lmiui/stub/MiuiStub;

    .line 33
    iget-object v0, v0, Lmiui/stub/MiuiStub;->mSysUIProvider:Lmiui/stub/MiuiStub$SysUIProvider;

    .line 35
    iget-object v0, v0, Lmiui/stub/MiuiStub$SysUIProvider;->mCentralSurfaces:Ldagger/Lazy;

    .line 37
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 42
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 43
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 45
    iget v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    .line 47
    const/4 v2, 0x1

    .line 49
    if-ne v1, v2, :cond_0

    .line 50
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 52
    check-cast v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 54
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 56
    iput-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardTransparent:Z

    .line 58
    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 60
    :cond_0
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->mKeyguardViewMediator:Lmiui/stub/MiuiStub$11;

    .line 63
    iget-object p0, p0, Lmiui/stub/MiuiStub$11;->this$0:Lmiui/stub/MiuiStub;

    .line 65
    iget-object p0, p0, Lmiui/stub/MiuiStub;->mSysUIProvider:Lmiui/stub/MiuiStub$SysUIProvider;

    .line 67
    iget-object p0, p0, Lmiui/stub/MiuiStub$SysUIProvider;->mKeyguardViewMediator:Ldagger/Lazy;

    .line 69
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 71
    move-result-object p0

    .line 74
    check-cast p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 75
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/KeyguardViewMediator$12;

    .line 77
    const/16 v0, 0x14

    .line 79
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 81
    const-wide/16 v1, 0x3e8

    .line 84
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 86
    return-void
    .line 89
.end method

.method public final onFinishFashUnlock()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->mCallbacks:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    move-result v2

    .line 8
    if-ge v0, v2, :cond_4

    .line 9
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 14
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 15
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 20
    check-cast v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$7;

    .line 21
    if-eqz v1, :cond_3

    .line 23
    iget-object v1, v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$7;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 25
    invoke-virtual {v1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->isUnlockByGxzw()Z

    .line 27
    move-result v2

    .line 30
    if-nez v2, :cond_0

    .line 31
    goto :goto_1

    .line 33
    :cond_0
    iget-object v1, v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mMiuiGxzwIconView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;

    .line 34
    iget-object v2, v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mHighlightView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwHightlightContainer;

    .line 36
    const/16 v3, 0x8

    .line 38
    if-eqz v2, :cond_1

    .line 40
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 42
    :cond_1
    iget-boolean v2, v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mTouchDown:Z

    .line 45
    if-nez v2, :cond_2

    .line 47
    iget-object v1, v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mMiuiGxzwAnimView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;

    .line 49
    iget-object v2, v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;->mMainHandler:Landroid/os/Handler;

    .line 51
    new-instance v4, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda4;

    .line 53
    invoke-direct {v4, v1, v3}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda4;-><init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;I)V

    .line 55
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    :cond_2
    const-string v1, "MiuiGxzwManager"

    .line 61
    const-string v2, "onFinishFastUnlock"

    .line 63
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 68
    goto :goto_0

    .line 70
    :cond_4
    return-void
    .line 71
.end method

.method public final onStartFastUnlock()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->mCallbacks:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    move-result v2

    .line 8
    if-ge v0, v2, :cond_2

    .line 9
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 14
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 15
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 20
    check-cast v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$7;

    .line 21
    if-eqz v1, :cond_1

    .line 23
    iget-object v1, v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$7;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 25
    invoke-virtual {v1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->isUnlockByGxzw()Z

    .line 27
    move-result v2

    .line 30
    if-nez v2, :cond_0

    .line 31
    goto :goto_1

    .line 33
    :cond_0
    const-string v2, "MiuiGxzwManager"

    .line 34
    const-string v3, "onStartFastUnlock"

    .line 36
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v1, v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mMiuiGxzwOverlayView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;

    .line 41
    if-eqz v1, :cond_1

    .line 43
    invoke-virtual {v1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->restoreScreenEffect()V

    .line 45
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 48
    goto :goto_0

    .line 50
    :cond_2
    return-void
    .line 51
.end method

.method public final setWallpaperAsTarget(Z)V
    .locals 7

    .line 1
    const-string v0, "MiuiFastUnlockController"

    .line 2
    const-string/jumbo v1, "setWallPaperAsTarget asTarget="

    .line 4
    :try_start_0
    sget-boolean v2, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->mIsWallpaperastarget:Z

    .line 7
    if-ne p1, v2, :cond_0

    .line 9
    return-void

    .line 11
    :cond_0
    sput-boolean p1, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->mIsWallpaperastarget:Z

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->mWindowManager:Landroid/view/IWindowManager;

    .line 29
    const/4 v2, 0x0

    .line 31
    const/4 v3, 0x1

    .line 32
    if-nez v1, :cond_1

    .line 33
    const-string/jumbo v1, "window"

    .line 35
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 38
    move-result-object v1

    .line 41
    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    .line 42
    move-result-object v1

    .line 45
    iput-object v1, p0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->mWindowManager:Landroid/view/IWindowManager;

    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    move-result-object v1

    .line 51
    const-string/jumbo v4, "setWallpaperAsTarget"

    .line 52
    new-array v5, v3, [Ljava/lang/Class;

    .line 55
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 57
    aput-object v6, v5, v2

    .line 59
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 61
    move-result-object v1

    .line 64
    iput-object v1, p0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->mDeclaredMethod:Ljava/lang/reflect/Method;

    .line 65
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->mDeclaredMethod:Ljava/lang/reflect/Method;

    .line 70
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->mWindowManager:Landroid/view/IWindowManager;

    .line 72
    new-array v3, v3, [Ljava/lang/Object;

    .line 74
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 76
    move-result-object p1

    .line 79
    aput-object p1, v3, v2

    .line 80
    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    goto :goto_0

    .line 85
    :catch_0
    const-string p0, "no window manager to set wallpaper target"

    .line 86
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_0
    return-void
    .line 91
.end method

.method public final wakeupIfNeed()V
    .locals 4

    .line 1
    const-class v0, Lmiui/stub/MiuiStub$3;

    .line 2
    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lmiui/stub/MiuiStub$3;

    .line 8
    invoke-virtual {v0}, Lmiui/stub/MiuiStub$3;->isDeviceInteractive()Z

    .line 10
    move-result v0

    .line 13
    if-nez v0, :cond_3

    .line 14
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->mPowerManager:Landroid/os/PowerManager;

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 18
    move-result-wide v1

    .line 21
    const-string v3, "android.policy:FINGERPRINT"

    .line 22
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 24
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->mKeyguardViewMediator:Lmiui/stub/MiuiStub$11;

    .line 27
    iget-object p0, p0, Lmiui/stub/MiuiStub$11;->this$0:Lmiui/stub/MiuiStub;

    .line 29
    iget-object p0, p0, Lmiui/stub/MiuiStub;->mSysUIProvider:Lmiui/stub/MiuiStub$SysUIProvider;

    .line 31
    iget-object p0, p0, Lmiui/stub/MiuiStub$SysUIProvider;->mKeyguardViewMediator:Ldagger/Lazy;

    .line 33
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 35
    move-result-object p0

    .line 38
    check-cast p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    const-class p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 44
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 46
    move-result-object v0

    .line 49
    check-cast v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 50
    iget-object v0, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mPanelViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 52
    const/4 v1, 0x0

    .line 54
    if-nez v0, :cond_0

    .line 55
    move-object v0, v1

    .line 57
    :cond_0
    iget-object v0, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mDeductedImageView:Landroid/widget/ImageView;

    .line 58
    if-eqz v0, :cond_2

    .line 60
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 62
    move-result-object p0

    .line 65
    check-cast p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 66
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mPanelViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 68
    if-nez p0, :cond_1

    .line 70
    goto :goto_0

    .line 72
    :cond_1
    move-object v1, p0

    .line 73
    :goto_0
    iget-object p0, v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mDeductedImageView:Landroid/widget/ImageView;

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 76
    move-result-object p0

    .line 79
    const/high16 v0, -0x40800000    # -1.0f

    .line 80
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->setWallpaperBlack(F)V

    .line 82
    :cond_2
    new-instance p0, Landroid/view/SurfaceControl$Transaction;

    .line 85
    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 87
    const/4 v0, 0x0

    .line 90
    invoke-virtual {p0, v0}, Landroid/view/SurfaceControl$Transaction;->enableWallPaperAnim(Z)Landroid/view/SurfaceControl$Transaction;

    .line 91
    new-instance v0, Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 94
    const/4 v1, 0x2

    .line 96
    new-array v1, v1, [F

    .line 97
    fill-array-data v1, :array_0

    .line 99
    const/4 v2, -0x2

    .line 102
    invoke-direct {v0, v2, v1}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    .line 103
    const-string v1, "WallpaperParam"

    .line 106
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 108
    move-result-object v1

    .line 111
    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 112
    move-result-object v1

    .line 115
    const/4 v2, 0x0

    .line 116
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 117
    move-result-object v2

    .line 120
    new-instance v3, Lmiuix/animation/base/AnimConfig;

    .line 121
    invoke-direct {v3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 123
    invoke-virtual {v3, v0}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 126
    move-result-object v0

    .line 129
    new-instance v3, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController$1;

    .line 130
    invoke-direct {v3, p0}, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController$1;-><init>(Landroid/view/SurfaceControl$Transaction;)V

    .line 132
    filled-new-array {v3}, [Lmiuix/animation/listener/TransitionListener;

    .line 135
    move-result-object p0

    .line 138
    invoke-virtual {v0, p0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 139
    move-result-object p0

    .line 142
    const-string/jumbo v0, "wallpaperBlack"

    .line 143
    filled-new-array {v0, v2, p0}, [Ljava/lang/Object;

    .line 146
    move-result-object p0

    .line 149
    invoke-interface {v1, p0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 150
    :cond_3
    return-void

    .line 153
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3eb33333    # 0.35f
    .end array-data
    .line 154
.end method
