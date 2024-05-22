.class public final Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageAuditLogger;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final interactor:Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageInteractor;

.field public final repository:Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepository;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepository;Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageInteractor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageAuditLogger;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageAuditLogger;->repository:Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepository;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageAuditLogger;->interactor:Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageInteractor;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final collectAndLog(Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageAuditLogger$collectAndLog$1;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, p2, v1}, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageAuditLogger$collectAndLog$1;-><init>(Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 5
    const/4 p1, 0x3

    .line 8
    iget-object p0, p0, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageAuditLogger;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 9
    invoke-static {p0, v1, v1, v0, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 11
    return-void
    .line 14
.end method

.method public final start()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageAuditLogger;->repository:Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepository;

    .line 8
    check-cast v0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;

    .line 10
    iget-object v1, v0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->biometricAuthMessage:Lkotlinx/coroutines/flow/Flow;

    .line 12
    const-string v2, "biometricMessage: "

    .line 14
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageAuditLogger;->collectAndLog(Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;)V

    .line 16
    iget-object v1, v0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->primaryAuthMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 19
    const-string v2, "primaryAuthMessage: "

    .line 21
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageAuditLogger;->collectAndLog(Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;)V

    .line 23
    iget-object v1, v0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->customMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 26
    const-string v2, "customMessage: "

    .line 28
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageAuditLogger;->collectAndLog(Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;)V

    .line 30
    iget-object v1, v0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->faceAcquisitionMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 33
    const-string v2, "faceAcquisitionMessage: "

    .line 35
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageAuditLogger;->collectAndLog(Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;)V

    .line 37
    iget-object v1, v0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->fingerprintAcquisitionMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 40
    const-string v2, "fingerprintAcquisitionMessage: "

    .line 42
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageAuditLogger;->collectAndLog(Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;)V

    .line 44
    iget-object v0, v0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->authFlagsMessage:Lkotlinx/coroutines/flow/Flow;

    .line 47
    const-string v1, "authFlagsMessage: "

    .line 49
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageAuditLogger;->collectAndLog(Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageAuditLogger;->interactor:Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageInteractor;

    .line 54
    iget-object v0, v0, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageInteractor;->bouncerMessage:Lkotlinx/coroutines/flow/Flow;

    .line 56
    const-string v1, "interactor.bouncerMessage: "

    .line 58
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageAuditLogger;->collectAndLog(Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;)V

    .line 60
    :cond_0
    return-void
    .line 63
.end method
