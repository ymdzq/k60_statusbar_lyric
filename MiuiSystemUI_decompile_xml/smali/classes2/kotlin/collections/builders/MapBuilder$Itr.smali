.class public abstract Lkotlin/collections/builders/MapBuilder$Itr;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public index:I

.field public lastIndex:I

.field public final map:Lkotlin/collections/builders/MapBuilder;


# direct methods
.method public constructor <init>(Lkotlin/collections/builders/MapBuilder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlin/collections/builders/MapBuilder$Itr;->map:Lkotlin/collections/builders/MapBuilder;

    .line 5
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lkotlin/collections/builders/MapBuilder$Itr;->lastIndex:I

    .line 8
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$Itr;->initNext$kotlin_stdlib()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->index:I

    .line 2
    iget-object p0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->map:Lkotlin/collections/builders/MapBuilder;

    .line 4
    invoke-static {p0}, Lkotlin/collections/builders/MapBuilder;->access$getLength$p(Lkotlin/collections/builders/MapBuilder;)I

    .line 6
    move-result p0

    .line 9
    if-ge v0, p0, :cond_0

    .line 10
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
    .line 15
.end method

.method public final initNext$kotlin_stdlib()V
    .locals 3

    .line 1
    :goto_0
    iget v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->index:I

    .line 2
    iget-object v1, p0, Lkotlin/collections/builders/MapBuilder$Itr;->map:Lkotlin/collections/builders/MapBuilder;

    .line 4
    invoke-static {v1}, Lkotlin/collections/builders/MapBuilder;->access$getLength$p(Lkotlin/collections/builders/MapBuilder;)I

    .line 6
    move-result v2

    .line 9
    if-ge v0, v2, :cond_0

    .line 10
    invoke-static {v1}, Lkotlin/collections/builders/MapBuilder;->access$getPresenceArray$p(Lkotlin/collections/builders/MapBuilder;)[I

    .line 12
    move-result-object v0

    .line 15
    iget v1, p0, Lkotlin/collections/builders/MapBuilder$Itr;->index:I

    .line 16
    aget v0, v0, v1

    .line 18
    if-gez v0, :cond_0

    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 22
    iput v1, p0, Lkotlin/collections/builders/MapBuilder$Itr;->index:I

    .line 24
    goto :goto_0

    .line 26
    :cond_0
    return-void
    .line 27
.end method

.method public final remove()V
    .locals 3

    .line 1
    iget v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->lastIndex:I

    .line 2
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->map:Lkotlin/collections/builders/MapBuilder;

    .line 12
    invoke-virtual {v0}, Lkotlin/collections/builders/MapBuilder;->checkIsMutable$kotlin_stdlib()V

    .line 14
    iget v2, p0, Lkotlin/collections/builders/MapBuilder$Itr;->lastIndex:I

    .line 17
    invoke-virtual {v0, v2}, Lkotlin/collections/builders/MapBuilder;->removeKeyAt(I)V

    .line 19
    iput v1, p0, Lkotlin/collections/builders/MapBuilder$Itr;->lastIndex:I

    .line 22
    return-void

    .line 24
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 25
    const-string v0, "Call next() before removing element from the iterator."

    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 32
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    throw p0
    .line 36
.end method
