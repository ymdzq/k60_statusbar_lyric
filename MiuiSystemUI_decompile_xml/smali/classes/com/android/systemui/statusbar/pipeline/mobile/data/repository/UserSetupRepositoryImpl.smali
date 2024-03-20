.class public final Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/UserSetupRepositoryImpl;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public final isUserSetupFlow:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/UserSetupRepositoryImpl;->deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/UserSetupRepositoryImpl;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 7
    new-instance p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/UserSetupRepositoryImpl$isUserSetupFlow$1;

    .line 9
    const/4 p2, 0x0

    .line 11
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/UserSetupRepositoryImpl$isUserSetupFlow$1;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/UserSetupRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    .line 12
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    .line 15
    move-result-object p1

    .line 18
    const/4 v0, -0x1

    .line 19
    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    .line 20
    move-result-object p1

    .line 23
    new-instance v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/UserSetupRepositoryImpl$isUserSetupFlow$2;

    .line 24
    invoke-direct {v0, p2}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/UserSetupRepositoryImpl$isUserSetupFlow$2;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 26
    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    .line 29
    invoke-direct {v1, v0, p1}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    .line 31
    new-instance p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/UserSetupRepositoryImpl$isUserSetupFlow$3;

    .line 34
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/UserSetupRepositoryImpl$isUserSetupFlow$3;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/UserSetupRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    .line 36
    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/FlowKt;->mapLatest(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 39
    move-result-object p1

    .line 42
    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 43
    move-result-object p2

    .line 46
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 47
    invoke-static {p1, p3, p2, v0}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 49
    move-result-object p1

    .line 52
    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/UserSetupRepositoryImpl;->isUserSetupFlow:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 53
    return-void
    .line 55
.end method
