.class public interface abstract Lkotlinx/coroutines/channels/ReceiveChannel;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# virtual methods
.method public abstract cancel(Ljava/util/concurrent/CancellationException;)V
.end method

.method public abstract getOnReceiveCatching()Lkotlinx/coroutines/selects/SelectClause1;
.end method

.method public abstract isClosedForReceive()Z
.end method

.method public abstract receiveCatching-JP2dKIU(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public abstract tryReceive-PtdJZtk()Ljava/lang/Object;
.end method
