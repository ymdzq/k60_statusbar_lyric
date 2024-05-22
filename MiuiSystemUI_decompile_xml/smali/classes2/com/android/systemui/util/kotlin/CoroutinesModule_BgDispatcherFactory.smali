.class public abstract Lcom/android/systemui/util/kotlin/CoroutinesModule_BgDispatcherFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static bgDispatcher()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 2
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 4
    return-object v0
    .line 7
.end method
