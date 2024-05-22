.class final Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isIndicatorMessageVisible$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.biometrics.ui.viewmodel.PromptViewModel$isIndicatorMessageVisible$1"
    f = "PromptViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 3
    return-void
    .line 6
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;

    .line 2
    check-cast p2, Lcom/android/systemui/biometrics/ui/viewmodel/PromptMessage;

    .line 4
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 6
    new-instance p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isIndicatorMessageVisible$1;

    .line 8
    invoke-direct {p0, p3}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isIndicatorMessageVisible$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 10
    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isIndicatorMessageVisible$1;->L$0:Ljava/lang/Object;

    .line 13
    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isIndicatorMessageVisible$1;->L$1:Ljava/lang/Object;

    .line 15
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isIndicatorMessageVisible$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object p0

    .line 22
    return-object p0
    .line 23
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isIndicatorMessageVisible$1;->label:I

    .line 2
    if-nez v0, :cond_1

    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isIndicatorMessageVisible$1;->L$0:Ljava/lang/Object;

    .line 9
    check-cast p1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;

    .line 11
    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isIndicatorMessageVisible$1;->L$1:Ljava/lang/Object;

    .line 13
    check-cast p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptMessage;

    .line 15
    invoke-static {p1}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptSizeKt;->isNotSmall(Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;)Z

    .line 17
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    invoke-interface {p0}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptMessage;->getMessage()Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 26
    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 27
    move-result p0

    .line 30
    const/4 p1, 0x1

    .line 31
    xor-int/2addr p0, p1

    .line 32
    if-eqz p0, :cond_0

    .line 33
    goto :goto_0

    .line 35
    :cond_0
    const/4 p1, 0x0

    .line 36
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 42
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    throw p0
    .line 49
.end method
