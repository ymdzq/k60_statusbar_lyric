.class public final Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/window/layout/adapter/WindowBackend;


# static fields
.field public static volatile globalInstance:Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;

.field public static final globalLock:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field public final windowExtension:Landroidx/window/layout/adapter/sidecar/ExtensionInterfaceCompat;

.field public final windowLayoutChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 4
    sput-object v0, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(Landroidx/window/layout/adapter/sidecar/SidecarCompat;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;->windowExtension:Landroidx/window/layout/adapter/sidecar/ExtensionInterfaceCompat;

    .line 5
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;->windowLayoutChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    if-eqz p1, :cond_0

    .line 14
    new-instance v0, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$ExtensionListenerImpl;

    .line 16
    invoke-direct {v0, p0}, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$ExtensionListenerImpl;-><init>(Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;)V

    .line 18
    invoke-virtual {p1, v0}, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->setExtensionCallback(Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$ExtensionListenerImpl;)V

    .line 21
    :cond_0
    return-void
.end method


# virtual methods
.method public final callbackRemovedForActivity(Landroid/app/Activity;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;->windowLayoutChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    instance-of v1, v0, Ljava/util/Collection;

    .line 4
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v1, :cond_1

    .line 8
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 10
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    :cond_0
    move v0, v3

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v0

    .line 21
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 31
    check-cast v1, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;

    .line 32
    iget-object v1, v1, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;->activity:Landroid/app/Activity;

    .line 34
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    move v0, v2

    .line 42
    :goto_0
    if-eqz v0, :cond_3

    .line 43
    return-void

    .line 45
    :cond_3
    iget-object p0, p0, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;->windowExtension:Landroidx/window/layout/adapter/sidecar/ExtensionInterfaceCompat;

    .line 46
    if-eqz p0, :cond_b

    .line 48
    check-cast p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;

    .line 50
    const/4 v0, 0x0

    .line 52
    if-eqz p1, :cond_4

    .line 53
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 55
    move-result-object v1

    .line 58
    if-eqz v1, :cond_4

    .line 59
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 61
    move-result-object v1

    .line 64
    if-eqz v1, :cond_4

    .line 65
    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 67
    goto :goto_1

    .line 69
    :cond_4
    move-object v1, v0

    .line 70
    :goto_1
    if-nez v1, :cond_5

    .line 71
    goto :goto_4

    .line 73
    :cond_5
    iget-object v4, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->sidecar:Landroidx/window/sidecar/SidecarInterface;

    .line 74
    if-eqz v4, :cond_6

    .line 76
    invoke-interface {v4, v1}, Landroidx/window/sidecar/SidecarInterface;->onWindowLayoutChangeListenerRemoved(Landroid/os/IBinder;)V

    .line 78
    :cond_6
    iget-object v5, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->componentCallbackMap:Ljava/util/Map;

    .line 81
    move-object v6, v5

    .line 83
    check-cast v6, Ljava/util/LinkedHashMap;

    .line 84
    invoke-virtual {v6, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    move-result-object v6

    .line 89
    check-cast v6, Landroidx/core/util/Consumer;

    .line 90
    if-nez v6, :cond_7

    .line 92
    goto :goto_2

    .line 94
    :cond_7
    instance-of v7, p1, Landroidx/core/content/OnConfigurationChangedProvider;

    .line 95
    if-eqz v7, :cond_8

    .line 97
    move-object v7, p1

    .line 99
    check-cast v7, Landroidx/core/content/OnConfigurationChangedProvider;

    .line 100
    invoke-interface {v7, v6}, Landroidx/core/content/OnConfigurationChangedProvider;->removeOnConfigurationChangedListener(Landroidx/core/util/Consumer;)V

    .line 102
    :cond_8
    invoke-interface {v5, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :goto_2
    iget-object v5, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->extensionCallback:Landroidx/window/layout/adapter/sidecar/SidecarCompat$DistinctElementCallback;

    .line 108
    if-eqz v5, :cond_9

    .line 110
    iget-object v6, v5, Landroidx/window/layout/adapter/sidecar/SidecarCompat$DistinctElementCallback;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 112
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 114
    :try_start_0
    iget-object v5, v5, Landroidx/window/layout/adapter/sidecar/SidecarCompat$DistinctElementCallback;->activityWindowLayoutInfo:Ljava/util/WeakHashMap;

    .line 117
    invoke-virtual {v5, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 122
    goto :goto_3

    .line 125
    :catchall_0
    move-exception p0

    .line 126
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 127
    throw p0

    .line 130
    :cond_9
    :goto_3
    iget-object p0, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->windowListenerRegisteredContexts:Ljava/util/Map;

    .line 131
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 133
    move-result p1

    .line 136
    if-ne p1, v2, :cond_a

    .line 137
    move v3, v2

    .line 139
    :cond_a
    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    if-eqz v3, :cond_b

    .line 143
    if-eqz v4, :cond_b

    .line 145
    invoke-interface {v4, v2}, Landroidx/window/sidecar/SidecarInterface;->onDeviceStateListenersChanged(Z)V

    .line 147
    :cond_b
    :goto_4
    return-void
    .line 150
.end method

.method public final registerLayoutChangeCallback(Landroid/content/Context;Landroidx/profileinstaller/ProfileInstaller$$ExternalSyntheticLambda0;Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$2$$ExternalSyntheticLambda0;)V
    .locals 5

    .line 1
    instance-of v0, p1, Landroid/app/Activity;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Landroid/app/Activity;

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    move-object p1, v1

    .line 10
    :goto_0
    if-eqz p1, :cond_c

    .line 11
    sget-object v0, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 15
    :try_start_0
    iget-object v2, p0, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;->windowExtension:Landroidx/window/layout/adapter/sidecar/ExtensionInterfaceCompat;

    .line 18
    if-nez v2, :cond_1

    .line 20
    new-instance p0, Landroidx/window/layout/WindowLayoutInfo;

    .line 22
    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 24
    invoke-direct {p0, p1}, Landroidx/window/layout/WindowLayoutInfo;-><init>(Ljava/util/List;)V

    .line 26
    invoke-virtual {p3, p0}, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$2$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 32
    return-void

    .line 35
    :cond_1
    iget-object p0, p0, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;->windowLayoutChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 36
    :try_start_1
    instance-of v3, p0, Ljava/util/Collection;

    .line 38
    if-eqz v3, :cond_2

    .line 40
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 42
    move-result v3

    .line 45
    if-eqz v3, :cond_2

    .line 46
    goto :goto_1

    .line 48
    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 49
    move-result-object v3

    .line 52
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result v4

    .line 56
    if-eqz v4, :cond_4

    .line 57
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    move-result-object v4

    .line 62
    check-cast v4, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;

    .line 63
    iget-object v4, v4, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;->activity:Landroid/app/Activity;

    .line 65
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    move-result v4

    .line 70
    if-eqz v4, :cond_3

    .line 71
    const/4 v3, 0x1

    .line 73
    goto :goto_2

    .line 74
    :cond_4
    :goto_1
    const/4 v3, 0x0

    .line 75
    :goto_2
    new-instance v4, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;

    .line 76
    invoke-direct {v4, p1, p2, p3}, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;-><init>(Landroid/app/Activity;Landroidx/profileinstaller/ProfileInstaller$$ExternalSyntheticLambda0;Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$2$$ExternalSyntheticLambda0;)V

    .line 78
    invoke-virtual {p0, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    if-nez v3, :cond_7

    .line 84
    check-cast v2, Landroidx/window/layout/adapter/sidecar/SidecarCompat;

    .line 86
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 88
    move-result-object p0

    .line 91
    if-eqz p0, :cond_5

    .line 92
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 94
    move-result-object p0

    .line 97
    if-eqz p0, :cond_5

    .line 98
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 100
    :cond_5
    if-eqz v1, :cond_6

    .line 102
    invoke-virtual {v2, v1, p1}, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->register(Landroid/os/IBinder;Landroid/app/Activity;)V

    .line 104
    goto :goto_4

    .line 107
    :cond_6
    new-instance p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat$FirstAttachAdapter;

    .line 108
    invoke-direct {p0, v2, p1}, Landroidx/window/layout/adapter/sidecar/SidecarCompat$FirstAttachAdapter;-><init>(Landroidx/window/layout/adapter/sidecar/SidecarCompat;Landroid/app/Activity;)V

    .line 110
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 113
    move-result-object p1

    .line 116
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 117
    move-result-object p1

    .line 120
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 121
    goto :goto_4

    .line 124
    :cond_7
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 125
    move-result-object p0

    .line 128
    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    move-result p2

    .line 132
    if-eqz p2, :cond_9

    .line 133
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    move-result-object p2

    .line 138
    move-object v2, p2

    .line 139
    check-cast v2, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;

    .line 140
    iget-object v2, v2, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;->activity:Landroid/app/Activity;

    .line 142
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 144
    move-result v2

    .line 147
    if-eqz v2, :cond_8

    .line 148
    goto :goto_3

    .line 150
    :cond_9
    move-object p2, v1

    .line 151
    :goto_3
    check-cast p2, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;

    .line 152
    if-eqz p2, :cond_a

    .line 154
    iget-object v1, p2, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;->lastInfo:Landroidx/window/layout/WindowLayoutInfo;

    .line 156
    :cond_a
    if-eqz v1, :cond_b

    .line 158
    iput-object v1, v4, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;->lastInfo:Landroidx/window/layout/WindowLayoutInfo;

    .line 160
    new-instance p0, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper$$ExternalSyntheticLambda0;

    .line 162
    invoke-direct {p0, v4, v1}, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper$$ExternalSyntheticLambda0;-><init>(Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;Landroidx/window/layout/WindowLayoutInfo;)V

    .line 164
    iget-object p1, v4, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;->executor:Ljava/util/concurrent/Executor;

    .line 167
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    :cond_b
    :goto_4
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 172
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 175
    goto :goto_5

    .line 177
    :catchall_0
    move-exception p0

    .line 178
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 179
    throw p0

    .line 182
    :cond_c
    :goto_5
    if-nez v1, :cond_d

    .line 183
    new-instance p0, Landroidx/window/layout/WindowLayoutInfo;

    .line 185
    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 187
    invoke-direct {p0, p1}, Landroidx/window/layout/WindowLayoutInfo;-><init>(Ljava/util/List;)V

    .line 189
    invoke-virtual {p3, p0}, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$2$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    .line 192
    :cond_d
    return-void
    .line 195
.end method

.method public final unregisterLayoutChangeCallback(Landroidx/core/util/Consumer;)V
    .locals 5

    .line 1
    sget-object v0, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;->windowExtension:Landroidx/window/layout/adapter/sidecar/ExtensionInterfaceCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    if-nez v1, :cond_0

    .line 7
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iget-object v2, p0, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;->windowLayoutChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v2

    .line 21
    :cond_1
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
    check-cast v3, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;

    .line 32
    iget-object v4, v3, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;->callback:Landroidx/core/util/Consumer;

    .line 34
    if-ne v4, p1, :cond_1

    .line 36
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    goto :goto_0

    .line 41
    :cond_2
    iget-object p1, p0, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;->windowLayoutChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 42
    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 44
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 47
    move-result-object p1

    .line 50
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    move-result v1

    .line 54
    if-eqz v1, :cond_3

    .line 55
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    move-result-object v1

    .line 60
    check-cast v1, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;

    .line 61
    iget-object v1, v1, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;->activity:Landroid/app/Activity;

    .line 63
    invoke-virtual {p0, v1}, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;->callbackRemovedForActivity(Landroid/app/Activity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    goto :goto_1

    .line 68
    :cond_3
    monitor-exit v0

    .line 69
    return-void

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    monitor-exit v0

    .line 72
    throw p0
    .line 73
.end method
