.class final Lcom/android/systemui/shared/clocks/ClockRegistry$verifyLoadedProviders$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.shared.clocks.ClockRegistry$verifyLoadedProviders$1"
    f = "ClockRegistry.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/android/systemui/shared/clocks/ClockRegistry;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/clocks/ClockRegistry;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shared/clocks/ClockRegistry$verifyLoadedProviders$1;->this$0:Lcom/android/systemui/shared/clocks/ClockRegistry;

    .line 2
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    .line 1
    new-instance p1, Lcom/android/systemui/shared/clocks/ClockRegistry$verifyLoadedProviders$1;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry$verifyLoadedProviders$1;->this$0:Lcom/android/systemui/shared/clocks/ClockRegistry;

    .line 4
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/shared/clocks/ClockRegistry$verifyLoadedProviders$1;-><init>(Lcom/android/systemui/shared/clocks/ClockRegistry;Lkotlin/coroutines/Continuation;)V

    .line 6
    return-object p1
    .line 9
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/clocks/ClockRegistry$verifyLoadedProviders$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/shared/clocks/ClockRegistry$verifyLoadedProviders$1;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/clocks/ClockRegistry$verifyLoadedProviders$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry$verifyLoadedProviders$1;->label:I

    .line 2
    if-nez v0, :cond_6

    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/android/systemui/shared/clocks/ClockRegistry$verifyLoadedProviders$1;->this$0:Lcom/android/systemui/shared/clocks/ClockRegistry;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    iget-object p1, p0, Lcom/android/systemui/shared/clocks/ClockRegistry$verifyLoadedProviders$1;->this$0:Lcom/android/systemui/shared/clocks/ClockRegistry;

    .line 14
    iget-object v0, p1, Lcom/android/systemui/shared/clocks/ClockRegistry;->availableClocks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    invoke-virtual {p1}, Lcom/android/systemui/shared/clocks/ClockRegistry;->getCurrentClockId()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 25
    check-cast p1, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;

    .line 26
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 28
    const/4 v1, 0x0

    .line 30
    if-nez p1, :cond_2

    .line 31
    iget-object p1, p0, Lcom/android/systemui/shared/clocks/ClockRegistry$verifyLoadedProviders$1;->this$0:Lcom/android/systemui/shared/clocks/ClockRegistry;

    .line 33
    iget-object p1, p1, Lcom/android/systemui/shared/clocks/ClockRegistry;->availableClocks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 37
    move-result-object p1

    .line 40
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 41
    move-result-object p1

    .line 44
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    move-result v2

    .line 48
    if-eqz v2, :cond_1

    .line 49
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    move-result-object v2

    .line 54
    check-cast v2, Ljava/util/Map$Entry;

    .line 55
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 57
    move-result-object v2

    .line 60
    check-cast v2, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;

    .line 61
    iget-object v2, v2, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;->manager:Lcom/android/systemui/plugins/PluginLifecycleManager;

    .line 63
    if-eqz v2, :cond_0

    .line 65
    invoke-interface {v2}, Lcom/android/systemui/plugins/PluginLifecycleManager;->unloadPlugin()V

    .line 67
    goto :goto_0

    .line 70
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry$verifyLoadedProviders$1;->this$0:Lcom/android/systemui/shared/clocks/ClockRegistry;

    .line 71
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->isVerifying:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 75
    return-object v0

    .line 78
    :cond_2
    iget-object p1, p1, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;->manager:Lcom/android/systemui/plugins/PluginLifecycleManager;

    .line 79
    if-eqz p1, :cond_3

    .line 81
    invoke-interface {p1}, Lcom/android/systemui/plugins/PluginLifecycleManager;->loadPlugin()V

    .line 83
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/shared/clocks/ClockRegistry$verifyLoadedProviders$1;->this$0:Lcom/android/systemui/shared/clocks/ClockRegistry;

    .line 86
    iget-object v2, v2, Lcom/android/systemui/shared/clocks/ClockRegistry;->availableClocks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 88
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 90
    move-result-object v2

    .line 93
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 94
    move-result-object v2

    .line 97
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    move-result v3

    .line 101
    if-eqz v3, :cond_5

    .line 102
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    move-result-object v3

    .line 107
    check-cast v3, Ljava/util/Map$Entry;

    .line 108
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 110
    move-result-object v3

    .line 113
    check-cast v3, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;

    .line 114
    iget-object v3, v3, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;->manager:Lcom/android/systemui/plugins/PluginLifecycleManager;

    .line 116
    if-eqz v3, :cond_4

    .line 118
    invoke-interface {v3}, Lcom/android/systemui/plugins/PluginLifecycleManager;->isLoaded()Z

    .line 120
    move-result v4

    .line 123
    if-eqz v4, :cond_4

    .line 124
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 126
    move-result v4

    .line 129
    if-nez v4, :cond_4

    .line 130
    invoke-interface {v3}, Lcom/android/systemui/plugins/PluginLifecycleManager;->unloadPlugin()V

    .line 132
    goto :goto_1

    .line 135
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry$verifyLoadedProviders$1;->this$0:Lcom/android/systemui/shared/clocks/ClockRegistry;

    .line 136
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->isVerifying:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 138
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 140
    return-object v0

    .line 143
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 144
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 146
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 148
    throw p0
    .line 151
.end method
