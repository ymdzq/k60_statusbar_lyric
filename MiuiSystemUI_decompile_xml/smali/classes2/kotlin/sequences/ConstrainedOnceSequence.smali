.class public final Lkotlin/sequences/ConstrainedOnceSequence;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/sequences/Sequence;


# instance fields
.field public final sequenceRef:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>(Lkotlin/sequences/SequencesKt__SequencesKt$asSequence$$inlined$Sequence$1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 7
    iput-object v0, p0, Lkotlin/sequences/ConstrainedOnceSequence;->sequenceRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    iget-object p0, p0, Lkotlin/sequences/ConstrainedOnceSequence;->sequenceRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    move-result-object p0

    .line 8
    check-cast p0, Lkotlin/sequences/Sequence;

    .line 9
    if-eqz p0, :cond_0

    .line 11
    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 18
    const-string v0, "This sequence can be consumed only once."

    .line 20
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    throw p0
    .line 25
.end method
