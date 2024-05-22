.class final Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.qs.footer.data.repository.UserSwitcherRepositoryImpl$currentUserName$1"
    f = "UserSwitcherRepository.kt"
    l = {
        0x68,
        0x69
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1;->this$0:Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl;

    .line 2
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    return-void
    .line 8
.end method

.method public static final invokeSuspend$updateState(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p2, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1$updateState$1;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1$updateState$1;

    .line 7
    iget v1, v0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1$updateState$1;->label:I

    .line 9
    const/high16 v2, -0x80000000

    .line 11
    and-int v3, v1, v2

    .line 13
    if-eqz v3, :cond_0

    .line 15
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1$updateState$1;->label:I

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1$updateState$1;

    .line 21
    invoke-direct {v0, p2}, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1$updateState$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    :goto_0
    iget-object p2, v0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1$updateState$1;->result:Ljava/lang/Object;

    .line 26
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    iget v2, v0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1$updateState$1;->label:I

    .line 30
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    if-ne v2, v3, :cond_1

    .line 35
    iget-object p0, v0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1$updateState$1;->L$1:Ljava/lang/Object;

    .line 37
    check-cast p0, Lkotlinx/coroutines/channels/SendChannel;

    .line 39
    iget-object p1, v0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1$updateState$1;->L$0:Ljava/lang/Object;

    .line 41
    check-cast p1, Lcom/android/systemui/common/coroutine/ChannelExt;

    .line 43
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 45
    goto :goto_1

    .line 48
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 49
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    throw p0

    .line 56
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    sget-object p2, Lcom/android/systemui/common/coroutine/ChannelExt;->INSTANCE:Lcom/android/systemui/common/coroutine/ChannelExt;

    .line 60
    iput-object p2, v0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1$updateState$1;->L$0:Ljava/lang/Object;

    .line 62
    iput-object p0, v0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1$updateState$1;->L$1:Ljava/lang/Object;

    .line 64
    iput v3, v0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1$updateState$1;->label:I

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    new-instance v2, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$getCurrentUser$2;

    .line 71
    const/4 v3, 0x0

    .line 73
    invoke-direct {v2, p1, v3}, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$getCurrentUser$2;-><init>(Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    .line 74
    iget-object p1, p1, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 77
    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 79
    move-result-object p1

    .line 82
    if-ne p1, v1, :cond_3

    .line 83
    return-object v1

    .line 85
    :cond_3
    move-object v4, p2

    .line 86
    move-object p2, p1

    .line 87
    move-object p1, v4

    .line 88
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    invoke-interface {p0, p2}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    move-result-object p0

    .line 95
    instance-of p1, p0, Lkotlinx/coroutines/channels/ChannelResult$Failed;

    .line 96
    if-eqz p1, :cond_4

    .line 98
    invoke-static {p0}, Lkotlinx/coroutines/channels/ChannelResult;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 100
    move-result-object p0

    .line 103
    const-string p1, "Failed to send updated state - downstream canceled or failed."

    .line 104
    const-string p2, "UserSwitcherRepositoryImpl"

    .line 106
    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 111
    return-object p0
    .line 113
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1;->this$0:Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl;

    .line 4
    invoke-direct {v0, p0, p2}, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1;-><init>(Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    .line 6
    iput-object p1, v0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1;->L$0:Ljava/lang/Object;

    .line 9
    return-object v0
    .line 11
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    .line 2
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1;->label:I

    .line 4
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v1, :cond_2

    .line 8
    if-eq v1, v3, :cond_1

    .line 10
    if-ne v1, v2, :cond_0

    .line 12
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 14
    goto :goto_1

    .line 17
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 18
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    throw p0

    .line 25
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1;->L$1:Ljava/lang/Object;

    .line 26
    check-cast v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserSwitchCallback;

    .line 28
    iget-object v3, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1;->L$0:Ljava/lang/Object;

    .line 30
    check-cast v3, Lkotlinx/coroutines/channels/ProducerScope;

    .line 32
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 34
    goto :goto_0

    .line 37
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    iget-object p1, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1;->L$0:Ljava/lang/Object;

    .line 41
    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    .line 43
    new-instance v1, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1$callback$1;

    .line 45
    iget-object v4, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1;->this$0:Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl;

    .line 47
    invoke-direct {v1, p1, v4}, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1$callback$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl;)V

    .line 49
    iget-object v4, v4, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl;->userSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 52
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    new-instance v5, Lcom/android/systemui/statusbar/policy/UserSwitcherController$addAdapter$1;

    .line 57
    invoke-direct {v5, v3, v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$addAdapter$1;-><init>(ILjava/lang/Object;)V

    .line 59
    iget-object v6, v4, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->callbackCompatMap:Ljava/util/Map;

    .line 62
    invoke-interface {v6, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getUserInteractor()Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 67
    move-result-object v4

    .line 70
    invoke-virtual {v4, v5}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->addCallback(Lcom/android/systemui/statusbar/policy/UserSwitcherController$addAdapter$1;)V

    .line 71
    iget-object v4, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1;->this$0:Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl;

    .line 74
    iput-object p1, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1;->L$0:Ljava/lang/Object;

    .line 76
    iput-object v1, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1;->L$1:Ljava/lang/Object;

    .line 78
    iput v3, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1;->label:I

    .line 80
    invoke-static {p1, v4, p0}, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1;->invokeSuspend$updateState(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 82
    move-result-object v3

    .line 85
    if-ne v3, v0, :cond_3

    .line 86
    return-object v0

    .line 88
    :cond_3
    move-object v3, p1

    .line 89
    :goto_0
    new-instance p1, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1$1;

    .line 90
    iget-object v4, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1;->this$0:Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl;

    .line 92
    invoke-direct {p1, v4, v1}, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1$1;-><init>(Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserSwitchCallback;)V

    .line 94
    const/4 v1, 0x0

    .line 97
    iput-object v1, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1;->L$0:Ljava/lang/Object;

    .line 98
    iput-object v1, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1;->L$1:Ljava/lang/Object;

    .line 100
    iput v2, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1;->label:I

    .line 102
    invoke-static {v3, p1, p0}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 104
    move-result-object p0

    .line 107
    if-ne p0, v0, :cond_4

    .line 108
    return-object v0

    .line 110
    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 111
    return-object p0
    .line 113
.end method
