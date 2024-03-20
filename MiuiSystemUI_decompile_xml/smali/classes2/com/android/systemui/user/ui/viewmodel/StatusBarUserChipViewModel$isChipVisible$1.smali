.class final Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel$isChipVisible$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.user.ui.viewmodel.StatusBarUserChipViewModel$isChipVisible$1"
    f = "StatusBarUserChipViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 3
    return-void
    .line 6
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel$isChipVisible$1;

    .line 2
    invoke-direct {p0, p2}, Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel$isChipVisible$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 4
    iput-object p1, p0, Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel$isChipVisible$1;->L$0:Ljava/lang/Object;

    .line 7
    return-object p0
    .line 9
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel$isChipVisible$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel$isChipVisible$1;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel$isChipVisible$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel$isChipVisible$1;->label:I

    .line 2
    if-nez v0, :cond_1

    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    iget-object p0, p0, Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel$isChipVisible$1;->L$0:Ljava/lang/Object;

    .line 9
    check-cast p0, Ljava/util/List;

    .line 11
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 13
    move-result p0

    .line 16
    const/4 p1, 0x1

    .line 17
    if-le p0, p1, :cond_0

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 27
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 29
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    throw p0
    .line 34
.end method
