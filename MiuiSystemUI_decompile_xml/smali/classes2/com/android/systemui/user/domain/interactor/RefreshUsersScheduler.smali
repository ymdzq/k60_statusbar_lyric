.class public final Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field public isPaused:Z

.field public final mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final repository:Lcom/android/systemui/user/data/repository/UserRepository;

.field public scheduledUnpauseJob:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/user/data/repository/UserRepository;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;->repository:Lcom/android/systemui/user/data/repository/UserRepository;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final refreshIfNotPaused()V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler$refreshIfNotPaused$1;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler$refreshIfNotPaused$1;-><init>(Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;Lkotlin/coroutines/Continuation;)V

    .line 5
    const/4 v2, 0x2

    .line 8
    iget-object v3, p0, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    .line 9
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 11
    invoke-static {v3, p0, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 13
    return-void
    .line 16
.end method
