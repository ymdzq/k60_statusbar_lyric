.class public final Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$special$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic this$0:Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$special$$inlined$map$1$2;->this$0:Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;

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
    instance-of v0, p2, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$special$$inlined$map$1$2$1;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$special$$inlined$map$1$2$1;

    .line 7
    iget v1, v0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$special$$inlined$map$1$2$1;->label:I

    .line 9
    const/high16 v2, -0x80000000

    .line 11
    and-int v3, v1, v2

    .line 13
    if-eqz v3, :cond_0

    .line 15
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$special$$inlined$map$1$2$1;->label:I

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$special$$inlined$map$1$2$1;

    .line 21
    invoke-direct {v0, p0, p2}, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$special$$inlined$map$1$2$1;-><init>(Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$special$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    .line 23
    :goto_0
    iget-object p2, v0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$special$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .line 26
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    iget v2, v0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$special$$inlined$map$1$2$1;->label:I

    .line 30
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    if-ne v2, v3, :cond_1

    .line 35
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 37
    goto :goto_4

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
    check-cast p1, Lkotlin/Pair;

    .line 52
    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 54
    move-result-object p2

    .line 57
    check-cast p2, Ljava/util/Set;

    .line 58
    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 60
    move-result-object p1

    .line 63
    check-cast p1, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$DeviceChange;

    .line 64
    new-instance v2, Ljava/util/ArrayList;

    .line 66
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 68
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 71
    move-result-object p2

    .line 74
    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    move-result v4

    .line 78
    if-eqz v4, :cond_6

    .line 79
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    move-result-object v4

    .line 84
    move-object v5, v4

    .line 85
    check-cast v5, Ljava/lang/Number;

    .line 86
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 88
    move-result v5

    .line 91
    iget-object v6, p0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$special$$inlined$map$1$2;->this$0:Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;

    .line 92
    iget-object v6, v6, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;->inputManager:Landroid/hardware/input/InputManager;

    .line 94
    invoke-virtual {v6, v5}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    .line 96
    move-result-object v5

    .line 99
    if-nez v5, :cond_4

    .line 100
    goto :goto_2

    .line 102
    :cond_4
    invoke-virtual {v5}, Landroid/view/InputDevice;->isVirtual()Z

    .line 103
    move-result v6

    .line 106
    if-nez v6, :cond_5

    .line 107
    invoke-virtual {v5}, Landroid/view/InputDevice;->isFullKeyboard()Z

    .line 109
    move-result v5

    .line 112
    if-eqz v5, :cond_5

    .line 113
    move v5, v3

    .line 115
    goto :goto_3

    .line 116
    :cond_5
    :goto_2
    const/4 v5, 0x0

    .line 117
    :goto_3
    if-eqz v5, :cond_3

    .line 118
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 120
    goto :goto_1

    .line 123
    :cond_6
    new-instance p2, Lkotlin/Pair;

    .line 124
    invoke-direct {p2, v2, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 126
    iput v3, v0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$special$$inlined$map$1$2$1;->label:I

    .line 129
    iget-object p0, p0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .line 131
    invoke-interface {p0, p2, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 133
    move-result-object p0

    .line 136
    if-ne p0, v1, :cond_7

    .line 137
    return-object v1

    .line 139
    :cond_7
    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 140
    return-object p0
    .line 142
.end method
