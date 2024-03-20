.class final Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler$pause$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.user.domain.interactor.RefreshUsersScheduler$pause$1"
    f = "RefreshUsersScheduler.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler$pause$1;->this$0:Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;

    .line 2
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    .line 1
    new-instance p1, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler$pause$1;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler$pause$1;->this$0:Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;

    .line 4
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler$pause$1;-><init>(Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;Lkotlin/coroutines/Continuation;)V

    .line 6
    return-object p1
    .line 9
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler$pause$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler$pause$1;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler$pause$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    return-object p1
    .line 17
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler$pause$1;->label:I

    .line 2
    if-nez v0, :cond_1

    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler$pause$1;->this$0:Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;

    .line 9
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p1, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;->isPaused:Z

    .line 12
    iget-object p1, p1, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;->scheduledUnpauseJob:Lkotlinx/coroutines/Job;

    .line 14
    const/4 v0, 0x0

    .line 16
    if-eqz p1, :cond_0

    .line 17
    invoke-interface {p1, v0}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler$pause$1;->this$0:Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;

    .line 22
    iget-object p1, p0, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    .line 24
    new-instance v1, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler$pause$1$1;

    .line 26
    invoke-direct {v1, p0, v0}, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler$pause$1$1;-><init>(Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;Lkotlin/coroutines/Continuation;)V

    .line 28
    const/4 v2, 0x3

    .line 31
    invoke-static {p1, v0, v0, v1, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 32
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;->scheduledUnpauseJob:Lkotlinx/coroutines/Job;

    .line 36
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 38
    return-object p0

    .line 40
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 41
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 43
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    throw p0
    .line 48
.end method
