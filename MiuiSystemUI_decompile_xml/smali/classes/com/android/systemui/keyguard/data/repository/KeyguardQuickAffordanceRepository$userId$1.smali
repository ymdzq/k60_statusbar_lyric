.class final Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$userId$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.keyguard.data.repository.KeyguardQuickAffordanceRepository$userId$1"
    f = "KeyguardQuickAffordanceRepository.kt"
    l = {
        0x50
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$userId$1;->this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;

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
    new-instance v0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$userId$1;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$userId$1;->this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;

    .line 4
    invoke-direct {v0, p0, p2}, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$userId$1;-><init>(Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;Lkotlin/coroutines/Continuation;)V

    .line 6
    iput-object p1, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$userId$1;->L$0:Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$userId$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$userId$1;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$userId$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    iget v1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$userId$1;->label:I

    .line 4
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    if-ne v1, v2, :cond_0

    .line 9
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 11
    goto :goto_1

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
    iget-object p1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$userId$1;->L$0:Ljava/lang/Object;

    .line 26
    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    .line 28
    new-instance v1, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$userId$1$callback$1;

    .line 30
    invoke-direct {v1, p1}, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$userId$1$callback$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;)V

    .line 32
    iget-object v3, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$userId$1;->this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;

    .line 35
    iget-object v3, v3, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 37
    sget-object v4, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$userId$1$1;->INSTANCE:Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$userId$1$1;

    .line 39
    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 41
    invoke-virtual {v3, v1, v4}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 43
    iget-object v3, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$userId$1;->this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;

    .line 46
    iget-object v3, v3, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 48
    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 50
    invoke-virtual {v3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 52
    move-result v3

    .line 55
    new-instance v4, Ljava/lang/Integer;

    .line 56
    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 58
    const/4 v3, 0x4

    .line 61
    and-int/2addr v3, v3

    .line 62
    if-eqz v3, :cond_2

    .line 63
    const-string/jumbo v3, "updated state"

    .line 65
    goto :goto_0

    .line 68
    :cond_2
    const/4 v3, 0x0

    .line 69
    :goto_0
    invoke-interface {p1, v4}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    move-result-object v4

    .line 73
    instance-of v5, v4, Lkotlinx/coroutines/channels/ChannelResult$Failed;

    .line 74
    if-eqz v5, :cond_3

    .line 76
    invoke-static {v4}, Lkotlinx/coroutines/channels/ChannelResult;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 78
    move-result-object v4

    .line 81
    const-string v5, "Failed to send "

    .line 82
    const-string v6, " - downstream canceled or failed."

    .line 84
    const-string v7, "KeyguardQuickAffordanceRepository"

    .line 86
    invoke-static {v5, v3, v6, v7, v4}, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl$isShowing$1$callback$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    :cond_3
    new-instance v3, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$userId$1$2;

    .line 91
    iget-object v4, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$userId$1;->this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;

    .line 93
    invoke-direct {v3, v4, v1}, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$userId$1$2;-><init>(Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$userId$1$callback$1;)V

    .line 95
    iput v2, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$userId$1;->label:I

    .line 98
    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 100
    move-result-object p0

    .line 103
    if-ne p0, v0, :cond_4

    .line 104
    return-object v0

    .line 106
    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 107
    return-object p0
    .line 109
.end method
