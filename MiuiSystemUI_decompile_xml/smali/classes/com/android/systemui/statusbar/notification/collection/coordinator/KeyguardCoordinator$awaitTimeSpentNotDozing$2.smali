.class final Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$awaitTimeSpentNotDozing$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.statusbar.notification.collection.coordinator.KeyguardCoordinator$awaitTimeSpentNotDozing$2"
    f = "KeyguardCoordinator.kt"
    l = {
        0xb9,
        0xbb
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $duration:J

.field private synthetic L$0:Ljava/lang/Object;

.field synthetic Z$0:Z

.field label:I


# direct methods
.method public constructor <init>(JLkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$awaitTimeSpentNotDozing$2;->$duration:J

    .line 2
    const/4 p1, 0x3

    .line 4
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

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
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$awaitTimeSpentNotDozing$2;

    .line 12
    iget-wide v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$awaitTimeSpentNotDozing$2;->$duration:J

    .line 14
    invoke-direct {v0, v1, v2, p3}, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$awaitTimeSpentNotDozing$2;-><init>(JLkotlin/coroutines/Continuation;)V

    .line 16
    iput-object p1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$awaitTimeSpentNotDozing$2;->L$0:Ljava/lang/Object;

    .line 19
    iput-boolean p2, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$awaitTimeSpentNotDozing$2;->Z$0:Z

    .line 21
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 23
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$awaitTimeSpentNotDozing$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object p0

    .line 28
    return-object p0
    .line 29
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    iget v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$awaitTimeSpentNotDozing$2;->label:I

    .line 4
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8
    if-eqz v1, :cond_2

    .line 10
    if-eq v1, v3, :cond_1

    .line 12
    if-ne v1, v2, :cond_0

    .line 14
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 16
    goto :goto_2

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
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$awaitTimeSpentNotDozing$2;->L$0:Ljava/lang/Object;

    .line 28
    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 30
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 32
    goto :goto_1

    .line 35
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 36
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$awaitTimeSpentNotDozing$2;->L$0:Ljava/lang/Object;

    .line 39
    move-object v1, p1

    .line 41
    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 42
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$awaitTimeSpentNotDozing$2;->Z$0:Z

    .line 44
    if-nez p1, :cond_6

    .line 46
    iget-wide v5, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$awaitTimeSpentNotDozing$2;->$duration:J

    .line 48
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$awaitTimeSpentNotDozing$2;->L$0:Ljava/lang/Object;

    .line 50
    iput v3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$awaitTimeSpentNotDozing$2;->label:I

    .line 52
    const-wide/16 v7, 0x0

    .line 54
    invoke-static {v5, v6, v7, v8}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    .line 56
    move-result p1

    .line 59
    if-lez p1, :cond_3

    .line 60
    invoke-static {v5, v6}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    .line 62
    move-result-wide v7

    .line 65
    const-wide/16 v5, 0x1

    .line 66
    cmp-long p1, v7, v5

    .line 68
    if-gez p1, :cond_3

    .line 70
    move-wide v7, v5

    .line 72
    :cond_3
    invoke-static {v7, v8, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 73
    move-result-object p1

    .line 76
    if-ne p1, v0, :cond_4

    .line 77
    goto :goto_0

    .line 79
    :cond_4
    move-object p1, v4

    .line 80
    :goto_0
    if-ne p1, v0, :cond_5

    .line 81
    return-object v0

    .line 83
    :cond_5
    :goto_1
    const/4 p1, 0x0

    .line 84
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$awaitTimeSpentNotDozing$2;->L$0:Ljava/lang/Object;

    .line 85
    iput v2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$awaitTimeSpentNotDozing$2;->label:I

    .line 87
    invoke-interface {v1, v4, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 89
    move-result-object p0

    .line 92
    if-ne p0, v0, :cond_6

    .line 93
    return-object v0

    .line 95
    :cond_6
    :goto_2
    return-object v4
    .line 96
.end method
