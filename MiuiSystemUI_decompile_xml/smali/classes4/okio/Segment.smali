.class public final Lokio/Segment;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final data:[B

.field public limit:I

.field public next:Lokio/Segment;

.field public final owner:Z

.field public pos:I

.field public prev:Lokio/Segment;

.field public shared:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lokio/Segment;->data:[B

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lokio/Segment;->owner:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lokio/Segment;->shared:Z

    return-void
.end method

.method public constructor <init>([BIIZ)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lokio/Segment;->data:[B

    .line 7
    iput p2, p0, Lokio/Segment;->pos:I

    .line 8
    iput p3, p0, Lokio/Segment;->limit:I

    .line 9
    iput-boolean p4, p0, Lokio/Segment;->shared:Z

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lokio/Segment;->owner:Z

    return-void
.end method


# virtual methods
.method public final pop()Lokio/Segment;
    .locals 4

    .line 1
    iget-object v0, p0, Lokio/Segment;->next:Lokio/Segment;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eq v0, p0, :cond_0

    .line 5
    goto :goto_0

    .line 7
    :cond_0
    move-object v0, v1

    .line 8
    :goto_0
    iget-object v2, p0, Lokio/Segment;->prev:Lokio/Segment;

    .line 9
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 11
    iget-object v3, p0, Lokio/Segment;->next:Lokio/Segment;

    .line 14
    iput-object v3, v2, Lokio/Segment;->next:Lokio/Segment;

    .line 16
    iget-object v2, p0, Lokio/Segment;->next:Lokio/Segment;

    .line 18
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 20
    iget-object v3, p0, Lokio/Segment;->prev:Lokio/Segment;

    .line 23
    iput-object v3, v2, Lokio/Segment;->prev:Lokio/Segment;

    .line 25
    iput-object v1, p0, Lokio/Segment;->next:Lokio/Segment;

    .line 27
    iput-object v1, p0, Lokio/Segment;->prev:Lokio/Segment;

    .line 29
    return-object v0
    .line 31
.end method

.method public final push(Lokio/Segment;)V
    .locals 1

    .line 1
    iput-object p0, p1, Lokio/Segment;->prev:Lokio/Segment;

    .line 2
    iget-object v0, p0, Lokio/Segment;->next:Lokio/Segment;

    .line 4
    iput-object v0, p1, Lokio/Segment;->next:Lokio/Segment;

    .line 6
    iget-object v0, p0, Lokio/Segment;->next:Lokio/Segment;

    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 10
    iput-object p1, v0, Lokio/Segment;->prev:Lokio/Segment;

    .line 13
    iput-object p1, p0, Lokio/Segment;->next:Lokio/Segment;

    .line 15
    return-void
    .line 17
.end method

.method public final sharedCopy()Lokio/Segment;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lokio/Segment;->shared:Z

    .line 3
    new-instance v1, Lokio/Segment;

    .line 5
    iget v2, p0, Lokio/Segment;->pos:I

    .line 7
    iget v3, p0, Lokio/Segment;->limit:I

    .line 9
    iget-object p0, p0, Lokio/Segment;->data:[B

    .line 11
    invoke-direct {v1, p0, v2, v3, v0}, Lokio/Segment;-><init>([BIIZ)V

    .line 13
    return-object v1
    .line 16
.end method

.method public final writeTo(Lokio/Segment;I)V
    .locals 5

    .line 1
    iget-boolean v0, p1, Lokio/Segment;->owner:Z

    .line 2
    if-eqz v0, :cond_3

    .line 4
    iget v0, p1, Lokio/Segment;->limit:I

    .line 6
    add-int v1, v0, p2

    .line 8
    iget-object v2, p1, Lokio/Segment;->data:[B

    .line 10
    const/16 v3, 0x2000

    .line 12
    if-le v1, v3, :cond_2

    .line 14
    iget-boolean v4, p1, Lokio/Segment;->shared:Z

    .line 16
    if-nez v4, :cond_1

    .line 18
    iget v4, p1, Lokio/Segment;->pos:I

    .line 20
    sub-int/2addr v1, v4

    .line 22
    if-gt v1, v3, :cond_0

    .line 23
    sub-int/2addr v0, v4

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-static {v2, v4, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    iget v0, p1, Lokio/Segment;->limit:I

    .line 30
    iget v3, p1, Lokio/Segment;->pos:I

    .line 32
    sub-int/2addr v0, v3

    .line 34
    iput v0, p1, Lokio/Segment;->limit:I

    .line 35
    iput v1, p1, Lokio/Segment;->pos:I

    .line 37
    goto :goto_0

    .line 39
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 40
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 42
    throw p0

    .line 45
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 46
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 48
    throw p0

    .line 51
    :cond_2
    :goto_0
    iget v0, p1, Lokio/Segment;->limit:I

    .line 52
    iget v1, p0, Lokio/Segment;->pos:I

    .line 54
    add-int v3, v1, p2

    .line 56
    sub-int/2addr v3, v1

    .line 58
    iget-object v4, p0, Lokio/Segment;->data:[B

    .line 59
    invoke-static {v4, v1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    iget v0, p1, Lokio/Segment;->limit:I

    .line 64
    add-int/2addr v0, p2

    .line 66
    iput v0, p1, Lokio/Segment;->limit:I

    .line 67
    iget p1, p0, Lokio/Segment;->pos:I

    .line 69
    add-int/2addr p1, p2

    .line 71
    iput p1, p0, Lokio/Segment;->pos:I

    .line 72
    return-void

    .line 74
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 75
    const-string p1, "only owner can write"

    .line 77
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 79
    move-result-object p1

    .line 82
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 83
    throw p0
    .line 86
.end method
