.class public final Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;
.super Landroidx/mediarouter/media/MediaRouteProvider$RouteController;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;


# instance fields
.field public mConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

.field public mControllerId:I

.field public mPendingSetVolume:I

.field public mPendingUpdateVolumeDelta:I

.field public final mRouteGroupId:Ljava/lang/String;

.field public final mRouteId:Ljava/lang/String;

.field public mSelected:Z

.field public final synthetic this$0:Landroidx/mediarouter/media/RegisteredMediaRouteProvider;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/RegisteredMediaRouteProvider;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->this$0:Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    .line 2
    invoke-direct {p0}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;-><init>()V

    .line 4
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mPendingSetVolume:I

    .line 8
    iput-object p2, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mRouteId:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mRouteGroupId:Ljava/lang/String;

    .line 12
    return-void
    .line 14
.end method


# virtual methods
.method public final attachConnection(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;)V
    .locals 7

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    .line 2
    iget v6, p1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mNextControllerId:I

    .line 4
    add-int/lit8 v0, v6, 0x1

    .line 6
    iput v0, p1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mNextControllerId:I

    .line 8
    new-instance v5, Landroid/os/Bundle;

    .line 10
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 12
    const-string/jumbo v0, "routeId"

    .line 15
    iget-object v1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mRouteId:Ljava/lang/String;

    .line 18
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const-string/jumbo v0, "routeGroupId"

    .line 23
    iget-object v1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mRouteGroupId:Ljava/lang/String;

    .line 26
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const/4 v1, 0x3

    .line 31
    iget v2, p1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    .line 32
    add-int/lit8 v0, v2, 0x1

    .line 34
    iput v0, p1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    .line 36
    const/4 v4, 0x0

    .line 38
    move-object v0, p1

    .line 39
    move v3, v6

    .line 40
    invoke-virtual/range {v0 .. v5}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->sendRequest(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    .line 41
    iput v6, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mControllerId:I

    .line 44
    iget-boolean v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mSelected:Z

    .line 46
    if-eqz v0, :cond_1

    .line 48
    invoke-virtual {p1, v6}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->selectRoute(I)V

    .line 50
    iget v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mPendingSetVolume:I

    .line 53
    if-ltz v0, :cond_0

    .line 55
    iget v1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mControllerId:I

    .line 57
    invoke-virtual {p1, v1, v0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->setVolume(II)V

    .line 59
    const/4 v0, -0x1

    .line 62
    iput v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mPendingSetVolume:I

    .line 63
    :cond_0
    iget v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mPendingUpdateVolumeDelta:I

    .line 65
    if-eqz v0, :cond_1

    .line 67
    iget v1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mControllerId:I

    .line 69
    invoke-virtual {p1, v1, v0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->updateVolume(II)V

    .line 71
    const/4 p1, 0x0

    .line 74
    iput p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mPendingUpdateVolumeDelta:I

    .line 75
    :cond_1
    return-void
    .line 77
.end method

.method public final detachConnection()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget v3, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mControllerId:I

    .line 6
    const/4 v1, 0x4

    .line 8
    iget v2, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    .line 9
    add-int/lit8 v4, v2, 0x1

    .line 11
    iput v4, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    .line 13
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    invoke-virtual/range {v0 .. v5}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->sendRequest(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    .line 17
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    .line 21
    const/4 v0, 0x0

    .line 23
    iput v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mControllerId:I

    .line 24
    :cond_0
    return-void
    .line 26
.end method

.method public final getControllerId()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mControllerId:I

    .line 2
    return p0
    .line 4
.end method

.method public final onRelease()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->this$0:Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    .line 2
    iget-object v1, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mControllerConnections:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->detachConnection()V

    .line 9
    invoke-virtual {v0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->updateBinding()V

    .line 12
    return-void
    .line 15
.end method

.method public final onSelect()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mSelected:Z

    .line 3
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget p0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mControllerId:I

    .line 9
    invoke-virtual {v0, p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->selectRoute(I)V

    .line 11
    :cond_0
    return-void
    .line 14
.end method

.method public final onSetVolume(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget p0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mControllerId:I

    .line 6
    invoke-virtual {v0, p0, p1}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->setVolume(II)V

    .line 8
    goto :goto_0

    .line 11
    :cond_0
    iput p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mPendingSetVolume:I

    .line 12
    const/4 p1, 0x0

    .line 14
    iput p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mPendingUpdateVolumeDelta:I

    .line 15
    :goto_0
    return-void
    .line 17
.end method

.method public final onUnselect()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->onUnselect(I)V

    return-void
.end method

.method public final onUnselect(I)V
    .locals 7

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mSelected:Z

    .line 3
    iget-object v1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    if-eqz v1, :cond_0

    .line 4
    iget v4, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mControllerId:I

    .line 5
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo p0, "unselectReason"

    .line 6
    invoke-virtual {v6, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x6

    .line 7
    iget v3, v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    add-int/lit8 p0, v3, 0x1

    iput p0, v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->sendRequest(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    :cond_0
    return-void
.end method

.method public final onUpdateVolume(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget p0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mControllerId:I

    .line 6
    invoke-virtual {v0, p0, p1}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->updateVolume(II)V

    .line 8
    goto :goto_0

    .line 11
    :cond_0
    iget v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mPendingUpdateVolumeDelta:I

    .line 12
    add-int/2addr v0, p1

    .line 14
    iput v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;->mPendingUpdateVolumeDelta:I

    .line 15
    :goto_0
    return-void
    .line 17
.end method
