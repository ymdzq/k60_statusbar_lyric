.class public final Lkotlinx/atomicfu/AtomicArray;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final array:[Lkotlinx/atomicfu/AtomicRef;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array v0, p1, [Lkotlinx/atomicfu/AtomicRef;

    .line 5
    const/4 v1, 0x0

    .line 7
    :goto_0
    if-ge v1, p1, :cond_0

    .line 8
    const/4 v2, 0x0

    .line 10
    invoke-static {v2}, Lkotlinx/atomicfu/AtomicFU;->atomic(Ljava/lang/Object;)Lkotlinx/atomicfu/AtomicRef;

    .line 11
    move-result-object v2

    .line 14
    aput-object v2, v0, v1

    .line 15
    add-int/lit8 v1, v1, 0x1

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    iput-object v0, p0, Lkotlinx/atomicfu/AtomicArray;->array:[Lkotlinx/atomicfu/AtomicRef;

    .line 20
    return-void
    .line 22
.end method
