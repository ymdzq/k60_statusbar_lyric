.class final Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler$refreshIfNotPaused$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.user.domain.interactor.RefreshUsersScheduler$refreshIfNotPaused$1"
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
    iput-object p1, p0, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler$refreshIfNotPaused$1;->this$0:Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;

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
    new-instance p1, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler$refreshIfNotPaused$1;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler$refreshIfNotPaused$1;->this$0:Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;

    .line 4
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler$refreshIfNotPaused$1;-><init>(Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;Lkotlin/coroutines/Continuation;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler$refreshIfNotPaused$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler$refreshIfNotPaused$1;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler$refreshIfNotPaused$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler$refreshIfNotPaused$1;->label:I

    .line 2
    if-nez v0, :cond_1

    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler$refreshIfNotPaused$1;->this$0:Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;

    .line 9
    iget-boolean p1, p0, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;->isPaused:Z

    .line 11
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 13
    if-eqz p1, :cond_0

    .line 15
    return-object v0

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;->repository:Lcom/android/systemui/user/data/repository/UserRepository;

    .line 18
    check-cast p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 20
    invoke-virtual {p0}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->refreshUsers()V

    .line 22
    return-object v0

    .line 25
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 26
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 28
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    throw p0
    .line 33
.end method
