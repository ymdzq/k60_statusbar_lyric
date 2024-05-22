.class public final Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl$SwitchingProvider;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final id:I

.field public final keyguardStatusViewComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;

.field public final tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

.field public final tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl$SwitchingProvider;->keyguardStatusViewComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;

    .line 9
    iput p4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl$SwitchingProvider;->id:I

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl$SwitchingProvider;->id:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/android/keyguard/KeyguardSliceViewController;

    .line 6
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl$SwitchingProvider;->keyguardStatusViewComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;

    .line 8
    invoke-virtual {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;->keyguardSliceView()Lcom/android/keyguard/KeyguardSliceView;

    .line 10
    move-result-object v2

    .line 13
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 14
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->controlCenterActivityStarterProvider:Ljavax/inject/Provider;

    .line 16
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 21
    move-object v3, v1

    .line 22
    check-cast v3, Lcom/android/systemui/plugins/ActivityStarter;

    .line 23
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 25
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->configurationControllerImplProvider:Ljavax/inject/Provider;

    .line 27
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 32
    move-object v4, v1

    .line 33
    check-cast v4, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 34
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 36
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->tunerServiceImplProvider:Ljavax/inject/Provider;

    .line 38
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 40
    move-result-object v1

    .line 43
    move-object v5, v1

    .line 44
    check-cast v5, Lcom/android/systemui/tuner/TunerService;

    .line 45
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 47
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 49
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 51
    move-result-object v1

    .line 54
    move-object v6, v1

    .line 55
    check-cast v6, Lcom/android/systemui/dump/DumpManager;

    .line 56
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 58
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideDisplayTrackerProvider:Ljavax/inject/Provider;

    .line 60
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 62
    move-result-object p0

    .line 65
    move-object v7, p0

    .line 66
    check-cast v7, Lcom/android/systemui/settings/DisplayTracker;

    .line 67
    move-object v1, v0

    .line 69
    invoke-direct/range {v1 .. v7}, Lcom/android/keyguard/KeyguardSliceViewController;-><init>(Lcom/android/keyguard/KeyguardSliceView;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/settings/DisplayTracker;)V

    .line 70
    return-object v0

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 74
    iget p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl$SwitchingProvider;->id:I

    .line 76
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(I)V

    .line 78
    throw v0
    .line 81
.end method
