.class final Lcom/android/systemui/keyguard/ResourceTrimmer$start$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.keyguard.ResourceTrimmer$start$1"
    f = "ResourceTrimmer.kt"
    l = {
        0x55
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/android/systemui/keyguard/ResourceTrimmer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ResourceTrimmer;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/ResourceTrimmer$start$1;->this$0:Lcom/android/systemui/keyguard/ResourceTrimmer;

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
    .locals 0

    .line 1
    new-instance p1, Lcom/android/systemui/keyguard/ResourceTrimmer$start$1;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/keyguard/ResourceTrimmer$start$1;->this$0:Lcom/android/systemui/keyguard/ResourceTrimmer;

    .line 4
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/keyguard/ResourceTrimmer$start$1;-><init>(Lcom/android/systemui/keyguard/ResourceTrimmer;Lkotlin/coroutines/Continuation;)V

    .line 6
    return-object p1
    .line 9
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/ResourceTrimmer$start$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/keyguard/ResourceTrimmer$start$1;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/ResourceTrimmer$start$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    iget v1, p0, Lcom/android/systemui/keyguard/ResourceTrimmer$start$1;->label:I

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
    iget-object p1, p0, Lcom/android/systemui/keyguard/ResourceTrimmer$start$1;->this$0:Lcom/android/systemui/keyguard/ResourceTrimmer;

    .line 26
    iget-object p1, p1, Lcom/android/systemui/keyguard/ResourceTrimmer;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    .line 28
    iget-object p1, p1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->dozeAmount:Lkotlinx/coroutines/flow/Flow;

    .line 30
    new-instance v1, Lcom/android/systemui/keyguard/ResourceTrimmer$start$1$invokeSuspend$$inlined$map$1;

    .line 32
    const/4 v3, 0x0

    .line 34
    invoke-direct {v1, p1, v3}, Lcom/android/systemui/keyguard/ResourceTrimmer$start$1$invokeSuspend$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 35
    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 38
    move-result-object p1

    .line 41
    iget-object v1, p0, Lcom/android/systemui/keyguard/ResourceTrimmer$start$1;->this$0:Lcom/android/systemui/keyguard/ResourceTrimmer;

    .line 42
    iget-object v1, v1, Lcom/android/systemui/keyguard/ResourceTrimmer;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    .line 44
    iget-object v4, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->wakefulnessModel:Lkotlinx/coroutines/flow/Flow;

    .line 46
    new-instance v5, Lcom/android/systemui/keyguard/ResourceTrimmer$start$1$invokeSuspend$$inlined$map$1;

    .line 48
    invoke-direct {v5, v4, v2}, Lcom/android/systemui/keyguard/ResourceTrimmer$start$1$invokeSuspend$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 50
    iget-object v1, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isDreaming:Lkotlinx/coroutines/flow/Flow;

    .line 53
    sget-object v4, Lcom/android/systemui/keyguard/ResourceTrimmer$start$1$3;->INSTANCE:Lcom/android/systemui/keyguard/ResourceTrimmer$start$1$3;

    .line 55
    invoke-static {v5, v1, p1, v4}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    .line 57
    move-result-object p1

    .line 60
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 61
    move-result-object p1

    .line 64
    new-instance v1, Lcom/android/systemui/keyguard/ResourceTrimmer$start$1$4;

    .line 65
    iget-object v4, p0, Lcom/android/systemui/keyguard/ResourceTrimmer$start$1;->this$0:Lcom/android/systemui/keyguard/ResourceTrimmer;

    .line 67
    invoke-direct {v1, v4, v3}, Lcom/android/systemui/keyguard/ResourceTrimmer$start$1$4;-><init>(Lcom/android/systemui/keyguard/ResourceTrimmer;I)V

    .line 69
    iput v2, p0, Lcom/android/systemui/keyguard/ResourceTrimmer$start$1;->label:I

    .line 72
    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 74
    move-result-object p0

    .line 77
    if-ne p0, v0, :cond_2

    .line 78
    return-object v0

    .line 80
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 81
    return-object p0
    .line 83
.end method
