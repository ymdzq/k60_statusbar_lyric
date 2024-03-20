.class public final Landroidx/mediarouter/media/MediaRoute2Provider;
.super Landroidx/mediarouter/media/MediaRouteProvider;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mCallback:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$1;

.field public final mControllerCallback:Landroidx/mediarouter/media/MediaRoute2Provider$ControllerCallback;

.field public final mControllerMap:Ljava/util/Map;

.field public final mHandlerExecutor:Landroidx/mediarouter/media/MediaRoute2Provider$$ExternalSyntheticLambda0;

.field public final mMediaRouter2:Landroid/media/MediaRouter2;

.field public final mRouteCallback:Landroidx/mediarouter/media/MediaRoute2Provider$RouteCallback;

.field public final mRouteIdToOriginalRouteIdMap:Ljava/util/Map;

.field public mRoutes:Ljava/util/List;

.field public final mTransferCallback:Landroidx/mediarouter/media/MediaRoute2Provider$TransferCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$1;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Landroidx/mediarouter/media/MediaRouteProvider;-><init>(Landroid/content/Context;Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;)V

    .line 3
    new-instance v0, Landroid/util/ArrayMap;

    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 8
    iput-object v0, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mControllerMap:Ljava/util/Map;

    .line 11
    new-instance v0, Landroidx/mediarouter/media/MediaRoute2Provider$RouteCallback;

    .line 13
    invoke-direct {v0, p0}, Landroidx/mediarouter/media/MediaRoute2Provider$RouteCallback;-><init>(Landroidx/mediarouter/media/MediaRoute2Provider;)V

    .line 15
    iput-object v0, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mRouteCallback:Landroidx/mediarouter/media/MediaRoute2Provider$RouteCallback;

    .line 18
    new-instance v0, Landroidx/mediarouter/media/MediaRoute2Provider$TransferCallback;

    .line 20
    invoke-direct {v0, p0}, Landroidx/mediarouter/media/MediaRoute2Provider$TransferCallback;-><init>(Landroidx/mediarouter/media/MediaRoute2Provider;)V

    .line 22
    iput-object v0, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mTransferCallback:Landroidx/mediarouter/media/MediaRoute2Provider$TransferCallback;

    .line 25
    new-instance v0, Landroidx/mediarouter/media/MediaRoute2Provider$ControllerCallback;

    .line 27
    invoke-direct {v0, p0}, Landroidx/mediarouter/media/MediaRoute2Provider$ControllerCallback;-><init>(Landroidx/mediarouter/media/MediaRoute2Provider;)V

    .line 29
    iput-object v0, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mControllerCallback:Landroidx/mediarouter/media/MediaRoute2Provider$ControllerCallback;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    iput-object v0, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mRoutes:Ljava/util/List;

    .line 39
    new-instance v0, Landroid/util/ArrayMap;

    .line 41
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 43
    iput-object v0, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mRouteIdToOriginalRouteIdMap:Ljava/util/Map;

    .line 46
    invoke-static {p1}, Landroid/media/MediaRouter2;->getInstance(Landroid/content/Context;)Landroid/media/MediaRouter2;

    .line 48
    move-result-object p1

    .line 51
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mMediaRouter2:Landroid/media/MediaRouter2;

    .line 52
    iput-object p2, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mCallback:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$1;

    .line 54
    new-instance p1, Landroid/os/Handler;

    .line 56
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 58
    move-result-object p2

    .line 61
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 62
    new-instance p2, Landroidx/mediarouter/media/MediaRoute2Provider$$ExternalSyntheticLambda0;

    .line 65
    invoke-direct {p2, p1}, Landroidx/mediarouter/media/MediaRoute2Provider$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    .line 67
    iput-object p2, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mHandlerExecutor:Landroidx/mediarouter/media/MediaRoute2Provider$$ExternalSyntheticLambda0;

    .line 70
    return-void
    .line 72
.end method


# virtual methods
.method public final getRouteById(Ljava/lang/String;)Landroid/media/MediaRoute2Info;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    return-object v0

    .line 5
    :cond_0
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mRoutes:Ljava/util/List;

    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p0

    .line 11
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 21
    check-cast v1, Landroid/media/MediaRoute2Info;

    .line 22
    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 27
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 28
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    return-object v1

    .line 34
    :cond_2
    return-object v0
    .line 35
