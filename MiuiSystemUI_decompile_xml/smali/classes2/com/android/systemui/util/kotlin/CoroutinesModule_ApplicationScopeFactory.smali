.class public abstract Lcom/android/systemui/util/kotlin/CoroutinesModule_ApplicationScopeFactory;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static applicationScope(Lkotlinx/coroutines/CoroutineDispatcher;)Lkotlinx/coroutines/internal/ContextScope;
    .locals 0

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method
