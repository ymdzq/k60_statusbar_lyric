.class public final Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$1$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$1$2;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lkotlin/Pair;

    .line 2
    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 4
    move-result-object p2

    .line 7
    check-cast p2, Ljava/lang/Number;

    .line 8
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 10
    move-result p2

    .line 13
    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 17
    check-cast p1, Lcom/android/systemui/statusbar/events/StatusEvent;

    .line 18
    const/4 v0, 0x1

    .line 20
    if-ne p2, v0, :cond_1

    .line 21
    if-eqz p1, :cond_1

    .line 23
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$1$2;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 30
    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getForceVisible()Z

    .line 33
    move-result p2

    .line 36
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->hasPersistentDot:Z

    .line 37
    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getShowAnimation()Z

    .line 39
    move-result p2

    .line 42
    const/4 v0, 0x0

    .line 43
    if-nez p2, :cond_0

    .line 44
    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getForceVisible()Z

    .line 46
    move-result p2

    .line 49
    if-eqz p2, :cond_0

    .line 50
    const/4 p1, 0x5

    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object p1

    .line 56
    iget-object p2, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->animationState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 57
    invoke-virtual {p2, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->notifyTransitionToPersistentDot()Landroidx/core/animation/AnimatorSet;

    .line 62
    goto :goto_0

    .line 65
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->currentlyDisplayedEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

    .line 66
    iget-object p2, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->chipAnimationController:Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;

    .line 68
    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getViewCreator()Lkotlin/jvm/functions/Function1;

    .line 70
    move-result-object p1

    .line 73
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->prepareChipAnimation(Lkotlin/jvm/functions/Function1;)V

    .line 74
    new-instance p1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$startAnimationLifecycle$1;

    .line 77
    invoke-direct {p1, p0, v0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$startAnimationLifecycle$1;-><init>(Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;Lkotlin/coroutines/Continuation;)V

    .line 79
    const/4 p2, 0x3

    .line 82
    iget-object v1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 83
    invoke-static {v1, v0, v0, p1, p2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 85
    move-result-object p1

    .line 88
    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->currentlyRunningAnimationJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 89
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->scheduledEvent:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 91
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 93
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 96
    return-object p0
    .line 98
.end method
