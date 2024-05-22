.class public abstract Lkotlinx/coroutines/internal/ThreadContextKt;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final NO_THREAD_ELEMENTS:Lkotlinx/coroutines/internal/Symbol;

.field public static final countAll:Lkotlin/jvm/functions/Function2;

.field public static final findOne:Lkotlin/jvm/functions/Function2;

.field public static final updateState:Lkotlin/jvm/functions/Function2;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    .line 2
    const-string v1, "NO_THREAD_ELEMENTS"

    .line 4
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    .line 6
    sput-object v0, Lkotlinx/coroutines/internal/ThreadContextKt;->NO_THREAD_ELEMENTS:Lkotlinx/coroutines/internal/Symbol;

    .line 9
    sget-object v0, Lkotlinx/coroutines/internal/ThreadContextKt$countAll$1;->INSTANCE:Lkotlinx/coroutines/internal/ThreadContextKt$countAll$1;

    .line 11
    sput-object v0, Lkotlinx/coroutines/internal/ThreadContextKt;->countAll:Lkotlin/jvm/functions/Function2;

    .line 13
    sget-object v0, Lkotlinx/coroutines/internal/ThreadContextKt$findOne$1;->INSTANCE:Lkotlinx/coroutines/internal/ThreadContextKt$findOne$1;

    .line 15
    sput-object v0, Lkotlinx/coroutines/internal/ThreadContextKt;->findOne:Lkotlin/jvm/functions/Function2;

    .line 17
    sget-object v0, Lkotlinx/coroutines/internal/ThreadContextKt$updateState$1;->INSTANCE:Lkotlinx/coroutines/internal/ThreadContextKt$updateState$1;

    .line 19
    sput-object v0, Lkotlinx/coroutines/internal/ThreadContextKt;->updateState:Lkotlin/jvm/functions/Function2;

    .line 21
    return-void
    .line 23
.end method

.method public static final restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V
    .locals 2

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/ThreadContextKt;->NO_THREAD_ELEMENTS:Lkotlinx/coroutines/internal/Symbol;

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/internal/ThreadState;

    .line 7
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    check-cast p1, Lkotlinx/coroutines/internal/ThreadState;

    .line 12
    iget-object p0, p1, Lkotlinx/coroutines/internal/ThreadState;->elements:[Lkotlinx/coroutines/ThreadContextElement;

    .line 14
    array-length p1, p0

    .line 16
    add-int/lit8 p1, p1, -0x1

    .line 17
    if-gez p1, :cond_1

    .line 19
    return-void

    .line 21
    :cond_1
    aget-object p0, p0, p1

    .line 22
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 24
    throw v1

    .line 27
    :cond_2
    sget-object p1, Lkotlinx/coroutines/internal/ThreadContextKt;->findOne:Lkotlin/jvm/functions/Function2;

    .line 28
    invoke-interface {p0, v1, p1}, Lkotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 30
    move-result-object p0

    .line 33
    invoke-static {p0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 34
    throw v1
    .line 37
.end method

.method public static final threadContextElements(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/Object;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    move-result-object v0

    .line 6
    sget-object v1, Lkotlinx/coroutines/internal/ThreadContextKt;->countAll:Lkotlin/jvm/functions/Function2;

    .line 7
    invoke-interface {p0, v0, v1}, Lkotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 12
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 13
    return-object p0
    .line 16
.end method

.method public static final updateThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    invoke-static {p0}, Lkotlinx/coroutines/internal/ThreadContextKt;->threadContextElements(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v0

    .line 12
    if-ne p1, v0, :cond_1

    .line 13
    sget-object p0, Lkotlinx/coroutines/internal/ThreadContextKt;->NO_THREAD_ELEMENTS:Lkotlinx/coroutines/internal/Symbol;

    .line 15
    goto :goto_0

    .line 17
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    .line 18
    if-eqz v0, :cond_2

    .line 20
    new-instance v0, Lkotlinx/coroutines/internal/ThreadState;

    .line 22
    check-cast p1, Ljava/lang/Number;

    .line 24
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 26
    move-result p1

    .line 29
    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/internal/ThreadState;-><init>(Lkotlin/coroutines/CoroutineContext;I)V

    .line 30
    sget-object p1, Lkotlinx/coroutines/internal/ThreadContextKt;->updateState:Lkotlin/jvm/functions/Function2;

    .line 33
    invoke-interface {p0, v0, p1}, Lkotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 35
    move-result-object p0

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    check-cast p1, Lkotlinx/coroutines/ThreadContextElement;

    .line 40
    check-cast p1, Lkotlinx/coroutines/CoroutineId;

    .line 42
    invoke-virtual {p1, p0}, Lkotlinx/coroutines/CoroutineId;->updateThreadContext(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/Object;

    .line 44
    move-result-object p0

    .line 47
    :goto_0
    return-object p0
    .line 48
.end method
