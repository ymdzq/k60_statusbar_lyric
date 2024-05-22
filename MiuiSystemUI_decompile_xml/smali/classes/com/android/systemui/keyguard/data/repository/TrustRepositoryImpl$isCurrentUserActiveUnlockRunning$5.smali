.class final Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$isCurrentUserActiveUnlockRunning$5;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.keyguard.data.repository.TrustRepositoryImpl$isCurrentUserActiveUnlockRunning$5"
    f = "TrustRepository.kt"
    l = {
        0x8e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$isCurrentUserActiveUnlockRunning$5;->this$0:Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;

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
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$isCurrentUserActiveUnlockRunning$5;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$isCurrentUserActiveUnlockRunning$5;->this$0:Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;

    .line 4
    invoke-direct {v0, p0, p2}, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$isCurrentUserActiveUnlockRunning$5;-><init>(Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    .line 6
    iput-object p1, v0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$isCurrentUserActiveUnlockRunning$5;->L$0:Ljava/lang/Object;

    .line 9
    return-object v0
    .line 11
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 2
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$isCurrentUserActiveUnlockRunning$5;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$isCurrentUserActiveUnlockRunning$5;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$isCurrentUserActiveUnlockRunning$5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    iget v1, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$isCurrentUserActiveUnlockRunning$5;->label:I

    .line 4
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    if-ne v1, v2, :cond_0

    .line 9
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 11
    goto :goto_0

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 15
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 17
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p0

    .line 22
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 23
    iget-object p1, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$isCurrentUserActiveUnlockRunning$5;->L$0:Ljava/lang/Object;

    .line 26
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 28
    iget-object v1, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$isCurrentUserActiveUnlockRunning$5;->this$0:Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;

    .line 30
    iget-object v3, v1, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;->activeUnlockRunningForUser:Ljava/util/Map;

    .line 32
    iget-object v1, v1, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;->userRepository:Lcom/android/systemui/user/data/repository/UserRepository;

    .line 34
    check-cast v1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 36
    invoke-virtual {v1}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->getSelectedUserInfo()Landroid/content/pm/UserInfo;

    .line 38
    move-result-object v1

    .line 41
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 42
    new-instance v4, Ljava/lang/Integer;

    .line 44
    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 46
    check-cast v3, Ljava/util/LinkedHashMap;

    .line 49
    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    move-result-object v1

    .line 54
    check-cast v1, Lcom/android/systemui/keyguard/shared/model/ActiveUnlockModel;

    .line 55
    const/4 v3, 0x0

    .line 57
    if-eqz v1, :cond_2

    .line 58
    iget-boolean v1, v1, Lcom/android/systemui/keyguard/shared/model/ActiveUnlockModel;->isRunning:Z

    .line 60
    if-eqz v1, :cond_2

    .line 62
    move v3, v2

    .line 64
    :cond_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 65
    move-result-object v1

    .line 68
    iput v2, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$isCurrentUserActiveUnlockRunning$5;->label:I

    .line 69
    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 71
    move-result-object p0

    .line 74
    if-ne p0, v0, :cond_3

    .line 75
    return-object v0

    .line 77
    :cond_3
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 78
    return-object p0
    .line 80
.end method
