.class public final Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentImpl$SwitchingProvider;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final id:I

.field public final sectionHeaderControllerSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;

.field public final tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

.field public final tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentImpl$SwitchingProvider;->sectionHeaderControllerSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;

    .line 9
    iput p4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentImpl$SwitchingProvider;->id:I

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentImpl$SwitchingProvider;->id:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;

    .line 6
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentImpl$SwitchingProvider;->sectionHeaderControllerSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;

    .line 8
    iget-object v2, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;->nodeLabel:Ljava/lang/String;

    .line 10
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 12
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->providerLayoutInflaterProvider:Ljavax/inject/Provider;

    .line 14
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 19
    move-object v3, v1

    .line 20
    check-cast v3, Landroid/view/LayoutInflater;

    .line 21
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentImpl$SwitchingProvider;->sectionHeaderControllerSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;

    .line 23
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;->headerText:Ljava/lang/Integer;

    .line 25
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 27
    move-result v4

    .line 30
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 31
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->controlCenterActivityStarterProvider:Ljavax/inject/Provider;

    .line 33
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 38
    move-object v5, v1

    .line 39
    check-cast v5, Lcom/android/systemui/plugins/ActivityStarter;

    .line 40
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentImpl$SwitchingProvider;->sectionHeaderControllerSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;

    .line 42
    iget-object v6, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;->clickIntentAction:Ljava/lang/String;

    .line 44
    move-object v1, v0

    .line 46
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;-><init>(Ljava/lang/String;Landroid/view/LayoutInflater;ILcom/android/systemui/plugins/ActivityStarter;Ljava/lang/String;)V

    .line 47
    return-object v0

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 51
    iget p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentImpl$SwitchingProvider;->id:I

    .line 53
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(I)V

    .line 55
    throw v0
    .line 58
.end method
