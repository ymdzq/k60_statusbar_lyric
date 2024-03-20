.class final Lcom/android/keyguard/ClockEventController$listenForDozing$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.keyguard.ClockEventController$listenForDozing$1$1"
    f = "ClockEventController.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field synthetic F$0:F

.field synthetic Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/android/keyguard/ClockEventController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/ClockEventController;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/ClockEventController$listenForDozing$1$1;->this$0:Lcom/android/keyguard/ClockEventController;

    .line 2
    const/4 p1, 0x3

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Number;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 4
    move-result p1

    .line 7
    check-cast p2, Ljava/lang/Boolean;

    .line 8
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    move-result p2

    .line 13
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 14
    new-instance v0, Lcom/android/keyguard/ClockEventController$listenForDozing$1$1;

    .line 16
    iget-object p0, p0, Lcom/android/keyguard/ClockEventController$listenForDozing$1$1;->this$0:Lcom/android/keyguard/ClockEventController;

    .line 18
    invoke-direct {v0, p0, p3}, Lcom/android/keyguard/ClockEventController$listenForDozing$1$1;-><init>(Lcom/android/keyguard/ClockEventController;Lkotlin/coroutines/Continuation;)V

    .line 20
    iput p1, v0, Lcom/android/keyguard/ClockEventController$listenForDozing$1$1;->F$0:F

    .line 23
    iput-boolean p2, v0, Lcom/android/keyguard/ClockEventController$listenForDozing$1$1;->Z$0:Z

    .line 25
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 27
    invoke-virtual {v0, p0}, Lcom/android/keyguard/ClockEventController$listenForDozing$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object p0

    .line 32
    return-object p0
    .line 33
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/keyguard/ClockEventController$listenForDozing$1$1;->label:I

    .line 2
    if-nez v0, :cond_2

    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    iget p1, p0, Lcom/android/keyguard/ClockEventController$listenForDozing$1$1;->F$0:F

    .line 9
    iget-boolean v0, p0, Lcom/android/keyguard/ClockEventController$listenForDozing$1$1;->Z$0:Z

    .line 11
    iget-object p0, p0, Lcom/android/keyguard/ClockEventController$listenForDozing$1$1;->this$0:Lcom/android/keyguard/ClockEventController;

    .line 13
    iget p0, p0, Lcom/android/keyguard/ClockEventController;->dozeAmount:F

    .line 15
    cmpl-float p0, p1, p0

    .line 17
    if-gtz p0, :cond_1

    .line 19
    if-eqz v0, :cond_0

    .line 21
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 26
    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 32
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 34
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    throw p0
    .line 39
.end method
