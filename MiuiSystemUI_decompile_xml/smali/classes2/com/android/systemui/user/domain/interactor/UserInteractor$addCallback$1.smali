.class final Lcom/android/systemui/user/domain/interactor/UserInteractor$addCallback$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.user.domain.interactor.UserInteractor$addCallback$1"
    f = "UserInteractor.kt"
    l = {
        0x332
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lcom/android/systemui/user/domain/interactor/UserInteractor$UserCallback;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/user/domain/interactor/UserInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;Lcom/android/systemui/user/domain/interactor/UserInteractor$UserCallback;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$addCallback$1;->this$0:Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$addCallback$1;->$callback:Lcom/android/systemui/user/domain/interactor/UserInteractor$UserCallback;

    .line 4
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance p1, Lcom/android/systemui/user/domain/interactor/UserInteractor$addCallback$1;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$addCallback$1;->this$0:Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$addCallback$1;->$callback:Lcom/android/systemui/user/domain/interactor/UserInteractor$UserCallback;

    .line 6
    invoke-direct {p1, v0, p0, p2}, Lcom/android/systemui/user/domain/interactor/UserInteractor$addCallback$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;Lcom/android/systemui/user/domain/interactor/UserInteractor$UserCallback;Lkotlin/coroutines/Continuation;)V

    .line 8
    return-object p1
    .line 11
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/user/domain/interactor/UserInteractor$addCallback$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$addCallback$1;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/user/domain/interactor/UserInteractor$addCallback$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    iget v1, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$addCallback$1;->label:I

    .line 4
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    if-ne v1, v2, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$addCallback$1;->L$2:Ljava/lang/Object;

    .line 11
    check-cast v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$UserCallback;

    .line 13
    iget-object v1, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$addCallback$1;->L$1:Ljava/lang/Object;

    .line 15
    check-cast v1, Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 17
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$addCallback$1;->L$0:Ljava/lang/Object;

    .line 19
    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    .line 21
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 23
    goto :goto_0

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 27
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 29
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    throw p0

    .line 34
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 35
    iget-object v1, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$addCallback$1;->this$0:Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 38
    iget-object p1, v1, Lcom/android/systemui/user/domain/interactor/UserInteractor;->callbackMutex:Lkotlinx/coroutines/sync/MutexImpl;

    .line 40
    iget-object v3, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$addCallback$1;->$callback:Lcom/android/systemui/user/domain/interactor/UserInteractor$UserCallback;

    .line 42
    iput-object p1, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$addCallback$1;->L$0:Ljava/lang/Object;

    .line 44
    iput-object v1, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$addCallback$1;->L$1:Ljava/lang/Object;

    .line 46
    iput-object v3, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$addCallback$1;->L$2:Ljava/lang/Object;

    .line 48
    iput v2, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$addCallback$1;->label:I

    .line 50
    invoke-virtual {p1, p0}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 52
    move-result-object p0

    .line 55
    if-ne p0, v0, :cond_2

    .line 56
    return-object v0

    .line 58
    :cond_2
    move-object p0, p1

    .line 59
    move-object v0, v3

    .line 60
    :goto_0
    const/4 p1, 0x0

    .line 61
    :try_start_0
    iget-object v1, v1, Lcom/android/systemui/user/domain/interactor/UserInteractor;->callbacks:Ljava/util/Set;

    .line 62
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    check-cast p0, Lkotlinx/coroutines/sync/MutexImpl;

    .line 67
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/sync/MutexImpl;->unlock(Ljava/lang/Object;)V

    .line 69
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 72
    return-object p0

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    check-cast p0, Lkotlinx/coroutines/sync/MutexImpl;

    .line 76
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/sync/MutexImpl;->unlock(Ljava/lang/Object;)V

    .line 78
    throw v0
    .line 81
.end method
