.class final Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$trackUnseenNotificationsWhileUnlocked$isTrackingUnseen$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.statusbar.notification.collection.coordinator.KeyguardCoordinator$trackUnseenNotificationsWhileUnlocked$isTrackingUnseen$1"
    f = "KeyguardCoordinator.kt"
    l = {
        0x8b,
        0x8e,
        0x91
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field synthetic Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$trackUnseenNotificationsWhileUnlocked$isTrackingUnseen$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;

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
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 2
    check-cast p2, Ljava/lang/Boolean;

    .line 4
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    move-result p2

    .line 9
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 10
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$trackUnseenNotificationsWhileUnlocked$isTrackingUnseen$1;

    .line 12
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$trackUnseenNotificationsWhileUnlocked$isTrackingUnseen$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;

    .line 14
    invoke-direct {v0, p0, p3}, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$trackUnseenNotificationsWhileUnlocked$isTrackingUnseen$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;Lkotlin/coroutines/Continuation;)V

    .line 16
    iput-object p1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$trackUnseenNotificationsWhileUnlocked$isTrackingUnseen$1;->L$0:Ljava/lang/Object;

    .line 19
    iput-boolean p2, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$trackUnseenNotificationsWhileUnlocked$isTrackingUnseen$1;->Z$0:Z

    .line 21
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 23
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$trackUnseenNotificationsWhileUnlocked$isTrackingUnseen$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object p0

    .line 28
    return-object p0
    .line 29
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    iget v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$trackUnseenNotificationsWhileUnlocked$isTrackingUnseen$1;->label:I

    .line 4
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x1

    .line 8
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 9
    if-eqz v1, :cond_3

    .line 11
    if-eq v1, v4, :cond_2

    .line 13
    if-eq v1, v3, :cond_1

    .line 15
    if-ne v1, v2, :cond_0

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 20
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    throw p0

    .line 27
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$trackUnseenNotificationsWhileUnlocked$isTrackingUnseen$1;->L$0:Ljava/lang/Object;

    .line 28
    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 30
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 32
    goto :goto_1

    .line 35
    :cond_2
    :goto_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 36
    goto :goto_4

    .line 39
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 40
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$trackUnseenNotificationsWhileUnlocked$isTrackingUnseen$1;->L$0:Ljava/lang/Object;

    .line 43
    move-object v1, p1

    .line 45
    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 46
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$trackUnseenNotificationsWhileUnlocked$isTrackingUnseen$1;->Z$0:Z

    .line 48
    if-eqz p1, :cond_4

    .line 50
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 52
    iput v4, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$trackUnseenNotificationsWhileUnlocked$isTrackingUnseen$1;->label:I

    .line 54
    invoke-interface {v1, p1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 56
    move-result-object p0

    .line 59
    if-ne p0, v0, :cond_8

    .line 60
    return-object v0

    .line 62
    :cond_4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 63
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$trackUnseenNotificationsWhileUnlocked$isTrackingUnseen$1;->L$0:Ljava/lang/Object;

    .line 65
    iput v3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$trackUnseenNotificationsWhileUnlocked$isTrackingUnseen$1;->label:I

    .line 67
    invoke-interface {v1, p1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 69
    move-result-object p1

    .line 72
    if-ne p1, v0, :cond_5

    .line 73
    return-object v0

    .line 75
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$trackUnseenNotificationsWhileUnlocked$isTrackingUnseen$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;

    .line 76
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;->keyguardTransitionRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;

    .line 78
    check-cast p1, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;

    .line 80
    iget-object p1, p1, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->transitions:Lkotlinx/coroutines/flow/Flow;

    .line 82
    const/4 v3, 0x0

    .line 84
    iput-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$trackUnseenNotificationsWhileUnlocked$isTrackingUnseen$1;->L$0:Ljava/lang/Object;

    .line 85
    iput v2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$trackUnseenNotificationsWhileUnlocked$isTrackingUnseen$1;->label:I

    .line 87
    new-instance v2, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$trackUnseenNotificationsWhileUnlocked$isTrackingUnseen$1$invokeSuspend$$inlined$map$1$2;

    .line 89
    invoke-direct {v2, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$trackUnseenNotificationsWhileUnlocked$isTrackingUnseen$1$invokeSuspend$$inlined$map$1$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 91
    invoke-interface {p1, v2, p0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 94
    move-result-object p0

    .line 97
    if-ne p0, v0, :cond_6

    .line 98
    goto :goto_2

    .line 100
    :cond_6
    move-object p0, v5

    .line 101
    :goto_2
    if-ne p0, v0, :cond_7

    .line 102
    goto :goto_3

    .line 104
    :cond_7
    move-object p0, v5

    .line 105
    :goto_3
    if-ne p0, v0, :cond_8

    .line 106
    return-object v0

    .line 108
    :cond_8
    :goto_4
    return-object v5
    .line 109
.end method
