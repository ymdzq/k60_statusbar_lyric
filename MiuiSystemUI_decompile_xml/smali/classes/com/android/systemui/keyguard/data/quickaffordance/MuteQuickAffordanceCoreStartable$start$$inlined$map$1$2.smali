.class public final Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable$start$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic this$0:Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable$start$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable$start$$inlined$map$1$2;->this$0:Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p2, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable$start$$inlined$map$1$2$1;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable$start$$inlined$map$1$2$1;

    .line 7
    iget v1, v0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable$start$$inlined$map$1$2$1;->label:I

    .line 9
    const/high16 v2, -0x80000000

    .line 11
    and-int v3, v1, v2

    .line 13
    if-eqz v3, :cond_0

    .line 15
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable$start$$inlined$map$1$2$1;->label:I

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable$start$$inlined$map$1$2$1;

    .line 21
    invoke-direct {v0, p0, p2}, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable$start$$inlined$map$1$2$1;-><init>(Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable$start$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    .line 23
    :goto_0
    iget-object p2, v0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable$start$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .line 26
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    iget v2, v0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable$start$$inlined$map$1$2$1;->label:I

    .line 30
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 32
    const/4 v4, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    if-ne v2, v4, :cond_1

    .line 37
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 39
    goto/16 :goto_5

    .line 42
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 44
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 46
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    throw p0

    .line 51
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 52
    check-cast p1, Ljava/util/Map;

    .line 55
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 57
    move-result-object p1

    .line 60
    instance-of p2, p1, Ljava/util/Collection;

    .line 61
    const/4 v2, 0x0

    .line 63
    if-eqz p2, :cond_3

    .line 64
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 66
    move-result p2

    .line 69
    if-eqz p2, :cond_3

    .line 70
    goto :goto_3

    .line 72
    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 73
    move-result-object p1

    .line 76
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    move-result p2

    .line 80
    if-eqz p2, :cond_8

    .line 81
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    move-result-object p2

    .line 86
    check-cast p2, Ljava/util/List;

    .line 87
    instance-of v5, p2, Ljava/util/Collection;

    .line 89
    if-eqz v5, :cond_5

    .line 91
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 93
    move-result v5

    .line 96
    if-eqz v5, :cond_5

    .line 97
    goto :goto_1

    .line 99
    :cond_5
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 100
    move-result-object p2

    .line 103
    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    move-result v5

    .line 107
    if-eqz v5, :cond_7

    .line 108
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    move-result-object v5

    .line 113
    check-cast v5, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    .line 114
    invoke-interface {v5}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;->getKey()Ljava/lang/String;

    .line 116
    move-result-object v5

    .line 119
    const-string v6, "mute"

    .line 120
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    move-result v5

    .line 125
    if-eqz v5, :cond_6

    .line 126
    move p2, v4

    .line 128
    goto :goto_2

    .line 129
    :cond_7
    :goto_1
    move p2, v2

    .line 130
    :goto_2
    if-eqz p2, :cond_4

    .line 131
    move v2, v4

    .line 133
    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable$start$$inlined$map$1$2;->this$0:Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable;

    .line 134
    if-eqz v2, :cond_9

    .line 136
    iget-object p2, p1, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable;->ringerModeTracker:Lcom/android/systemui/util/RingerModeTrackerImpl;

    .line 138
    iget-object p2, p2, Lcom/android/systemui/util/RingerModeTrackerImpl;->ringerModeInternal:Lcom/android/systemui/util/RingerModeLiveData;

    .line 140
    iget-object p1, p1, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable;->observer:Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable$observer$1;

    .line 142
    invoke-virtual {p2, p1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 144
    goto :goto_4

    .line 147
    :cond_9
    iget-object p2, p1, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable;->ringerModeTracker:Lcom/android/systemui/util/RingerModeTrackerImpl;

    .line 148
    iget-object p2, p2, Lcom/android/systemui/util/RingerModeTrackerImpl;->ringerModeInternal:Lcom/android/systemui/util/RingerModeLiveData;

    .line 150
    iget-object p1, p1, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable;->observer:Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable$observer$1;

    .line 152
    invoke-virtual {p2, p1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 154
    :goto_4
    iput v4, v0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable$start$$inlined$map$1$2$1;->label:I

    .line 157
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable$start$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .line 159
    invoke-interface {p0, v3, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 161
    move-result-object p0

    .line 164
    if-ne p0, v1, :cond_a

    .line 165
    return-object v1

    .line 167
    :cond_a
    :goto_5
    return-object v3
    .line 168
.end method
