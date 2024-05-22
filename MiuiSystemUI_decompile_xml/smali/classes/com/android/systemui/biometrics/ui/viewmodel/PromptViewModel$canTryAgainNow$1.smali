.class final Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$canTryAgainNow$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function5;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.biometrics.ui.viewmodel.PromptViewModel$canTryAgainNow$1"
    f = "PromptViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field synthetic Z$0:Z

.field synthetic Z$1:Z

.field label:I


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 3
    return-void
    .line 6
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    move-result p0

    .line 7
    check-cast p2, Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;

    .line 8
    check-cast p3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;

    .line 10
    check-cast p4, Ljava/lang/Boolean;

    .line 12
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    move-result p1

    .line 17
    check-cast p5, Lkotlin/coroutines/Continuation;

    .line 18
    new-instance p4, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$canTryAgainNow$1;

    .line 20
    invoke-direct {p4, p5}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$canTryAgainNow$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 22
    iput-boolean p0, p4, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$canTryAgainNow$1;->Z$0:Z

    .line 25
    iput-object p2, p4, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$canTryAgainNow$1;->L$0:Ljava/lang/Object;

    .line 27
    iput-object p3, p4, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$canTryAgainNow$1;->L$1:Ljava/lang/Object;

    .line 29
    iput-boolean p1, p4, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$canTryAgainNow$1;->Z$1:Z

    .line 31
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 33
    invoke-virtual {p4, p0}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$canTryAgainNow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object p0

    .line 38
    return-object p0
    .line 39
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$canTryAgainNow$1;->label:I

    .line 2
    if-nez v0, :cond_1

    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    iget-boolean p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$canTryAgainNow$1;->Z$0:Z

    .line 9
    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$canTryAgainNow$1;->L$0:Ljava/lang/Object;

    .line 11
    check-cast v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;

    .line 13
    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$canTryAgainNow$1;->L$1:Ljava/lang/Object;

    .line 15
    check-cast v1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;

    .line 17
    iget-boolean p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$canTryAgainNow$1;->Z$1:Z

    .line 19
    if-eqz p1, :cond_0

    .line 21
    invoke-static {v0}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptSizeKt;->isNotSmall(Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;)Z

    .line 23
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    if-eqz p0, :cond_0

    .line 29
    iget-boolean p0, v1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;->isAuthenticated:Z

    .line 31
    const/4 p1, 0x1

    .line 33
    xor-int/2addr p0, p1

    .line 34
    if-eqz p0, :cond_0

    .line 35
    goto :goto_0

    .line 37
    :cond_0
    const/4 p1, 0x0

    .line 38
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 39
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 44
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 46
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    throw p0
    .line 51
.end method
