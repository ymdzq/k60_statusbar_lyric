.class final Lcom/android/systemui/people/ui/view/PeopleViewBinder$bind$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.people.ui.view.PeopleViewBinder$bind$1$1"
    f = "PeopleViewBinder.kt"
    l = {
        0x50
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $onResult:Lkotlin/jvm/functions/Function1;

.field final synthetic $viewModel:Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/people/ui/view/PeopleViewBinder$bind$1$1;->$viewModel:Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/people/ui/view/PeopleViewBinder$bind$1$1;->$onResult:Lkotlin/jvm/functions/Function1;

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
    .locals 1

    .line 1
    new-instance p1, Lcom/android/systemui/people/ui/view/PeopleViewBinder$bind$1$1;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/people/ui/view/PeopleViewBinder$bind$1$1;->$viewModel:Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/people/ui/view/PeopleViewBinder$bind$1$1;->$onResult:Lkotlin/jvm/functions/Function1;

    .line 6
    invoke-direct {p1, v0, p0, p2}, Lcom/android/systemui/people/ui/view/PeopleViewBinder$bind$1$1;-><init>(Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 8
    return-object p1
    .line 11
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/people/ui/view/PeopleViewBinder$bind$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/people/ui/view/PeopleViewBinder$bind$1$1;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/people/ui/view/PeopleViewBinder$bind$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 17
    return-object p0
    .line 19
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    iget v1, p0, Lcom/android/systemui/people/ui/view/PeopleViewBinder$bind$1$1;->label:I

    .line 4
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    if-eq v1, v2, :cond_0

    .line 9
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 11
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 13
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    throw p0

    .line 18
    :cond_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 19
    goto :goto_0

    .line 22
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 23
    iget-object p1, p0, Lcom/android/systemui/people/ui/view/PeopleViewBinder$bind$1$1;->$viewModel:Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;

    .line 26
    iget-object v1, p1, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;->result:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 28
    new-instance v3, Lcom/android/systemui/people/ui/view/PeopleViewBinder$bind$2$1$2;

    .line 30
    iget-object v4, p0, Lcom/android/systemui/people/ui/view/PeopleViewBinder$bind$1$1;->$onResult:Lkotlin/jvm/functions/Function1;

    .line 32
    invoke-direct {v3, p1, v4}, Lcom/android/systemui/people/ui/view/PeopleViewBinder$bind$2$1$2;-><init>(Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;Lkotlin/jvm/functions/Function1;)V

    .line 34
    iput v2, p0, Lcom/android/systemui/people/ui/view/PeopleViewBinder$bind$1$1;->label:I

    .line 37
    invoke-virtual {v1, v3, p0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 39
    move-result-object p0

    .line 42
    if-ne p0, v0, :cond_2

    .line 43
    return-object v0

    .line 45
    :cond_2
    :goto_0
    new-instance p0, Lkotlin/KotlinNothingValueException;

    .line 46
    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 48
    throw p0
    .line 51
.end method
