.class public final Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroidx/window/layout/adapter/WindowBackend;


# instance fields
.field public final component:Landroidx/window/extensions/layout/WindowLayoutComponent;

.field public final consumerAdapter:Landroidx/window/core/ConsumerAdapter;

.field public final consumerToOemConsumer:Ljava/util/Map;

.field public final consumerToToken:Ljava/util/Map;

.field public final contextToListeners:Ljava/util/Map;

.field public final extensionWindowBackendLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public final listenerToContext:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroidx/window/extensions/layout/WindowLayoutComponent;Landroidx/window/core/ConsumerAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend;->component:Landroidx/window/extensions/layout/WindowLayoutComponent;

    .line 5
    iput-object p2, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend;->consumerAdapter:Landroidx/window/core/ConsumerAdapter;

    .line 7
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 9
    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 11
    iput-object p1, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend;->extensionWindowBackendLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 14
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 16
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 18
    iput-object p1, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend;->contextToListeners:Ljava/util/Map;

    .line 21
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 23
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 25
    iput-object p1, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend;->listenerToContext:Ljava/util/Map;

    .line 28
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 30
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 32
    iput-object p1, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend;->consumerToToken:Ljava/util/Map;

    .line 35
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 37
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 39
    iput-object p1, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend;->consumerToOemConsumer:Ljava/util/Map;

    .line 42
    return-void
.end method


