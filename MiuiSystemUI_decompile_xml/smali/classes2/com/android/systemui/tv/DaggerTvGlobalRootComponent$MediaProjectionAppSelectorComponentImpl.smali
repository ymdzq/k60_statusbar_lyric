.class public final Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent;


# instance fields
.field public final activity:Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;

.field public activityTaskManagerLabelLoaderProvider:Ljavax/inject/Provider;

.field public activityTaskManagerThumbnailLoaderProvider:Ljavax/inject/Provider;

.field public bindAppIconLoaderProvider:Ljavax/inject/Provider;

.field public bindIconFactoryProvider:Ljavax/inject/Provider;

.field public bindRecentTaskLabelLoaderProvider:Ljavax/inject/Provider;

.field public bindRecentTaskListProvider:Ljavax/inject/Provider;

.field public bindRecentTaskThumbnailLoaderProvider:Ljavax/inject/Provider;

.field public factoryProvider:Ljavax/inject/Provider;

.field public factoryProvider2:Ljavax/inject/Provider;

.field public hostUserHandleProvider:Ljavax/inject/Provider;

.field public iconLoaderLibAppIconLoaderProvider:Ljavax/inject/Provider;

.field public final mediaProjectionAppSelectorComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;

.field public mediaProjectionAppSelectorControllerProvider:Ljavax/inject/Provider;

.field public mediaProjectionBlockerEmptyStateProvider:Ljavax/inject/Provider;

.field public mediaProjectionRecentsViewControllerProvider:Ljavax/inject/Provider;

.field public provideAppSelectorComponentNameProvider:Ljavax/inject/Provider;

.field public provideCallerPackageNameProvider:Ljavax/inject/Provider;

.field public provideCoroutineScopeProvider:Ljavax/inject/Provider;

.field public final resultHandler:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorResultHandler;

.field public shellRecentTaskListProvider:Ljavax/inject/Provider;

.field public taskPreviewSizeProvider:Ljavax/inject/Provider;

.field public final tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

.field public final tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

.field public final view:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorView;Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorResultHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->mediaProjectionAppSelectorComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;

    .line 5
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 7
    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->view:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorView;

    .line 11
    iput-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->activity:Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;

    .line 13
    iput-object p5, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->resultHandler:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorResultHandler;

    .line 15
    invoke-virtual {p0, p3, p4, p5}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->initialize(Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorView;Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorResultHandler;)V

    .line 17
    return-void
    .line 20
.end method


# virtual methods
.method public final getConfigurationController()Lcom/android/systemui/statusbar/policy/ConfigurationController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->configurationControllerImplProvider:Ljavax/inject/Provider;

    .line 4
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 10
    return-object p0
    .line 12
.end method

.method public final getController()Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->mediaProjectionAppSelectorControllerProvider:Ljavax/inject/Provider;

    .line 2
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;

    .line 8
    return-object p0
    .line 10
.end method

.method public final getEmptyStateProvider()Lcom/android/systemui/mediaprojection/appselector/MediaProjectionBlockerEmptyStateProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->mediaProjectionBlockerEmptyStateProvider:Ljavax/inject/Provider;

    .line 2
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionBlockerEmptyStateProvider;

    .line 8
    return-object p0
    .line 10
.end method

.method public final getHostUserHandle()Landroid/os/UserHandle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->hostUserHandleProvider:Ljavax/inject/Provider;

    .line 2
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Landroid/os/UserHandle;

    .line 8
    return-object p0
    .line 10
.end method

.method public final getPersonalProfileUserHandle()Landroid/os/UserHandle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->personalProfileUserHandle()Landroid/os/UserHandle;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final getRecentsViewController()Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->mediaProjectionRecentsViewControllerProvider:Ljavax/inject/Provider;

    .line 2
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;

    .line 8
    return-object p0
    .line 10
.end method

