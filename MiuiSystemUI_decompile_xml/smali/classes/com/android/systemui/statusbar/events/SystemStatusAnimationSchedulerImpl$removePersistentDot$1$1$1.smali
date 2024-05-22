.class final Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$removePersistentDot$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.statusbar.events.SystemStatusAnimationSchedulerImpl$removePersistentDot$1$1$1"
    f = "SystemStatusAnimationSchedulerImpl.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field synthetic I$0:I

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
    new-instance p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$removePersistentDot$1$1$1;

    .line 2
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$removePersistentDot$1$1$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 4
    check-cast p1, Ljava/lang/Number;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 9
    move-result p1

    .line 12
    iput p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$removePersistentDot$1$1$1;->I$0:I

    .line 13
    return-object p0
    .line 15
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
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$removePersistentDot$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 14
    move-result-object p0

    .line 17
    check-cast p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$removePersistentDot$1$1$1;

    .line 18
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$removePersistentDot$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object p0

    .line 25
    return-object p0
    .line 26
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$removePersistentDot$1$1$1;->label:I

    .line 2
    if-nez v0, :cond_2

    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    iget p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$removePersistentDot$1$1$1;->I$0:I

    .line 9
    const/4 p1, 0x5

    .line 11
    const/4 v0, 0x1

    .line 12
    if-eq p0, p1, :cond_1

    .line 13
    if-eqz p0, :cond_1

    .line 15
    if-ne p0, v0, :cond_0

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 26
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 28
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    throw p0
    .line 33
.end method
