.class public final Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/qs/dagger/MiuiQSFragmentComponent;


# instance fields
.field public miuiQSContainerControllerProvider:Ljavax/inject/Provider;

.field public miuiQSCustomizerControllerProvider:Ljavax/inject/Provider;

.field public final miuiQSFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl;

.field public miuiTileAdapterProvider:Ljavax/inject/Provider;

.field public miuiTileQueryHelperProvider:Ljavax/inject/Provider;

.field public qSFooterDataUsageControllerProvider:Ljavax/inject/Provider;

.field public final qsFragment:Lcom/android/systemui/qs/MiuiQSFragment;

.field public final tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

.field public final tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/qs/MiuiQSFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl;->miuiQSFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl;

    .line 5
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 7
    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 9
    iput-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl;->qsFragment:Lcom/android/systemui/qs/MiuiQSFragment;

    .line 11
    invoke-virtual {p0, p3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl;->initialize(Lcom/android/systemui/qs/MiuiQSFragment;)V

    .line 13
    return-void
    .line 16
.end method


# virtual methods
.method public final getQsContainerController()Lcom/android/systemui/qs/MiuiQSContainerController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl;->miuiQSContainerControllerProvider:Ljavax/inject/Provider;

    .line 2
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/qs/MiuiQSContainerController;

    .line 8
    return-object p0
    .line 10
.end method

.method public final getQsCustomizerController()Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl;->miuiQSCustomizerControllerProvider:Ljavax/inject/Provider;

    .line 2
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;

    .line 8
    return-object p0
    .line 10
.end method

.method public final getQsFooterDataUsageController()Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl;->qSFooterDataUsageControllerProvider:Ljavax/inject/Provider;

    .line 2
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;

    .line 8
    return-object p0
    .line 10
.end method

.method public final initialize(Lcom/android/systemui/qs/MiuiQSFragment;)V
    .locals 4

    .line 1
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl$SwitchingProvider;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 4
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 6
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl;->miuiQSFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl;

    .line 8
    const/4 v3, 0x1

    .line 10
    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl;I)V

    .line 11
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 14
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl;->qSFooterDataUsageControllerProvider:Ljavax/inject/Provider;

    .line 18
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl$SwitchingProvider;

    .line 20
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 22
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 24
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl;->miuiQSFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl;

    .line 26
    const/4 v3, 0x0

    .line 28
    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl;I)V

    .line 29
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 32
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl;->miuiQSContainerControllerProvider:Ljavax/inject/Provider;

    .line 36
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl$SwitchingProvider;

    .line 38
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 40
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 42
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl;->miuiQSFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl;

    .line 44
    const/4 v3, 0x3

    .line 46
    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl;I)V

    .line 47
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 50
    move-result-object p1

    .line 53
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl;->miuiTileAdapterProvider:Ljavax/inject/Provider;

    .line 54
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl$SwitchingProvider;

    .line 56
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 58
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 60
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl;->miuiQSFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl;

    .line 62
    const/4 v3, 0x4

    .line 64
    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl;I)V

    .line 65
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 68
    move-result-object p1

    .line 71
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl;->miuiTileQueryHelperProvider:Ljavax/inject/Provider;

    .line 72
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl$SwitchingProvider;

    .line 74
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 76
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 78
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl;->miuiQSFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl;

    .line 80
    const/4 v3, 0x2

    .line 82
    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl;I)V

    .line 83
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 86
    move-result-object p1

    .line 89
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl;->miuiQSCustomizerControllerProvider:Ljavax/inject/Provider;

    .line 90
    return-void
    .line 92
.end method

.method public final miuiQSContainer()Lcom/android/systemui/qs/MiuiQSContainer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl;->rootViewView()Landroid/view/View;

    .line 2
    move-result-object p0

    .line 5
    const v0, 0x7f0a076e    # @id/quick_settings_container

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object p0

    .line 12
    check-cast p0, Lcom/android/systemui/qs/MiuiQSContainer;

    .line 13
    return-object p0
    .line 15
.end method

.method public final miuiQSCustomizer()Lcom/android/systemui/qs/customize/MiuiQSCustomizer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl;->miuiQSContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 2
    move-result-object p0

    .line 5
    const v0, 0x7f0a0756    # @id/qs_customize

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object p0

    .line 12
    check-cast p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    .line 13
    return-object p0
    .line 15
.end method

.method public final namedRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl;->miuiQSCustomizer()Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    .line 2
    move-result-object p0

    .line 5
    const v0, 0x102000a    # @android:id/list

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object p0

    .line 12
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    return-object p0
    .line 15
.end method

.method public final qSFooterDataUsage()Lcom/android/systemui/qs/datausage/QSFooterDataUsage;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl;->miuiQSContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 2
    move-result-object p0

    .line 5
    const v0, 0x7f0a0760    # @id/qs_footer_data_usage

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object p0

    .line 12
    check-cast p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsage;

    .line 13
    return-object p0
    .line 15
.end method

.method public final rootViewView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$MiuiQSFragmentComponentImpl;->qsFragment:Lcom/android/systemui/qs/MiuiQSFragment;

    .line 2
    sget v0, Lcom/android/systemui/qs/dagger/MiuiQSFragmentModule;->$r8$clinit:I

    .line 4
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    .line 6
    move-result-object p0

    .line 9
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 10
    return-object p0
    .line 13
.end method
