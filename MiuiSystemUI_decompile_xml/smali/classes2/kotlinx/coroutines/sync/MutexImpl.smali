.class public final Lkotlinx/coroutines/sync/MutexImpl;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlinx/coroutines/sync/Mutex;


# instance fields
.field public final _state:Lkotlinx/atomicfu/AtomicRef;


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    if-eqz p1, :cond_0

    .line 5
    sget-object p1, Lkotlinx/coroutines/sync/MutexKt;->EMPTY_LOCKED:Lkotlinx/coroutines/sync/Empty;

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lkotlinx/coroutines/sync/MutexKt;->EMPTY_UNLOCKED:Lkotlinx/coroutines/sync/Empty;

    .line 10
    :goto_0
    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->atomic(Ljava/lang/Object;)Lkotlinx/atomicfu/AtomicRef;

    .line 12
    move-result-object p1

    .line 15
    iput-object p1, p0, Lkotlinx/coroutines/sync/MutexImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    .line 16
    return-void
    .line 18
.end method


# virtual methods
.method public final lock(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    .line 2
    :cond_0
    :goto_0
    iget-object v1, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 4
    instance-of v2, v1, Lkotlinx/coroutines/sync/Empty;

    .line 6
    sget-object v3, Lkotlinx/coroutines/sync/MutexKt;->EMPTY_LOCKED:Lkotlinx/coroutines/sync/Empty;

    .line 8
    sget-object v4, Lkotlinx/coroutines/sync/MutexKt;->UNLOCKED:Lkotlinx/coroutines/internal/Symbol;

    .line 10
    const-string v5, "Already locked by null"

    .line 12
    const-string v6, "Illegal state "

    .line 14
    const/4 v7, 0x0

    .line 16
    const/4 v8, 0x1

    .line 17
    if-eqz v2, :cond_2

    .line 18
    move-object v2, v1

    .line 20
    check-cast v2, Lkotlinx/coroutines/sync/Empty;

    .line 21
    iget-object v2, v2, Lkotlinx/coroutines/sync/Empty;->locked:Ljava/lang/Object;

    .line 23
    if-eq v2, v4, :cond_1

    .line 25
    goto :goto_2

    .line 27
    :cond_1
    iget-object v2, p0, Lkotlinx/coroutines/sync/MutexImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    .line 28
    invoke-virtual {v2, v1, v3}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    move v0, v8

    .line 36
    goto :goto_3

    .line 37
    :cond_2
    instance-of v2, v1, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    .line 38
    if-eqz v2, :cond_12

    .line 40
    check-cast v1, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    .line 42
    iget-object v0, v1, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;->owner:Ljava/lang/Object;

    .line 44
    if-eqz v0, :cond_3

    .line 46
    move v0, v8

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    move v0, v7

    .line 50
    :goto_1
    if-eqz v0, :cond_11

    .line 51
    :goto_2
    move v0, v7

    .line 53
    :goto_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 54
    if-eqz v0, :cond_4

    .line 56
    return-object v1

    .line 58
    :cond_4
    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 59
    move-result-object p1

    .line 62
    invoke-static {p1}, Lkotlinx/coroutines/CancellableContinuationKt;->getOrCreateCancellableContinuation(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 63
    move-result-object p1

    .line 66
    new-instance v0, Lkotlinx/coroutines/sync/MutexImpl$LockCont;

    .line 67
    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/sync/MutexImpl$LockCont;-><init>(Lkotlinx/coroutines/sync/MutexImpl;Lkotlinx/coroutines/CancellableContinuationImpl;)V

    .line 69
    iget-object v2, p0, Lkotlinx/coroutines/sync/MutexImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    .line 72
    :cond_5
    :goto_4
    iget-object v9, v2, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 74
    instance-of v10, v9, Lkotlinx/coroutines/sync/Empty;

    .line 76
    if-eqz v10, :cond_7

    .line 78
    move-object v10, v9

    .line 80
    check-cast v10, Lkotlinx/coroutines/sync/Empty;

    .line 81
    iget-object v10, v10, Lkotlinx/coroutines/sync/Empty;->locked:Ljava/lang/Object;

    .line 83
    if-eq v10, v4, :cond_6

    .line 85
    iget-object v11, p0, Lkotlinx/coroutines/sync/MutexImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    .line 87
    new-instance v12, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    .line 89
    invoke-direct {v12, v10}, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;-><init>(Ljava/lang/Object;)V

    .line 91
    invoke-virtual {v11, v9, v12}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    goto :goto_4

    .line 97
    :cond_6
    iget-object v10, p0, Lkotlinx/coroutines/sync/MutexImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    .line 98
    invoke-virtual {v10, v9, v3}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 100
    move-result v9

    .line 103
    if-eqz v9, :cond_5

    .line 104
    new-instance v0, Lkotlinx/coroutines/sync/MutexImpl$lockSuspend$2$1$1;

    .line 106
    invoke-direct {v0, p0}, Lkotlinx/coroutines/sync/MutexImpl$lockSuspend$2$1$1;-><init>(Lkotlinx/coroutines/sync/MutexImpl;)V

    .line 108
    iget p0, p1, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    .line 111
    invoke-virtual {p1, v1, p0, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeImpl(Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)V

    .line 113
    goto :goto_7

    .line 116
    :cond_7
    instance-of v10, v9, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    .line 117
    if-eqz v10, :cond_f

    .line 119
    move-object v10, v9

    .line 121
    check-cast v10, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    .line 122
    iget-object v11, v10, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;->owner:Ljava/lang/Object;

    .line 124
    if-eqz v11, :cond_8

    .line 126
    move v11, v8

    .line 128
    goto :goto_5

    .line 129
    :cond_8
    move v11, v7

    .line 130
    :goto_5
    if-eqz v11, :cond_e

    .line 131
    :cond_9
    invoke-virtual {v10}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getPrevNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 133
    move-result-object v11

    .line 136
    invoke-virtual {v11, v0, v10}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->addNext(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListHead;)Z

    .line 137
    move-result v11

    .line 140
    if-eqz v11, :cond_9

    .line 141
    iget-object v10, p0, Lkotlinx/coroutines/sync/MutexImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    .line 143
    iget-object v10, v10, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 145
    if-eq v10, v9, :cond_b

    .line 147
    iget-object v9, v0, Lkotlinx/coroutines/sync/MutexImpl$LockCont;->isTaken:Lkotlinx/atomicfu/AtomicBoolean;

    .line 149
    invoke-virtual {v9}, Lkotlinx/atomicfu/AtomicBoolean;->compareAndSet()Z

    .line 151
    move-result v9

    .line 154
    if-nez v9, :cond_a

    .line 155
    goto :goto_6

    .line 157
    :cond_a
    new-instance v0, Lkotlinx/coroutines/sync/MutexImpl$LockCont;

    .line 158
    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/sync/MutexImpl$LockCont;-><init>(Lkotlinx/coroutines/sync/MutexImpl;Lkotlinx/coroutines/CancellableContinuationImpl;)V

    .line 160
    goto :goto_4

    .line 163
    :cond_b
    :goto_6
    new-instance p0, Lkotlinx/coroutines/RemoveOnCancel;

    .line 164
    invoke-direct {p0, v0}, Lkotlinx/coroutines/RemoveOnCancel;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V

    .line 166
    invoke-virtual {p1, p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 169
    :goto_7
    invoke-virtual {p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    .line 172
    move-result-object p0

    .line 175
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 176
    if-ne p0, p1, :cond_c

    .line 178
    goto :goto_8

    .line 180
    :cond_c
    move-object p0, v1

    .line 181
    :goto_8
    if-ne p0, p1, :cond_d

    .line 182
    return-object p0

    .line 184
    :cond_d
    return-object v1

    .line 185
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 186
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 188
    move-result-object p1

    .line 191
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 192
    throw p0

    .line 195
    :cond_f
    instance-of v10, v9, Lkotlinx/coroutines/internal/OpDescriptor;

    .line 196
    if-eqz v10, :cond_10

    .line 198
    check-cast v9, Lkotlinx/coroutines/internal/OpDescriptor;

    .line 200
    invoke-virtual {v9, p0}, Lkotlinx/coroutines/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    goto/16 :goto_4

    .line 205
    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 207
    new-instance p1, Ljava/lang/StringBuilder;

    .line 209
    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    move-result-object p1

    .line 220
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 221
    move-result-object p1

    .line 224
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 225
    throw p0

    .line 228
    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 229
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 231
    move-result-object p1

    .line 234
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 235
    throw p0

    .line 238
    :cond_12
    instance-of v2, v1, Lkotlinx/coroutines/internal/OpDescriptor;

    .line 239
    if-eqz v2, :cond_13

    .line 241
    check-cast v1, Lkotlinx/coroutines/internal/OpDescriptor;

    .line 243
    invoke-virtual {v1, p0}, Lkotlinx/coroutines/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    goto/16 :goto_0

    .line 248
    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 250
    new-instance p1, Ljava/lang/StringBuilder;

    .line 252
    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    move-result-object p1

    .line 263
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 264
    move-result-object p1

    .line 267
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 268
    throw p0
    .line 271
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    .line 2
    :goto_0
    iget-object v1, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 4
    instance-of v2, v1, Lkotlinx/coroutines/sync/Empty;

    .line 6
    const-string v3, "]"

    .line 8
    const-string v4, "Mutex["

    .line 10
    if-eqz v2, :cond_0

    .line 12
    check-cast v1, Lkotlinx/coroutines/sync/Empty;

    .line 14
    iget-object p0, v1, Lkotlinx/coroutines/sync/Empty;->locked:Ljava/lang/Object;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_0
    instance-of v2, v1, Lkotlinx/coroutines/internal/OpDescriptor;

    .line 34
    if-eqz v2, :cond_1

    .line 36
    check-cast v1, Lkotlinx/coroutines/internal/OpDescriptor;

    .line 38
    invoke-virtual {v1, p0}, Lkotlinx/coroutines/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    goto :goto_0

    .line 43
    :cond_1
    instance-of p0, v1, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    .line 44
    if-eqz p0, :cond_2

    .line 46
    check-cast v1, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    .line 48
    iget-object p0, v1, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;->owner:Ljava/lang/Object;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    const-string v2, "Illegal state "

    .line 72
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 87
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 88
    throw p0
    .line 91
.end method

.method public final unlock(Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    .line 2
    :cond_0
    :goto_0
    iget-object v1, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 4
    instance-of v2, v1, Lkotlinx/coroutines/sync/Empty;

    .line 6
    const-string v3, " but expected "

    .line 8
    const-string v4, "Mutex is locked by "

    .line 10
    const/4 v5, 0x1

    .line 12
    const/4 v6, 0x0

    .line 13
    if-eqz v2, :cond_6

    .line 14
    if-nez p1, :cond_3

    .line 16
    move-object v2, v1

    .line 18
    check-cast v2, Lkotlinx/coroutines/sync/Empty;

    .line 19
    iget-object v2, v2, Lkotlinx/coroutines/sync/Empty;->locked:Ljava/lang/Object;

    .line 21
    sget-object v3, Lkotlinx/coroutines/sync/MutexKt;->UNLOCKED:Lkotlinx/coroutines/internal/Symbol;

    .line 23
    if-eq v2, v3, :cond_1

    .line 25
    goto :goto_1

    .line 27
    :cond_1
    move v5, v6

    .line 28
    :goto_1
    if-eqz v5, :cond_2

    .line 29
    goto :goto_3

    .line 31
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 32
    const-string p1, "Mutex is not locked"

    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 39
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    throw p0

    .line 43
    :cond_3
    move-object v2, v1

    .line 44
    check-cast v2, Lkotlinx/coroutines/sync/Empty;

    .line 45
    iget-object v2, v2, Lkotlinx/coroutines/sync/Empty;->locked:Ljava/lang/Object;

    .line 47
    if-ne v2, p1, :cond_4

    .line 49
    goto :goto_2

    .line 51
    :cond_4
    move v5, v6

    .line 52
    :goto_2
    if-eqz v5, :cond_5

    .line 53
    :goto_3
    iget-object v2, p0, Lkotlinx/coroutines/sync/MutexImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    .line 55
    sget-object v3, Lkotlinx/coroutines/sync/MutexKt;->EMPTY_UNLOCKED:Lkotlinx/coroutines/sync/Empty;

    .line 57
    invoke-virtual {v2, v1, v3}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    move-result v1

    .line 62
    if-eqz v1, :cond_0

    .line 63
    return-void

    .line 65
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 66
    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object p0

    .line 83
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 86
    move-result-object p0

    .line 89
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 90
    throw p1

    .line 93
    :cond_6
    instance-of v2, v1, Lkotlinx/coroutines/internal/OpDescriptor;

    .line 94
    if-eqz v2, :cond_7

    .line 96
    check-cast v1, Lkotlinx/coroutines/internal/OpDescriptor;

    .line 98
    invoke-virtual {v1, p0}, Lkotlinx/coroutines/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    goto :goto_0

    .line 103
    :cond_7
    instance-of v2, v1, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    .line 104
    if-eqz v2, :cond_11

    .line 106
    if-eqz p1, :cond_a

    .line 108
    move-object v2, v1

    .line 110
    check-cast v2, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    .line 111
    iget-object v7, v2, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;->owner:Ljava/lang/Object;

    .line 113
    if-ne v7, p1, :cond_8

    .line 115
    move v7, v5

    .line 117
    goto :goto_4

    .line 118
    :cond_8
    move v7, v6

    .line 119
    :goto_4
    if-eqz v7, :cond_9

    .line 120
    goto :goto_5

    .line 122
    :cond_9
    iget-object p0, v2, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;->owner:Ljava/lang/Object;

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    .line 125
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object p0

    .line 142
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 143
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 145
    move-result-object p0

    .line 148
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 149
    throw p1

    .line 152
    :cond_a
    :goto_5
    move-object v2, v1

    .line 153
    check-cast v2, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    .line 154
    :goto_6
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    .line 156
    move-result-object v3

    .line 159
    check-cast v3, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 160
    const/4 v4, 0x0

    .line 162
    if-ne v3, v2, :cond_b

    .line 163
    move-object v3, v4

    .line 165
    goto :goto_7

    .line 166
    :cond_b
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->remove$1()Z

    .line 167
    move-result v7

    .line 170
    if-eqz v7, :cond_10

    .line 171
    :goto_7
    if-nez v3, :cond_c

    .line 173
    new-instance v3, Lkotlinx/coroutines/sync/MutexImpl$UnlockOp;

    .line 175
    invoke-direct {v3, v2}, Lkotlinx/coroutines/sync/MutexImpl$UnlockOp;-><init>(Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;)V

    .line 177
    iget-object v2, p0, Lkotlinx/coroutines/sync/MutexImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    .line 180
    invoke-virtual {v2, v1, v3}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 182
    move-result v1

    .line 185
    if-eqz v1, :cond_0

    .line 186
    invoke-virtual {v3, p0}, Lkotlinx/coroutines/internal/AtomicOp;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    move-result-object v1

    .line 191
    if-nez v1, :cond_0

    .line 192
    return-void

    .line 194
    :cond_c
    check-cast v3, Lkotlinx/coroutines/sync/MutexImpl$LockCont;

    .line 195
    iget-object v1, v3, Lkotlinx/coroutines/sync/MutexImpl$LockCont;->isTaken:Lkotlinx/atomicfu/AtomicBoolean;

    .line 197
    invoke-virtual {v1}, Lkotlinx/atomicfu/AtomicBoolean;->compareAndSet()Z

    .line 199
    move-result v1

    .line 202
    if-nez v1, :cond_d

    .line 203
    goto :goto_9

    .line 205
    :cond_d
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 206
    new-instance v7, Lkotlinx/coroutines/sync/MutexImpl$LockCont$tryResumeLockWaiter$1;

    .line 208
    iget-object v8, v3, Lkotlinx/coroutines/sync/MutexImpl$LockCont;->this$0:Lkotlinx/coroutines/sync/MutexImpl;

    .line 210
    invoke-direct {v7, v8, v3}, Lkotlinx/coroutines/sync/MutexImpl$LockCont$tryResumeLockWaiter$1;-><init>(Lkotlinx/coroutines/sync/MutexImpl;Lkotlinx/coroutines/sync/MutexImpl$LockCont;)V

    .line 212
    iget-object v8, v3, Lkotlinx/coroutines/sync/MutexImpl$LockCont;->cont:Lkotlinx/coroutines/CancellableContinuation;

    .line 215
    check-cast v8, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 217
    invoke-virtual {v8, v1, v4, v7}, Lkotlinx/coroutines/CancellableContinuationImpl;->tryResumeImpl(Ljava/lang/Object;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/Symbol;

    .line 219
    move-result-object v1

    .line 222
    if-eqz v1, :cond_e

    .line 223
    goto :goto_8

    .line 225
    :cond_e
    move v5, v6

    .line 226
    :goto_8
    move v6, v5

    .line 227
    :goto_9
    if-eqz v6, :cond_0

    .line 228
    iget-object p0, v3, Lkotlinx/coroutines/sync/MutexImpl$LockCont;->owner:Ljava/lang/Object;

    .line 230
    if-nez p0, :cond_f

    .line 232
    sget-object p0, Lkotlinx/coroutines/sync/MutexKt;->LOCKED:Lkotlinx/coroutines/internal/Symbol;

    .line 234
    :cond_f
    iput-object p0, v2, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;->owner:Ljava/lang/Object;

    .line 236
    iget-object p0, v3, Lkotlinx/coroutines/sync/MutexImpl$LockCont;->cont:Lkotlinx/coroutines/CancellableContinuation;

    .line 238
    check-cast p0, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 240
    iget p1, p0, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    .line 242
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->dispatchResume(I)V

    .line 244
    return-void

    .line 247
    :cond_10
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    .line 248
    move-result-object v3

    .line 251
    check-cast v3, Lkotlinx/coroutines/internal/Removed;

    .line 252
    iget-object v3, v3, Lkotlinx/coroutines/internal/Removed;->ref:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 254
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->helpRemovePrev()V

    .line 256
    goto :goto_6

    .line 259
    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 260
    new-instance p1, Ljava/lang/StringBuilder;

    .line 262
    const-string v0, "Illegal state "

    .line 264
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    move-result-object p1

    .line 275
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 276
    move-result-object p1

    .line 279
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 280
    throw p0
    .line 283
.end method
