.class public final Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/biometrics/data/repository/PromptRepository;


# instance fields
.field public final _challenge:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _isConfirmationRequired:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _kind:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _promptInfo:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _userId:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final authController:Lcom/android/systemui/biometrics/AuthController;

.field public final challenge:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final kind:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final promptInfo:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final userId:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/AuthController;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->authController:Lcom/android/systemui/biometrics/AuthController;

    .line 5
    new-instance p1, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl$isShowing$1;

    .line 7
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, v0}, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl$isShowing$1;-><init>(Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    .line 10
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    .line 13
    move-result-object p1

    .line 16
    const/4 v1, -0x1

    .line 17
    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    .line 18
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 21
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->_promptInfo:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 25
    new-instance v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 27
    invoke-direct {v1, p1}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    .line 29
    iput-object v1, p0, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->promptInfo:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 32
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 34
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->_challenge:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 38
    new-instance v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 40
    invoke-direct {v1, p1}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    .line 42
    iput-object v1, p0, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->challenge:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 45
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 47
    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->_userId:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 51
    new-instance v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 53
    invoke-direct {v0, p1}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    .line 55
    iput-object v0, p0, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->userId:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 58
    new-instance p1, Lcom/android/systemui/biometrics/shared/model/PromptKind$Biometric;

    .line 60
    invoke-direct {p1}, Lcom/android/systemui/biometrics/shared/model/PromptKind$Biometric;-><init>()V

    .line 62
    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 65
    move-result-object p1

    .line 68
    iput-object p1, p0, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->_kind:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 69
    new-instance v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 71
    invoke-direct {v0, p1}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    .line 73
    iput-object v0, p0, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->kind:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 76
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 78
    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 80
    move-result-object p1

    .line 83
    iput-object p1, p0, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->_isConfirmationRequired:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 84
    return-void
    .line 86
.end method