.end method

.method public final onCreateDynamicGroupRouteController(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mControllerMap:Ljava/util/Map;

    .line 2
    check-cast p0, Landroid/util/ArrayMap;

    .line 4
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 6
    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object p0

    .line 13
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 23
    check-cast v0, Ljava/util/Map$Entry;

    .line 24
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 29
    check-cast v0, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;

    .line 30
    iget-object v1, v0, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;->mInitialMemberRouteId:Ljava/lang/String;

    .line 32
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 34
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    return-object v0

    .line 40
    :cond_1
    const/4 p0, 0x0

    .line 41
    return-object p0
    .line 42
.end method

.method public final onCreateRouteController(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteProvider$RouteController;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mRouteIdToOriginalRouteIdMap:Ljava/util/Map;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2
    new-instance p1, Landroidx/mediarouter/media/MediaRoute2Provider$MemberRouteController;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroidx/mediarouter/media/MediaRoute2Provider$MemberRouteController;-><init>(Ljava/lang/String;Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;)V

    return-object p1
.end method

.method public final onCreateRouteController(Ljava/lang/String;Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteProvider$RouteController;
    .locals 3

    .line 3
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mRouteIdToOriginalRouteIdMap:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mControllerMap:Ljava/util/Map;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;

    .line 5
    iget-object v2, v1, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;->mGroupRouteDescriptor:Landroidx/mediarouter/media/MediaRouteDescriptor;

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 7
    :cond_1
    iget-object v2, v1, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;->mRoutingController:Landroid/media/MediaRouter2$RoutingController;

    invoke-virtual {v2}, Landroid/media/MediaRouter2$RoutingController;->getId()Ljava/lang/String;

    move-result-object v2

    .line 8
    :goto_0
    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    new-instance p0, Landroidx/mediarouter/media/MediaRoute2Provider$MemberRouteController;

    invoke-direct {p0, v0, v1}, Landroidx/mediarouter/media/MediaRoute2Provider$MemberRouteController;-><init>(Ljava/lang/String;Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;)V

    return-object p0

    .line 10
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Could not find the matching GroupRouteController. routeId="

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", routeGroupId="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MR2Provider"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    new-instance p0, Landroidx/mediarouter/media/MediaRoute2Provider$MemberRouteController;

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Landroidx/mediarouter/media/MediaRoute2Provider$MemberRouteController;-><init>(Ljava/lang/String;Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;)V

    return-object p0
.end method

.method public final onDiscoveryRequestChanged(Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;)V
    .locals 12

    .line 1
    sget-object v0, Landroidx/mediarouter/media/MediaRouter;->sGlobal:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 9
    move-result-object v0

    .line 12
    iget v0, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCallbackCount:I

    .line 13
    :goto_0
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mControllerCallback:Landroidx/mediarouter/media/MediaRoute2Provider$ControllerCallback;

    .line 15
    iget-object v3, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mTransferCallback:Landroidx/mediarouter/media/MediaRoute2Provider$TransferCallback;

    .line 17
    iget-object v4, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mRouteCallback:Landroidx/mediarouter/media/MediaRoute2Provider$RouteCallback;

    .line 19
    iget-object v5, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mMediaRouter2:Landroid/media/MediaRouter2;

    .line 21
    if-lez v0, :cond_8

    .line 23
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 25
    if-nez p1, :cond_1

    .line 28
    new-instance p1, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 30
    sget-object v0, Landroidx/mediarouter/media/MediaRouteSelector;->EMPTY:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 32
    invoke-direct {p1, v0, v1}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;-><init>(Landroidx/mediarouter/media/MediaRouteSelector;Z)V

    .line 34
    :cond_1
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->ensureSelector()V

    .line 37
    iget-object v0, p1, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 40
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteSelector;->getControlCategories()Ljava/util/List;

    .line 42
    move-result-object v0

    .line 45
    move-object v6, v0

    .line 46
    check-cast v6, Ljava/util/ArrayList;

    .line 47
    const-string v7, "android.media.intent.category.LIVE_AUDIO"

    .line 49
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 51
    new-instance v6, Landroidx/mediarouter/media/MediaRouteSelector$Builder;

    .line 54
    invoke-direct {v6}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;-><init>()V

    .line 56
    invoke-virtual {v6, v0}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;->addControlCategories(Ljava/util/Collection;)V

    .line 59
    invoke-virtual {v6}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;->build()Landroidx/mediarouter/media/MediaRouteSelector;

    .line 62
    move-result-object v0

    .line 65
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->isActiveScan()Z

    .line 66
    move-result p1

    .line 69
    if-eqz v0, :cond_7

    .line 70
    new-instance v6, Landroid/os/Bundle;

    .line 72
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 74
    iget-object v8, v0, Landroidx/mediarouter/media/MediaRouteSelector;->mBundle:Landroid/os/Bundle;

    .line 77
    const-string/jumbo v9, "selector"

    .line 79
    invoke-virtual {v6, v9, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 82
    const-string v8, "activeScan"

    .line 85
    invoke-virtual {v6, v8, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 87
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteSelector;->ensureControlCategories()V

    .line 90
    iget-object p1, v0, Landroidx/mediarouter/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    .line 93
    const/4 v9, 0x0

    .line 95
    invoke-interface {p1, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 96
    move-result p1

    .line 99
    const/4 v9, 0x1

    .line 100
    xor-int/2addr p1, v9

    .line 101
    if-nez p1, :cond_2

    .line 102
    new-instance p1, Landroid/media/RouteDiscoveryPreference$Builder;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    .line 106
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    invoke-direct {p1, v0, v1}, Landroid/media/RouteDiscoveryPreference$Builder;-><init>(Ljava/util/List;Z)V

    .line 111
    invoke-virtual {p1}, Landroid/media/RouteDiscoveryPreference$Builder;->build()Landroid/media/RouteDiscoveryPreference;

    .line 114
    move-result-object p1

    .line 117
    goto/16 :goto_4

    .line 118
    :cond_2
    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 120
    move-result p1

    .line 123
    new-instance v6, Ljava/util/ArrayList;

    .line 124
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 126
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteSelector;->getControlCategories()Ljava/util/List;

    .line 129
    move-result-object v0

    .line 132
    check-cast v0, Ljava/util/ArrayList;

    .line 133
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 135
    move-result-object v0

    .line 138
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    move-result v8

    .line 142
    if-eqz v8, :cond_6

    .line 143
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    move-result-object v8

    .line 148
    check-cast v8, Ljava/lang/String;

    .line 149
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 154
    move-result v10

    .line 157
    const/4 v11, -0x1

    .line 158
    sparse-switch v10, :sswitch_data_0

    .line 159
    goto :goto_2

    .line 162
    :sswitch_0
    const-string v10, "android.media.intent.category.LIVE_VIDEO"

    .line 163
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    move-result v10

    .line 168
    if-nez v10, :cond_3

    .line 169
    goto :goto_2

    .line 171
    :cond_3
    const/4 v11, 0x2

    .line 172
    goto :goto_2

    .line 173
    :sswitch_1
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    move-result v10

    .line 177
    if-nez v10, :cond_4

    .line 178
    goto :goto_2

    .line 180
    :cond_4
    move v11, v9

    .line 181
    goto :goto_2

    .line 182
    :sswitch_2
    const-string v10, "android.media.intent.category.REMOTE_PLAYBACK"

    .line 183
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    move-result v10

    .line 188
    if-nez v10, :cond_5

    .line 189
    goto :goto_2

    .line 191
    :cond_5
    move v11, v1

    .line 192
    :goto_2
    packed-switch v11, :pswitch_data_0

    .line 193
    goto :goto_3

    .line 196
    :pswitch_0
    const-string v8, "android.media.route.feature.LIVE_VIDEO"

    .line 197
    goto :goto_3

    .line 199
    :pswitch_1
    const-string v8, "android.media.route.feature.LIVE_AUDIO"

    .line 200
    goto :goto_3

    .line 202
    :pswitch_2
    const-string v8, "android.media.route.feature.REMOTE_PLAYBACK"

    .line 203
    :goto_3
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    goto :goto_1

    .line 208
    :cond_6
    new-instance v0, Landroid/media/RouteDiscoveryPreference$Builder;

    .line 209
    invoke-direct {v0, v6, p1}, Landroid/media/RouteDiscoveryPreference$Builder;-><init>(Ljava/util/List;Z)V

    .line 211
    invoke-virtual {v0}, Landroid/media/RouteDiscoveryPreference$Builder;->build()Landroid/media/RouteDiscoveryPreference;

    .line 214
    move-result-object p1

    .line 217
    :goto_4
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mHandlerExecutor:Landroidx/mediarouter/media/MediaRoute2Provider$$ExternalSyntheticLambda0;

    .line 218
    invoke-virtual {v5, p0, v4, p1}, Landroid/media/MediaRouter2;->registerRouteCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$RouteCallback;Landroid/media/RouteDiscoveryPreference;)V

    .line 220
    invoke-virtual {v5, p0, v3}, Landroid/media/MediaRouter2;->registerTransferCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$TransferCallback;)V

    .line 223
    invoke-virtual {v5, p0, v2}, Landroid/media/MediaRouter2;->registerControllerCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$ControllerCallback;)V

    .line 226
    goto :goto_5

    .line 229
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 230
    const-string/jumbo p1, "selector must not be null"

    .line 232
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 235
    throw p0

    .line 238
    :cond_8
    invoke-virtual {v5, v4}, Landroid/media/MediaRouter2;->unregisterRouteCallback(Landroid/media/MediaRouter2$RouteCallback;)V

    .line 239
    invoke-virtual {v5, v3}, Landroid/media/MediaRouter2;->unregisterTransferCallback(Landroid/media/MediaRouter2$TransferCallback;)V

    .line 242
    invoke-virtual {v5, v2}, Landroid/media/MediaRouter2;->unregisterControllerCallback(Landroid/media/MediaRouter2$ControllerCallback;)V

    .line 245
    :goto_5
    return-void

    .line 248
    nop

    .line 249
    :sswitch_data_0
    .sparse-switch
        -0x7b1e3633 -> :sswitch_2
        0x3909bb2a -> :sswitch_1
        0x3a2c33cf -> :sswitch_0
    .end sparse-switch

    .line 250
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 264
.end method

.method public final refreshRoutes()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v1, Landroid/util/ArraySet;

    .line 7
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 9
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mMediaRouter2:Landroid/media/MediaRouter2;

    .line 12
    invoke-virtual {v2}, Landroid/media/MediaRouter2;->getRoutes()Ljava/util/List;

    .line 14
    move-result-object v2

    .line 17
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v2

    .line 21
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v3

    .line 25
    if-eqz v3, :cond_2

    .line 26
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 31
    check-cast v3, Landroid/media/MediaRoute2Info;

    .line 32
    if-eqz v3, :cond_0

    .line 34
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 36
    move-result v4

    .line 39
    if-nez v4, :cond_0

    .line 40
    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->isSystemRoute()Z

    .line 42
    move-result v4

    .line 45
    if-eqz v4, :cond_1

    .line 46
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    goto :goto_0

    .line 55
    :cond_2
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mRoutes:Ljava/util/List;

    .line 56
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result v1

    .line 61
    if-eqz v1, :cond_3

    .line 62
    return-void

    .line 64
    :cond_3
    iput-object v0, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mRoutes:Ljava/util/List;

    .line 65
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mRouteIdToOriginalRouteIdMap:Ljava/util/Map;

    .line 67
    check-cast v0, Landroid/util/ArrayMap;

    .line 69
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 71
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mRoutes:Ljava/util/List;

    .line 74
    check-cast v1, Ljava/util/ArrayList;

    .line 76
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 78
    move-result-object v1

    .line 81
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    move-result v2

    .line 85
    if-eqz v2, :cond_6

    .line 86
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    move-result-object v2

    .line 91
    check-cast v2, Landroid/media/MediaRoute2Info;

    .line 92
    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getExtras()Landroid/os/Bundle;

    .line 94
    move-result-object v3

    .line 97
    if-eqz v3, :cond_5

    .line 98
    const-string v4, "androidx.mediarouter.media.KEY_ORIGINAL_ROUTE_ID"

    .line 100
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    move-result-object v5

    .line 105
    if-nez v5, :cond_4

    .line 106
    goto :goto_2

    .line 108
    :cond_4
    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 109
    move-result-object v2

    .line 112
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    move-result-object v3

    .line 116
    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    goto :goto_1

    .line 120
    :cond_5
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 121
    const-string v4, "Cannot find the original route Id. route="

    .line 123
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    move-result-object v2

    .line 134
    const-string v3, "MR2Provider"

    .line 135
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    goto :goto_1

    .line 140
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    .line 141
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 143
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mRoutes:Ljava/util/List;

    .line 146
    check-cast v1, Ljava/util/ArrayList;

    .line 148
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 150
    move-result-object v1

    .line 153
    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 154
    move-result v2

    .line 157
    if-eqz v2, :cond_8

    .line 158
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 160
    move-result-object v2

    .line 163
    check-cast v2, Landroid/media/MediaRoute2Info;

    .line 164
    invoke-static {v2}, Landroidx/mediarouter/media/MediaRouter2Utils;->toMediaRouteDescriptor(Landroid/media/MediaRoute2Info;)Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 166
    move-result-object v3

    .line 169
    if-eqz v2, :cond_7

    .line 170
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    goto :goto_3

    .line 175
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 176
    move-result v1

    .line 179
    const/4 v2, 0x0

    .line 180
    if-nez v1, :cond_c

    .line 181
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 183
    move-result-object v0

    .line 186
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 187
    move-result v1

    .line 190
    if-eqz v1, :cond_c

    .line 191
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 193
    move-result-object v1

    .line 196
    check-cast v1, Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 197
    if-eqz v1, :cond_b

    .line 199
    if-nez v2, :cond_9

    .line 201
    new-instance v2, Ljava/util/ArrayList;

    .line 203
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 205
    goto :goto_5

    .line 208
    :cond_9
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 209
    move-result v3

    .line 212
    if-nez v3, :cond_a

    .line 213
    :goto_5
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    goto :goto_4

    .line 218
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 219
    const-string/jumbo v0, "route descriptor already added"

    .line 221
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 224
    throw p0

    .line 227
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 228
    const-string/jumbo v0, "route must not be null"

    .line 230
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 233
    throw p0

    .line 236
    :cond_c
    new-instance v0, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    .line 237
    const/4 v1, 0x1

    .line 239
    invoke-direct {v0, v2, v1}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;-><init>(Ljava/util/List;Z)V

    .line 240
    invoke-virtual {p0, v0}, Landroidx/mediarouter/media/MediaRouteProvider;->setDescriptor(Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V

    .line 243
    return-void
    .line 246
.end method

.method public final setDynamicRouteDescriptors(Landroid/media/MediaRouter2$RoutingController;)V
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mControllerMap:Ljava/util/Map;

    .line 2
    check-cast v0, Landroid/util/ArrayMap;

    .line 4
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;

    .line 10
    const-string v1, "MR2Provider"

    .line 12
    if-nez v0, :cond_0

    .line 14
    new-instance p0, Ljava/lang/StringBuilder;

    .line 16
    const-string/jumbo v0, "setDynamicRouteDescriptors: No matching routeController found. routingController="

    .line 18
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 30
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void

    .line 34
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaRouter2$RoutingController;->getSelectedRoutes()Ljava/util/List;

    .line 35
    move-result-object v2

    .line 38
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 39
    move-result v3

    .line 42
    if-eqz v3, :cond_1

    .line 43
    new-instance p0, Ljava/lang/StringBuilder;

    .line 45
    const-string/jumbo v0, "setDynamicRouteDescriptors: No selected routes. This may happen when the selected routes become invalid.routingController="

    .line 47
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p0

    .line 59
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void

    .line 63
    :cond_1
    invoke-static {v2}, Landroidx/mediarouter/media/MediaRouter2Utils;->getRouteIds(Ljava/util/List;)Ljava/util/List;

    .line 64
    move-result-object v3

    .line 67
    const/4 v4, 0x0

    .line 68
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    move-result-object v2

    .line 72
    check-cast v2, Landroid/media/MediaRoute2Info;

    .line 73
    invoke-static {v2}, Landroidx/mediarouter/media/MediaRouter2Utils;->toMediaRouteDescriptor(Landroid/media/MediaRoute2Info;)Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 75
    move-result-object v2

    .line 78
    invoke-virtual {p1}, Landroid/media/MediaRouter2$RoutingController;->getControlHints()Landroid/os/Bundle;

    .line 79
    move-result-object v4

    .line 82
    const v5, 0x7f130815    # @string/mr_dialog_default_group_name 'Group'

    .line 83
    iget-object v6, p0, Landroidx/mediarouter/media/MediaRouteProvider;->mContext:Landroid/content/Context;

    .line 86
    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 88
    move-result-object v5

    .line 91
    const/4 v6, 0x0

    .line 92
    if-eqz v4, :cond_3

    .line 93
    :try_start_0
    const-string v7, "androidx.mediarouter.media.KEY_SESSION_NAME"

    .line 95
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    move-result-object v7

    .line 100
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 101
    move-result v8

    .line 104
    if-nez v8, :cond_2

    .line 105
    move-object v5, v7

    .line 107
    :cond_2
    const-string v7, "androidx.mediarouter.media.KEY_GROUP_ROUTE"

    .line 108
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 110
    move-result-object v4

    .line 113
    if-eqz v4, :cond_3

    .line 114
    new-instance v7, Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 116
    invoke-direct {v7, v4}, Landroidx/mediarouter/media/MediaRouteDescriptor;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    move-object v6, v7

    .line 121
    goto :goto_0

    .line 122
    :catch_0
    move-exception v4

    .line 123
    const-string v7, "Exception while unparceling control hints."

    .line 124
    invoke-static {v1, v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    :cond_3
    :goto_0
    const/4 v4, 0x1

    .line 129
    if-nez v6, :cond_4

    .line 130
    new-instance v6, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    .line 132
    invoke-virtual {p1}, Landroid/media/MediaRouter2$RoutingController;->getId()Ljava/lang/String;

    .line 134
    move-result-object v7

    .line 137
    invoke-direct {v6, v7, v5}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v5, "connectionState"

    .line 141
    iget-object v7, v6, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    .line 143
    const/4 v8, 0x2

    .line 145
    invoke-virtual {v7, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 146
    const-string v5, "playbackType"

    .line 149
    invoke-virtual {v7, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 151
    goto :goto_1

    .line 154
    :cond_4
    new-instance v5, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    .line 155
    invoke-direct {v5, v6}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;-><init>(Landroidx/mediarouter/media/MediaRouteDescriptor;)V

    .line 157
    move-object v6, v5

    .line 160
    :goto_1
    invoke-virtual {p1}, Landroid/media/MediaRouter2$RoutingController;->getVolume()I

    .line 161
    move-result v5

    .line 164
    const-string/jumbo v7, "volume"

    .line 165
    iget-object v8, v6, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    .line 168
    invoke-virtual {v8, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    invoke-virtual {p1}, Landroid/media/MediaRouter2$RoutingController;->getVolumeMax()I

    .line 173
    move-result v5

    .line 176
    const-string/jumbo v7, "volumeMax"

    .line 177
    invoke-virtual {v8, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 180
    invoke-virtual {p1}, Landroid/media/MediaRouter2$RoutingController;->getVolumeHandling()I

    .line 183
    move-result v5

    .line 186
    const-string/jumbo v7, "volumeHandling"

    .line 187
    invoke-virtual {v8, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 190
    iget-object v5, v6, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->mControlFilters:Ljava/util/ArrayList;

    .line 193
    if-eqz v5, :cond_5

    .line 195
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 197
    :cond_5
    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouteDescriptor;->ensureControlFilters()V

    .line 200
    iget-object v2, v2, Landroidx/mediarouter/media/MediaRouteDescriptor;->mControlFilters:Ljava/util/List;

    .line 203
    invoke-virtual {v6, v2}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->addControlFilters(Ljava/util/Collection;)V

    .line 205
    iget-object v2, v6, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->mGroupMemberIds:Ljava/util/ArrayList;

    .line 208
    if-eqz v2, :cond_6

    .line 210
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 212
    :cond_6
    check-cast v3, Ljava/util/ArrayList;

    .line 215
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 217
    move-result v2

    .line 220
    if-nez v2, :cond_a

    .line 221
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 223
    move-result-object v2

    .line 226
    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 227
    move-result v5

    .line 230
    if-eqz v5, :cond_a

    .line 231
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 233
    move-result-object v5

    .line 236
    check-cast v5, Ljava/lang/String;

    .line 237
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 239
    move-result v7

    .line 242
    if-nez v7, :cond_9

    .line 243
    iget-object v7, v6, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->mGroupMemberIds:Ljava/util/ArrayList;

    .line 245
    if-nez v7, :cond_8

    .line 247
    new-instance v7, Ljava/util/ArrayList;

    .line 249
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 251
    iput-object v7, v6, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->mGroupMemberIds:Ljava/util/ArrayList;

    .line 254
    :cond_8
    iget-object v7, v6, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->mGroupMemberIds:Ljava/util/ArrayList;

    .line 256
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 258
    move-result v7

    .line 261
    if-nez v7, :cond_7

    .line 262
    iget-object v7, v6, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->mGroupMemberIds:Ljava/util/ArrayList;

    .line 264
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    goto :goto_2

    .line 269
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 270
    const-string p1, "groupMemberId must not be empty"

    .line 272
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 274
    throw p0

    .line 277
    :cond_a
    invoke-virtual {v6}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->build()Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 278
    move-result-object v2

    .line 281
    invoke-virtual {p1}, Landroid/media/MediaRouter2$RoutingController;->getSelectableRoutes()Ljava/util/List;

    .line 282
    move-result-object v5

    .line 285
    invoke-static {v5}, Landroidx/mediarouter/media/MediaRouter2Utils;->getRouteIds(Ljava/util/List;)Ljava/util/List;

    .line 286
    move-result-object v5

    .line 289
    invoke-virtual {p1}, Landroid/media/MediaRouter2$RoutingController;->getDeselectableRoutes()Ljava/util/List;

    .line 290
    move-result-object p1

    .line 293
    invoke-static {p1}, Landroidx/mediarouter/media/MediaRouter2Utils;->getRouteIds(Ljava/util/List;)Ljava/util/List;

    .line 294
    move-result-object p1

    .line 297
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouteProvider;->mDescriptor:Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    .line 298
    if-nez p0, :cond_b

    .line 300
    const-string/jumbo p0, "setDynamicRouteDescriptors: providerDescriptor is not set."

    .line 302
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-void

    .line 308
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    .line 309
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 311
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->mRoutes:Ljava/util/List;

    .line 314
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 316
    move-result v6

    .line 319
    if-nez v6, :cond_d

    .line 320
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 322
    move-result-object p0

    .line 325
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 326
    move-result v6

    .line 329
    if-eqz v6, :cond_d

    .line 330
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 332
    move-result-object v6

    .line 335
    move-object v8, v6

    .line 336
    check-cast v8, Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 337
    invoke-virtual {v8}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getId()Ljava/lang/String;

    .line 339
    move-result-object v6

    .line 342
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 343
    move-result v7

    .line 346
    if-eqz v7, :cond_c

    .line 347
    const/4 v7, 0x3

    .line 349
    move v9, v7

    .line 350
    goto :goto_4

    .line 351
    :cond_c
    move v9, v4

    .line 352
    :goto_4
    move-object v7, v5

    .line 353
    check-cast v7, Ljava/util/ArrayList;

    .line 354
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 356
    move-result v11

    .line 359
    move-object v7, p1

    .line 360
    check-cast v7, Ljava/util/ArrayList;

    .line 361
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 363
    move-result v10

    .line 366
    const/4 v12, 0x1

    .line 367
    new-instance v6, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;

    .line 368
    move-object v7, v6

    .line 370
    invoke-direct/range {v7 .. v12}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;-><init>(Landroidx/mediarouter/media/MediaRouteDescriptor;IZZZ)V

    .line 371
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    goto :goto_3

    .line 377
    :cond_d
    iput-object v2, v0, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;->mGroupRouteDescriptor:Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 378
    invoke-virtual {v0, v2, v1}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->notifyDynamicRoutesChanged(Landroidx/mediarouter/media/MediaRouteDescriptor;Ljava/util/Collection;)V

    .line 380
    return-void
    .line 383
.end method
