.class public Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/window/sidecar/SidecarInterface$SidecarCallback;


# instance fields
.field public final mActivityWindowLayoutInfo:Ljava/util/Map;

.field public final mAdapter:Landroidx/window/layout/adapter/sidecar/SidecarAdapter;

.field public final mCallback:Landroidx/window/sidecar/SidecarInterface$SidecarCallback;

.field public mLastDeviceState:Landroidx/window/sidecar/SidecarDeviceState;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/window/layout/adapter/sidecar/SidecarAdapter;Landroidx/window/layout/adapter/sidecar/SidecarCompat$TranslatingCallback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;->mLock:Ljava/lang/Object;

    .line 10
    new-instance v0, Ljava/util/WeakHashMap;

    .line 12
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 14
    iput-object v0, p0, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;->mActivityWindowLayoutInfo:Ljava/util/Map;

    .line 17
    iput-object p1, p0, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;->mAdapter:Landroidx/window/layout/adapter/sidecar/SidecarAdapter;

    .line 19
    iput-object p2, p0, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;->mCallback:Landroidx/window/sidecar/SidecarInterface$SidecarCallback;

    .line 21
    return-void
    .line 23
.end method


# virtual methods
.method public onDeviceStateChanged(Landroidx/window/sidecar/SidecarDeviceState;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;->mAdapter:Landroidx/window/layout/adapter/sidecar/SidecarAdapter;

    .line 8
    iget-object v2, p0, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;->mLastDeviceState:Landroidx/window/sidecar/SidecarDeviceState;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    goto :goto_0

    .line 21
    :cond_1
    if-nez v2, :cond_2

    .line 22
    goto :goto_1

    .line 24
    :cond_2
    invoke-static {v2}, Landroidx/window/layout/adapter/sidecar/SidecarAdapter$Companion;->getSidecarDevicePosture$window_release(Landroidx/window/sidecar/SidecarDeviceState;)I

    .line 25
    move-result v1

    .line 28
    invoke-static {p1}, Landroidx/window/layout/adapter/sidecar/SidecarAdapter$Companion;->getSidecarDevicePosture$window_release(Landroidx/window/sidecar/SidecarDeviceState;)I

    .line 29
    move-result v2

    .line 32
    if-ne v1, v2, :cond_3

    .line 33
    :goto_0
    const/4 v1, 0x1

    .line 35
    goto :goto_2

    .line 36
    :cond_3
    :goto_1
    const/4 v1, 0x0

    .line 37
    :goto_2
    if-eqz v1, :cond_4

    .line 38
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :cond_4
    iput-object p1, p0, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;->mLastDeviceState:Landroidx/window/sidecar/SidecarDeviceState;

    .line 42
    iget-object p0, p0, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;->mCallback:Landroidx/window/sidecar/SidecarInterface$SidecarCallback;

    .line 44
    invoke-interface {p0, p1}, Landroidx/window/sidecar/SidecarInterface$SidecarCallback;->onDeviceStateChanged(Landroidx/window/sidecar/SidecarDeviceState;)V

    .line 46
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p0
    .line 53
.end method

.method public onWindowLayoutChanged(Landroid/os/IBinder;Landroidx/window/sidecar/SidecarWindowLayoutInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;->mLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;->mActivityWindowLayoutInfo:Ljava/util/Map;

    .line 5
    check-cast v1, Ljava/util/WeakHashMap;

    .line 7
    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 12
    check-cast v1, Landroidx/window/sidecar/SidecarWindowLayoutInfo;

    .line 13
    iget-object v2, p0, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;->mAdapter:Landroidx/window/layout/adapter/sidecar/SidecarAdapter;

    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-static {v1, p2}, Landroidx/window/layout/adapter/sidecar/SidecarAdapter;->isEqualSidecarWindowLayoutInfo(Landroidx/window/sidecar/SidecarWindowLayoutInfo;Landroidx/window/sidecar/SidecarWindowLayoutInfo;)Z

    .line 20
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v1, p0, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;->mActivityWindowLayoutInfo:Ljava/util/Map;

    .line 28
    check-cast v1, Ljava/util/WeakHashMap;

    .line 30
    invoke-virtual {v1, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object p0, p0, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;->mCallback:Landroidx/window/sidecar/SidecarInterface$SidecarCallback;

    .line 35
    invoke-interface {p0, p1, p2}, Landroidx/window/sidecar/SidecarInterface$SidecarCallback;->onWindowLayoutChanged(Landroid/os/IBinder;Landroidx/window/sidecar/SidecarWindowLayoutInfo;)V

    .line 37
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0
.end method
