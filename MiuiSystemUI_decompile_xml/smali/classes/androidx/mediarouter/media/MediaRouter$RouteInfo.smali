.class public final Landroidx/mediarouter/media/MediaRouter$RouteInfo;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mCanDisconnect:Z

.field public mConnectionState:I

.field public final mControlFilters:Ljava/util/ArrayList;

.field public mDescription:Ljava/lang/String;

.field public mDescriptor:Landroidx/mediarouter/media/MediaRouteDescriptor;

.field public final mDescriptorId:Ljava/lang/String;

.field public mDeviceType:I

.field public mDynamicGroupDescriptors:Landroidx/collection/ArrayMap;

.field public mEnabled:Z

.field public mExtras:Landroid/os/Bundle;

.field public mIconUri:Landroid/net/Uri;

.field public mMemberRoutes:Ljava/util/List;

.field public mName:Ljava/lang/String;

.field public mPlaybackStream:I

.field public mPlaybackType:I

.field public mPresentationDisplayId:I

.field public final mProvider:Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

.field public mSettingsIntent:Landroid/content/IntentSender;

.field public final mUniqueId:Ljava/lang/String;

.field public mVolume:I

.field public mVolumeHandling:I

.field public mVolumeMax:I


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    .line 10
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mMemberRoutes:Ljava/util/List;

    .line 20
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mProvider:Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    .line 22
    iput-object p2, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    .line 26
    return-void
    .line 28
.end method

.method public static getDynamicGroupController()Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;
    .locals 2

    .line 1
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 2
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 5
    move-result-object v0

    .line 8
    iget-object v0, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 9
    instance-of v1, v0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    .line 11
    if-eqz v1, :cond_0

    .line 13
    check-cast v0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    .line 15
    return-object v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return-object v0
    .line 19
.end method


