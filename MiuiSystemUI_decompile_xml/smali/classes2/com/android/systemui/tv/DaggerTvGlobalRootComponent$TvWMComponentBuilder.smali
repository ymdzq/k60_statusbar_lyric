.class public final Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentBuilder;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/tv/TvWMComponent$Builder;


# instance fields
.field public setShellMainThread:Landroid/os/HandlerThread;

.field public final tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentBuilder;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/android/systemui/dagger/WMComponent;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentBuilder;->build()Lcom/android/systemui/tv/TvWMComponent;

    move-result-object p0

    return-object p0
.end method

.method public final build()Lcom/android/systemui/tv/TvWMComponent;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentBuilder;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentBuilder;->setShellMainThread:Landroid/os/HandlerThread;

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Landroid/os/HandlerThread;)V

    return-object v0
.end method

.method public final setShellMainThread(Landroid/os/HandlerThread;)Lcom/android/systemui/dagger/WMComponent$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentBuilder;->setShellMainThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method public final setShellMainThread(Landroid/os/HandlerThread;)Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentBuilder;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentBuilder;->setShellMainThread:Landroid/os/HandlerThread;

    return-object p0
.end method
