.class public final Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentFactory;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Factory;


# instance fields
.field public final centralSurfacesComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;

.field public final tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

.field public final tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentFactory;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentFactory;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentFactory;->centralSurfacesComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final create(Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;)Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 5
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentFactory;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 7
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentFactory;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 9
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentFactory;->centralSurfacesComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;

    .line 11
    invoke-direct {v0, v1, v2, p0, p1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;)V

    .line 13
    return-object v0
    .line 16
.end method
