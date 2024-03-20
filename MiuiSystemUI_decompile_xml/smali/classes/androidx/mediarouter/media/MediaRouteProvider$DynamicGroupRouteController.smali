.class public abstract Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;
.super Landroidx/mediarouter/media/MediaRouteProvider$RouteController;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mExecutor:Ljava/util/concurrent/Executor;

.field public mListener:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$1;

.field public final mLock:Ljava/lang/Object;

.field public mPendingGroupRoute:Landroidx/mediarouter/media/MediaRouteDescriptor;

.field public mPendingRoutes:Ljava/util/Collection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->mLock:Ljava/lang/Object;

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public getGroupableSelectionTitle()Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public getTransferableSectionTitle()Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final notifyDynamicRoutesChanged(Landroidx/mediarouter/media/MediaRouteDescriptor;Ljava/util/Collection;)V
    .locals 9

    .line 1
    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->mLock:Ljava/lang/Object;

    .line 4
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->mExecutor:Ljava/util/concurrent/Executor;

    .line 7
    if-eqz v1, :cond_0

    .line 9
    iget-object v4, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->mListener:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$1;

    .line 11
    new-instance v8, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$1;

    .line 13
    const/4 v7, 0x1

    .line 15
    move-object v2, v8

    .line 16
    move-object v3, p0

    .line 17
    move-object v5, p1

    .line 18
    move-object v6, p2

    .line 19
    invoke-direct/range {v2 .. v7}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$1;-><init>(Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$1;Landroidx/mediarouter/media/MediaRouteDescriptor;Ljava/util/Collection;I)V

    .line 20
    invoke-interface {v1, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 23
    goto :goto_0

    .line 26
    :cond_0
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->mPendingGroupRoute:Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 27
    new-instance p1, Ljava/util/ArrayList;

    .line 29
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 31
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->mPendingRoutes:Ljava/util/Collection;

    .line 34
    :goto_0
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0

    .line 40
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    .line 41
    const-string p1, "groupRoute must not be null"

    .line 43
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 45
    throw p0
    .line 48
.end method

.method public abstract onAddMemberRoute(Ljava/lang/String;)V
.end method

.method public abstract onRemoveMemberRoute(Ljava/lang/String;)V
.end method

.method public abstract onUpdateMemberRoutes(Ljava/util/List;)V
.end method
