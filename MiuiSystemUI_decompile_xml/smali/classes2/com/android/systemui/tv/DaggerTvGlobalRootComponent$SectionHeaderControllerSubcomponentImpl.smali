.class public final Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;


# instance fields
.field public final clickIntentAction:Ljava/lang/String;

.field public final headerText:Ljava/lang/Integer;

.field public final nodeLabel:Ljava/lang/String;

.field public final sectionHeaderControllerSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;

.field public sectionHeaderNodeControllerImplProvider:Ljavax/inject/Provider;

.field public final tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

.field public final tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;->sectionHeaderControllerSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;

    .line 5
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 7
    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 9
    iput-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;->nodeLabel:Ljava/lang/String;

    .line 11
    iput-object p4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;->headerText:Ljava/lang/Integer;

    .line 13
    iput-object p5, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;->clickIntentAction:Ljava/lang/String;

    .line 15
    invoke-virtual {p0, p3, p4, p5}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;->initialize(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 17
    return-void
    .line 20
.end method


# virtual methods
.method public final getHeaderController()Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;->sectionHeaderNodeControllerImplProvider:Ljavax/inject/Provider;

    .line 2
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    .line 8
    return-object p0
    .line 10
.end method

.method public final getNodeController()Lcom/android/systemui/statusbar/notification/collection/render/NodeController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;->sectionHeaderNodeControllerImplProvider:Ljavax/inject/Provider;

    .line 2
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    .line 8
    return-object p0
    .line 10
.end method

.method public final initialize(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentImpl$SwitchingProvider;

    .line 2
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 4
    iget-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 6
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;->sectionHeaderControllerSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;

    .line 8
    const/4 v1, 0x0

    .line 10
    invoke-direct {p1, p2, p3, v0, v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;I)V

    .line 11
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 14
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;->sectionHeaderNodeControllerImplProvider:Ljavax/inject/Provider;

    .line 18
    return-void
    .line 20
.end method
