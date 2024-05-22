.class public final Lcom/android/systemui/retail/data/repository/RetailModeSettingsRepository;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/retail/data/repository/RetailModeRepository;


# instance fields
.field public final retailMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/settings/GlobalSettings;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/systemui/retail/data/repository/RetailModeSettingsRepository$retailMode$1;

    .line 5
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/retail/data/repository/RetailModeSettingsRepository$retailMode$1;-><init>(Lcom/android/systemui/util/settings/GlobalSettings;Lkotlin/coroutines/Continuation;)V

    .line 8
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    .line 11
    move-result-object v0

    .line 14
    const/4 v2, -0x1

    .line 15
    invoke-static {v0, v2}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    .line 16
    move-result-object v0

    .line 19
    new-instance v2, Lcom/android/systemui/retail/data/repository/RetailModeSettingsRepository$retailMode$2;

    .line 20
    invoke-direct {v2, v1}, Lcom/android/systemui/retail/data/repository/RetailModeSettingsRepository$retailMode$2;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 22
    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    .line 25
    invoke-direct {v1, v2, v0}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    .line 27
    new-instance v0, Lcom/android/systemui/retail/data/repository/RetailModeSettingsRepository$special$$inlined$map$1;

    .line 30
    invoke-direct {v0, v1, p1}, Lcom/android/systemui/retail/data/repository/RetailModeSettingsRepository$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;Lcom/android/systemui/util/settings/GlobalSettings;)V

    .line 32
    invoke-static {v0, p2}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    .line 35
    move-result-object p1

    .line 38
    sget-object p2, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    .line 39
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 41
    invoke-static {p1, p3, p2, v0}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 43
    move-result-object p1

    .line 46
    iput-object p1, p0, Lcom/android/systemui/retail/data/repository/RetailModeSettingsRepository;->retailMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 47
    return-void
    .line 49
.end method
