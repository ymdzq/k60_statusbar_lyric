.class public final Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/mediarouter/media/SystemMediaRouteProvider$SyncCallback;


# instance fields
.field public mActiveScanThrottlingHelper:Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;

.field public final mApplicationContext:Landroid/content/Context;

.field public mBluetoothRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field public mCallbackCount:I

.field public final mCallbackHandler:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

.field public mDefaultRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field public mDiscoveryRequest:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

.field public mDiscoveryRequestForMr2Provider:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

.field public final mDynamicRoutesListener:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$1;

.field public mIsInitialized:Z

.field public final mLowRam:Z

.field public mMr2Provider:Landroidx/mediarouter/media/MediaRoute2Provider;

.field public final mPlaybackInfo:Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;

.field public final mProviderCallback:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$1;

.field public final mProviders:Ljava/util/ArrayList;

.field public final mRemoteControlClients:Ljava/util/ArrayList;

.field public mRequestedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field public mRequestedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

.field public final mRouteControllerMap:Ljava/util/Map;

.field public final mRouters:Ljava/util/ArrayList;

.field public final mRoutes:Ljava/util/ArrayList;

.field public mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field public mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

.field public mSystemProvider:Landroidx/mediarouter/media/SystemMediaRouteProvider$Api24Impl;

.field public mTransferNotifier:Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;

.field public mTransferReceiverDeclared:Z

