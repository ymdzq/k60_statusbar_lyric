.class public abstract Lkotlinx/coroutines/Job$DefaultImpls;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static synthetic invokeOnCompletion$default(Lkotlinx/coroutines/Job;ZLkotlinx/coroutines/JobNode;I)Lkotlinx/coroutines/DisposableHandle;
    .locals 2

    .line 1
    and-int/lit8 v0, p3, 0x1

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    move p1, v1

    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    if-eqz p3, :cond_1

    .line 10
    const/4 v1, 0x1

    .line 12
    :cond_1
    check-cast p0, Lkotlinx/coroutines/JobSupport;

    .line 13
    invoke-virtual {p0, p1, v1, p2}, Lkotlinx/coroutines/JobSupport;->invokeOnCompletion(ZZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 15
    move-result-object p0

    .line 18
    return-object p0
    .line 19
.end method
