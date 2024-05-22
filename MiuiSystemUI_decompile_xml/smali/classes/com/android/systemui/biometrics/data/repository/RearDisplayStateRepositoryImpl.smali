.class public final Lcom/android/systemui/biometrics/data/repository/RearDisplayStateRepositoryImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/biometrics/data/repository/RearDisplayStateRepository;


# instance fields
.field public final isInRearDisplayMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;Landroid/hardware/devicestate/DeviceStateManager;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/systemui/biometrics/data/repository/RearDisplayStateRepositoryImpl$isInRearDisplayMode$1;

    .line 5
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p3, p4, p2, v1}, Lcom/android/systemui/biometrics/data/repository/RearDisplayStateRepositoryImpl$isInRearDisplayMode$1;-><init>(Landroid/hardware/devicestate/DeviceStateManager;Ljava/util/concurrent/Executor;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    .line 8
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    .line 11
    move-result-object p2

    .line 14
    const/4 p3, -0x1

    .line 15
    invoke-static {p2, p3}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    .line 16
    move-result-object p2

    .line 19
    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    .line 20
    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 22
    invoke-static {p2, p1, p3, p4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 24
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/android/systemui/biometrics/data/repository/RearDisplayStateRepositoryImpl;->isInRearDisplayMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 28
    return-void
    .line 30
.end method
