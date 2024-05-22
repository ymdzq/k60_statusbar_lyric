.class public final Landroidx/mediarouter/media/MediaRoute2Provider$TransferCallback;
.super Landroid/media/MediaRouter2$TransferCallback;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Landroidx/mediarouter/media/MediaRoute2Provider;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/MediaRoute2Provider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRoute2Provider$TransferCallback;->this$0:Landroidx/mediarouter/media/MediaRoute2Provider;

    .line 2
    invoke-direct {p0}, Landroid/media/MediaRouter2$TransferCallback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onStop(Landroid/media/MediaRouter2$RoutingController;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRoute2Provider$TransferCallback;->this$0:Landroidx/mediarouter/media/MediaRoute2Provider;

    .line 2
    iget-object v0, v0, Landroidx/mediarouter/media/MediaRoute2Provider;->mControllerMap:Ljava/util/Map;

    .line 4
    check-cast v0, Landroid/util/ArrayMap;

    .line 6
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 12
    if-eqz v0, :cond_0

    .line 14
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRoute2Provider$TransferCallback;->this$0:Landroidx/mediarouter/media/MediaRoute2Provider;

    .line 16
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mCallback:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$1;

    .line 18
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$1;->this$0:Ljava/lang/Object;

    .line 20
    move-object p1, p0

    .line 22
    check-cast p1, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 23
    iget-object p1, p1, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 25
    if-ne v0, p1, :cond_1

    .line 27
    check-cast p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 29
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->chooseFallbackRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 31
    move-result-object p1

    .line 34
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->getSelectedRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 35
    move-result-object v0

    .line 38
    if-eq v0, p1, :cond_1

    .line 39
    const/4 v0, 0x2

    .line 41
    invoke-virtual {p0, p1, v0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->selectRouteInternal(Landroidx/mediarouter/media/MediaRouter$RouteInfo;I)V

    .line 42
    goto :goto_0

    .line 45
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 46
    const-string v0, "onStop: No matching routeController found. routingController="

    .line 48
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p0

    .line 59
    const-string p1, "MR2Provider"

    .line 60
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_1
    :goto_0
    return-void
    .line 65
.end method

.method public final onTransfer(Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRouter2$RoutingController;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRoute2Provider$TransferCallback;->this$0:Landroidx/mediarouter/media/MediaRoute2Provider;

    .line 2
    iget-object v0, v0, Landroidx/mediarouter/media/MediaRoute2Provider;->mControllerMap:Ljava/util/Map;

    .line 4
    check-cast v0, Landroid/util/ArrayMap;

    .line 6
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p1, p0, Landroidx/mediarouter/media/MediaRoute2Provider$TransferCallback;->this$0:Landroidx/mediarouter/media/MediaRoute2Provider;

    .line 11
    iget-object p1, p1, Landroidx/mediarouter/media/MediaRoute2Provider;->mMediaRouter2:Landroid/media/MediaRouter2;

    .line 13
    invoke-virtual {p1}, Landroid/media/MediaRouter2;->getSystemController()Landroid/media/MediaRouter2$RoutingController;

    .line 15
    move-result-object p1

    .line 18
    const/4 v0, 0x3

    .line 19
    if-ne p2, p1, :cond_0

    .line 20
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRoute2Provider$TransferCallback;->this$0:Landroidx/mediarouter/media/MediaRoute2Provider;

    .line 22
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mCallback:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$1;

    .line 24
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$1;->this$0:Ljava/lang/Object;

    .line 26
    check-cast p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 28
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->chooseFallbackRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 30
    move-result-object p1

    .line 33
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->getSelectedRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 34
    move-result-object p2

    .line 37
    if-eq p2, p1, :cond_6

    .line 38
    invoke-virtual {p0, p1, v0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->selectRouteInternal(Landroidx/mediarouter/media/MediaRouter$RouteInfo;I)V

    .line 40
    goto :goto_3

    .line 43
    :cond_0
    invoke-virtual {p2}, Landroid/media/MediaRouter2$RoutingController;->getSelectedRoutes()Ljava/util/List;

    .line 44
    move-result-object p1

    .line 47
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 48
    move-result v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    const-string p0, "MR2Provider"

    .line 54
    const-string p1, "Selected routes are empty. This shouldn\'t happen."

    .line 56
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void

    .line 61
    :cond_1
    const/4 v1, 0x0

    .line 62
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object p1

    .line 66
    check-cast p1, Landroid/media/MediaRoute2Info;

    .line 67
    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 72
    new-instance v1, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;

    .line 73
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRoute2Provider$TransferCallback;->this$0:Landroidx/mediarouter/media/MediaRoute2Provider;

    .line 75
    invoke-direct {v1, v2, p2, p1}, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;-><init>(Landroidx/mediarouter/media/MediaRoute2Provider;Landroid/media/MediaRouter2$RoutingController;Ljava/lang/String;)V

    .line 77
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRoute2Provider$TransferCallback;->this$0:Landroidx/mediarouter/media/MediaRoute2Provider;

    .line 80
    iget-object v2, v2, Landroidx/mediarouter/media/MediaRoute2Provider;->mControllerMap:Ljava/util/Map;

    .line 82
    check-cast v2, Landroid/util/ArrayMap;

    .line 84
    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRoute2Provider$TransferCallback;->this$0:Landroidx/mediarouter/media/MediaRoute2Provider;

    .line 89
    iget-object v1, v1, Landroidx/mediarouter/media/MediaRoute2Provider;->mCallback:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$1;

    .line 91
    iget-object v1, v1, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$1;->this$0:Ljava/lang/Object;

    .line 93
    check-cast v1, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 95
    iget-object v2, v1, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    .line 97
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 99
    move-result-object v2

    .line 102
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    move-result v3

    .line 106
    if-eqz v3, :cond_4

    .line 107
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    move-result-object v3

    .line 112
    check-cast v3, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 113
    invoke-virtual {v3}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getProviderInstance()Landroidx/mediarouter/media/MediaRouteProvider;

    .line 115
    move-result-object v4

    .line 118
    iget-object v5, v1, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mMr2Provider:Landroidx/mediarouter/media/MediaRoute2Provider;

    .line 119
    if-eq v4, v5, :cond_3

    .line 121
    goto :goto_0

    .line 123
    :cond_3
    iget-object v4, v3, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;

    .line 124
    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 126
    move-result v4

    .line 129
    if-eqz v4, :cond_2

    .line 130
    goto :goto_1

    .line 132
    :cond_4
    const/4 v3, 0x0

    .line 133
    :goto_1
    if-nez v3, :cond_5

    .line 134
    const-string v0, "onSelectRoute: The target RouteInfo is not found for descriptorId="

    .line 136
    const-string v1, "MediaRouter"

    .line 138
    invoke-static {v0, p1, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    goto :goto_2

    .line 143
    :cond_5
    invoke-virtual {v1, v3, v0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->selectRouteInternal(Landroidx/mediarouter/media/MediaRouter$RouteInfo;I)V

    .line 144
    :goto_2
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRoute2Provider$TransferCallback;->this$0:Landroidx/mediarouter/media/MediaRoute2Provider;

    .line 147
    invoke-virtual {p0, p2}, Landroidx/mediarouter/media/MediaRoute2Provider;->setDynamicRouteDescriptors(Landroid/media/MediaRouter2$RoutingController;)V

    .line 149
    :cond_6
    :goto_3
    return-void
    .line 152
.end method

.method public final onTransferFailure(Landroid/media/MediaRoute2Info;)V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    const-string v0, "Transfer failed. requestedRoute="

    .line 4
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 15
    const-string p1, "MR2Provider"

    .line 16
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void
    .line 21
.end method
