.class final Lcom/android/systemui/biometrics/domain/interactor/LogContextInteractorImpl$addBiometricContextListener$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.biometrics.domain.interactor.LogContextInteractorImpl$addBiometricContextListener$1$1"
    f = "LogContextInteractor.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $listener:Landroid/hardware/biometrics/IBiometricContextListener;

.field synthetic I$0:I

.field label:I


# direct methods
.method public constructor <init>(Landroid/hardware/biometrics/IBiometricContextListener;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/biometrics/domain/interactor/LogContextInteractorImpl$addBiometricContextListener$1$1;->$listener:Landroid/hardware/biometrics/IBiometricContextListener;

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
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/biometrics/domain/interactor/LogContextInteractorImpl$addBiometricContextListener$1$1;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/biometrics/domain/interactor/LogContextInteractorImpl$addBiometricContextListener$1$1;->$listener:Landroid/hardware/biometrics/IBiometricContextListener;

    .line 4
    invoke-direct {v0, p0, p2}, Lcom/android/systemui/biometrics/domain/interactor/LogContextInteractorImpl$addBiometricContextListener$1$1;-><init>(Landroid/hardware/biometrics/IBiometricContextListener;Lkotlin/coroutines/Continuation;)V

    .line 6
    check-cast p1, Ljava/lang/Number;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 11
    move-result p0

    .line 14
    iput p0, v0, Lcom/android/systemui/biometrics/domain/interactor/LogContextInteractorImpl$addBiometricContextListener$1$1;->I$0:I

    .line 15
    return-object v0
    .line 17
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 4
    move-result p1

    .line 7
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/biometrics/domain/interactor/LogContextInteractorImpl$addBiometricContextListener$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 14
    move-result-object p0

    .line 17
    check-cast p0, Lcom/android/systemui/biometrics/domain/interactor/LogContextInteractorImpl$addBiometricContextListener$1$1;

    .line 18
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/domain/interactor/LogContextInteractorImpl$addBiometricContextListener$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    return-object p1
    .line 25
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/biometrics/domain/interactor/LogContextInteractorImpl$addBiometricContextListener$1$1;->label:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    iget p1, p0, Lcom/android/systemui/biometrics/domain/interactor/LogContextInteractorImpl$addBiometricContextListener$1$1;->I$0:I

    .line 9
    iget-object p0, p0, Lcom/android/systemui/biometrics/domain/interactor/LogContextInteractorImpl$addBiometricContextListener$1$1;->$listener:Landroid/hardware/biometrics/IBiometricContextListener;

    .line 11
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/IBiometricContextListener;->onFoldChanged(I)V

    .line 13
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 16
    return-object p0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 19
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    throw p0
    .line 26
.end method
