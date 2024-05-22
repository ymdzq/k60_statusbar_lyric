.class final Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$biometricAuthReason$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.keyguard.bouncer.data.repository.BouncerMessageRepositoryImpl$biometricAuthReason$1"
    f = "BouncerMessageRepository.kt"
    l = {
        0xde
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$biometricAuthReason$1;->$updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

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
    new-instance v0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$biometricAuthReason$1;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$biometricAuthReason$1;->$updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 4
    invoke-direct {v0, p0, p2}, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$biometricAuthReason$1;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Lkotlin/coroutines/Continuation;)V

    .line 6
    iput-object p1, v0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$biometricAuthReason$1;->L$0:Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$biometricAuthReason$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$biometricAuthReason$1;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$biometricAuthReason$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$biometricAuthReason$1;->label:I

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
    iget-object p1, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$biometricAuthReason$1;->L$0:Ljava/lang/Object;

    .line 26
    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    .line 28
    new-instance v1, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$biometricAuthReason$1$callback$1;

    .line 30
    iget-object v3, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$biometricAuthReason$1;->$updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 32
    invoke-direct {v1, v3, p1}, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$biometricAuthReason$1$callback$1;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Lkotlinx/coroutines/channels/ProducerScope;)V

    .line 34
    invoke-virtual {v3, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 37
    new-instance v3, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$biometricAuthReason$1$1;

    .line 40
    iget-object v4, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$biometricAuthReason$1;->$updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 42
    invoke-direct {v3, v4, v1}, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$biometricAuthReason$1$1;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$biometricAuthReason$1$callback$1;)V

    .line 44
    iput v2, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$biometricAuthReason$1;->label:I

    .line 47
    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 49
    move-result-object p0

    .line 52
    if-ne p0, v0, :cond_2

    .line 53
    return-object v0

    .line 55
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 56
    return-object p0
    .line 58
.end method
