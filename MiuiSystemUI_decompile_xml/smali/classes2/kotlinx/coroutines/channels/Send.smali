.class public abstract Lkotlinx/coroutines/channels/Send;
.super Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# virtual methods
.method public abstract completeResumeSend()V
.end method

.method public abstract getPollResult()Ljava/lang/Object;
.end method

.method public abstract resumeSendClosed(Lkotlinx/coroutines/channels/Closed;)V
.end method

.method public abstract tryResumeSend(Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Lkotlinx/coroutines/internal/Symbol;
.end method

.method public undeliveredElement()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
