.class public final Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$selections$lambda$4$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$selections$lambda$4$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$selections$lambda$4$$inlined$map$1$2;->this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    .line 1
    instance-of v0, p2, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$selections$lambda$4$$inlined$map$1$2$1;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$selections$lambda$4$$inlined$map$1$2$1;

    .line 7
    iget v1, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$selections$lambda$4$$inlined$map$1$2$1;->label:I

    .line 9
    const/high16 v2, -0x80000000

    .line 11
    and-int v3, v1, v2

    .line 13
    if-eqz v3, :cond_0

    .line 15
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$selections$lambda$4$$inlined$map$1$2$1;->label:I

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$selections$lambda$4$$inlined$map$1$2$1;

    .line 21
    invoke-direct {v0, p0, p2}, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$selections$lambda$4$$inlined$map$1$2$1;-><init>(Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$selections$lambda$4$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    .line 23
    :goto_0
    iget-object p2, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$selections$lambda$4$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .line 26
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    iget v2, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$selections$lambda$4$$inlined$map$1$2$1;->label:I

    .line 30
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    if-ne v2, v3, :cond_1

    .line 35
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 37
    goto :goto_3

    .line 40
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 41
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 43
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    throw p0

    .line 48
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    check-cast p1, Ljava/util/Map;

    .line 52
    new-instance p2, Ljava/util/LinkedHashMap;

    .line 54
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 56
    move-result v2

    .line 59
    invoke-static {v2}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    .line 60
    move-result v2

    .line 63
    invoke-direct {p2, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 64
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 67
    move-result-object p1

    .line 70
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 71
    move-result-object p1

    .line 74
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    move-result v2

    .line 78
    if-eqz v2, :cond_5

    .line 79
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    move-result-object v2

    .line 84
    check-cast v2, Ljava/util/Map$Entry;

    .line 85
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 87
    move-result-object v4

    .line 90
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 91
    move-result-object v2

    .line 94
    check-cast v2, Ljava/util/List;

    .line 95
    iget-object v5, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$selections$lambda$4$$inlined$map$1$2;->this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;

    .line 97
    iget-object v5, v5, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;->configs:Ljava/util/Set;

    .line 99
    new-instance v6, Ljava/util/ArrayList;

    .line 101
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 103
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 106
    move-result-object v5

    .line 109
    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    move-result v7

    .line 113
    if-eqz v7, :cond_4

    .line 114
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    move-result-object v7

    .line 119
    move-object v8, v7

    .line 120
    check-cast v8, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    .line 121
    invoke-interface {v8}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;->getKey()Ljava/lang/String;

    .line 123
    move-result-object v8

    .line 126
    invoke-interface {v2, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 127
    move-result v8

    .line 130
    if-eqz v8, :cond_3

    .line 131
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 133
    goto :goto_2

    .line 136
    :cond_4
    invoke-interface {p2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    goto :goto_1

    .line 140
    :cond_5
    iput v3, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$selections$lambda$4$$inlined$map$1$2$1;->label:I

    .line 141
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$selections$lambda$4$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .line 143
    invoke-interface {p0, p2, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 145
    move-result-object p0

    .line 148
    if-ne p0, v1, :cond_6

    .line 149
    return-object v1

    .line 151
    :cond_6
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 152
    return-object p0
    .line 154
.end method
