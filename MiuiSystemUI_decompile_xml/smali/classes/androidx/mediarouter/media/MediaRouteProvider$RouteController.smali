.class public abstract Landroidx/mediarouter/media/MediaRouteProvider$RouteController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


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
