.class final Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.dreams.DreamOverlayAnimationsController$init$1$1"
    f = "DreamOverlayAnimationsController.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $configurationBasedDimensions:Lkotlinx/coroutines/flow/MutableStateFlow;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/android/systemui/dreams/DreamOverlayAnimationsController;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1;->$configurationBasedDimensions:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

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
    new-instance v0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1;->$configurationBasedDimensions:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    .line 6
    invoke-direct {v0, v1, p0, p2}, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1;-><init>(Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/android/systemui/dreams/DreamOverlayAnimationsController;Lkotlin/coroutines/Continuation;)V

    .line 8
    iput-object p1, v0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1;->L$0:Ljava/lang/Object;

    .line 11
    return-object v0
    .line 13
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    return-object p1
    .line 17
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1;->label:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1;->L$0:Ljava/lang/Object;

    .line 9
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 11
    new-instance v0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1$1;

    .line 13
    iget-object v1, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1;->$configurationBasedDimensions:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 15
    iget-object v2, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    .line 17
    const/4 v3, 0x0

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1$1;-><init>(Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/android/systemui/dreams/DreamOverlayAnimationsController;Lkotlin/coroutines/Continuation;)V

    .line 20
    const/4 v1, 0x3

    .line 23
    invoke-static {p1, v3, v3, v0, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 24
    new-instance v0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1$2;

    .line 27
    iget-object v2, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    .line 29
    invoke-direct {v0, v2, v3}, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1$2;-><init>(Lcom/android/systemui/dreams/DreamOverlayAnimationsController;Lkotlin/coroutines/Continuation;)V

    .line 31
    invoke-static {p1, v3, v3, v0, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 34
    new-instance v0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1$3;

    .line 37
    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    .line 39
    invoke-direct {v0, p0, v3}, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1$3;-><init>(Lcom/android/systemui/dreams/DreamOverlayAnimationsController;Lkotlin/coroutines/Continuation;)V

    .line 41
    invoke-static {p1, v3, v3, v0, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 44
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 47
    return-object p0

    .line 49
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 50
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    throw p0
    .line 57
.end method