.method public final initialize(Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorView;Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorResultHandler;)V
    .locals 2

    .line 1
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;

    .line 2
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 4
    iget-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 6
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->mediaProjectionAppSelectorComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;

    .line 8
    const/4 v1, 0x1

    .line 10
    invoke-direct {p1, p2, p3, v0, v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;I)V

    .line 11
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->shellRecentTaskListProvider:Ljavax/inject/Provider;

    .line 14
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 16
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->bindRecentTaskListProvider:Ljavax/inject/Provider;

    .line 20
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;

    .line 22
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 24
    iget-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 26
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->mediaProjectionAppSelectorComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;

    .line 28
    const/4 v1, 0x2

    .line 30
    invoke-direct {p1, p2, p3, v0, v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;I)V

    .line 31
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 34
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->hostUserHandleProvider:Ljavax/inject/Provider;

    .line 38
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;

    .line 40
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 42
    iget-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 44
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->mediaProjectionAppSelectorComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;

    .line 46
    const/4 v1, 0x3

    .line 48
    invoke-direct {p1, p2, p3, v0, v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;I)V

    .line 49
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 52
    move-result-object p1

    .line 55
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->provideCoroutineScopeProvider:Ljavax/inject/Provider;

    .line 56
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;

    .line 58
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 60
    iget-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 62
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->mediaProjectionAppSelectorComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;

    .line 64
    const/4 v1, 0x4

    .line 66
    invoke-direct {p1, p2, p3, v0, v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;I)V

    .line 67
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 70
    move-result-object p1

    .line 73
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->provideAppSelectorComponentNameProvider:Ljavax/inject/Provider;

    .line 74
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;

    .line 76
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 78
    iget-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 80
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->mediaProjectionAppSelectorComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;

    .line 82
    const/4 v1, 0x5

    .line 84
    invoke-direct {p1, p2, p3, v0, v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;I)V

    .line 85
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 88
    move-result-object p1

    .line 91
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->provideCallerPackageNameProvider:Ljavax/inject/Provider;

    .line 92
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;

    .line 94
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 96
    iget-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 98
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->mediaProjectionAppSelectorComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;

    .line 100
    const/4 v1, 0x0

    .line 102
    invoke-direct {p1, p2, p3, v0, v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;I)V

    .line 103
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 106
    move-result-object p1

    .line 109
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->mediaProjectionAppSelectorControllerProvider:Ljavax/inject/Provider;

    .line 110
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;

    .line 112
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 114
    iget-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 116
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->mediaProjectionAppSelectorComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;

    .line 118
    const/16 v1, 0xa

    .line 120
    invoke-direct {p1, p2, p3, v0, v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;I)V

    .line 122
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->bindIconFactoryProvider:Ljavax/inject/Provider;

    .line 125
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;

    .line 127
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 129
    iget-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 131
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->mediaProjectionAppSelectorComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;

    .line 133
    const/16 v1, 0x9

    .line 135
    invoke-direct {p1, p2, p3, v0, v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;I)V

    .line 137
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->iconLoaderLibAppIconLoaderProvider:Ljavax/inject/Provider;

    .line 140
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 142
    move-result-object p1

    .line 145
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->bindAppIconLoaderProvider:Ljavax/inject/Provider;

    .line 146
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;

    .line 148
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 150
    iget-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 152
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->mediaProjectionAppSelectorComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;

    .line 154
    const/16 v1, 0xb

    .line 156
    invoke-direct {p1, p2, p3, v0, v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;I)V

    .line 158
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->activityTaskManagerThumbnailLoaderProvider:Ljavax/inject/Provider;

    .line 161
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 163
    move-result-object p1

    .line 166
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->bindRecentTaskThumbnailLoaderProvider:Ljavax/inject/Provider;

    .line 167
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;

    .line 169
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 171
    iget-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 173
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->mediaProjectionAppSelectorComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;

    .line 175
    const/16 v1, 0xc

    .line 177
    invoke-direct {p1, p2, p3, v0, v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;I)V

    .line 179
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->activityTaskManagerLabelLoaderProvider:Ljavax/inject/Provider;

    .line 182
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 184
    move-result-object p1

    .line 187
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->bindRecentTaskLabelLoaderProvider:Ljavax/inject/Provider;

    .line 188
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;

    .line 190
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 192
    iget-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 194
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->mediaProjectionAppSelectorComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;

    .line 196
    const/16 v1, 0xd

    .line 198
    invoke-direct {p1, p2, p3, v0, v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;I)V

    .line 200
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 203
    move-result-object p1

    .line 206
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->taskPreviewSizeProvider:Ljavax/inject/Provider;

    .line 207
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;

    .line 209
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 211
    iget-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 213
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->mediaProjectionAppSelectorComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;

    .line 215
    const/16 v1, 0x8

    .line 217
    invoke-direct {p1, p2, p3, v0, v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;I)V

    .line 219
    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 222
    move-result-object p1

    .line 225
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->factoryProvider:Ljavax/inject/Provider;

    .line 226
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;

    .line 228
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 230
    iget-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 232
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->mediaProjectionAppSelectorComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;

    .line 234
    const/4 v1, 0x7

    .line 236
    invoke-direct {p1, p2, p3, v0, v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;I)V

    .line 237
    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 240
    move-result-object p1

    .line 243
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->factoryProvider2:Ljavax/inject/Provider;

    .line 244
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;

    .line 246
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 248
    iget-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 250
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->mediaProjectionAppSelectorComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;

    .line 252
    const/4 v1, 0x6

    .line 254
    invoke-direct {p1, p2, p3, v0, v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;I)V

    .line 255
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 258
    move-result-object p1

    .line 261
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->mediaProjectionRecentsViewControllerProvider:Ljavax/inject/Provider;

    .line 262
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;

    .line 264
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 266
    iget-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 268
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->mediaProjectionAppSelectorComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;

    .line 270
    const/16 v1, 0xe

    .line 272
    invoke-direct {p1, p2, p3, v0, v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;I)V

    .line 274
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 277
    move-result-object p1

    .line 280
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->mediaProjectionBlockerEmptyStateProvider:Ljavax/inject/Provider;

    .line 281
    return-void
    .line 283
.end method
