.class public abstract Lkotlinx/atomicfu/AtomicFU;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static final atomic(Z)Lkotlinx/atomicfu/AtomicBoolean;
    .locals 1

    .line 2
    new-instance v0, Lkotlinx/atomicfu/AtomicBoolean;

    invoke-direct {v0, p0}, Lkotlinx/atomicfu/AtomicBoolean;-><init>(Z)V

    return-object v0
.end method

.method public static final atomic(Ljava/lang/Object;)Lkotlinx/atomicfu/AtomicRef;
    .locals 1

    .line 1
    new-instance v0, Lkotlinx/atomicfu/AtomicRef;

    invoke-direct {v0, p0}, Lkotlinx/atomicfu/AtomicRef;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
