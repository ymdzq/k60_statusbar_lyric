.class public final Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$ComplicationViewModelComponentImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/complication/dagger/ComplicationViewModelComponent;


# instance fields
.field public final cascd_ComplicationComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$cascd_ComplicationComponentImpl;

.field public final complication:Lcom/android/systemui/complication/Complication;

.field public final complicationViewModelComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$ComplicationViewModelComponentImpl;

.field public final id:Lcom/android/systemui/complication/ComplicationId;

.field public final tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

.field public final tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$cascd_ComplicationComponentImpl;Lcom/android/systemui/complication/Complication;Lcom/android/systemui/complication/ComplicationId;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$ComplicationViewModelComponentImpl;->complicationViewModelComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$ComplicationViewModelComponentImpl;

    .line 5
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$ComplicationViewModelComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 7
    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$ComplicationViewModelComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 9
    iput-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$ComplicationViewModelComponentImpl;->cascd_ComplicationComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$cascd_ComplicationComponentImpl;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$ComplicationViewModelComponentImpl;->id:Lcom/android/systemui/complication/ComplicationId;

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final complicationViewModel()Lcom/android/systemui/complication/ComplicationViewModel;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/complication/ComplicationViewModel;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$ComplicationViewModelComponentImpl;->id:Lcom/android/systemui/complication/ComplicationId;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$ComplicationViewModelComponentImpl;->cascd_ComplicationComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$cascd_ComplicationComponentImpl;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$cascd_ComplicationComponentImpl;->host:Lcom/android/systemui/complication/Complication$Host;

    .line 8
    invoke-direct {v0, v1}, Lcom/android/systemui/complication/ComplicationViewModel;-><init>(Lcom/android/systemui/complication/ComplicationId;)V

    .line 10
    return-object v0
    .line 13
.end method

.method public final getViewModelProvider()Lcom/android/systemui/complication/ComplicationViewModelProvider;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/complication/ComplicationViewModelProvider;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$ComplicationViewModelComponentImpl;->cascd_ComplicationComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$cascd_ComplicationComponentImpl;

    .line 4
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$cascd_ComplicationComponentImpl;->viewModelStore:Landroidx/lifecycle/ViewModelStore;

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$ComplicationViewModelComponentImpl;->complicationViewModel()Lcom/android/systemui/complication/ComplicationViewModel;

    .line 8
    move-result-object p0

    .line 11
    invoke-direct {v0, v1, p0}, Lcom/android/systemui/complication/ComplicationViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStore;Lcom/android/systemui/complication/ComplicationViewModel;)V

    .line 12
    return-object v0
    .line 15
.end method
