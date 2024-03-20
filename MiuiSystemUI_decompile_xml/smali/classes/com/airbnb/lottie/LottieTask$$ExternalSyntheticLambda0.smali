.class public final synthetic Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/airbnb/lottie/LottieTask;


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Lcom/airbnb/lottie/LottieTask;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Lcom/airbnb/lottie/LottieTask;

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/LottieTask;->result:Lcom/airbnb/lottie/LottieResult;

    .line 4
    if-nez v0, :cond_0

    .line 6
    goto :goto_2

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/airbnb/lottie/LottieResult;->value:Ljava/lang/Object;

    .line 9
    if-eqz v1, :cond_2

    .line 11
    monitor-enter p0

    .line 13
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    iget-object v2, p0, Lcom/airbnb/lottie/LottieTask;->successListeners:Ljava/util/Set;

    .line 16
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v0

    .line 24
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 34
    check-cast v2, Lcom/airbnb/lottie/LottieListener;

    .line 35
    invoke-interface {v2, v1}, Lcom/airbnb/lottie/LottieListener;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    goto :goto_0

    .line 40
    :cond_1
    monitor-exit p0

    .line 41
    goto :goto_2

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    monitor-exit p0

    .line 44
    throw v0

    .line 45
    :cond_2
    iget-object v0, v0, Lcom/airbnb/lottie/LottieResult;->exception:Ljava/lang/Throwable;

    .line 46
    monitor-enter p0

    .line 48
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    .line 49
    iget-object v2, p0, Lcom/airbnb/lottie/LottieTask;->failureListeners:Ljava/util/Set;

    .line 51
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 53
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 56
    move-result v2

    .line 59
    if-eqz v2, :cond_3

    .line 60
    const-string v1, "Lottie encountered an error but no failure listener was added:"

    .line 62
    invoke-static {v1, v0}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 64
    monitor-exit p0

    .line 67
    goto :goto_2

    .line 68
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 69
    move-result-object v1

    .line 72
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    move-result v2

    .line 76
    if-eqz v2, :cond_4

    .line 77
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    move-result-object v2

    .line 82
    check-cast v2, Lcom/airbnb/lottie/LottieListener;

    .line 83
    invoke-interface {v2, v0}, Lcom/airbnb/lottie/LottieListener;->onResult(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 85
    goto :goto_1

    .line 88
    :cond_4
    monitor-exit p0

    .line 89
    :goto_2
    return-void

    .line 90
    :catchall_1
    move-exception v0

    .line 91
    monitor-exit p0

    .line 92
    throw v0
    .line 93
.end method
