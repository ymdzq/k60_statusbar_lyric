.class public final Lcom/google/android/setupcompat/internal/ExecutorProvider;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final setupCompatServiceInvoker:Lcom/google/android/setupcompat/internal/ExecutorProvider;


# instance fields
.field public final executor:Ljava/util/concurrent/Executor;

.field public injectedExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/setupcompat/internal/ExecutorProvider;

    .line 2
    const-string v1, "SetupCompatServiceInvoker"

    .line 4
    const/16 v2, 0x32

    .line 6
    invoke-static {v1, v2}, Lcom/google/android/setupcompat/internal/ExecutorProvider;->createSizeBoundedExecutor(Ljava/lang/String;I)Ljava/util/concurrent/ExecutorService;

    .line 8
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Lcom/google/android/setupcompat/internal/ExecutorProvider;-><init>(Ljava/util/concurrent/Executor;)V

    .line 12
    sput-object v0, Lcom/google/android/setupcompat/internal/ExecutorProvider;->setupCompatServiceInvoker:Lcom/google/android/setupcompat/internal/ExecutorProvider;

    .line 15
    return-void
    .line 17
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/setupcompat/internal/ExecutorProvider;->executor:Ljava/util/concurrent/Executor;

    .line 5
    return-void
    .line 7
.end method

.method public static createSizeBoundedExecutor(Ljava/lang/String;I)Ljava/util/concurrent/ExecutorService;
    .locals 9

    .line 1
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x1

    .line 5
    const-wide/16 v3, 0x0

    .line 6
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 10
    invoke-direct {v6, p1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 12
    new-instance v7, Lcom/google/android/setupcompat/internal/ExecutorProvider$$ExternalSyntheticLambda0;

    .line 15
    invoke-direct {v7, p0}, Lcom/google/android/setupcompat/internal/ExecutorProvider$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 17
    move-object v0, v8

    .line 20
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 21
    return-object v8
    .line 24
.end method

.method public static resetExecutors()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/setupcompat/internal/ExecutorProvider;->setupCompatServiceInvoker:Lcom/google/android/setupcompat/internal/ExecutorProvider;

    .line 2
    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Lcom/google/android/setupcompat/internal/ExecutorProvider;->injectedExecutor:Ljava/util/concurrent/Executor;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public injectExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/setupcompat/internal/ExecutorProvider;->injectedExecutor:Ljava/util/concurrent/Executor;

    .line 2
    return-void
    .line 4
.end method
