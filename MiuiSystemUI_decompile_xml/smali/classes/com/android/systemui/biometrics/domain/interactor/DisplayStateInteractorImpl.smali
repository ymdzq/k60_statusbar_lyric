.class public final Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractor;


# instance fields
.field public final isFolded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isInRearDisplayMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final screenSizeFoldProvider:Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/systemui/biometrics/data/repository/RearDisplayStateRepository;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;

    .line 5
    invoke-direct {v0, p2}, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;-><init>(Landroid/content/Context;)V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl;->screenSizeFoldProvider:Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;

    .line 10
    new-instance p2, Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl$isFolded$1;

    .line 12
    const/4 v0, 0x0

    .line 14
    invoke-direct {p2, p0, p3, v0}, Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl$isFolded$1;-><init>(Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl;Ljava/util/concurrent/Executor;Lkotlin/coroutines/Continuation;)V

    .line 15
    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    .line 18
    move-result-object p2

    .line 21
    const/4 p3, -0x1

    .line 22
    invoke-static {p2, p3}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    .line 23
    move-result-object p2

    .line 26
    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    .line 27
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 29
    invoke-static {p2, p1, p3, v0}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 31
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl;->isFolded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 35
    check-cast p4, Lcom/android/systemui/biometrics/data/repository/RearDisplayStateRepositoryImpl;

    .line 37
    iget-object p1, p4, Lcom/android/systemui/biometrics/data/repository/RearDisplayStateRepositoryImpl;->isInRearDisplayMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 39
    iput-object p1, p0, Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl;->isInRearDisplayMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 41
    return-void
    .line 43
.end method