.field public final mUniqueIdMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    .line 19
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mUniqueIdMap:Ljava/util/Map;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRemoteControlClients:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;

    .line 40
    invoke-direct {v0}, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;-><init>()V

    .line 42
    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;

    .line 45
    new-instance v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$1;

    .line 47
    const/4 v1, 0x3

    .line 49
    invoke-direct {v0, p0, v1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$1;-><init>(Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;I)V

    .line 50
    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mProviderCallback:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$1;

    .line 53
    new-instance v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    .line 55
    invoke-direct {v0, p0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;-><init>(Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;)V

    .line 57
    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    .line 62
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 64
    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    .line 67
    new-instance v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$1;

    .line 69
    invoke-direct {v0, p0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$1;-><init>(Ljava/lang/Object;)V

    .line 71
    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDynamicRoutesListener:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$1;

    .line 74
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mApplicationContext:Landroid/content/Context;

    .line 76
    const-string v0, "activity"

    .line 78
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    move-result-object p1

    .line 83
    check-cast p1, Landroid/app/ActivityManager;

    .line 84
    invoke-virtual {p1}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    .line 86
    move-result p1

    .line 89
    iput-boolean p1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mLowRam:Z

    .line 90
    return-void
    .line 92
.end method


# virtual methods
.method public final addProvider(Landroidx/mediarouter/media/MediaRouteProvider;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->findProviderInfo(Landroidx/mediarouter/media/MediaRouteProvider;)Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    .line 2
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    new-instance v0, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    .line 8
    invoke-direct {v0, p1}, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;-><init>(Landroidx/mediarouter/media/MediaRouteProvider;)V

    .line 10
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    .line 18
    const/16 v2, 0x201

    .line 20
    invoke-virtual {v1, v2, v0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 22
    iget-object v1, p1, Landroidx/mediarouter/media/MediaRouteProvider;->mDescriptor:Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    .line 25
    invoke-virtual {p0, v0, v1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->updateProviderContents(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V

    .line 27
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 30
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mProviderCallback:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$1;

    .line 33
    iput-object v0, p1, Landroidx/mediarouter/media/MediaRouteProvider;->mCallback:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$1;

    .line 35
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequest:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 37
    invoke-virtual {p1, p0}, Landroidx/mediarouter/media/MediaRouteProvider;->setDiscoveryRequest(Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;)V

    .line 39
    :cond_0
    return-void
    .line 42
.end method

.method public final assignRouteUniqueId(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    iget-object p1, p1, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mMetadata:Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;

    .line 2
    iget-object p1, p1, Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;->mComponentName:Landroid/content/ComponentName;

    .line 4
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 9
    const-string v0, ":"

    .line 10
    invoke-static {p1, v0, p2}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->findRouteByUniqueId(Ljava/lang/String;)I

    .line 16
    move-result v1

    .line 19
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mUniqueIdMap:Ljava/util/Map;

    .line 20
    if-gez v1, :cond_0

    .line 22
    new-instance p0, Landroidx/core/util/Pair;

    .line 24
    invoke-direct {p0, p1, p2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    check-cast v2, Ljava/util/HashMap;

    .line 29
    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-object v0

    .line 34
    :cond_0
    const-string v1, "Either "

    .line 35
    const-string v3, " isn\'t unique in "

    .line 37
    const-string v4, " or we\'re trying to assign a unique ID for an already added route"

    .line 39
    invoke-static {v1, p2, v3, p1, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 44
    const-string v3, "MediaRouter"

    .line 45
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 v1, 0x2

    .line 50
    :goto_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object v4

    .line 56
    filled-new-array {v0, v4}, [Ljava/lang/Object;

    .line 57
    move-result-object v4

    .line 60
    const-string v5, "%s_%d"

    .line 61
    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    move-result-object v3

    .line 66
    invoke-virtual {p0, v3}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->findRouteByUniqueId(Ljava/lang/String;)I

    .line 67
    move-result v4

    .line 70
    if-gez v4, :cond_1

    .line 71
    new-instance p0, Landroidx/core/util/Pair;

    .line 73
    invoke-direct {p0, p1, p2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    check-cast v2, Ljava/util/HashMap;

    .line 78
    invoke-virtual {v2, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-object v3

    .line 83
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 84
    goto :goto_0
    .line 86
.end method

.method public final chooseFallbackRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 18
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 20
    if-eq v1, v2, :cond_0

    .line 22
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getProviderInstance()Landroidx/mediarouter/media/MediaRouteProvider;

    .line 24
    move-result-object v2

    .line 27
    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroidx/mediarouter/media/SystemMediaRouteProvider$Api24Impl;

    .line 28
    if-ne v2, v3, :cond_1

    .line 30
    const-string v2, "android.media.intent.category.LIVE_AUDIO"

    .line 32
    invoke-virtual {v1, v2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->supportsControlCategory(Ljava/lang/String;)Z

    .line 34
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    const-string v2, "android.media.intent.category.LIVE_VIDEO"

    .line 40
    invoke-virtual {v1, v2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->supportsControlCategory(Ljava/lang/String;)Z

    .line 42
    move-result v2

    .line 45
    if-nez v2, :cond_1

    .line 46
    const/4 v2, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 v2, 0x0

    .line 50
    :goto_0
    if-eqz v2, :cond_0

    .line 51
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isSelectable()Z

    .line 53
    move-result v2

    .line 56
    if-eqz v2, :cond_0

    .line 57
    return-object v1

    .line 59
    :cond_2
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 60
    return-object p0
    .line 62
.end method

.method public final findProviderInfo(Landroidx/mediarouter/media/MediaRouteProvider;)Landroidx/mediarouter/media/MediaRouter$ProviderInfo;
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v2

    .line 14
    check-cast v2, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    .line 15
    iget-object v2, v2, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mProviderInstance:Landroidx/mediarouter/media/MediaRouteProvider;

    .line 17
    if-ne v2, p1, :cond_0

    .line 19
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object p0

    .line 24
    check-cast p0, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    .line 25
    return-object p0

    .line 27
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 28
    goto :goto_0

    .line 30
    :cond_1
    const/4 p0, 0x0

    .line 31
    return-object p0
    .line 32
.end method

.method public final findRouteByUniqueId(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v2

    .line 14
    check-cast v2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 15
    iget-object v2, v2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    .line 17
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    return v1

    .line 25
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_0

    .line 28
    :cond_1
    const/4 p0, -0x1

    .line 29
    return p0
    .line 30
.end method

.method public final getDefaultRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 7
    const-string v0, "There is no default route.  The media router has not yet been fully initialized."

    .line 9
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    throw p0
    .line 14
.end method

.method public final getSelectedRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 7
    const-string v0, "There is no currently selected route.  The media router has not yet been fully initialized."

    .line 9
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    throw p0
    .line 14
.end method

.method public final maybeUpdateMemberRouteControllers()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 2
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isGroup()Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 11
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getMemberRoutes()Ljava/util/List;

    .line 13
    move-result-object v0

    .line 16
    new-instance v1, Ljava/util/HashSet;

    .line 17
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 19
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v2

    .line 25
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v3

    .line 29
    if-eqz v3, :cond_1

    .line 30
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v3

    .line 35
    check-cast v3, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 36
    iget-object v3, v3, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    .line 38
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    goto :goto_0

    .line 43
    :cond_1
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    .line 44
    move-object v3, v2

    .line 46
    check-cast v3, Ljava/util/HashMap;

    .line 47
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 49
    move-result-object v3

    .line 52
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 53
    move-result-object v3

    .line 56
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    move-result v4

    .line 60
    if-eqz v4, :cond_3

    .line 61
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    move-result-object v4

    .line 66
    check-cast v4, Ljava/util/Map$Entry;

    .line 67
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 69
    move-result-object v5

    .line 72
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 73
    move-result v5

    .line 76
    if-nez v5, :cond_2

    .line 77
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 79
    move-result-object v4

    .line 82
    check-cast v4, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 83
    const/4 v5, 0x0

    .line 85
    invoke-virtual {v4, v5}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onUnselect(I)V

    .line 86
    invoke-virtual {v4}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onRelease()V

    .line 89
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 92
    goto :goto_1

    .line 95
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 96
    move-result-object v0

    .line 99
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    move-result v1

    .line 103
    if-eqz v1, :cond_5

    .line 104
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    move-result-object v1

    .line 109
    check-cast v1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 110
    iget-object v3, v1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    .line 112
    move-object v4, v2

    .line 114
    check-cast v4, Ljava/util/HashMap;

    .line 115
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 117
    move-result v3

    .line 120
    if-nez v3, :cond_4

    .line 121
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getProviderInstance()Landroidx/mediarouter/media/MediaRouteProvider;

    .line 123
    move-result-object v3

    .line 126
    iget-object v4, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 127
    iget-object v4, v4, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;

    .line 129
    iget-object v5, v1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;

    .line 131
    invoke-virtual {v3, v5, v4}, Landroidx/mediarouter/media/MediaRouteProvider;->onCreateRouteController(Ljava/lang/String;Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 133
    move-result-object v3

    .line 136
    invoke-virtual {v3}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onSelect()V

    .line 137
    iget-object v1, v1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    .line 140
    move-object v4, v2

    .line 142
    check-cast v4, Ljava/util/HashMap;

    .line 143
    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    goto :goto_2

    .line 148
    :cond_5
    return-void
    .line 149
.end method

.method public final notifyTransfer(Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouteProvider$RouteController;ILandroidx/mediarouter/media/MediaRouter$RouteInfo;Ljava/util/Collection;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mTransferNotifier:Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;

    .line 2
    if-eqz v0, :cond_2

    .line 4
    iget-boolean v1, v0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mFinished:Z

    .line 6
    if-nez v1, :cond_1

    .line 8
    iget-boolean v1, v0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mCanceled:Z

    .line 10
    if-eqz v1, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x1

    .line 15
    iput-boolean v1, v0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mCanceled:Z

    .line 16
    iget-object v0, v0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mToRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 18
    if-eqz v0, :cond_1

    .line 20
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onUnselect(I)V

    .line 23
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onRelease()V

    .line 26
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mTransferNotifier:Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;

    .line 30
    :cond_2
    new-instance v0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;

    .line 32
    move-object v1, v0

    .line 34
    move-object v2, p1

    .line 35
    move-object v3, p2

    .line 36
    move-object v4, p3

    .line 37
    move v5, p4

    .line 38
    move-object v6, p5

    .line 39
    move-object v7, p6

    .line 40
    invoke-direct/range {v1 .. v7}, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;-><init>(Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouteProvider$RouteController;ILandroidx/mediarouter/media/MediaRouter$RouteInfo;Ljava/util/Collection;)V

    .line 41
    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mTransferNotifier:Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;

    .line 44
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->finishTransfer()V

    .line 46
    return-void
    .line 49
.end method

.method public final selectRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 7
    const-string v1, "MediaRouter"

    .line 8
    if-nez v0, :cond_0

    .line 10
    new-instance p0, Ljava/lang/StringBuilder;

    .line 12
    const-string p2, "Ignoring attempt to select removed route: "

    .line 14
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 25
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return-void

    .line 29
    :cond_0
    iget-boolean v0, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mEnabled:Z

    .line 30
    if-nez v0, :cond_1

    .line 32
    new-instance p0, Ljava/lang/StringBuilder;

    .line 34
    const-string p2, "Ignoring attempt to select disabled route: "

    .line 36
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 47
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void

    .line 51
    :cond_1
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getProviderInstance()Landroidx/mediarouter/media/MediaRouteProvider;

    .line 52
    move-result-object v0

    .line 55
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mMr2Provider:Landroidx/mediarouter/media/MediaRoute2Provider;

    .line 56
    if-ne v0, v1, :cond_3

    .line 58
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 60
    if-eq v0, p1, :cond_3

    .line 62
    iget-object p0, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;

    .line 64
    invoke-virtual {v1, p0}, Landroidx/mediarouter/media/MediaRoute2Provider;->getRouteById(Ljava/lang/String;)Landroid/media/MediaRoute2Info;

    .line 66
    move-result-object p1

    .line 69
    if-nez p1, :cond_2

    .line 70
    const-string/jumbo p1, "transferTo: Specified route not found. routeId="

    .line 72
    const-string p2, "MR2Provider"

    .line 75
    invoke-static {p1, p0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    goto :goto_0

    .line 80
    :cond_2
    iget-object p0, v1, Landroidx/mediarouter/media/MediaRoute2Provider;->mMediaRouter2:Landroid/media/MediaRouter2;

    .line 81
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter2;->transferTo(Landroid/media/MediaRoute2Info;)V

    .line 83
    :goto_0
    return-void

    .line 86
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->selectRouteInternal(Landroidx/mediarouter/media/MediaRouter$RouteInfo;I)V

    .line 87
    return-void
    .line 90
.end method

.method public final selectRouteInternal(Landroidx/mediarouter/media/MediaRouter$RouteInfo;I)V
    .locals 12

    .line 1
    sget-object v0, Landroidx/mediarouter/media/MediaRouter;->sGlobal:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x3

    .line 6
    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mBluetoothRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 9
    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 16
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 19
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->getDefaultRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 23
    move-result-object v0

    .line 26
    if-ne v0, p1, :cond_0

    .line 27
    move v0, v2

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v0, v1

    .line 31
    :goto_0
    if-eqz v0, :cond_4

    .line 32
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 34
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 38
    move-result-object v0

    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    move v5, v3

    .line 47
    :goto_1
    array-length v6, v0

    .line 48
    if-ge v5, v6, :cond_2

    .line 49
    aget-object v6, v0, v5

    .line 51
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 53
    move-result-object v7

    .line 56
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string v7, "."

    .line 60
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 65
    move-result-object v7

    .line 68
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v7, ":"

    .line 72
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getLineNumber()I

    .line 77
    move-result v6

    .line 80
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    const-string v6, "  "

    .line 84
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    add-int/lit8 v5, v5, 0x1

    .line 89
    goto :goto_1

    .line 91
    :cond_2
    sget-object v0, Landroidx/mediarouter/media/MediaRouter;->sGlobal:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 92
    if-nez v0, :cond_3

    .line 94
    const-string v0, "MediaRouter"

    .line 96
    new-instance v5, Ljava/lang/StringBuilder;

    .line 98
    const-string/jumbo v6, "setSelectedRouteInternal is called while sGlobal is null: pkgName="

    .line 100
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    iget-object v6, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mApplicationContext:Landroid/content/Context;

    .line 106
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 108
    move-result-object v6

    .line 111
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v6, ", callers="

    .line 115
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object v4

    .line 126
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    goto :goto_2

    .line 130
    :cond_3
    const-string v0, "MediaRouter"

    .line 131
    new-instance v5, Ljava/lang/StringBuilder;

    .line 133
    const-string v6, "Default route is selected while a BT route is available: pkgName="

    .line 135
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    iget-object v6, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mApplicationContext:Landroid/content/Context;

    .line 140
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 142
    move-result-object v6

    .line 145
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const-string v6, ", callers="

    .line 149
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    move-result-object v4

    .line 160
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_4
    :goto_2
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 164
    if-ne v0, p1, :cond_5

    .line 166
    return-void

    .line 168
    :cond_5
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRequestedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 169
    const/4 v4, 0x0

    .line 171
    if-eqz v0, :cond_6

    .line 172
    iput-object v4, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRequestedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 174
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRequestedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    .line 176
    if-eqz v0, :cond_6

    .line 178
    invoke-virtual {v0, v3}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onUnselect(I)V

    .line 180
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRequestedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    .line 183
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onRelease()V

    .line 185
    iput-object v4, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRequestedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    .line 188
    :cond_6
    iget-boolean v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mTransferReceiverDeclared:Z

    .line 190
    if-eqz v0, :cond_c

    .line 192
    iget-object v0, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mProvider:Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    .line 194
    iget-object v0, v0, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mDescriptor:Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    .line 196
    if-eqz v0, :cond_7

    .line 198
    iget-boolean v0, v0, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->mSupportsDynamicGroupRoute:Z

    .line 200
    if-eqz v0, :cond_7

    .line 202
    move v1, v2

    .line 204
    :cond_7
    if-eqz v1, :cond_c

    .line 205
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getProviderInstance()Landroidx/mediarouter/media/MediaRouteProvider;

    .line 207
    move-result-object v0

    .line 210
    iget-object v1, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;

    .line 211
    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouteProvider;->onCreateDynamicGroupRouteController(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    .line 213
    move-result-object v0

    .line 216
    if-eqz v0, :cond_b

    .line 217
    iget-object p2, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mApplicationContext:Landroid/content/Context;

    .line 219
    sget-object v1, Landroidx/core/app/ActivityCompat;->sLock:Ljava/lang/Object;

    .line 221
    invoke-virtual {p2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 223
    move-result-object p2

    .line 226
    iget-object v7, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDynamicRoutesListener:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$1;

    .line 227
    iget-object v1, v0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->mLock:Ljava/lang/Object;

    .line 229
    monitor-enter v1

    .line 231
    if-eqz p2, :cond_a

    .line 232
    if-eqz v7, :cond_9

    .line 234
    :try_start_0
    iput-object p2, v0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->mExecutor:Ljava/util/concurrent/Executor;

    .line 236
    iput-object v7, v0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->mListener:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$1;

    .line 238
    iget-object p2, v0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->mPendingRoutes:Ljava/util/Collection;

    .line 240
    if-eqz p2, :cond_8

    .line 242
    check-cast p2, Ljava/util/ArrayList;

    .line 244
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 246
    move-result p2

    .line 249
    if-nez p2, :cond_8

    .line 250
    iget-object v8, v0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->mPendingGroupRoute:Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 252
    iget-object v9, v0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->mPendingRoutes:Ljava/util/Collection;

    .line 254
    iput-object v4, v0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->mPendingGroupRoute:Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 256
    iput-object v4, v0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->mPendingRoutes:Ljava/util/Collection;

    .line 258
    iget-object p2, v0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->mExecutor:Ljava/util/concurrent/Executor;

    .line 260
    new-instance v2, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$1;

    .line 262
    const/4 v10, 0x0

    .line 264
    move-object v5, v2

    .line 265
    move-object v6, v0

    .line 266
    invoke-direct/range {v5 .. v10}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$1;-><init>(Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$1;Landroidx/mediarouter/media/MediaRouteDescriptor;Ljava/util/Collection;I)V

    .line 267
    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 270
    :cond_8
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRequestedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 274
    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRequestedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    .line 276
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onSelect()V

    .line 278
    return-void

    .line 281
    :cond_9
    :try_start_1
    new-instance p0, Ljava/lang/NullPointerException;

    .line 282
    const-string p1, "Listener shouldn\'t be null"

    .line 284
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 286
    throw p0

    .line 289
    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    .line 290
    const-string p1, "Executor shouldn\'t be null"

    .line 292
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 294
    throw p0

    .line 297
    :catchall_0
    move-exception p0

    .line 298
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 299
    throw p0

    .line 300
    :cond_b
    const-string v0, "MediaRouter"

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    .line 303
    const-string/jumbo v2, "setSelectedRouteInternal: Failed to create dynamic group route controller. route="

    .line 305
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    move-result-object v1

    .line 317
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_c
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getProviderInstance()Landroidx/mediarouter/media/MediaRouteProvider;

    .line 321
    move-result-object v0

    .line 324
    iget-object v1, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;

    .line 325
    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouteProvider;->onCreateRouteController(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 327
    move-result-object v8

    .line 330
    if-eqz v8, :cond_d

    .line 331
    invoke-virtual {v8}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onSelect()V

    .line 333
    :cond_d
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 336
    if-nez v0, :cond_e

    .line 338
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 340
    iput-object v8, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 342
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    .line 344
    new-instance v0, Landroidx/core/util/Pair;

    .line 346
    invoke-direct {v0, v4, p1}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 348
    const/16 p1, 0x106

    .line 351
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 353
    move-result-object p0

    .line 356
    iput p2, p0, Landroid/os/Message;->arg1:I

    .line 357
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 359
    goto :goto_3

    .line 362
    :cond_e
    const/4 v10, 0x0

    .line 363
    const/4 v11, 0x0

    .line 364
    move-object v5, p0

    .line 365
    move-object v6, p0

    .line 366
    move-object v7, p1

    .line 367
    move v9, p2

    .line 368
    invoke-virtual/range {v5 .. v11}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->notifyTransfer(Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouteProvider$RouteController;ILandroidx/mediarouter/media/MediaRouter$RouteInfo;Ljava/util/Collection;)V

    .line 369
    :goto_3
    return-void
    .line 372
.end method

.method public final updateDiscoveryRequest()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    new-instance v1, Landroidx/mediarouter/media/MediaRouteSelector$Builder;

    .line 4
    invoke-direct {v1}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;-><init>()V

    .line 6
    iget-object v2, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mActiveScanThrottlingHelper:Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;

    .line 9
    const-wide/16 v3, 0x0

    .line 11
    iput-wide v3, v2, Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;->mSuppressActiveScanTimeout:J

    .line 13
    const/4 v5, 0x0

    .line 15
    iput-boolean v5, v2, Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;->mActiveScan:Z

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 18
    move-result-wide v6

    .line 21
    iput-wide v6, v2, Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;->mCurrentTime:J

    .line 22
    iget-object v6, v2, Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;->mHandler:Landroid/os/Handler;

    .line 24
    iget-object v2, v2, Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;->mUpdateDiscoveryRequestRunnable:Ljava/lang/Runnable;

    .line 26
    invoke-virtual {v6, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 28
    iget-object v2, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 33
    move-result v6

    .line 36
    move v7, v5

    .line 37
    move v8, v7

    .line 38
    :goto_0
    add-int/lit8 v6, v6, -0x1

    .line 39
    iget-boolean v9, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mLowRam:Z

    .line 41
    if-ltz v6, :cond_9

    .line 43
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object v10

    .line 48
    check-cast v10, Ljava/lang/ref/WeakReference;

    .line 49
    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 51
    move-result-object v10

    .line 54
    check-cast v10, Landroidx/mediarouter/media/MediaRouter;

    .line 55
    if-nez v10, :cond_0

    .line 57
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 59
    move/from16 v16, v6

    .line 62
    goto/16 :goto_5

    .line 64
    :cond_0
    iget-object v10, v10, Landroidx/mediarouter/media/MediaRouter;->mCallbackRecords:Ljava/util/ArrayList;

    .line 66
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 68
    move-result v11

    .line 71
    add-int/2addr v7, v11

    .line 72
    move v12, v5

    .line 73
    :goto_1
    if-ge v12, v11, :cond_8

    .line 74
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    move-result-object v13

    .line 79
    check-cast v13, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;

    .line 80
    iget-object v14, v13, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 82
    if-eqz v14, :cond_7

    .line 84
    invoke-virtual {v14}, Landroidx/mediarouter/media/MediaRouteSelector;->getControlCategories()Ljava/util/List;

    .line 86
    move-result-object v14

    .line 89
    invoke-virtual {v1, v14}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;->addControlCategories(Ljava/util/Collection;)V

    .line 90
    iget v14, v13, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->mFlags:I

    .line 93
    const/4 v15, 0x1

    .line 95
    and-int/2addr v14, v15

    .line 96
    if-eqz v14, :cond_1

    .line 97
    move v14, v15

    .line 99
    goto :goto_2

    .line 100
    :cond_1
    move v14, v5

    .line 101
    :goto_2
    iget-object v5, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mActiveScanThrottlingHelper:Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;

    .line 102
    iget-wide v3, v13, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->mTimestamp:J

    .line 104
    if-nez v14, :cond_2

    .line 106
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    move/from16 v16, v6

    .line 111
    move/from16 v17, v7

    .line 113
    goto :goto_3

    .line 115
    :cond_2
    move/from16 v16, v6

    .line 116
    move/from16 v17, v7

    .line 118
    iget-wide v6, v5, Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;->mCurrentTime:J

    .line 120
    sub-long v18, v6, v3

    .line 122
    const-wide/16 v20, 0x7530

    .line 124
    cmp-long v18, v18, v20

    .line 126
    if-ltz v18, :cond_3

    .line 128
    :goto_3
    move-object/from16 v18, v10

    .line 130
    move/from16 v19, v11

    .line 132
    goto :goto_4

    .line 134
    :cond_3
    move-object/from16 v18, v10

    .line 135
    move/from16 v19, v11

    .line 137
    iget-wide v10, v5, Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;->mSuppressActiveScanTimeout:J

    .line 139
    add-long v3, v3, v20

    .line 141
    sub-long/2addr v3, v6

    .line 143
    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 144
    move-result-wide v3

    .line 147
    iput-wide v3, v5, Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;->mSuppressActiveScanTimeout:J

    .line 148
    iput-boolean v15, v5, Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;->mActiveScan:Z

    .line 150
    :goto_4
    if-eqz v14, :cond_4

    .line 152
    move v8, v15

    .line 154
    :cond_4
    iget v3, v13, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->mFlags:I

    .line 155
    and-int/lit8 v4, v3, 0x4

    .line 157
    if-eqz v4, :cond_5

    .line 159
    if-nez v9, :cond_5

    .line 161
    move v8, v15

    .line 163
    :cond_5
    and-int/lit8 v3, v3, 0x8

    .line 164
    if-eqz v3, :cond_6

    .line 166
    move v8, v15

    .line 168
    :cond_6
    add-int/lit8 v12, v12, 0x1

    .line 169
    move/from16 v6, v16

    .line 171
    move/from16 v7, v17

    .line 173
    move-object/from16 v10, v18

    .line 175
    move/from16 v11, v19

    .line 177
    const-wide/16 v3, 0x0

    .line 179
    const/4 v5, 0x0

    .line 181
    goto :goto_1

    .line 182
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 183
    const-string/jumbo v1, "selector must not be null"

    .line 185
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 188
    throw v0

    .line 191
    :cond_8
    move/from16 v16, v6

    .line 192
    move/from16 v17, v7

    .line 194
    :goto_5
    move/from16 v6, v16

    .line 196
    const-wide/16 v3, 0x0

    .line 198
    const/4 v5, 0x0

    .line 200
    goto/16 :goto_0

    .line 201
    :cond_9
    iget-object v2, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mActiveScanThrottlingHelper:Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;

    .line 203
    iget-boolean v3, v2, Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;->mActiveScan:Z

    .line 205
    if-eqz v3, :cond_a

    .line 207
    iget-wide v3, v2, Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;->mSuppressActiveScanTimeout:J

    .line 209
    const-wide/16 v5, 0x0

    .line 211
    cmp-long v5, v3, v5

    .line 213
    if-lez v5, :cond_a

    .line 215
    iget-object v5, v2, Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;->mHandler:Landroid/os/Handler;

    .line 217
    iget-object v6, v2, Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;->mUpdateDiscoveryRequestRunnable:Ljava/lang/Runnable;

    .line 219
    invoke-virtual {v5, v6, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 221
    :cond_a
    iget-boolean v2, v2, Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;->mActiveScan:Z

    .line 224
    iput v7, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCallbackCount:I

    .line 226
    if-eqz v8, :cond_b

    .line 228
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;->build()Landroidx/mediarouter/media/MediaRouteSelector;

    .line 230
    move-result-object v3

    .line 233
    goto :goto_6

    .line 234
    :cond_b
    sget-object v3, Landroidx/mediarouter/media/MediaRouteSelector;->EMPTY:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 235
    :goto_6
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;->build()Landroidx/mediarouter/media/MediaRouteSelector;

    .line 237
    move-result-object v1

    .line 240
    iget-boolean v4, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mTransferReceiverDeclared:Z

    .line 241
    const/4 v5, 0x0

    .line 243
    if-nez v4, :cond_c

    .line 244
    goto :goto_8

    .line 246
    :cond_c
    iget-object v4, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequestForMr2Provider:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 247
    if-eqz v4, :cond_d

    .line 249
    invoke-virtual {v4}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->ensureSelector()V

    .line 251
    iget-object v4, v4, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 254
    invoke-virtual {v4, v1}, Landroidx/mediarouter/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    .line 256
    move-result v4

    .line 259
    if-eqz v4, :cond_d

    .line 260
    iget-object v4, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequestForMr2Provider:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 262
    invoke-virtual {v4}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->isActiveScan()Z

    .line 264
    move-result v4

    .line 267
    if-ne v4, v2, :cond_d

    .line 268
    goto :goto_8

    .line 270
    :cond_d
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouteSelector;->isEmpty()Z

    .line 271
    move-result v4

    .line 274
    if-eqz v4, :cond_f

    .line 275
    if-nez v2, :cond_f

    .line 277
    iget-object v1, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequestForMr2Provider:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 279
    if-nez v1, :cond_e

    .line 281
    goto :goto_8

    .line 283
    :cond_e
    iput-object v5, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequestForMr2Provider:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 284
    goto :goto_7

    .line 286
    :cond_f
    new-instance v4, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 287
    invoke-direct {v4, v1, v2}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;-><init>(Landroidx/mediarouter/media/MediaRouteSelector;Z)V

    .line 289
    iput-object v4, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequestForMr2Provider:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 292
    :goto_7
    iget-object v1, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mMr2Provider:Landroidx/mediarouter/media/MediaRoute2Provider;

    .line 294
    iget-object v4, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequestForMr2Provider:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 296
    invoke-virtual {v1, v4}, Landroidx/mediarouter/media/MediaRouteProvider;->setDiscoveryRequest(Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;)V

    .line 298
    :goto_8
    iget-object v1, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequest:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 301
    if-eqz v1, :cond_10

    .line 303
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->ensureSelector()V

    .line 305
    iget-object v1, v1, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 308
    invoke-virtual {v1, v3}, Landroidx/mediarouter/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    .line 310
    move-result v1

    .line 313
    if-eqz v1, :cond_10

    .line 314
    iget-object v1, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequest:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 316
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->isActiveScan()Z

    .line 318
    move-result v1

    .line 321
    if-ne v1, v2, :cond_10

    .line 322
    return-void

    .line 324
    :cond_10
    invoke-virtual {v3}, Landroidx/mediarouter/media/MediaRouteSelector;->isEmpty()Z

    .line 325
    move-result v1

    .line 328
    if-eqz v1, :cond_12

    .line 329
    if-nez v2, :cond_12

    .line 331
    iget-object v1, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequest:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 333
    if-nez v1, :cond_11

    .line 335
    return-void

    .line 337
    :cond_11
    iput-object v5, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequest:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 338
    goto :goto_9

    .line 340
    :cond_12
    new-instance v1, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 341
    invoke-direct {v1, v3, v2}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;-><init>(Landroidx/mediarouter/media/MediaRouteSelector;Z)V

    .line 343
    iput-object v1, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequest:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 346
    :goto_9
    if-eqz v8, :cond_13

    .line 348
    if-nez v2, :cond_13

    .line 350
    if-eqz v9, :cond_13

    .line 352
    const-string v1, "MediaRouter"

    .line 354
    const-string v2, "Forcing passive route discovery on a low-RAM device, system performance may be affected.  Please consider using CALLBACK_FLAG_REQUEST_DISCOVERY instead of CALLBACK_FLAG_FORCE_DISCOVERY."

    .line 356
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_13
    iget-object v1, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    .line 361
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 363
    move-result v2

    .line 366
    const/4 v5, 0x0

    .line 367
    :goto_a
    if-ge v5, v2, :cond_15

    .line 368
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 370
    move-result-object v3

    .line 373
    check-cast v3, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    .line 374
    iget-object v3, v3, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mProviderInstance:Landroidx/mediarouter/media/MediaRouteProvider;

    .line 376
    iget-object v4, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mMr2Provider:Landroidx/mediarouter/media/MediaRoute2Provider;

    .line 378
    if-ne v3, v4, :cond_14

    .line 380
    goto :goto_b

    .line 382
    :cond_14
    iget-object v4, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequest:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 383
    invoke-virtual {v3, v4}, Landroidx/mediarouter/media/MediaRouteProvider;->setDiscoveryRequest(Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;)V

    .line 385
    :goto_b
    add-int/lit8 v5, v5, 0x1

    .line 388
    goto :goto_a

    .line 390
    :cond_15
    return-void
    .line 391
.end method

.method public final updatePlaybackInfoFromSelectedRoute()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 2
    if-eqz v0, :cond_4

    .line 4
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getVolumeHandling()I

    .line 11
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    iget-boolean v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mTransferReceiverDeclared:Z

    .line 24
    if-eqz v0, :cond_2

    .line 26
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 28
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getProviderInstance()Landroidx/mediarouter/media/MediaRouteProvider;

    .line 30
    move-result-object v0

    .line 33
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mMr2Provider:Landroidx/mediarouter/media/MediaRoute2Provider;

    .line 34
    if-ne v0, v1, :cond_2

    .line 36
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 38
    instance-of v1, v0, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;

    .line 40
    if-nez v1, :cond_0

    .line 42
    goto :goto_0

    .line 44
    :cond_0
    check-cast v0, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;

    .line 45
    iget-object v0, v0, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;->mRoutingController:Landroid/media/MediaRouter2$RoutingController;

    .line 47
    if-nez v0, :cond_1

    .line 49
    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaRouter2$RoutingController;->getId()Ljava/lang/String;

    .line 52
    :cond_2
    :goto_0
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRemoteControlClients:Ljava/util/ArrayList;

    .line 55
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 57
    move-result v0

    .line 60
    if-gtz v0, :cond_3

    .line 61
    goto :goto_1

    .line 63
    :cond_3
    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    move-result-object p0

    .line 68
    invoke-static {p0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 69
    const/4 p0, 0x0

    .line 72
    throw p0

    .line 73
    :cond_4
    :goto_1
    return-void
    .line 74
.end method

.method public final updateProviderContents(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v2, p2

    .line 6
    iget-object v3, v1, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mDescriptor:Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    .line 8
    if-eq v3, v2, :cond_0

    .line 10
    iput-object v2, v1, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mDescriptor:Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    .line 12
    const/4 v3, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v3, 0x0

    .line 16
    :goto_0
    if-nez v3, :cond_1

    .line 17
    return-void

    .line 19
    :cond_1
    iget-object v3, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    .line 20
    iget-object v6, v1, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mRoutes:Ljava/util/List;

    .line 22
    const-string v7, "MediaRouter"

    .line 24
    iget-object v8, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    .line 26
    if-eqz v2, :cond_f

    .line 28
    invoke-virtual/range {p2 .. p2}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->isValid()Z

    .line 30
    move-result v9

    .line 33
    if-nez v9, :cond_2

    .line 34
    iget-object v9, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroidx/mediarouter/media/SystemMediaRouteProvider$Api24Impl;

    .line 36
    iget-object v9, v9, Landroidx/mediarouter/media/MediaRouteProvider;->mDescriptor:Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    .line 38
    if-ne v2, v9, :cond_f

    .line 40
    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    .line 42
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 44
    new-instance v10, Ljava/util/ArrayList;

    .line 47
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 49
    iget-object v2, v2, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->mRoutes:Ljava/util/List;

    .line 52
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 54
    move-result-object v2

    .line 57
    const/4 v11, 0x0

    .line 58
    const/4 v12, 0x0

    .line 59
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    move-result v13

    .line 63
    if-eqz v13, :cond_c

    .line 64
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    move-result-object v13

    .line 69
    check-cast v13, Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 70
    if-eqz v13, :cond_b

    .line 72
    invoke-virtual {v13}, Landroidx/mediarouter/media/MediaRouteDescriptor;->isValid()Z

    .line 74
    move-result v15

    .line 77
    if-nez v15, :cond_3

    .line 78
    goto/16 :goto_6

    .line 80
    :cond_3
    invoke-virtual {v13}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getId()Ljava/lang/String;

    .line 82
    move-result-object v15

    .line 85
    move-object v4, v6

    .line 86
    check-cast v4, Ljava/util/ArrayList;

    .line 87
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 89
    move-result v5

    .line 92
    const/4 v14, 0x0

    .line 93
    :goto_2
    if-ge v14, v5, :cond_5

    .line 94
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    move-result-object v16

    .line 99
    move-object/from16 v17, v2

    .line 100
    move-object/from16 v2, v16

    .line 102
    check-cast v2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 104
    iget-object v2, v2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;

    .line 106
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    move-result v2

    .line 111
    if-eqz v2, :cond_4

    .line 112
    goto :goto_3

    .line 114
    :cond_4
    add-int/lit8 v14, v14, 0x1

    .line 115
    move-object/from16 v2, v17

    .line 117
    goto :goto_2

    .line 119
    :cond_5
    move-object/from16 v17, v2

    .line 120
    const/4 v14, -0x1

    .line 122
    :goto_3
    if-gez v14, :cond_7

    .line 123
    invoke-virtual {v0, v1, v15}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->assignRouteUniqueId(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    move-result-object v2

    .line 128
    new-instance v5, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 129
    invoke-direct {v5, v1, v15, v2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;-><init>(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    add-int/lit8 v2, v12, 0x1

    .line 134
    invoke-virtual {v4, v12, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 136
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-virtual {v13}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getGroupMemberIds()Ljava/util/List;

    .line 142
    move-result-object v4

    .line 145
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 146
    move-result v4

    .line 149
    if-lez v4, :cond_6

    .line 150
    new-instance v4, Landroidx/core/util/Pair;

    .line 152
    invoke-direct {v4, v5, v13}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    goto :goto_4

    .line 160
    :cond_6
    invoke-virtual {v5, v13}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->maybeUpdateDescriptor(Landroidx/mediarouter/media/MediaRouteDescriptor;)I

    .line 161
    const/16 v4, 0x101

    .line 164
    invoke-virtual {v8, v4, v5}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 166
    :goto_4
    move v12, v2

    .line 169
    goto :goto_7

    .line 170
    :cond_7
    if-ge v14, v12, :cond_8

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    .line 173
    const-string v4, "Ignoring route descriptor with duplicate id: "

    .line 175
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    move-result-object v2

    .line 186
    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    goto :goto_7

    .line 190
    :cond_8
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 191
    move-result-object v2

    .line 194
    check-cast v2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 195
    add-int/lit8 v4, v12, 0x1

    .line 197
    invoke-static {v6, v14, v12}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 199
    invoke-virtual {v13}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getGroupMemberIds()Ljava/util/List;

    .line 202
    move-result-object v5

    .line 205
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 206
    move-result v5

    .line 209
    if-lez v5, :cond_9

    .line 210
    new-instance v5, Landroidx/core/util/Pair;

    .line 212
    invoke-direct {v5, v2, v13}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 214
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    goto :goto_5

    .line 220
    :cond_9
    invoke-virtual {v0, v2, v13}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->updateRouteDescriptorAndNotify(Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouteDescriptor;)I

    .line 221
    move-result v5

    .line 224
    if-eqz v5, :cond_a

    .line 225
    iget-object v5, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 227
    if-ne v2, v5, :cond_a

    .line 229
    move v12, v4

    .line 231
    const/4 v11, 0x1

    .line 232
    goto :goto_7

    .line 233
    :cond_a
    :goto_5
    move v12, v4

    .line 234
    goto :goto_7

    .line 235
    :cond_b
    :goto_6
    move-object/from16 v17, v2

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    .line 238
    const-string v4, "Ignoring invalid system route descriptor: "

    .line 240
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    move-result-object v2

    .line 251
    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :goto_7
    move-object/from16 v2, v17

    .line 255
    goto/16 :goto_1

    .line 257
    :cond_c
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 259
    move-result-object v2

    .line 262
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 263
    move-result v4

    .line 266
    if-eqz v4, :cond_d

    .line 267
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 269
    move-result-object v4

    .line 272
    check-cast v4, Landroidx/core/util/Pair;

    .line 273
    iget-object v5, v4, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    .line 275
    check-cast v5, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 277
    iget-object v4, v4, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    .line 279
    check-cast v4, Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 281
    invoke-virtual {v5, v4}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->maybeUpdateDescriptor(Landroidx/mediarouter/media/MediaRouteDescriptor;)I

    .line 283
    const/16 v4, 0x101

    .line 286
    invoke-virtual {v8, v4, v5}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 288
    goto :goto_8

    .line 291
    :cond_d
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 292
    move-result-object v2

    .line 295
    move v4, v11

    .line 296
    :cond_e
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 297
    move-result v5

    .line 300
    if-eqz v5, :cond_10

    .line 301
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 303
    move-result-object v5

    .line 306
    check-cast v5, Landroidx/core/util/Pair;

    .line 307
    iget-object v7, v5, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    .line 309
    check-cast v7, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 311
    iget-object v5, v5, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    .line 313
    check-cast v5, Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 315
    invoke-virtual {v0, v7, v5}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->updateRouteDescriptorAndNotify(Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouteDescriptor;)I

    .line 317
    move-result v5

    .line 320
    if-eqz v5, :cond_e

    .line 321
    iget-object v5, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 323
    if-ne v7, v5, :cond_e

    .line 325
    const/4 v4, 0x1

    .line 327
    goto :goto_9

    .line 328
    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    .line 329
    const-string v5, "Ignoring invalid provider descriptor: "

    .line 331
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 339
    move-result-object v2

    .line 342
    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/4 v4, 0x0

    .line 346
    const/4 v12, 0x0

    .line 347
    :cond_10
    check-cast v6, Ljava/util/ArrayList;

    .line 348
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 350
    move-result v2

    .line 353
    const/4 v5, 0x1

    .line 354
    sub-int/2addr v2, v5

    .line 355
    :goto_a
    if-lt v2, v12, :cond_11

    .line 356
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 358
    move-result-object v5

    .line 361
    check-cast v5, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 362
    const/4 v7, 0x0

    .line 364
    invoke-virtual {v5, v7}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->maybeUpdateDescriptor(Landroidx/mediarouter/media/MediaRouteDescriptor;)I

    .line 365
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 368
    add-int/lit8 v2, v2, -0x1

    .line 371
    goto :goto_a

    .line 373
    :cond_11
    invoke-virtual {v0, v4}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->updateSelectedRouteIfNeeded(Z)V

    .line 374
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 377
    move-result v0

    .line 380
    const/4 v2, 0x1

    .line 381
    sub-int/2addr v0, v2

    .line 382
    :goto_b
    if-lt v0, v12, :cond_12

    .line 383
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 385
    move-result-object v2

    .line 388
    check-cast v2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 389
    const/16 v3, 0x102

    .line 391
    invoke-virtual {v8, v3, v2}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 393
    add-int/lit8 v0, v0, -0x1

    .line 396
    goto :goto_b

    .line 398
    :cond_12
    const/16 v0, 0x203

    .line 399
    invoke-virtual {v8, v0, v1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 401
    return-void
    .line 404
.end method

.method public final updateRouteDescriptorAndNotify(Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouteDescriptor;)I
    .locals 1

    .line 1
    invoke-virtual {p1, p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->maybeUpdateDescriptor(Landroidx/mediarouter/media/MediaRouteDescriptor;)I

    .line 2
    move-result p2

    .line 5
    if-eqz p2, :cond_2

    .line 6
    and-int/lit8 v0, p2, 0x1

    .line 8
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    .line 10
    if-eqz v0, :cond_0

    .line 12
    const/16 v0, 0x103

    .line 14
    invoke-virtual {p0, v0, p1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 16
    :cond_0
    and-int/lit8 v0, p2, 0x2

    .line 19
    if-eqz v0, :cond_1

    .line 21
    const/16 v0, 0x104

    .line 23
    invoke-virtual {p0, v0, p1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 25
    :cond_1
    and-int/lit8 v0, p2, 0x4

    .line 28
    if-eqz v0, :cond_2

    .line 30
    const/16 v0, 0x105

    .line 32
    invoke-virtual {p0, v0, p1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 34
    :cond_2
    return p2
    .line 37
.end method

.method public final updateSelectedRouteIfNeeded(Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 2
    const/4 v1, 0x0

    .line 4
    const-string v2, "MediaRouter"

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isSelectable()Z

    .line 9
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    const-string v3, "Clearing the default route because it is no longer selectable: "

    .line 17
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 22
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 30
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iput-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 34
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 36
    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    .line 38
    const/4 v4, 0x1

    .line 40
    const/4 v5, 0x0

    .line 41
    if-nez v0, :cond_3

    .line 42
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 44
    move-result v0

    .line 47
    if-nez v0, :cond_3

    .line 48
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object v0

    .line 53
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result v6

    .line 57
    if-eqz v6, :cond_3

    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object v6

    .line 63
    check-cast v6, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 64
    invoke-virtual {v6}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getProviderInstance()Landroidx/mediarouter/media/MediaRouteProvider;

    .line 66
    move-result-object v7

    .line 69
    iget-object v8, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroidx/mediarouter/media/SystemMediaRouteProvider$Api24Impl;

    .line 70
    if-ne v7, v8, :cond_2

    .line 72
    iget-object v7, v6, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;

    .line 74
    const-string v8, "DEFAULT_ROUTE"

    .line 76
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    move-result v7

    .line 81
    if-eqz v7, :cond_2

    .line 82
    move v7, v4

    .line 84
    goto :goto_0

    .line 85
    :cond_2
    move v7, v5

    .line 86
    :goto_0
    if-eqz v7, :cond_1

    .line 87
    invoke-virtual {v6}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isSelectable()Z

    .line 89
    move-result v7

    .line 92
    if-eqz v7, :cond_1

    .line 93
    iput-object v6, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    .line 97
    const-string v6, "Found default route: "

    .line 99
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    iget-object v6, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 104
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object v0

    .line 112
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_3
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mBluetoothRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 116
    if-eqz v0, :cond_4

    .line 118
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isSelectable()Z

    .line 120
    move-result v0

    .line 123
    if-nez v0, :cond_4

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    .line 126
    const-string v6, "Clearing the bluetooth route because it is no longer selectable: "

    .line 128
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    iget-object v6, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mBluetoothRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 133
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    move-result-object v0

    .line 141
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iput-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mBluetoothRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 145
    :cond_4
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mBluetoothRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 147
    if-nez v0, :cond_7

    .line 149
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 151
    move-result v0

    .line 154
    if-nez v0, :cond_7

    .line 155
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 157
    move-result-object v0

    .line 160
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 161
    move-result v1

    .line 164
    if-eqz v1, :cond_7

    .line 165
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    move-result-object v1

    .line 170
    check-cast v1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 171
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getProviderInstance()Landroidx/mediarouter/media/MediaRouteProvider;

    .line 173
    move-result-object v3

    .line 176
    iget-object v6, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroidx/mediarouter/media/SystemMediaRouteProvider$Api24Impl;

    .line 177
    if-ne v3, v6, :cond_6

    .line 179
    const-string v3, "android.media.intent.category.LIVE_AUDIO"

    .line 181
    invoke-virtual {v1, v3}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->supportsControlCategory(Ljava/lang/String;)Z

    .line 183
    move-result v3

    .line 186
    if-eqz v3, :cond_6

    .line 187
    const-string v3, "android.media.intent.category.LIVE_VIDEO"

    .line 189
    invoke-virtual {v1, v3}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->supportsControlCategory(Ljava/lang/String;)Z

    .line 191
    move-result v3

    .line 194
    if-nez v3, :cond_6

    .line 195
    move v3, v4

    .line 197
    goto :goto_1

    .line 198
    :cond_6
    move v3, v5

    .line 199
    :goto_1
    if-eqz v3, :cond_5

    .line 200
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isSelectable()Z

    .line 202
    move-result v3

    .line 205
    if-eqz v3, :cond_5

    .line 206
    iput-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mBluetoothRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    .line 210
    const-string v1, "Found bluetooth route: "

    .line 212
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mBluetoothRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    move-result-object v0

    .line 225
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_7
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 229
    if-eqz v0, :cond_9

    .line 231
    iget-boolean v0, v0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mEnabled:Z

    .line 233
    if-nez v0, :cond_8

    .line 235
    goto :goto_2

    .line 237
    :cond_8
    if-eqz p1, :cond_a

    .line 238
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->maybeUpdateMemberRouteControllers()V

    .line 240
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->updatePlaybackInfoFromSelectedRoute()V

    .line 243
    goto :goto_3

    .line 246
    :cond_9
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 247
    const-string v0, "Unselecting the current route because it is no longer selectable: "

    .line 249
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 254
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    move-result-object p1

    .line 262
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->chooseFallbackRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 266
    move-result-object p1

    .line 269
    invoke-virtual {p0, p1, v5}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->selectRouteInternal(Landroidx/mediarouter/media/MediaRouter$RouteInfo;I)V

    .line 270
    :cond_a
    :goto_3
    return-void
    .line 273
.end method
