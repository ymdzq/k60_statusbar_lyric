.class public final Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/navigationbar/NavigationBarComponent;


# instance fields
.field public final context:Landroid/content/Context;

.field public final navigationBarComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;

.field public navigationBarProvider:Ljavax/inject/Provider;

.field public navigationBarTransitionsProvider:Ljavax/inject/Provider;

.field public provideLayoutInflaterProvider:Ljavax/inject/Provider;

.field public provideNavigationBarFrameProvider:Ljavax/inject/Provider;

.field public provideNavigationBarviewProvider:Ljavax/inject/Provider;

.field public provideWindowManagerProvider:Ljavax/inject/Provider;

.field public final savedState:Landroid/os/Bundle;

.field public final tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

.field public final tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->navigationBarComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;

    .line 5
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 7
    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 9
    iput-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->context:Landroid/content/Context;

    .line 11
    iput-object p4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->savedState:Landroid/os/Bundle;

    .line 13
    invoke-virtual {p0, p3, p4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->initialize(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 15
    return-void
    .line 18
.end method


# virtual methods
.method public final autoHideControllerFactory()Lcom/android/systemui/statusbar/phone/AutoHideController$Factory;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/phone/AutoHideController$Factory;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 4
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 6
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 11
    check-cast v1, Landroid/os/Handler;

    .line 12
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 14
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideIWindowManagerProvider:Ljavax/inject/Provider;

    .line 16
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 21
    check-cast p0, Landroid/view/IWindowManager;

    .line 22
    invoke-direct {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/AutoHideController$Factory;-><init>(Landroid/os/Handler;Landroid/view/IWindowManager;)V

    .line 24
    return-object v0
    .line 27
.end method

.method public final deadZone()Lcom/android/systemui/navigationbar/buttons/DeadZone;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/navigationbar/buttons/DeadZone;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->provideNavigationBarviewProvider:Ljavax/inject/Provider;

    .line 4
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 10
    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/buttons/DeadZone;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;)V

    .line 12
    return-object v0
    .line 15
.end method

.method public final getNavigationBar()Lcom/android/systemui/navigationbar/NavigationBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->navigationBarProvider:Ljavax/inject/Provider;

    .line 2
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBar;

    .line 8
    return-object p0
    .line 10
.end method

.method public final initialize(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;

    .line 2
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 4
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 6
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->navigationBarComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;

    .line 8
    const/4 v2, 0x2

    .line 10
    invoke-direct {p1, p2, v0, v1, v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;I)V

    .line 11
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 14
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->provideLayoutInflaterProvider:Ljavax/inject/Provider;

    .line 18
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;

    .line 20
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 22
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 24
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->navigationBarComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;

    .line 26
    const/4 v2, 0x3

    .line 28
    invoke-direct {p1, p2, v0, v1, v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;I)V

    .line 29
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 32
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->provideNavigationBarFrameProvider:Ljavax/inject/Provider;

    .line 36
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;

    .line 38
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 40
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 42
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->navigationBarComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;

    .line 44
    const/4 v2, 0x1

    .line 46
    invoke-direct {p1, p2, v0, v1, v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;I)V

    .line 47
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 50
    move-result-object p1

    .line 53
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->provideNavigationBarviewProvider:Ljavax/inject/Provider;

    .line 54
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;

    .line 56
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 58
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 60
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->navigationBarComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;

    .line 62
    const/4 v2, 0x4

    .line 64
    invoke-direct {p1, p2, v0, v1, v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;I)V

    .line 65
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 68
    move-result-object p1

    .line 71
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->provideWindowManagerProvider:Ljavax/inject/Provider;

    .line 72
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;

    .line 74
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 76
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 78
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->navigationBarComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;

    .line 80
    const/4 v2, 0x5

    .line 82
    invoke-direct {p1, p2, v0, v1, v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;I)V

    .line 83
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 86
    move-result-object p1

    .line 89
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->navigationBarTransitionsProvider:Ljavax/inject/Provider;

    .line 90
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;

    .line 92
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 94
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 96
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->navigationBarComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;

    .line 98
    const/4 v2, 0x0

    .line 100
    invoke-direct {p1, p2, v0, v1, v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;I)V

    .line 101
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 104
    move-result-object p1

    .line 107
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->navigationBarProvider:Ljavax/inject/Provider;

    .line 108
    return-void
    .line 110
.end method

.method public final lightBarControllerFactory()Lcom/android/systemui/statusbar/phone/LightBarController$Factory;
    .locals 8

    .line 1
    new-instance v7, Lcom/android/systemui/statusbar/phone/LightBarController$Factory;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 4
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->darkIconDispatcherImplProvider:Ljavax/inject/Provider;

    .line 6
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 11
    move-object v1, v0

    .line 12
    check-cast v1, Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 13
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 15
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBatteryControllerProvider:Ljavax/inject/Provider;

    .line 17
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 22
    move-object v2, v0

    .line 23
    check-cast v2, Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 24
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 26
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->navigationModeControllerProvider:Ljavax/inject/Provider;

    .line 28
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 33
    move-object v3, v0

    .line 34
    check-cast v3, Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 35
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 37
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->featureFlagsReleaseProvider:Ljavax/inject/Provider;

    .line 39
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 41
    move-result-object v0

    .line 44
    move-object v4, v0

    .line 45
    check-cast v4, Lcom/android/systemui/flags/FeatureFlags;

    .line 46
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 48
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 50
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 52
    move-result-object v0

    .line 55
    move-object v5, v0

    .line 56
    check-cast v5, Lcom/android/systemui/dump/DumpManager;

    .line 57
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 59
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideDisplayTrackerProvider:Ljavax/inject/Provider;

    .line 61
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 63
    move-result-object p0

    .line 66
    move-object v6, p0

    .line 67
    check-cast v6, Lcom/android/systemui/settings/DisplayTracker;

    .line 68
    move-object v0, v7

    .line 70
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/LightBarController$Factory;-><init>(Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/settings/DisplayTracker;)V

    .line 71
    return-object v7
    .line 74
.end method
