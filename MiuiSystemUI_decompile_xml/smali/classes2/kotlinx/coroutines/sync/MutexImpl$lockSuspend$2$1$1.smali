.class final Lkotlinx/coroutines/sync/MutexImpl$lockSuspend$2$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $owner:Ljava/lang/Object;

.field final synthetic this$0:Lkotlinx/coroutines/sync/MutexImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/sync/MutexImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/sync/MutexImpl$lockSuspend$2$1$1;->this$0:Lkotlinx/coroutines/sync/MutexImpl;

    .line 2
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lkotlinx/coroutines/sync/MutexImpl$lockSuspend$2$1$1;->$owner:Ljava/lang/Object;

    .line 5
    const/4 p1, 0x1

    .line 7
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    iget-object p1, p0, Lkotlinx/coroutines/sync/MutexImpl$lockSuspend$2$1$1;->this$0:Lkotlinx/coroutines/sync/MutexImpl;

    .line 4
    iget-object p0, p0, Lkotlinx/coroutines/sync/MutexImpl$lockSuspend$2$1$1;->$owner:Ljava/lang/Object;

    .line 6
    invoke-virtual {p1, p0}, Lkotlinx/coroutines/sync/MutexImpl;->unlock(Ljava/lang/Object;)V

    .line 8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 11
    return-object p0
    .line 13
.end method
