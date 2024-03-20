.class public final Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final credentialKind:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final isConfirmationRequested:Lkotlinx/coroutines/flow/Flow;

.field public final isCredentialAllowed:Lkotlinx/coroutines/flow/Flow;

.field public final prompt:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

.field public final promptRepository:Lcom/android/systemui/biometrics/data/repository/PromptRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/data/repository/PromptRepository;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;->promptRepository:Lcom/android/systemui/biometrics/data/repository/PromptRepository;

    .line 5
    check-cast p1, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;

    .line 7
    iget-object v0, p1, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->promptInfo:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 9
    iget-object v1, p1, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->challenge:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 11
    iget-object v2, p1, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->userId:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 13
    iget-object v3, p1, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->kind:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 15
    new-instance v4, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$prompt$1;

    .line 17
    const/4 v5, 0x0

    .line 19
    invoke-direct {v4, v5}, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$prompt$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 20
    invoke-static {v0, v1, v2, v3, v4}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function5;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    .line 23
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;->prompt:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    .line 27
    iget-object v1, p1, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->promptInfo:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 29
    new-instance v2, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$special$$inlined$map$1;

    .line 31
    const/4 v3, 0x0

    .line 33
    invoke-direct {v2, v1, v3}, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/ReadonlyStateFlow;I)V

    .line 34
    invoke-static {v2}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 37
    move-result-object v1

    .line 40
    iput-object v1, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;->isConfirmationRequested:Lkotlinx/coroutines/flow/Flow;

    .line 41
    iget-object p1, p1, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->promptInfo:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 43
    new-instance v1, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$special$$inlined$map$1;

    .line 45
    const/4 v2, 0x1

    .line 47
    invoke-direct {v1, p1, v2}, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/ReadonlyStateFlow;I)V

    .line 48
    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 51
    move-result-object p1

    .line 54
    iput-object p1, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;->isCredentialAllowed:Lkotlinx/coroutines/flow/Flow;

    .line 55
    new-instance v1, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$credentialKind$1;

    .line 57
    invoke-direct {v1, p2, v5}, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$credentialKind$1;-><init>(Lcom/android/internal/widget/LockPatternUtils;Lkotlin/coroutines/Continuation;)V

    .line 59
    new-instance p2, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 62
    invoke-direct {p2, v0, p1, v1}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    .line 64
    iput-object p2, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;->credentialKind:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 67
    return-void
    .line 69
.end method
