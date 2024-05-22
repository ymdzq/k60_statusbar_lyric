.class final Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.statusbar.events.SystemStatusAnimationSchedulerImpl$1$1"
    f = "SystemStatusAnimationSchedulerImpl.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field synthetic I$0:I

.field synthetic L$0:Ljava/lang/Object;

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
    check-cast p1, Ljava/lang/Number;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 4
    move-result p0

    .line 7
    check-cast p2, Lcom/android/systemui/statusbar/events/StatusEvent;

    .line 8
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 10
    new-instance p1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$1$1;

    .line 12
    invoke-direct {p1, p3}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$1$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 14
    iput p0, p1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$1$1;->I$0:I

    .line 17
    iput-object p2, p1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$1$1;->L$0:Ljava/lang/Object;

    .line 19
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 21
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object p0

    .line 26
    return-object p0
    .line 27
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$1$1;->label:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    iget p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$1$1;->I$0:I

    .line 9
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$1$1;->L$0:Ljava/lang/Object;

    .line 11
    check-cast p0, Lcom/android/systemui/statusbar/events/StatusEvent;

    .line 13
    new-instance v0, Lkotlin/Pair;

    .line 15
    new-instance v1, Ljava/lang/Integer;

    .line 17
    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 19
    invoke-direct {v0, v1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    return-object v0

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 26
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 28
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    throw p0
    .line 33
.end method
