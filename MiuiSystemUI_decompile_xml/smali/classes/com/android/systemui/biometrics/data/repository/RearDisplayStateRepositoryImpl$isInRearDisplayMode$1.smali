.class final Lcom/android/systemui/biometrics/data/repository/RearDisplayStateRepositoryImpl$isInRearDisplayMode$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.biometrics.data.repository.RearDisplayStateRepositoryImpl$isInRearDisplayMode$1"
    f = "RearDisplayStateRepository.kt"
    l = {
        0x4a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $deviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

.field final synthetic $mainExecutor:Ljava/util/concurrent/Executor;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Landroid/hardware/devicestate/DeviceStateManager;Ljava/util/concurrent/Executor;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/biometrics/data/repository/RearDisplayStateRepositoryImpl$isInRearDisplayMode$1;->$deviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/biometrics/data/repository/RearDisplayStateRepositoryImpl$isInRearDisplayMode$1;->$mainExecutor:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/biometrics/data/repository/RearDisplayStateRepositoryImpl$isInRearDisplayMode$1;->$context:Landroid/content/Context;

    .line 6
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    return-void
    .line 12
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/systemui/biometrics/data/repository/RearDisplayStateRepositoryImpl$isInRearDisplayMode$1;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/biometrics/data/repository/RearDisplayStateRepositoryImpl$isInRearDisplayMode$1;->$deviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/biometrics/data/repository/RearDisplayStateRepositoryImpl$isInRearDisplayMode$1;->$mainExecutor:Ljava/util/concurrent/Executor;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/biometrics/data/repository/RearDisplayStateRepositoryImpl$isInRearDisplayMode$1;->$context:Landroid/content/Context;

    .line 8
    invoke-direct {v0, v1, v2, p0, p2}, Lcom/android/systemui/biometrics/data/repository/RearDisplayStateRepositoryImpl$isInRearDisplayMode$1;-><init>(Landroid/hardware/devicestate/DeviceStateManager;Ljava/util/concurrent/Executor;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    .line 10
    iput-object p1, v0, Lcom/android/systemui/biometrics/data/repository/RearDisplayStateRepositoryImpl$isInRearDisplayMode$1;->L$0:Ljava/lang/Object;

    .line 13
    return-object v0
    .line 15
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    .line 2
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/biometrics/data/repository/RearDisplayStateRepositoryImpl$isInRearDisplayMode$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/biometrics/data/repository/RearDisplayStateRepositoryImpl$isInRearDisplayMode$1;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/data/repository/RearDisplayStateRepositoryImpl$isInRearDisplayMode$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/android/systemui/biometrics/data/repository/RearDisplayStateRepositoryImpl$isInRearDisplayMode$1;->label:I

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
    iget-object p1, p0, Lcom/android/systemui/biometrics/data/repository/RearDisplayStateRepositoryImpl$isInRearDisplayMode$1;->L$0:Ljava/lang/Object;

    .line 26
    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    .line 28
    new-instance v1, Lcom/android/systemui/biometrics/data/repository/RearDisplayStateRepositoryImpl$isInRearDisplayMode$1$sendRearDisplayStateUpdate$1;

    .line 30
    invoke-direct {v1, p1}, Lcom/android/systemui/biometrics/data/repository/RearDisplayStateRepositoryImpl$isInRearDisplayMode$1$sendRearDisplayStateUpdate$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;)V

    .line 32
    new-instance v3, Lcom/android/systemui/biometrics/data/repository/RearDisplayStateRepositoryImpl$isInRearDisplayMode$1$callback$1;

    .line 35
    iget-object v4, p0, Lcom/android/systemui/biometrics/data/repository/RearDisplayStateRepositoryImpl$isInRearDisplayMode$1;->$context:Landroid/content/Context;

    .line 37
    invoke-direct {v3, v4, v1}, Lcom/android/systemui/biometrics/data/repository/RearDisplayStateRepositoryImpl$isInRearDisplayMode$1$callback$1;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    .line 39
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 42
    invoke-virtual {v1, v4}, Lcom/android/systemui/biometrics/data/repository/RearDisplayStateRepositoryImpl$isInRearDisplayMode$1$sendRearDisplayStateUpdate$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v1, p0, Lcom/android/systemui/biometrics/data/repository/RearDisplayStateRepositoryImpl$isInRearDisplayMode$1;->$deviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    .line 47
    iget-object v4, p0, Lcom/android/systemui/biometrics/data/repository/RearDisplayStateRepositoryImpl$isInRearDisplayMode$1;->$mainExecutor:Ljava/util/concurrent/Executor;

    .line 49
    invoke-virtual {v1, v4, v3}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 51
    new-instance v1, Lcom/android/systemui/biometrics/data/repository/RearDisplayStateRepositoryImpl$isInRearDisplayMode$1$1;

    .line 54
    iget-object v4, p0, Lcom/android/systemui/biometrics/data/repository/RearDisplayStateRepositoryImpl$isInRearDisplayMode$1;->$deviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    .line 56
    invoke-direct {v1, v4, v3}, Lcom/android/systemui/biometrics/data/repository/RearDisplayStateRepositoryImpl$isInRearDisplayMode$1$1;-><init>(Landroid/hardware/devicestate/DeviceStateManager;Lcom/android/systemui/biometrics/data/repository/RearDisplayStateRepositoryImpl$isInRearDisplayMode$1$callback$1;)V

    .line 58
    iput v2, p0, Lcom/android/systemui/biometrics/data/repository/RearDisplayStateRepositoryImpl$isInRearDisplayMode$1;->label:I

    .line 61
    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 63
    move-result-object p0

    .line 66
    if-ne p0, v0, :cond_2

    .line 67
    return-object v0

    .line 69
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 70
    return-object p0
    .line 72
.end method
