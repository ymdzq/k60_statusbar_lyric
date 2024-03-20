.class public abstract Lkotlin/collections/AbstractIterator;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public nextValue:Ljava/lang/Object;

.field public state:Lkotlin/collections/State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lkotlin/collections/State;->NotReady:Lkotlin/collections/State;

    .line 5
    iput-object v0, p0, Lkotlin/collections/AbstractIterator;->state:Lkotlin/collections/State;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final done()V
    .locals 1

    .line 1
    sget-object v0, Lkotlin/collections/State;->Done:Lkotlin/collections/State;

    .line 2
    iput-object v0, p0, Lkotlin/collections/AbstractIterator;->state:Lkotlin/collections/State;

    .line 4
    return-void
    .line 6
.end method

.method public final hasNext()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lkotlin/collections/AbstractIterator;->state:Lkotlin/collections/State;

    .line 2
    sget-object v1, Lkotlin/collections/State;->Failed:Lkotlin/collections/State;

    .line 4
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    move v4, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v4, v3

    .line 12
    :goto_0
    if-eqz v4, :cond_5

    .line 13
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 15
    move-result v0

    .line 18
    if-eqz v0, :cond_4

    .line 19
    const/4 v4, 0x2

    .line 21
    if-eq v0, v4, :cond_3

    .line 22
    iput-object v1, p0, Lkotlin/collections/AbstractIterator;->state:Lkotlin/collections/State;

    .line 24
    move-object v0, p0

    .line 26
    check-cast v0, Lkotlin/sequences/DistinctIterator;

    .line 27
    :cond_1
    iget-object v1, v0, Lkotlin/sequences/DistinctIterator;->source:Ljava/util/Iterator;

    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    iget-object v1, v0, Lkotlin/sequences/DistinctIterator;->source:Ljava/util/Iterator;

    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 42
    iget-object v4, v0, Lkotlin/sequences/DistinctIterator;->keySelector:Lkotlin/jvm/functions/Function1;

    .line 43
    invoke-interface {v4, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-result-object v4

    .line 48
    iget-object v5, v0, Lkotlin/sequences/DistinctIterator;->observed:Ljava/util/HashSet;

    .line 49
    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 51
    move-result v4

    .line 54
    if-eqz v4, :cond_1

    .line 55
    invoke-virtual {v0, v1}, Lkotlin/collections/AbstractIterator;->setNext(Ljava/lang/Object;)V

    .line 57
    goto :goto_1

    .line 60
    :cond_2
    invoke-virtual {v0}, Lkotlin/collections/AbstractIterator;->done()V

    .line 61
    :goto_1
    iget-object p0, p0, Lkotlin/collections/AbstractIterator;->state:Lkotlin/collections/State;

    .line 64
    sget-object v0, Lkotlin/collections/State;->Ready:Lkotlin/collections/State;

    .line 66
    if-ne p0, v0, :cond_3

    .line 68
    goto :goto_2

    .line 70
    :cond_3
    move v2, v3

    .line 71
    :cond_4
    :goto_2
    return v2

    .line 72
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 73
    const-string v0, "Failed requirement."

    .line 75
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 77
    move-result-object v0

    .line 80
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 81
    throw p0
    .line 84
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/AbstractIterator;->hasNext()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    sget-object v0, Lkotlin/collections/State;->NotReady:Lkotlin/collections/State;

    .line 8
    iput-object v0, p0, Lkotlin/collections/AbstractIterator;->state:Lkotlin/collections/State;

    .line 10
    iget-object p0, p0, Lkotlin/collections/AbstractIterator;->nextValue:Ljava/lang/Object;

    .line 12
    return-object p0

    .line 14
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 15
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 17
    throw p0
    .line 20
.end method

.method public final remove()V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    const-string v0, "Operation is not supported for read-only collection"

    .line 4
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    throw p0
    .line 9
.end method

.method public final setNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlin/collections/AbstractIterator;->nextValue:Ljava/lang/Object;

    .line 2
    sget-object p1, Lkotlin/collections/State;->Ready:Lkotlin/collections/State;

    .line 4
    iput-object p1, p0, Lkotlin/collections/AbstractIterator;->state:Lkotlin/collections/State;

    .line 6
    return-void
    .line 8
.end method
