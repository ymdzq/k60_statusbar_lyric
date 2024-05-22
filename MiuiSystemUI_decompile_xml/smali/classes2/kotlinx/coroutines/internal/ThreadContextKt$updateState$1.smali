.class final Lkotlinx/coroutines/internal/ThreadContextKt$updateState$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/internal/ThreadContextKt$updateState$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/ThreadContextKt$updateState$1;

    .line 2
    invoke-direct {v0}, Lkotlinx/coroutines/internal/ThreadContextKt$updateState$1;-><init>()V

    .line 4
    sput-object v0, Lkotlinx/coroutines/internal/ThreadContextKt$updateState$1;->INSTANCE:Lkotlinx/coroutines/internal/ThreadContextKt$updateState$1;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    return-void
    .line 6
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lkotlinx/coroutines/internal/ThreadState;

    .line 2
    check-cast p2, Lkotlin/coroutines/CoroutineContext$Element;

    .line 4
    instance-of p0, p2, Lkotlinx/coroutines/ThreadContextElement;

    .line 6
    if-eqz p0, :cond_0

    .line 8
    check-cast p2, Lkotlinx/coroutines/ThreadContextElement;

    .line 10
    iget-object p0, p1, Lkotlinx/coroutines/internal/ThreadState;->context:Lkotlin/coroutines/CoroutineContext;

    .line 12
    move-object v0, p2

    .line 14
    check-cast v0, Lkotlinx/coroutines/CoroutineId;

    .line 15
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/CoroutineId;->updateThreadContext(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 20
    iget v0, p1, Lkotlinx/coroutines/internal/ThreadState;->i:I

    .line 21
    iget-object v1, p1, Lkotlinx/coroutines/internal/ThreadState;->values:[Ljava/lang/Object;

    .line 23
    aput-object p0, v1, v0

    .line 25
    add-int/lit8 p0, v0, 0x1

    .line 27
    iput p0, p1, Lkotlinx/coroutines/internal/ThreadState;->i:I

    .line 29
    iget-object p0, p1, Lkotlinx/coroutines/internal/ThreadState;->elements:[Lkotlinx/coroutines/ThreadContextElement;

    .line 31
    aput-object p2, p0, v0

    .line 33
    :cond_0
    return-object p1
    .line 35
.end method
