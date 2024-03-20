.class public final Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl$setUpLogging$$inlined$map$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/flow/StateFlow;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl$setUpLogging$$inlined$map$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl$setUpLogging$$inlined$map$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    iget v2, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl$setUpLogging$$inlined$map$1;->$r8$classId:I

    .line 6
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl$setUpLogging$$inlined$map$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    .line 8
    packed-switch v2, :pswitch_data_0

    .line 10
    goto :goto_0

    .line 13
    :pswitch_0
    new-instance v2, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl$setUpLogging$$inlined$map$3$2;

    .line 14
    invoke-direct {v2, p1}, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl$setUpLogging$$inlined$map$3$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 16
    invoke-interface {p0, v2, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 19
    move-result-object p0

    .line 22
    if-ne p0, v1, :cond_0

    .line 23
    move-object v0, p0

    .line 25
    :cond_0
    return-object v0

    .line 26
    :pswitch_1
    new-instance v2, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl$setUpLogging$$inlined$map$2$2;

    .line 27
    invoke-direct {v2, p1}, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl$setUpLogging$$inlined$map$2$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 29
    invoke-interface {p0, v2, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 32
    move-result-object p0

    .line 35
    if-ne p0, v1, :cond_1

    .line 36
    move-object v0, p0

    .line 38
    :cond_1
    return-object v0

    .line 39
    :pswitch_2
    new-instance v2, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl$setUpLogging$$inlined$map$1$2;

    .line 40
    invoke-direct {v2, p1}, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl$setUpLogging$$inlined$map$1$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 42
    invoke-interface {p0, v2, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 45
    move-result-object p0

    .line 48
    if-ne p0, v1, :cond_2

    .line 49
    move-object v0, p0

    .line 51
    :cond_2
    return-object v0

    .line 52
    :goto_0
    new-instance v2, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl$setUpLogging$$inlined$map$4$2;

    .line 53
    invoke-direct {v2, p1}, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl$setUpLogging$$inlined$map$4$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 55
    invoke-interface {p0, v2, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 58
    move-result-object p0

    .line 61
    if-ne p0, v1, :cond_3

    .line 62
    move-object v0, p0

    .line 64
    :cond_3
    return-object v0

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 66
.end method
