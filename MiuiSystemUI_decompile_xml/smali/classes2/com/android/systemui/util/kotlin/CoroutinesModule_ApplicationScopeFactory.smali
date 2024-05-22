.class public abstract Lcom/android/systemui/util/kotlin/CoroutinesModule_ApplicationScopeFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

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