# virtual methods
.method public final getDynamicGroupState(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$1;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDynamicGroupDescriptors:Landroidx/collection/ArrayMap;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget-object p1, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    new-instance v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$1;

    .line 16
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDynamicGroupDescriptors:Landroidx/collection/ArrayMap;

    .line 18
    invoke-virtual {p0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 23
    check-cast p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;

    .line 24
    invoke-direct {v0, p0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$1;-><init>(Ljava/lang/Object;)V

    .line 26
    return-object v0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    return-object p0

    .line 31
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    .line 32
    const-string/jumbo p1, "route must not be null"

    .line 34
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 37
    throw p0
    .line 40
.end method

.method public final getMemberRoutes()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mMemberRoutes:Ljava/util/List;

    .line 2
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final getProviderInstance()Landroidx/mediarouter/media/MediaRouteProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mProvider:Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 7
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mProviderInstance:Landroidx/mediarouter/media/MediaRouteProvider;

    .line 10
    return-object p0
    .line 12
.end method

.method public final getVolumeHandling()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isGroup()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    sget-object v0, Landroidx/mediarouter/media/MediaRouter;->sGlobal:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 8
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    move v0, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 15
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    const/4 v0, 0x1

    .line 22
    :goto_0
    if-nez v0, :cond_1

    .line 23
    return v1

    .line 25
    :cond_1
    iget p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    .line 26
    return p0
    .line 28
.end method

.method public final isDefaultOrBluetooth()Z
    .locals 4

    .line 1
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 2
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 5
    move-result-object v0

    .line 8
    iget-object v0, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 9
    if-eqz v0, :cond_4

    .line 11
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-ne v0, p0, :cond_0

    .line 15
    move v0, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, v2

    .line 19
    :goto_0
    if-nez v0, :cond_3

    .line 20
    iget v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDeviceType:I

    .line 22
    const/4 v3, 0x3

    .line 24
    if-ne v0, v3, :cond_1

    .line 25
    goto :goto_1

    .line 27
    :cond_1
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getProviderInstance()Landroidx/mediarouter/media/MediaRouteProvider;

    .line 28
    move-result-object v0

    .line 31
    iget-object v0, v0, Landroidx/mediarouter/media/MediaRouteProvider;->mMetadata:Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;

    .line 32
    iget-object v0, v0, Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;->mComponentName:Landroid/content/ComponentName;

    .line 34
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 39
    const-string v3, "android"

    .line 40
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 42
    move-result v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    const-string v0, "android.media.intent.category.LIVE_AUDIO"

    .line 48
    invoke-virtual {p0, v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->supportsControlCategory(Ljava/lang/String;)Z

    .line 50
    move-result v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    const-string v0, "android.media.intent.category.LIVE_VIDEO"

    .line 56
    invoke-virtual {p0, v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->supportsControlCategory(Ljava/lang/String;)Z

    .line 58
    move-result p0

    .line 61
    if-nez p0, :cond_2

    .line 62
    goto :goto_1

    .line 64
    :cond_2
    move v1, v2

    .line 65
    :cond_3
    :goto_1
    return v1

    .line 66
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 67
    const-string v0, "There is no default route.  The media router has not yet been fully initialized."

    .line 69
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    throw p0
    .line 74
.end method

.method public final isGroup()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getMemberRoutes()Ljava/util/List;

    .line 2
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    move-result p0

    .line 9
    const/4 v0, 0x1

    .line 10
    if-lt p0, v0, :cond_0

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
    .line 15
.end method

.method public final isSelectable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescriptor:Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-boolean p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mEnabled:Z

    .line 6
    if-eqz p0, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
    .line 13
.end method

.method public final isSelected()Z
    .locals 1

    .line 1
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 2
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 5
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->getSelectedRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 9
    move-result-object v0

    .line 12
    if-ne v0, p0, :cond_0

    .line 13
    const/4 p0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return p0
    .line 18
.end method

.method public final matchesSelector(Landroidx/mediarouter/media/MediaRouteSelector;)Z
    .locals 4

    .line 1
    if-eqz p1, :cond_6

    .line 2
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 4
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    .line 7
    const/4 v0, 0x0

    .line 9
    if-nez p0, :cond_0

    .line 10
    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteSelector;->ensureControlCategories()V

    .line 13
    iget-object v1, p1, Landroidx/mediarouter/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    .line 16
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 18
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    goto :goto_1

    .line 24
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object p0

    .line 28
    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v1

    .line 32
    if-eqz v1, :cond_5

    .line 33
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 38
    check-cast v1, Landroid/content/IntentFilter;

    .line 39
    if-nez v1, :cond_3

    .line 41
    goto :goto_0

    .line 43
    :cond_3
    iget-object v2, p1, Landroidx/mediarouter/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    .line 44
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 46
    move-result-object v2

    .line 49
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    move-result v3

    .line 53
    if-eqz v3, :cond_2

    .line 54
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    move-result-object v3

    .line 59
    check-cast v3, Ljava/lang/String;

    .line 60
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    .line 62
    move-result v3

    .line 65
    if-eqz v3, :cond_4

    .line 66
    const/4 v0, 0x1

    .line 68
    :cond_5
    :goto_1
    return v0

    .line 69
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 70
    const-string/jumbo p1, "selector must not be null"

    .line 72
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 75
    throw p0
    .line 78
.end method

.method public final maybeUpdateDescriptor(Landroidx/mediarouter/media/MediaRouteDescriptor;)I
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescriptor:Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eq v0, p1, :cond_24

    .line 5
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescriptor:Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 7
    if-eqz p1, :cond_24

    .line 9
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mName:Ljava/lang/String;

    .line 11
    iget-object v2, p1, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    .line 13
    const-string v3, "name"

    .line 15
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v4

    .line 20
    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    move-result v0

    .line 24
    const/4 v4, 0x1

    .line 25
    if-nez v0, :cond_0

    .line 26
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 31
    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mName:Ljava/lang/String;

    .line 32
    move v0, v4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v0, v1

    .line 36
    :goto_0
    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/String;

    .line 37
    const-string/jumbo v5, "status"

    .line 39
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object v6

    .line 45
    invoke-static {v3, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    move-result v3

    .line 49
    if-nez v3, :cond_1

    .line 50
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object v3

    .line 55
    iput-object v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/String;

    .line 56
    or-int/lit8 v0, v0, 0x1

    .line 58
    :cond_1
    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mIconUri:Landroid/net/Uri;

    .line 60
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getIconUri()Landroid/net/Uri;

    .line 62
    move-result-object v5

    .line 65
    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    move-result v3

    .line 69
    if-nez v3, :cond_2

    .line 70
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getIconUri()Landroid/net/Uri;

    .line 72
    move-result-object v3

    .line 75
    iput-object v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mIconUri:Landroid/net/Uri;

    .line 76
    or-int/lit8 v0, v0, 0x1

    .line 78
    :cond_2
    iget-boolean v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mEnabled:Z

    .line 80
    const-string v5, "enabled"

    .line 82
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 84
    move-result v6

    .line 87
    if-eq v3, v6, :cond_3

    .line 88
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 90
    move-result v3

    .line 93
    iput-boolean v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mEnabled:Z

    .line 94
    or-int/lit8 v0, v0, 0x1

    .line 96
    :cond_3
    iget v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mConnectionState:I

    .line 98
    const-string v5, "connectionState"

    .line 100
    invoke-virtual {v2, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 102
    move-result v6

    .line 105
    if-eq v3, v6, :cond_4

    .line 106
    invoke-virtual {v2, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 108
    move-result v3

    .line 111
    iput v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mConnectionState:I

    .line 112
    or-int/lit8 v0, v0, 0x1

    .line 114
    :cond_4
    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    .line 116
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->ensureControlFilters()V

    .line 118
    iget-object v5, p1, Landroidx/mediarouter/media/MediaRouteDescriptor;->mControlFilters:Ljava/util/List;

    .line 121
    if-ne v3, v5, :cond_5

    .line 123
    goto/16 :goto_6

    .line 125
    :cond_5
    if-eqz v3, :cond_12

    .line 127
    if-nez v5, :cond_6

    .line 129
    goto/16 :goto_7

    .line 131
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    .line 133
    move-result-object v6

    .line 136
    invoke-interface {v5}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    .line 137
    move-result-object v5

    .line 140
    :cond_7
    invoke-interface {v6}, Ljava/util/ListIterator;->hasNext()Z

    .line 141
    move-result v7

    .line 144
    if-eqz v7, :cond_11

    .line 145
    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    .line 147
    move-result v7

    .line 150
    if-eqz v7, :cond_11

    .line 151
    invoke-interface {v6}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 153
    move-result-object v7

    .line 156
    check-cast v7, Landroid/content/IntentFilter;

    .line 157
    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 159
    move-result-object v8

    .line 162
    check-cast v8, Landroid/content/IntentFilter;

    .line 163
    if-ne v7, v8, :cond_8

    .line 165
    goto :goto_3

    .line 167
    :cond_8
    if-eqz v7, :cond_10

    .line 168
    if-nez v8, :cond_9

    .line 170
    goto :goto_4

    .line 172
    :cond_9
    invoke-virtual {v7}, Landroid/content/IntentFilter;->countActions()I

    .line 173
    move-result v9

    .line 176
    invoke-virtual {v8}, Landroid/content/IntentFilter;->countActions()I

    .line 177
    move-result v10

    .line 180
    if-eq v9, v10, :cond_a

    .line 181
    goto :goto_4

    .line 183
    :cond_a
    move v10, v1

    .line 184
    :goto_1
    if-ge v10, v9, :cond_c

    .line 185
    invoke-virtual {v7, v10}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    .line 187
    move-result-object v11

    .line 190
    invoke-virtual {v8, v10}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    .line 191
    move-result-object v12

    .line 194
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    move-result v11

    .line 198
    if-nez v11, :cond_b

    .line 199
    goto :goto_4

    .line 201
    :cond_b
    add-int/lit8 v10, v10, 0x1

    .line 202
    goto :goto_1

    .line 204
    :cond_c
    invoke-virtual {v7}, Landroid/content/IntentFilter;->countCategories()I

    .line 205
    move-result v9

    .line 208
    invoke-virtual {v8}, Landroid/content/IntentFilter;->countCategories()I

    .line 209
    move-result v10

    .line 212
    if-eq v9, v10, :cond_d

    .line 213
    goto :goto_4

    .line 215
    :cond_d
    move v10, v1

    .line 216
    :goto_2
    if-ge v10, v9, :cond_f

    .line 217
    invoke-virtual {v7, v10}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    .line 219
    move-result-object v11

    .line 222
    invoke-virtual {v8, v10}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    .line 223
    move-result-object v12

    .line 226
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 227
    move-result v11

    .line 230
    if-nez v11, :cond_e

    .line 231
    goto :goto_4

    .line 233
    :cond_e
    add-int/lit8 v10, v10, 0x1

    .line 234
    goto :goto_2

    .line 236
    :cond_f
    :goto_3
    move v7, v4

    .line 237
    goto :goto_5

    .line 238
    :cond_10
    :goto_4
    move v7, v1

    .line 239
    :goto_5
    if-nez v7, :cond_7

    .line 240
    goto :goto_7

    .line 242
    :cond_11
    invoke-interface {v6}, Ljava/util/ListIterator;->hasNext()Z

    .line 243
    move-result v6

    .line 246
    if-nez v6, :cond_12

    .line 247
    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    .line 249
    move-result v5

    .line 252
    if-nez v5, :cond_12

    .line 253
    :goto_6
    move v5, v4

    .line 255
    goto :goto_8

    .line 256
    :cond_12
    :goto_7
    move v5, v1

    .line 257
    :goto_8
    if-nez v5, :cond_13

    .line 258
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 260
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->ensureControlFilters()V

    .line 263
    iget-object v5, p1, Landroidx/mediarouter/media/MediaRouteDescriptor;->mControlFilters:Ljava/util/List;

    .line 266
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 268
    or-int/lit8 v0, v0, 0x1

    .line 271
    :cond_13
    iget v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPlaybackType:I

    .line 273
    const-string v5, "playbackType"

    .line 275
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 277
    move-result v6

    .line 280
    if-eq v3, v6, :cond_14

    .line 281
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 283
    move-result v3

    .line 286
    iput v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPlaybackType:I

    .line 287
    or-int/lit8 v0, v0, 0x1

    .line 289
    :cond_14
    iget v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    .line 291
    const-string v5, "playbackStream"

    .line 293
    const/4 v6, -0x1

    .line 295
    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 296
    move-result v7

    .line 299
    if-eq v3, v7, :cond_15

    .line 300
    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 302
    move-result v3

    .line 305
    iput v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    .line 306
    or-int/lit8 v0, v0, 0x1

    .line 308
    :cond_15
    iget v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDeviceType:I

    .line 310
    const-string v5, "deviceType"

    .line 312
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 314
    move-result v7

    .line 317
    if-eq v3, v7, :cond_16

    .line 318
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 320
    move-result v3

    .line 323
    iput v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDeviceType:I

    .line 324
    or-int/lit8 v0, v0, 0x1

    .line 326
    :cond_16
    iget v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    .line 328
    const-string/jumbo v5, "volumeHandling"

    .line 330
    invoke-virtual {v2, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 333
    move-result v7

    .line 336
    if-eq v3, v7, :cond_17

    .line 337
    invoke-virtual {v2, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 339
    move-result v3

    .line 342
    iput v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    .line 343
    or-int/lit8 v0, v0, 0x3

    .line 345
    :cond_17
    iget v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolume:I

    .line 347
    const-string/jumbo v5, "volume"

    .line 349
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 352
    move-result v7

    .line 355
    if-eq v3, v7, :cond_18

    .line 356
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 358
    move-result v3

    .line 361
    iput v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolume:I

    .line 362
    or-int/lit8 v0, v0, 0x3

    .line 364
    :cond_18
    iget v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolumeMax:I

    .line 366
    const-string/jumbo v5, "volumeMax"

    .line 368
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 371
    move-result v7

    .line 374
    if-eq v3, v7, :cond_19

    .line 375
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 377
    move-result v3

    .line 380
    iput v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolumeMax:I

    .line 381
    or-int/lit8 v0, v0, 0x3

    .line 383
    :cond_19
    iget v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    .line 385
    const-string v5, "presentationDisplayId"

    .line 387
    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 389
    move-result v7

    .line 392
    if-eq v3, v7, :cond_1a

    .line 393
    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 395
    move-result v3

    .line 398
    iput v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    .line 399
    or-int/lit8 v0, v0, 0x5

    .line 401
    :cond_1a
    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mExtras:Landroid/os/Bundle;

    .line 403
    const-string v5, "extras"

    .line 405
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 407
    move-result-object v6

    .line 410
    invoke-static {v3, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 411
    move-result v3

    .line 414
    if-nez v3, :cond_1b

    .line 415
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 417
    move-result-object v3

    .line 420
    iput-object v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mExtras:Landroid/os/Bundle;

    .line 421
    or-int/lit8 v0, v0, 0x1

    .line 423
    :cond_1b
    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mSettingsIntent:Landroid/content/IntentSender;

    .line 425
    const-string/jumbo v5, "settingsIntent"

    .line 427
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 430
    move-result-object v6

    .line 433
    check-cast v6, Landroid/content/IntentSender;

    .line 434
    invoke-static {v3, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 436
    move-result v3

    .line 439
    if-nez v3, :cond_1c

    .line 440
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 442
    move-result-object v3

    .line 445
    check-cast v3, Landroid/content/IntentSender;

    .line 446
    iput-object v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mSettingsIntent:Landroid/content/IntentSender;

    .line 448
    or-int/lit8 v0, v0, 0x1

    .line 450
    :cond_1c
    iget-boolean v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mCanDisconnect:Z

    .line 452
    const-string v5, "canDisconnect"

    .line 454
    invoke-virtual {v2, v5, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 456
    move-result v6

    .line 459
    if-eq v3, v6, :cond_1d

    .line 460
    invoke-virtual {v2, v5, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 462
    move-result v2

    .line 465
    iput-boolean v2, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mCanDisconnect:Z

    .line 466
    or-int/lit8 v0, v0, 0x5

    .line 468
    :cond_1d
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getGroupMemberIds()Ljava/util/List;

    .line 470
    move-result-object p1

    .line 473
    new-instance v2, Ljava/util/ArrayList;

    .line 474
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 476
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 479
    move-result v3

    .line 482
    iget-object v5, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mMemberRoutes:Ljava/util/List;

    .line 483
    check-cast v5, Ljava/util/ArrayList;

    .line 485
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 487
    move-result v5

    .line 490
    if-eq v3, v5, :cond_1e

    .line 491
    move v1, v4

    .line 493
    :cond_1e
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 494
    move-result v3

    .line 497
    if-nez v3, :cond_22

    .line 498
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 500
    move-result-object v3

    .line 503
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 504
    move-result-object p1

    .line 507
    :cond_1f
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 508
    move-result v5

    .line 511
    if-eqz v5, :cond_22

    .line 512
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 514
    move-result-object v5

    .line 517
    check-cast v5, Ljava/lang/String;

    .line 518
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 520
    iget-object v6, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mProvider:Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    .line 523
    iget-object v6, v6, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mMetadata:Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;

    .line 525
    iget-object v6, v6, Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;->mComponentName:Landroid/content/ComponentName;

    .line 527
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 529
    move-result-object v6

    .line 532
    iget-object v7, v3, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mUniqueIdMap:Ljava/util/Map;

    .line 533
    new-instance v8, Landroidx/core/util/Pair;

    .line 535
    invoke-direct {v8, v6, v5}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 537
    check-cast v7, Ljava/util/HashMap;

    .line 540
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    move-result-object v5

    .line 545
    check-cast v5, Ljava/lang/String;

    .line 546
    iget-object v6, v3, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    .line 548
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 550
    move-result-object v6

    .line 553
    :cond_20
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 554
    move-result v7

    .line 557
    if-eqz v7, :cond_21

    .line 558
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 560
    move-result-object v7

    .line 563
    check-cast v7, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 564
    iget-object v8, v7, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    .line 566
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 568
    move-result v8

    .line 571
    if-eqz v8, :cond_20

    .line 572
    goto :goto_a

    .line 574
    :cond_21
    const/4 v7, 0x0

    .line 575
    :goto_a
    if-eqz v7, :cond_1f

    .line 576
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    if-nez v1, :cond_1f

    .line 581
    iget-object v5, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mMemberRoutes:Ljava/util/List;

    .line 583
    check-cast v5, Ljava/util/ArrayList;

    .line 585
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 587
    move-result v5

    .line 590
    if-nez v5, :cond_1f

    .line 591
    move v1, v4

    .line 593
    goto :goto_9

    .line 594
    :cond_22
    if-eqz v1, :cond_23

    .line 595
    iput-object v2, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mMemberRoutes:Ljava/util/List;

    .line 597
    or-int/lit8 v1, v0, 0x1

    .line 599
    goto :goto_b

    .line 601
    :cond_23
    move v1, v0

    .line 602
    :cond_24
    :goto_b
    return v1
    .line 603
.end method

.method public final requestSetVolume(I)V
    .locals 3

    .line 1
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 2
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 5
    move-result-object v0

    .line 8
    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolumeMax:I

    .line 9
    const/4 v2, 0x0

    .line 11
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    .line 12
    move-result p1

    .line 15
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    .line 16
    move-result p1

    .line 19
    iget-object v1, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 20
    if-ne p0, v1, :cond_0

    .line 22
    iget-object v1, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 24
    if-eqz v1, :cond_0

    .line 26
    invoke-virtual {v1, p1}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onSetVolume(I)V

    .line 28
    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    .line 32
    check-cast v0, Ljava/util/HashMap;

    .line 34
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 36
    move-result v1

    .line 39
    if-nez v1, :cond_1

    .line 40
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    .line 42
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    move-result-object p0

    .line 47
    check-cast p0, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 48
    if-eqz p0, :cond_1

    .line 50
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onSetVolume(I)V

    .line 52
    :cond_1
    :goto_0
    return-void
    .line 55
.end method

.method public final requestUpdateVolume(I)V
    .locals 2

    .line 1
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 2
    if-eqz p1, :cond_1

    .line 5
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 7
    move-result-object v0

    .line 10
    iget-object v1, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 11
    if-ne p0, v1, :cond_0

    .line 13
    iget-object v1, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 15
    if-eqz v1, :cond_0

    .line 17
    invoke-virtual {v1, p1}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onUpdateVolume(I)V

    .line 19
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    .line 23
    check-cast v0, Ljava/util/HashMap;

    .line 25
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 27
    move-result v1

    .line 30
    if-nez v1, :cond_1

    .line 31
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    .line 33
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object p0

    .line 38
    check-cast p0, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 39
    if-eqz p0, :cond_1

    .line 41
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onUpdateVolume(I)V

    .line 43
    :cond_1
    :goto_0
    return-void
    .line 46
.end method

.method public final select()V
    .locals 2

    .line 1
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 2
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 5
    move-result-object v0

    .line 8
    const/4 v1, 0x3

    .line 9
    invoke-virtual {v0, p0, v1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->selectRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;I)V

    .line 10
    return-void
    .line 13
.end method

.method public final supportsControlCategory(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 2
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    :goto_0
    if-ge v2, v0, :cond_1

    .line 13
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v3

    .line 18
    check-cast v3, Landroid/content/IntentFilter;

    .line 19
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    .line 21
    move-result v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    const/4 p0, 0x1

    .line 27
    return p0

    .line 28
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 29
    goto :goto_0

    .line 31
    :cond_1
    return v1
    .line 32
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "MediaRouter.RouteInfo{ uniqueId="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", name="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mName:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", description="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/String;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", iconUri="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mIconUri:Landroid/net/Uri;

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", enabled="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-boolean v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mEnabled:Z

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, ", connectionState="

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mConnectionState:I

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, ", canDisconnect="

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-boolean v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mCanDisconnect:Z

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, ", playbackType="

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPlaybackType:I

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, ", playbackStream="

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    const-string v1, ", deviceType="

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDeviceType:I

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    const-string v1, ", volumeHandling="

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    const-string v1, ", volume="

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolume:I

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    const-string v1, ", volumeMax="

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolumeMax:I

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    const-string v1, ", presentationDisplayId="

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    const-string v1, ", extras="

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mExtras:Landroid/os/Bundle;

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    const-string v1, ", settingsIntent="

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mSettingsIntent:Landroid/content/IntentSender;

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    const-string v1, ", providerPackageName="

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mProvider:Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    .line 169
    iget-object v1, v1, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mMetadata:Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;

    .line 171
    iget-object v1, v1, Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;->mComponentName:Landroid/content/ComponentName;

    .line 173
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 175
    move-result-object v1

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isGroup()Z

    .line 182
    move-result v1

    .line 185
    if-eqz v1, :cond_3

    .line 186
    const-string v1, ", members=["

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mMemberRoutes:Ljava/util/List;

    .line 193
    check-cast v1, Ljava/util/ArrayList;

    .line 195
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 197
    move-result v1

    .line 200
    const/4 v2, 0x0

    .line 201
    :goto_0
    if-ge v2, v1, :cond_2

    .line 202
    if-lez v2, :cond_0

    .line 204
    const-string v3, ", "

    .line 206
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    :cond_0
    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mMemberRoutes:Ljava/util/List;

    .line 211
    check-cast v3, Ljava/util/ArrayList;

    .line 213
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 215
    move-result-object v3

    .line 218
    if-eq v3, p0, :cond_1

    .line 219
    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mMemberRoutes:Ljava/util/List;

    .line 221
    check-cast v3, Ljava/util/ArrayList;

    .line 223
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 225
    move-result-object v3

    .line 228
    check-cast v3, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 229
    iget-object v3, v3, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    .line 231
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 236
    goto :goto_0

    .line 238
    :cond_2
    const/16 p0, 0x5d

    .line 239
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 241
    :cond_3
    const-string p0, " }"

    .line 244
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    move-result-object p0

    .line 252
    return-object p0
    .line 253
.end method

.method public final updateDynamicDescriptors(Ljava/util/Collection;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mMemberRoutes:Ljava/util/List;

    .line 2
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDynamicGroupDescriptors:Landroidx/collection/ArrayMap;

    .line 9
    if-nez v0, :cond_0

    .line 11
    new-instance v0, Landroidx/collection/ArrayMap;

    .line 13
    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 15
    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDynamicGroupDescriptors:Landroidx/collection/ArrayMap;

    .line 18
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDynamicGroupDescriptors:Landroidx/collection/ArrayMap;

    .line 20
    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->clear()V

    .line 22
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object p1

    .line 28
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v0

    .line 32
    if-eqz v0, :cond_4

    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 38
    check-cast v0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;

    .line 39
    iget-object v1, v0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;->mMediaRouteDescriptor:Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 41
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getId()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 46
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mProvider:Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    .line 47
    invoke-virtual {v2, v1}, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->findRouteByDescriptorId(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 49
    move-result-object v1

    .line 52
    if-nez v1, :cond_2

    .line 53
    goto :goto_0

    .line 55
    :cond_2
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDynamicGroupDescriptors:Landroidx/collection/ArrayMap;

    .line 56
    iget-object v3, v1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    .line 58
    invoke-virtual {v2, v3, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const/4 v2, 0x2

    .line 63
    iget v0, v0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;->mSelectionState:I

    .line 64
    if-eq v0, v2, :cond_3

    .line 66
    const/4 v2, 0x3

    .line 68
    if-ne v0, v2, :cond_1

    .line 69
    :cond_3
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mMemberRoutes:Ljava/util/List;

    .line 71
    check-cast v0, Ljava/util/ArrayList;

    .line 73
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    goto :goto_0

    .line 78
    :cond_4
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 79
    move-result-object p1

    .line 82
    iget-object p1, p1, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    .line 83
    const/16 v0, 0x103

    .line 85
    invoke-virtual {p1, v0, p0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 87
    return-void
    .line 90
.end method
