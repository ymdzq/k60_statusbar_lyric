.class final Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$6$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$6$2"
    f = "KeyguardBottomAreaViewBinder.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field synthetic I$0:I

.field synthetic Z$0:Z

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
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    move-result p0

    .line 7
    check-cast p2, Ljava/lang/Number;

    .line 8
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 10
    move-result p1

    .line 13
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 14
    new-instance p2, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$6$2;

    .line 16
    invoke-direct {p2, p3}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$6$2;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 18
    iput-boolean p0, p2, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$6$2;->Z$0:Z

    .line 21
    iput p1, p2, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$6$2;->I$0:I

    .line 23
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 25
    invoke-virtual {p2, p0}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$6$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object p0

    .line 30
    return-object p0
    .line 31
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$6$2;->label:I

    .line 2
    if-nez v0, :cond_1

    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$6$2;->Z$0:Z

    .line 9
    iget p0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$6$2;->I$0:I

    .line 11
    if-eqz p1, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    new-instance p1, Ljava/lang/Integer;

    .line 17
    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    .line 19
    return-object p1

    .line 22
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 23
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p0
    .line 30
.end method