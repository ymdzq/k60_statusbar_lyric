.class final Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$isNonStrongBiometricAllowed$2$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.keyguard.data.repository.StrongAuthTracker$isNonStrongBiometricAllowed$2$4"
    f = "BiometricSettingsRepository.kt"
    l = {
        0x16b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $userId:I

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker;


# direct methods
.method public constructor <init>(ILcom/android/systemui/keyguard/data/repository/StrongAuthTracker;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$isNonStrongBiometricAllowed$2$4;->this$0:Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker;

    .line 2
    iput p1, p0, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$isNonStrongBiometricAllowed$2$4;->$userId:I

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
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$isNonStrongBiometricAllowed$2$4;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$isNonStrongBiometricAllowed$2$4;->this$0:Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker;

    .line 4
    iget p0, p0, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$isNonStrongBiometricAllowed$2$4;->$userId:I

    .line 6
    invoke-direct {v0, p0, v1, p2}, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$isNonStrongBiometricAllowed$2$4;-><init>(ILcom/android/systemui/keyguard/data/repository/StrongAuthTracker;Lkotlin/coroutines/Continuation;)V

    .line 8
    iput-object p1, v0, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$isNonStrongBiometricAllowed$2$4;->L$0:Ljava/lang/Object;

    .line 11
    return-object v0
    .line 13
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 2
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$isNonStrongBiometricAllowed$2$4;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$isNonStrongBiometricAllowed$2$4;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$isNonStrongBiometricAllowed$2$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$isNonStrongBiometricAllowed$2$4;->label:I

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
    iget-object p1, p0, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$isNonStrongBiometricAllowed$2$4;->L$0:Ljava/lang/Object;

    .line 26
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 28
    iget-object v1, p0, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$isNonStrongBiometricAllowed$2$4;->this$0:Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker;

    .line 30
    iget v3, p0, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$isNonStrongBiometricAllowed$2$4;->$userId:I

    .line 32
    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isNonStrongBiometricAllowedAfterIdleTimeout(I)Z

    .line 34
    move-result v1

    .line 37
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 38
    move-result-object v1

    .line 41
    iput v2, p0, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$isNonStrongBiometricAllowed$2$4;->label:I

    .line 42
    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 44
    move-result-object p0

    .line 47
    if-ne p0, v0, :cond_2

    .line 48
    return-object v0

    .line 50
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 51
    return-object p0
    .line 53
.end method
