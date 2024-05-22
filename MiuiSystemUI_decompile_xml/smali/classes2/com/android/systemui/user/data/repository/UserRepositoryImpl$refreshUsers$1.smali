.class final Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.user.data.repository.UserRepositoryImpl$refreshUsers$1"
    f = "UserRepository.kt"
    l = {
        0xb9,
        0xc5
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/android/systemui/user/data/repository/UserRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/data/repository/UserRepositoryImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1;->this$0:Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

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
    new-instance p1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1;->this$0:Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 4
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1;-><init>(Lcom/android/systemui/user/data/repository/UserRepositoryImpl;Lkotlin/coroutines/Continuation;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    iget v1, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1;->label:I

    .line 4
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x1

    .line 8
    if-eqz v1, :cond_2

    .line 9
    if-eq v1, v4, :cond_1

    .line 11
    if-ne v1, v3, :cond_0

    .line 13
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 15
    goto :goto_1

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 19
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    throw p0

    .line 26
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 27
    goto :goto_0

    .line 30
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 31
    iget-object p1, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1;->this$0:Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 34
    iget-object v1, p1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 36
    new-instance v5, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1$result$1;

    .line 38
    invoke-direct {v5, p1, v2}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1$result$1;-><init>(Lcom/android/systemui/user/data/repository/UserRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    .line 40
    iput v4, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1;->label:I

    .line 43
    invoke-static {v1, v5, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 45
    move-result-object p1

    .line 48
    if-ne p1, v0, :cond_3

    .line 49
    return-object v0

    .line 51
    :cond_3
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 52
    if-eqz p1, :cond_4

    .line 54
    iget-object v1, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1;->this$0:Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 56
    iget-object v1, v1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->_userInfos:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 58
    new-instance v5, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1$invokeSuspend$$inlined$sortedBy$1;

    .line 60
    const/4 v6, 0x0

    .line 62
    invoke-direct {v5, v6}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1$invokeSuspend$$inlined$sortedBy$1;-><init>(I)V

    .line 63
    invoke-static {p1, v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 66
    move-result-object p1

    .line 69
    new-instance v5, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1$invokeSuspend$$inlined$sortedBy$1;

    .line 70
    invoke-direct {v5, v4}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1$invokeSuspend$$inlined$sortedBy$1;-><init>(I)V

    .line 72
    invoke-static {p1, v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 75
    move-result-object p1

    .line 78
    invoke-virtual {v1, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 79
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1;->this$0:Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 82
    iget v1, p1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->mainUserId:I

    .line 84
    const/16 v4, -0x2710

    .line 86
    if-ne v1, v4, :cond_6

    .line 88
    new-instance v1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1$mainUser$1;

    .line 90
    invoke-direct {v1, p1, v2}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1$mainUser$1;-><init>(Lcom/android/systemui/user/data/repository/UserRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    .line 92
    iput v3, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1;->label:I

    .line 95
    iget-object p1, p1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 97
    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 99
    move-result-object p1

    .line 102
    if-ne p1, v0, :cond_5

    .line 103
    return-object v0

    .line 105
    :cond_5
    :goto_1
    check-cast p1, Landroid/os/UserHandle;

    .line 106
    if-eqz p1, :cond_6

    .line 108
    iget-object p0, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1;->this$0:Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 110
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 112
    move-result p1

    .line 115
    iput p1, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->mainUserId:I

    .line 116
    :cond_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 118
    return-object p0
    .line 120
.end method
