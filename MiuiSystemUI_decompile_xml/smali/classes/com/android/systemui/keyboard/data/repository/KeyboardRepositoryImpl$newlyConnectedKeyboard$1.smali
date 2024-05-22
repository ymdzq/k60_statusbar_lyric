.class final Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$newlyConnectedKeyboard$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.keyboard.data.repository.KeyboardRepositoryImpl$newlyConnectedKeyboard$1"
    f = "KeyboardRepository.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 3
    return-void
    .line 6
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$newlyConnectedKeyboard$1;

    .line 2
    invoke-direct {p0, p2}, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$newlyConnectedKeyboard$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 4
    iput-object p1, p0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$newlyConnectedKeyboard$1;->L$0:Ljava/lang/Object;

    .line 7
    return-object p0
    .line 9
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/Pair;

    .line 2
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$newlyConnectedKeyboard$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$newlyConnectedKeyboard$1;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$newlyConnectedKeyboard$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$newlyConnectedKeyboard$1;->label:I

    .line 2
    if-nez v0, :cond_3

    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    iget-object p0, p0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$newlyConnectedKeyboard$1;->L$0:Ljava/lang/Object;

    .line 9
    check-cast p0, Lkotlin/Pair;

    .line 11
    invoke-virtual {p0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 16
    check-cast p1, Ljava/util/Collection;

    .line 17
    invoke-virtual {p0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 19
    move-result-object p0

    .line 22
    check-cast p0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$DeviceChange;

    .line 23
    sget-object v0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$FreshStart;->INSTANCE:Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$FreshStart;

    .line 25
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    new-instance p0, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$3;

    .line 33
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$3;-><init>(Ljava/lang/Iterable;)V

    .line 35
    goto :goto_0

    .line 38
    :cond_0
    instance-of p1, p0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$DeviceAdded;

    .line 39
    if-eqz p1, :cond_1

    .line 41
    check-cast p0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$DeviceAdded;

    .line 43
    iget p0, p0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$DeviceAdded;->deviceId:I

    .line 45
    new-instance p1, Ljava/lang/Integer;

    .line 47
    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    .line 49
    new-instance p0, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    .line 52
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    .line 54
    goto :goto_0

    .line 57
    :cond_1
    instance-of p0, p0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$DeviceRemoved;

    .line 58
    if-eqz p0, :cond_2

    .line 60
    sget-object p0, Lkotlinx/coroutines/flow/EmptyFlow;->INSTANCE:Lkotlinx/coroutines/flow/EmptyFlow;

    .line 62
    :goto_0
    return-object p0

    .line 64
    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 65
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 67
    throw p0

    .line 70
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 71
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 73
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 75
    throw p0
    .line 78
.end method
