.class public final Lkotlinx/coroutines/flow/StartedLazily;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlinx/coroutines/flow/SharingStarted;


# virtual methods
.method public final command(Lkotlinx/coroutines/flow/internal/SubscriptionCountStateFlow;)Lkotlinx/coroutines/flow/Flow;
    .locals 1

    .line 1
    new-instance p0, Lkotlinx/coroutines/flow/StartedLazily$command$1;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/flow/StartedLazily$command$1;-><init>(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/Continuation;)V

    .line 5
    new-instance p1, Lkotlinx/coroutines/flow/SafeFlow;

    .line 8
    invoke-direct {p1, p0}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 10
    return-object p1
    .line 13
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "SharingStarted.Lazily"

    .line 2
    return-object p0
    .line 4
.end method