# virtual methods
.method public final registerLayoutChangeCallback(Landroid/content/Context;Landroidx/profileinstaller/ProfileInstaller$$ExternalSyntheticLambda0;Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$2$$ExternalSyntheticLambda0;)V
    .locals 9

    .line 1
    const-string p2, "java.util.function.Consumer"

    .line 2
    iget-object v0, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend;->extensionWindowBackendLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6
    iget-object v1, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend;->contextToListeners:Ljava/util/Map;

    .line 9
    :try_start_0
    move-object v2, v1

    .line 11
    check-cast v2, Ljava/util/LinkedHashMap;

    .line 12
    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v2

    .line 17
    check-cast v2, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$MulticastConsumer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 18
    iget-object v3, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend;->listenerToContext:Ljava/util/Map;

    .line 20
    if-eqz v2, :cond_1

    .line 22
    :try_start_1
    iget-object v4, v2, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$MulticastConsumer;->multicastConsumerLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 24
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 26
    :try_start_2
    iget-object v5, v2, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$MulticastConsumer;->lastKnownValue:Landroidx/window/layout/WindowLayoutInfo;

    .line 29
    if-eqz v5, :cond_0

    .line 31
    invoke-virtual {p3, v5}, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$2$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    .line 33
    :cond_0
    iget-object v2, v2, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$MulticastConsumer;->registeredListeners:Ljava/util/Set;

    .line 36
    invoke-interface {v2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    :try_start_3
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 41
    invoke-interface {v3, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 47
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 51
    throw p0

    .line 54
    :cond_1
    const/4 v2, 0x0

    .line 55
    :goto_0
    if-nez v2, :cond_5

    .line 56
    new-instance v2, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$MulticastConsumer;

    .line 58
    invoke-direct {v2, p1}, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$MulticastConsumer;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-interface {v3, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v1, v2, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$MulticastConsumer;->multicastConsumerLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 69
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 71
    :try_start_4
    iget-object v3, v2, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$MulticastConsumer;->lastKnownValue:Landroidx/window/layout/WindowLayoutInfo;

    .line 74
    if-eqz v3, :cond_2

    .line 76
    invoke-virtual {p3, v3}, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$2$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    .line 78
    :cond_2
    iget-object v3, v2, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$MulticastConsumer;->registeredListeners:Ljava/util/Set;

    .line 81
    invoke-interface {v3, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 83
    :try_start_5
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 86
    invoke-static {}, Landroidx/window/core/ExtensionsUtil;->getSafeVendorApiLevel()I

    .line 89
    move-result p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 92
    const/4 v1, 0x2

    .line 93
    iget-object v3, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend;->component:Landroidx/window/extensions/layout/WindowLayoutComponent;

    .line 94
    if-ge p3, v1, :cond_4

    .line 96
    :try_start_6
    new-instance p3, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$registerLayoutChangeCallback$1$2$consumeWindowLayoutInfo$1;

    .line 98
    invoke-direct {p3, v2}, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$registerLayoutChangeCallback$1$2$consumeWindowLayoutInfo$1;-><init>(Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$MulticastConsumer;)V

    .line 100
    instance-of v1, p1, Landroid/app/Activity;

    .line 103
    if-eqz v1, :cond_3

    .line 105
    iget-object v1, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend;->consumerAdapter:Landroidx/window/core/ConsumerAdapter;

    .line 107
    const-class v4, Landroidx/window/extensions/layout/WindowLayoutInfo;

    .line 109
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 111
    move-result-object v4

    .line 114
    const-string v5, "addWindowLayoutInfoListener"

    .line 115
    const-string/jumbo v6, "removeWindowLayoutInfoListener"

    .line 117
    check-cast p1, Landroid/app/Activity;

    .line 120
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    new-instance v7, Landroidx/window/core/ConsumerAdapter$ConsumerHandler;

    .line 125
    invoke-direct {v7, v4, p3}, Landroidx/window/core/ConsumerAdapter$ConsumerHandler;-><init>(Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function1;)V

    .line 127
    iget-object p3, v1, Landroidx/window/core/ConsumerAdapter;->loader:Ljava/lang/ClassLoader;

    .line 130
    invoke-virtual {p3, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 132
    move-result-object v4

    .line 135
    filled-new-array {v4}, [Ljava/lang/Class;

    .line 136
    move-result-object v4

    .line 139
    invoke-static {p3, v4, v7}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 140
    move-result-object p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 143
    iget-object v1, v1, Landroidx/window/core/ConsumerAdapter;->loader:Ljava/lang/ClassLoader;

    .line 144
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    move-result-object v4

    .line 149
    invoke-virtual {v1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 150
    move-result-object v7

    .line 153
    const-class v8, Landroid/app/Activity;

    .line 154
    filled-new-array {v8, v7}, [Ljava/lang/Class;

    .line 156
    move-result-object v7

    .line 159
    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 160
    move-result-object v4

    .line 163
    filled-new-array {p1, p3}, [Ljava/lang/Object;

    .line 164
    move-result-object p1

    .line 167
    invoke-virtual {v4, v3, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    move-result-object p1

    .line 174
    invoke-virtual {v1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 175
    move-result-object p2

    .line 178
    filled-new-array {p2}, [Ljava/lang/Class;

    .line 179
    move-result-object p2

    .line 182
    invoke-virtual {p1, v6, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 183
    move-result-object p1

    .line 186
    new-instance p2, Landroidx/window/core/ConsumerAdapter$createSubscription$1;

    .line 187
    invoke-direct {p2, p1, v3, p3}, Landroidx/window/core/ConsumerAdapter$createSubscription$1;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 189
    iget-object p0, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend;->consumerToToken:Ljava/util/Map;

    .line 192
    invoke-interface {p0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    goto :goto_1

    .line 197
    :cond_3
    new-instance p0, Landroidx/window/extensions/layout/WindowLayoutInfo;

    .line 198
    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 200
    invoke-direct {p0, p1}, Landroidx/window/extensions/layout/WindowLayoutInfo;-><init>(Ljava/util/List;)V

    .line 202
    invoke-virtual {v2, p0}, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$MulticastConsumer;->accept(Landroidx/window/extensions/layout/WindowLayoutInfo;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 205
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 208
    return-void

    .line 211
    :cond_4
    :try_start_8
    new-instance p2, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$$ExternalSyntheticLambda0;

    .line 212
    invoke-direct {p2, v2}, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$$ExternalSyntheticLambda0;-><init>(Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$MulticastConsumer;)V

    .line 214
    iget-object p0, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend;->consumerToOemConsumer:Ljava/util/Map;

    .line 217
    invoke-interface {p0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-interface {v3, p1, p2}, Landroidx/window/extensions/layout/WindowLayoutComponent;->addWindowLayoutInfoListener(Landroid/content/Context;Landroidx/window/extensions/core/util/function/Consumer;)V

    .line 222
    goto :goto_1

    .line 225
    :catchall_1
    move-exception p0

    .line 226
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 227
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 230
    :cond_5
    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 231
    return-void

    .line 234
    :catchall_2
    move-exception p0

    .line 235
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 236
    throw p0
    .line 239
.end method

.method public final unregisterLayoutChangeCallback(Landroidx/core/util/Consumer;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend;->extensionWindowBackendLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    iget-object v1, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend;->listenerToContext:Ljava/util/Map;

    .line 7
    :try_start_0
    move-object v2, v1

    .line 9
    check-cast v2, Ljava/util/LinkedHashMap;

    .line 10
    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v2

    .line 15
    check-cast v2, Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    if-nez v2, :cond_0

    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 20
    return-void

    .line 23
    :cond_0
    iget-object v3, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend;->contextToListeners:Ljava/util/Map;

    .line 24
    :try_start_1
    move-object v4, v3

    .line 26
    check-cast v4, Ljava/util/LinkedHashMap;

    .line 27
    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object v4

    .line 32
    check-cast v4, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$MulticastConsumer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    if-nez v4, :cond_1

    .line 35
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 37
    return-void

    .line 40
    :cond_1
    :try_start_2
    iget-object v5, v4, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$MulticastConsumer;->multicastConsumerLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 41
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 43
    iget-object v6, v4, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$MulticastConsumer;->registeredListeners:Ljava/util/Set;

    .line 46
    :try_start_3
    invoke-interface {v6, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 48
    :try_start_4
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 51
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    .line 57
    move-result p1

    .line 60
    if-eqz p1, :cond_3

    .line 61
    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-static {}, Landroidx/window/core/ExtensionsUtil;->getSafeVendorApiLevel()I

    .line 66
    move-result p1

    .line 69
    const/4 v1, 0x2

    .line 70
    if-ge p1, v1, :cond_2

    .line 71
    iget-object p0, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend;->consumerToToken:Ljava/util/Map;

    .line 73
    invoke-interface {p0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    move-result-object p0

    .line 78
    check-cast p0, Landroidx/window/core/ConsumerAdapter$createSubscription$1;

    .line 79
    if-eqz p0, :cond_3

    .line 81
    iget-object p1, p0, Landroidx/window/core/ConsumerAdapter$createSubscription$1;->$javaConsumer:Ljava/lang/Object;

    .line 83
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 85
    move-result-object p1

    .line 88
    iget-object v1, p0, Landroidx/window/core/ConsumerAdapter$createSubscription$1;->$removeMethod:Ljava/lang/reflect/Method;

    .line 89
    iget-object p0, p0, Landroidx/window/core/ConsumerAdapter$createSubscription$1;->$obj:Ljava/lang/Object;

    .line 91
    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    goto :goto_0

    .line 96
    :cond_2
    iget-object p1, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend;->consumerToOemConsumer:Ljava/util/Map;

    .line 97
    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    move-result-object p1

    .line 102
    check-cast p1, Landroidx/window/extensions/core/util/function/Consumer;

    .line 103
    if-eqz p1, :cond_3

    .line 105
    iget-object p0, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend;->component:Landroidx/window/extensions/layout/WindowLayoutComponent;

    .line 107
    invoke-interface {p0, p1}, Landroidx/window/extensions/layout/WindowLayoutComponent;->removeWindowLayoutInfoListener(Landroidx/window/extensions/core/util/function/Consumer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 109
    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 112
    return-void

    .line 115
    :catchall_0
    move-exception p0

    .line 116
    :try_start_5
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 117
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 120
    :catchall_1
    move-exception p0

    .line 121
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 122
    throw p0
    .line 125
.end method
