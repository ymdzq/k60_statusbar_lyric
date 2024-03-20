.class public final Lcom/android/systemui/shared/clocks/ClockRegistry;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final availableClocks:Ljava/util/concurrent/ConcurrentHashMap;

.field public final bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final clockChangeListeners:Ljava/util/List;

.field public final context:Landroid/content/Context;

.field public final fallbackClockId:Ljava/lang/String;

.field public final isClockChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final isClockListChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final isEnabled:Z

.field public isRegistered:Z

.field public final isVerifying:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final logBuffer:Lcom/android/systemui/log/LogBuffer;

.field public final mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final pluginListener:Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1;

.field public final pluginManager:Lcom/android/systemui/plugins/PluginManager;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final settingObserver:Lcom/android/systemui/shared/clocks/ClockRegistry$settingObserver$1;

.field public settings:Lcom/android/systemui/plugins/ClockSettings;

.field public final userSwitchObserver:Lcom/android/systemui/shared/clocks/ClockRegistry$userSwitchObserver$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/PluginManager;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;ZLcom/android/systemui/shared/clocks/DefaultClockProvider;Ljava/lang/String;Lcom/android/systemui/log/LogBuffer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->context:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->pluginManager:Lcom/android/systemui/plugins/PluginManager;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 13
    iput-boolean p6, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->isEnabled:Z

    .line 15
    iput-object p8, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->fallbackClockId:Ljava/lang/String;

    .line 17
    iput-object p9, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 19
    const-class p1, Lcom/android/systemui/shared/clocks/ClockRegistry;

    .line 21
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 23
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 30
    const-string p2, " (System)"

    .line 31
    invoke-static {p1, p2}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->TAG:Ljava/lang/String;

    .line 37
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->availableClocks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    new-instance p1, Ljava/util/ArrayList;

    .line 46
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->clockChangeListeners:Ljava/util/List;

    .line 51
    new-instance p1, Lcom/android/systemui/shared/clocks/ClockRegistry$settingObserver$1;

    .line 53
    invoke-direct {p1, p0}, Lcom/android/systemui/shared/clocks/ClockRegistry$settingObserver$1;-><init>(Lcom/android/systemui/shared/clocks/ClockRegistry;)V

    .line 55
    iput-object p1, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->settingObserver:Lcom/android/systemui/shared/clocks/ClockRegistry$settingObserver$1;

    .line 58
    new-instance p1, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1;

    .line 60
    invoke-direct {p1, p0}, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1;-><init>(Lcom/android/systemui/shared/clocks/ClockRegistry;)V

    .line 62
    iput-object p1, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->pluginListener:Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1;

    .line 65
    new-instance p1, Lcom/android/systemui/shared/clocks/ClockRegistry$userSwitchObserver$1;

    .line 67
    invoke-direct {p1, p0}, Lcom/android/systemui/shared/clocks/ClockRegistry$userSwitchObserver$1;-><init>(Lcom/android/systemui/shared/clocks/ClockRegistry;)V

    .line 69
    iput-object p1, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->userSwitchObserver:Lcom/android/systemui/shared/clocks/ClockRegistry$userSwitchObserver$1;

    .line 72
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 74
    const/4 p2, 0x0

    .line 76
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 77
    iput-object p1, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->isClockChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 80
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 82
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 84
    iput-object p1, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->isClockListChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 87
    invoke-virtual {p7}, Lcom/android/systemui/shared/clocks/DefaultClockProvider;->getClocks()Ljava/util/List;

    .line 89
    move-result-object p1

    .line 92
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 93
    move-result-object p1

    .line 96
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    move-result p3

    .line 100
    if-eqz p3, :cond_0

    .line 101
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    move-result-object p3

    .line 106
    check-cast p3, Lcom/android/systemui/plugins/ClockMetadata;

    .line 107
    iget-object p4, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->availableClocks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 109
    invoke-virtual {p3}, Lcom/android/systemui/plugins/ClockMetadata;->getClockId()Ljava/lang/String;

    .line 111
    move-result-object p5

    .line 114
    new-instance p6, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;

    .line 115
    const/4 p8, 0x0

    .line 117
    invoke-direct {p6, p3, p7, p8}, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;-><init>(Lcom/android/systemui/plugins/ClockMetadata;Lcom/android/systemui/plugins/ClockProvider;Lcom/android/systemui/plugins/PluginLifecycleManager;)V

    .line 118
    invoke-virtual {p4, p5, p6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    goto :goto_0

    .line 124
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->availableClocks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 125
    const-string p3, "DEFAULT"

    .line 127
    invoke-virtual {p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 129
    move-result p1

    .line 132
    if-eqz p1, :cond_1

    .line 133
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 135
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 137
    iput-object p1, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->isVerifying:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 140
    return-void

    .line 142
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 143
    new-instance p1, Ljava/lang/StringBuilder;

    .line 145
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    const-string p2, " did not register clock at DEFAULT"

    .line 153
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    move-result-object p1

    .line 161
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 162
    throw p0
    .line 165
.end method

.method public static final access$onConnected(Lcom/android/systemui/shared/clocks/ClockRegistry;Ljava/lang/String;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 5
    sget-object v1, Lcom/android/systemui/shared/clocks/ClockRegistry$onConnected$2;->INSTANCE:Lcom/android/systemui/shared/clocks/ClockRegistry$onConnected$2;

    .line 7
    const/4 v2, 0x6

    .line 9
    const/4 v3, 0x5

    .line 10
    const/4 v4, 0x4

    .line 11
    const/4 v5, 0x3

    .line 12
    const/4 v6, 0x2

    .line 13
    iget-object v7, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 14
    iget-object v8, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->TAG:Ljava/lang/String;

    .line 16
    const/4 v9, 0x0

    .line 18
    if-eqz v7, :cond_0

    .line 19
    invoke-virtual {v7, v8, v0, v1, v9}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 21
    move-result-object v0

    .line 24
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v7, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 28
    goto :goto_0

    .line 31
    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/clocks/ClockRegistryKt;->access$getTMP_MESSAGE()Lcom/android/systemui/log/LogMessage;

    .line 32
    move-result-object v10

    .line 35
    invoke-interface {v10, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lcom/android/systemui/shared/clocks/ClockRegistryKt;->access$getTMP_MESSAGE()Lcom/android/systemui/log/LogMessage;

    .line 39
    move-result-object v10

    .line 42
    invoke-virtual {v1, v10}, Lcom/android/systemui/shared/clocks/ClockRegistry$onConnected$2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    move-result-object v1

    .line 46
    check-cast v1, Ljava/lang/String;

    .line 47
    sget-object v10, Lcom/android/systemui/shared/clocks/ClockRegistryKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 49
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 51
    move-result v0

    .line 54
    aget v0, v10, v0

    .line 55
    if-eq v0, v6, :cond_5

    .line 57
    if-eq v0, v5, :cond_4

    .line 59
    if-eq v0, v4, :cond_3

    .line 61
    if-eq v0, v3, :cond_2

    .line 63
    if-eq v0, v2, :cond_1

    .line 65
    goto :goto_0

    .line 67
    :cond_1
    invoke-static {v8, v1, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    goto :goto_0

    .line 71
    :cond_2
    invoke-static {v8, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    goto :goto_0

    .line 75
    :cond_3
    invoke-static {v8, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    goto :goto_0

    .line 79
    :cond_4
    invoke-static {v8, v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    goto :goto_0

    .line 83
    :cond_5
    invoke-static {v8, v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/ClockRegistry;->getCurrentClockId()Ljava/lang/String;

    .line 87
    move-result-object p0

    .line 90
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    move-result p0

    .line 94
    if-eqz p0, :cond_c

    .line 95
    sget-object p0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 97
    sget-object v0, Lcom/android/systemui/shared/clocks/ClockRegistry$onConnected$4;->INSTANCE:Lcom/android/systemui/shared/clocks/ClockRegistry$onConnected$4;

    .line 99
    if-eqz v7, :cond_6

    .line 101
    invoke-virtual {v7, v8, p0, v0, v9}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 103
    move-result-object p0

    .line 106
    invoke-interface {p0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v7, p0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 110
    goto :goto_1

    .line 113
    :cond_6
    invoke-static {}, Lcom/android/systemui/shared/clocks/ClockRegistryKt;->access$getTMP_MESSAGE()Lcom/android/systemui/log/LogMessage;

    .line 114
    move-result-object v1

    .line 117
    invoke-interface {v1, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/android/systemui/shared/clocks/ClockRegistryKt;->access$getTMP_MESSAGE()Lcom/android/systemui/log/LogMessage;

    .line 121
    move-result-object p1

    .line 124
    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/clocks/ClockRegistry$onConnected$4;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    move-result-object p1

    .line 128
    check-cast p1, Ljava/lang/String;

    .line 129
    sget-object v0, Lcom/android/systemui/shared/clocks/ClockRegistryKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 131
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 133
    move-result p0

    .line 136
    aget p0, v0, p0

    .line 137
    if-eq p0, v6, :cond_b

    .line 139
    if-eq p0, v5, :cond_a

    .line 141
    if-eq p0, v4, :cond_9

    .line 143
    if-eq p0, v3, :cond_8

    .line 145
    if-eq p0, v2, :cond_7

    .line 147
    goto :goto_1

    .line 149
    :cond_7
    invoke-static {v8, p1, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    goto :goto_1

    .line 153
    :cond_8
    invoke-static {v8, p1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    goto :goto_1

    .line 157
    :cond_9
    invoke-static {v8, p1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    goto :goto_1

    .line 161
    :cond_a
    invoke-static {v8, p1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    goto :goto_1

    .line 165
    :cond_b
    invoke-static {v8, p1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    :cond_c
    :goto_1
    return-void
    .line 169
.end method

.method public static final access$triggerOnAvailableClocksChanged(Lcom/android/systemui/shared/clocks/ClockRegistry;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->isClockListChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/android/systemui/shared/clocks/ClockRegistry$triggerOnAvailableClocksChanged$1;

    .line 13
    const/4 v1, 0x0

    .line 15
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/shared/clocks/ClockRegistry$triggerOnAvailableClocksChanged$1;-><init>(Lcom/android/systemui/shared/clocks/ClockRegistry;Lkotlin/coroutines/Continuation;)V

    .line 16
    const/4 v2, 0x2

    .line 19
    iget-object v3, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 20
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 22
    invoke-static {v3, p0, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 24
    :goto_0
    return-void
    .line 27
.end method


# virtual methods
.method public final createClock(Ljava/lang/String;)Lcom/android/systemui/plugins/ClockController;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->settings:Lcom/android/systemui/plugins/ClockSettings;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/android/systemui/plugins/ClockSettings;

    .line 7
    const/4 v2, 0x3

    .line 9
    invoke-direct {v0, v1, v1, v2, v1}, Lcom/android/systemui/plugins/ClockSettings;-><init>(Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/plugins/ClockSettings;->getClockId()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 16
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    move-result v2

    .line 20
    if-nez v2, :cond_1

    .line 21
    const/4 v2, 0x2

    .line 23
    invoke-static {v0, p1, v1, v2, v1}, Lcom/android/systemui/plugins/ClockSettings;->copy$default(Lcom/android/systemui/plugins/ClockSettings;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/android/systemui/plugins/ClockSettings;

    .line 24
    move-result-object v0

    .line 27
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->availableClocks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 28
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object p0

    .line 33
    check-cast p0, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;

    .line 34
    if-eqz p0, :cond_2

    .line 36
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;->provider:Lcom/android/systemui/plugins/ClockProvider;

    .line 38
    if-eqz p0, :cond_2

    .line 40
    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/ClockProvider;->createClock(Lcom/android/systemui/plugins/ClockSettings;)Lcom/android/systemui/plugins/ClockController;

    .line 42
    move-result-object v1

    .line 45
    :cond_2
    return-object v1
    .line 46
.end method

.method public final createCurrentClock()Lcom/android/systemui/plugins/ClockController;
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/ClockRegistry;->getCurrentClockId()Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    iget-boolean v1, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->isEnabled:Z

    .line 6
    if-eqz v1, :cond_15

    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 10
    move-result v1

    .line 13
    if-lez v1, :cond_0

    .line 14
    const/4 v1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    :goto_0
    if-eqz v1, :cond_15

    .line 19
    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/clocks/ClockRegistry;->createClock(Ljava/lang/String;)Lcom/android/systemui/plugins/ClockController;

    .line 21
    move-result-object v1

    .line 24
    const/4 v2, 0x6

    .line 25
    const/4 v3, 0x5

    .line 26
    const/4 v4, 0x4

    .line 27
    const/4 v5, 0x3

    .line 28
    const/4 v6, 0x2

    .line 29
    const/4 v7, 0x0

    .line 30
    iget-object v8, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->TAG:Ljava/lang/String;

    .line 31
    iget-object v9, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 33
    if-eqz v1, :cond_7

    .line 35
    sget-object p0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 37
    sget-object v10, Lcom/android/systemui/shared/clocks/ClockRegistry$createCurrentClock$2;->INSTANCE:Lcom/android/systemui/shared/clocks/ClockRegistry$createCurrentClock$2;

    .line 39
    if-eqz v9, :cond_1

    .line 41
    invoke-virtual {v9, v8, p0, v10, v7}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 43
    move-result-object p0

    .line 46
    invoke-interface {p0, v0}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v9, p0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 50
    goto :goto_1

    .line 53
    :cond_1
    invoke-static {}, Lcom/android/systemui/shared/clocks/ClockRegistryKt;->access$getTMP_MESSAGE()Lcom/android/systemui/log/LogMessage;

    .line 54
    move-result-object v9

    .line 57
    invoke-interface {v9, v0}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/android/systemui/shared/clocks/ClockRegistryKt;->access$getTMP_MESSAGE()Lcom/android/systemui/log/LogMessage;

    .line 61
    move-result-object v0

    .line 64
    invoke-virtual {v10, v0}, Lcom/android/systemui/shared/clocks/ClockRegistry$createCurrentClock$2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    move-result-object v0

    .line 68
    check-cast v0, Ljava/lang/String;

    .line 69
    sget-object v9, Lcom/android/systemui/shared/clocks/ClockRegistryKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 71
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 73
    move-result p0

    .line 76
    aget p0, v9, p0

    .line 77
    if-eq p0, v6, :cond_6

    .line 79
    if-eq p0, v5, :cond_5

    .line 81
    if-eq p0, v4, :cond_4

    .line 83
    if-eq p0, v3, :cond_3

    .line 85
    if-eq p0, v2, :cond_2

    .line 87
    goto :goto_1

    .line 89
    :cond_2
    invoke-static {v8, v0, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    goto :goto_1

    .line 93
    :cond_3
    invoke-static {v8, v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    goto :goto_1

    .line 97
    :cond_4
    invoke-static {v8, v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    goto :goto_1

    .line 101
    :cond_5
    invoke-static {v8, v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    goto :goto_1

    .line 105
    :cond_6
    invoke-static {v8, v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    :goto_1
    return-object v1

    .line 109
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->availableClocks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 110
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 112
    move-result v1

    .line 115
    if-eqz v1, :cond_e

    .line 116
    sget-object v1, Lcom/android/systemui/log/LogLevel;->WARNING:Lcom/android/systemui/log/LogLevel;

    .line 118
    sget-object v10, Lcom/android/systemui/shared/clocks/ClockRegistry$createCurrentClock$4;->INSTANCE:Lcom/android/systemui/shared/clocks/ClockRegistry$createCurrentClock$4;

    .line 120
    if-eqz v9, :cond_8

    .line 122
    invoke-virtual {v9, v8, v1, v10, v7}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 124
    move-result-object v1

    .line 127
    invoke-interface {v1, v0}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v9, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 131
    goto/16 :goto_2

    .line 134
    :cond_8
    invoke-static {}, Lcom/android/systemui/shared/clocks/ClockRegistryKt;->access$getTMP_MESSAGE()Lcom/android/systemui/log/LogMessage;

    .line 136
    move-result-object v9

    .line 139
    invoke-interface {v9, v0}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 140
    invoke-static {}, Lcom/android/systemui/shared/clocks/ClockRegistryKt;->access$getTMP_MESSAGE()Lcom/android/systemui/log/LogMessage;

    .line 143
    move-result-object v0

    .line 146
    invoke-virtual {v10, v0}, Lcom/android/systemui/shared/clocks/ClockRegistry$createCurrentClock$4;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    move-result-object v0

    .line 150
    check-cast v0, Ljava/lang/String;

    .line 151
    sget-object v9, Lcom/android/systemui/shared/clocks/ClockRegistryKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 153
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 155
    move-result v1

    .line 158
    aget v1, v9, v1

    .line 159
    if-eq v1, v6, :cond_d

    .line 161
    if-eq v1, v5, :cond_c

    .line 163
    if-eq v1, v4, :cond_b

    .line 165
    if-eq v1, v3, :cond_a

    .line 167
    if-eq v1, v2, :cond_9

    .line 169
    goto :goto_2

    .line 171
    :cond_9
    invoke-static {v8, v0, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    goto :goto_2

    .line 175
    :cond_a
    invoke-static {v8, v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    goto :goto_2

    .line 179
    :cond_b
    invoke-static {v8, v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    goto :goto_2

    .line 183
    :cond_c
    invoke-static {v8, v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    goto :goto_2

    .line 187
    :cond_d
    invoke-static {v8, v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    goto :goto_2

    .line 191
    :cond_e
    sget-object v1, Lcom/android/systemui/log/LogLevel;->ERROR:Lcom/android/systemui/log/LogLevel;

    .line 192
    sget-object v10, Lcom/android/systemui/shared/clocks/ClockRegistry$createCurrentClock$6;->INSTANCE:Lcom/android/systemui/shared/clocks/ClockRegistry$createCurrentClock$6;

    .line 194
    if-eqz v9, :cond_f

    .line 196
    invoke-virtual {v9, v8, v1, v10, v7}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 198
    move-result-object v1

    .line 201
    invoke-interface {v1, v0}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v9, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 205
    goto :goto_2

    .line 208
    :cond_f
    invoke-static {}, Lcom/android/systemui/shared/clocks/ClockRegistryKt;->access$getTMP_MESSAGE()Lcom/android/systemui/log/LogMessage;

    .line 209
    move-result-object v9

    .line 212
    invoke-interface {v9, v0}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 213
    invoke-static {}, Lcom/android/systemui/shared/clocks/ClockRegistryKt;->access$getTMP_MESSAGE()Lcom/android/systemui/log/LogMessage;

    .line 216
    move-result-object v0

    .line 219
    invoke-virtual {v10, v0}, Lcom/android/systemui/shared/clocks/ClockRegistry$createCurrentClock$6;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    move-result-object v0

    .line 223
    check-cast v0, Ljava/lang/String;

    .line 224
    sget-object v9, Lcom/android/systemui/shared/clocks/ClockRegistryKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 226
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 228
    move-result v1

    .line 231
    aget v1, v9, v1

    .line 232
    if-eq v1, v6, :cond_14

    .line 234
    if-eq v1, v5, :cond_13

    .line 236
    if-eq v1, v4, :cond_12

    .line 238
    if-eq v1, v3, :cond_11

    .line 240
    if-eq v1, v2, :cond_10

    .line 242
    goto :goto_2

    .line 244
    :cond_10
    invoke-static {v8, v0, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    goto :goto_2

    .line 248
    :cond_11
    invoke-static {v8, v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 249
    goto :goto_2

    .line 252
    :cond_12
    invoke-static {v8, v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    goto :goto_2

    .line 256
    :cond_13
    invoke-static {v8, v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 257
    goto :goto_2

    .line 260
    :cond_14
    invoke-static {v8, v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 261
    :cond_15
    :goto_2
    const-string v0, "DEFAULT"

    .line 264
    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/clocks/ClockRegistry;->createClock(Ljava/lang/String;)Lcom/android/systemui/plugins/ClockController;

    .line 266
    move-result-object p0

    .line 269
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 270
    return-object p0
    .line 273
.end method

.method public final getCurrentClockId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->settings:Lcom/android/systemui/plugins/ClockSettings;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/android/systemui/plugins/ClockSettings;->getClockId()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->fallbackClockId:Ljava/lang/String;

    .line 12
    :cond_1
    return-object v0
    .line 14
.end method

.method public final querySettings()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/systemui/util/Assert;->isNotMainThread()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->context:Landroid/content/Context;

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 7
    move-result-object v0

    .line 10
    const-string v1, "lock_screen_custom_clock_face"

    .line 11
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 13
    move-result v2

    .line 16
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 20
    sget-object v1, Lcom/android/systemui/plugins/ClockSettings;->Companion:Lcom/android/systemui/plugins/ClockSettings$Companion;

    .line 21
    invoke-virtual {v1, v0}, Lcom/android/systemui/plugins/ClockSettings$Companion;->deserialize(Ljava/lang/String;)Lcom/android/systemui/plugins/ClockSettings;

    .line 23
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_1

    .line 27
    :catch_0
    move-exception v0

    .line 28
    sget-object v1, Lcom/android/systemui/log/LogLevel;->ERROR:Lcom/android/systemui/log/LogLevel;

    .line 29
    sget-object v2, Lcom/android/systemui/shared/clocks/ClockRegistry$querySettings$result$2;->INSTANCE:Lcom/android/systemui/shared/clocks/ClockRegistry$querySettings$result$2;

    .line 31
    iget-object v3, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 33
    iget-object v4, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->TAG:Ljava/lang/String;

    .line 35
    if-eqz v3, :cond_0

    .line 37
    invoke-virtual {v3, v4, v1, v2, v0}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 39
    move-result-object v0

    .line 42
    invoke-virtual {v3, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 43
    goto :goto_0

    .line 46
    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/clocks/ClockRegistryKt;->access$getTMP_MESSAGE()Lcom/android/systemui/log/LogMessage;

    .line 47
    invoke-static {}, Lcom/android/systemui/shared/clocks/ClockRegistryKt;->access$getTMP_MESSAGE()Lcom/android/systemui/log/LogMessage;

    .line 50
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    sget-object v2, Lcom/android/systemui/shared/clocks/ClockRegistryKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 56
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 58
    move-result v1

    .line 61
    aget v1, v2, v1

    .line 62
    const/4 v2, 0x2

    .line 64
    const-string v3, "Failed to parse clock settings"

    .line 65
    if-eq v1, v2, :cond_5

    .line 67
    const/4 v2, 0x3

    .line 69
    if-eq v1, v2, :cond_4

    .line 70
    const/4 v2, 0x4

    .line 72
    if-eq v1, v2, :cond_3

    .line 73
    const/4 v2, 0x5

    .line 75
    if-eq v1, v2, :cond_2

    .line 76
    const/4 v2, 0x6

    .line 78
    if-eq v1, v2, :cond_1

    .line 79
    goto :goto_0

    .line 81
    :cond_1
    invoke-static {v4, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    goto :goto_0

    .line 85
    :cond_2
    invoke-static {v4, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    goto :goto_0

    .line 89
    :cond_3
    invoke-static {v4, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    goto :goto_0

    .line 93
    :cond_4
    invoke-static {v4, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    goto :goto_0

    .line 97
    :cond_5
    invoke-static {v4, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    :goto_0
    const/4 v0, 0x0

    .line 101
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->settings:Lcom/android/systemui/plugins/ClockSettings;

    .line 102
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    move-result v1

    .line 107
    if-nez v1, :cond_6

    .line 108
    iput-object v0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->settings:Lcom/android/systemui/plugins/ClockSettings;

    .line 110
    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/ClockRegistry;->verifyLoadedProviders()V

    .line 112
    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/ClockRegistry;->triggerOnCurrentClockChanged()V

    .line 115
    :cond_6
    return-void
    .line 118
.end method

.method public final registerListeners()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->isEnabled:Z

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->isRegistered:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->isRegistered:Z

    .line 12
    const-class v1, Lcom/android/systemui/plugins/ClockProviderPlugin;

    .line 14
    iget-object v2, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->pluginManager:Lcom/android/systemui/plugins/PluginManager;

    .line 16
    iget-object v3, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->pluginListener:Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1;

    .line 18
    invoke-interface {v2, v3, v1, v0}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 20
    new-instance v0, Lcom/android/systemui/shared/clocks/ClockRegistry$registerListeners$1;

    .line 23
    const/4 v1, 0x0

    .line 25
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/shared/clocks/ClockRegistry$registerListeners$1;-><init>(Lcom/android/systemui/shared/clocks/ClockRegistry;Lkotlin/coroutines/Continuation;)V

    .line 26
    const/4 v2, 0x2

    .line 29
    iget-object v3, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 30
    iget-object v4, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 32
    invoke-static {v3, v4, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 34
    iget-object v0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->context:Landroid/content/Context;

    .line 37
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 39
    move-result-object v0

    .line 42
    const-string v1, "lock_screen_custom_clock_face"

    .line 43
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 45
    move-result-object v1

    .line 48
    const/4 v2, -0x1

    .line 49
    const/4 v3, 0x0

    .line 50
    iget-object v4, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->settingObserver:Lcom/android/systemui/shared/clocks/ClockRegistry$settingObserver$1;

    .line 51
    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 53
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 56
    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->userSwitchObserver:Lcom/android/systemui/shared/clocks/ClockRegistry$userSwitchObserver$1;

    .line 60
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->TAG:Ljava/lang/String;

    .line 62
    invoke-interface {v0, v1, p0}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V

    .line 64
    :cond_1
    :goto_0
    return-void
    .line 67
.end method

.method public final triggerOnCurrentClockChanged()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->isClockChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    new-instance v0, Lcom/android/systemui/shared/clocks/ClockRegistry$triggerOnCurrentClockChanged$1;

    .line 13
    const/4 v1, 0x0

    .line 15
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/shared/clocks/ClockRegistry$triggerOnCurrentClockChanged$1;-><init>(Lcom/android/systemui/shared/clocks/ClockRegistry;Lkotlin/coroutines/Continuation;)V

    .line 16
    const/4 v2, 0x2

    .line 19
    iget-object v3, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 20
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 22
    invoke-static {v3, p0, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 24
    return-void
    .line 27
.end method

.method public final verifyLoadedProviders()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->isVerifying:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    new-instance v0, Lcom/android/systemui/shared/clocks/ClockRegistry$verifyLoadedProviders$1;

    .line 13
    const/4 v1, 0x0

    .line 15
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/shared/clocks/ClockRegistry$verifyLoadedProviders$1;-><init>(Lcom/android/systemui/shared/clocks/ClockRegistry;Lkotlin/coroutines/Continuation;)V

    .line 16
    const/4 v2, 0x2

    .line 19
    iget-object v3, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 20
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 22
    invoke-static {v3, p0, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 24
    return-void
    .line 27
.end method
