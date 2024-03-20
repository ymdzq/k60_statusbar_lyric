.class public abstract Landroidx/mediarouter/media/MediaRouteProvider$RouteController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# virtual methods
.method public onRelease()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onSelect()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public abstract onSetVolume(I)V
.end method

.method public onUnselect()V
    .locals 0

    .line 1
    return-void
.end method

.method public onUnselect(I)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onUnselect()V

    return-void
.end method

.method public abstract onUpdateVolume(I)V
.end method
