.class public final Lkotlin/sequences/TakeSequence$iterator$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public final iterator:Ljava/util/Iterator;

.field public left:I


# direct methods
.method public constructor <init>(Lkotlin/sequences/TakeSequence;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget v0, p1, Lkotlin/sequences/TakeSequence;->count:I

    .line 5
    iput v0, p0, Lkotlin/sequences/TakeSequence$iterator$1;->left:I

    .line 7
    iget-object p1, p1, Lkotlin/sequences/TakeSequence;->sequence:Lkotlin/sequences/Sequence;

    .line 9
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p1

    .line 14
    iput-object p1, p0, Lkotlin/sequences/TakeSequence$iterator$1;->iterator:Ljava/util/Iterator;

    .line 15
    return-void
    .line 17
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/sequences/TakeSequence$iterator$1;->left:I

    .line 2
    if-lez v0, :cond_0

    .line 4
    iget-object p0, p0, Lkotlin/sequences/TakeSequence$iterator$1;->iterator:Ljava/util/Iterator;

    .line 6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
    .line 17
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/sequences/TakeSequence$iterator$1;->left:I

    .line 2
    if-eqz v0, :cond_0

    .line 4
    add-int/lit8 v0, v0, -0x1

    .line 6
    iput v0, p0, Lkotlin/sequences/TakeSequence$iterator$1;->left:I

    .line 8
    iget-object p0, p0, Lkotlin/sequences/TakeSequence$iterator$1;->iterator:Ljava/util/Iterator;

    .line 10
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 17
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 19
    throw p0
    .line 22
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
