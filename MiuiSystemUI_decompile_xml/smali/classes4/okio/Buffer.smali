.class public final Lokio/Buffer;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lokio/BufferedSource;
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;
.implements Ljava/nio/channels/WritableByteChannel;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# instance fields
.field public head:Lokio/Segment;

.field public size:J


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 6

    .line 1
    new-instance v0, Lokio/Buffer;

    .line 2
    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 4
    iget-wide v1, p0, Lokio/Buffer;->size:J

    .line 7
    const-wide/16 v3, 0x0

    .line 9
    cmp-long v1, v1, v3

    .line 11
    if-nez v1, :cond_0

    .line 13
    goto :goto_1

    .line 15
    :cond_0
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 16
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 18
    invoke-virtual {v1}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    .line 21
    move-result-object v2

    .line 24
    iput-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 25
    iput-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    .line 27
    iput-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    .line 29
    iget-object v3, v1, Lokio/Segment;->next:Lokio/Segment;

    .line 31
    :goto_0
    if-eq v3, v1, :cond_1

    .line 33
    iget-object v4, v2, Lokio/Segment;->prev:Lokio/Segment;

    .line 35
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 37
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 40
    invoke-virtual {v3}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    .line 43
    move-result-object v5

    .line 46
    invoke-virtual {v4, v5}, Lokio/Segment;->push(Lokio/Segment;)V

    .line 47
    iget-object v3, v3, Lokio/Segment;->next:Lokio/Segment;

    .line 50
    goto :goto_0

    .line 52
    :cond_1
    iget-wide v1, p0, Lokio/Buffer;->size:J

    .line 53
    iput-wide v1, v0, Lokio/Buffer;->size:J

    .line 55
    :goto_1
    return-object v0
    .line 57
.end method

.method public final close()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    if-ne v0, v1, :cond_1

    .line 6
    :cond_0
    :goto_0
    const/4 v2, 0x1

    .line 8
    goto/16 :goto_4

    .line 9
    :cond_1
    instance-of v3, v1, Lokio/Buffer;

    .line 11
    if-nez v3, :cond_2

    .line 13
    :goto_1
    const/4 v2, 0x0

    .line 15
    goto/16 :goto_4

    .line 16
    :cond_2
    iget-wide v5, v0, Lokio/Buffer;->size:J

    .line 18
    check-cast v1, Lokio/Buffer;

    .line 20
    iget-wide v7, v1, Lokio/Buffer;->size:J

    .line 22
    cmp-long v3, v5, v7

    .line 24
    if-eqz v3, :cond_3

    .line 26
    goto :goto_1

    .line 28
    :cond_3
    const-wide/16 v7, 0x0

    .line 29
    cmp-long v3, v5, v7

    .line 31
    if-nez v3, :cond_4

    .line 33
    goto :goto_0

    .line 35
    :cond_4
    iget-object v3, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 36
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 38
    iget-object v1, v1, Lokio/Buffer;->head:Lokio/Segment;

    .line 41
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 43
    iget v5, v3, Lokio/Segment;->pos:I

    .line 46
    iget v6, v1, Lokio/Segment;->pos:I

    .line 48
    move-wide v9, v7

    .line 50
    :goto_2
    iget-wide v11, v0, Lokio/Buffer;->size:J

    .line 51
    cmp-long v11, v9, v11

    .line 53
    if-gez v11, :cond_0

    .line 55
    iget v11, v3, Lokio/Segment;->limit:I

    .line 57
    sub-int/2addr v11, v5

    .line 59
    iget v12, v1, Lokio/Segment;->limit:I

    .line 60
    sub-int/2addr v12, v6

    .line 62
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    .line 63
    move-result v11

    .line 66
    int-to-long v11, v11

    .line 67
    move-wide v13, v7

    .line 68
    :goto_3
    cmp-long v15, v13, v11

    .line 69
    if-gez v15, :cond_6

    .line 71
    add-int/lit8 v15, v5, 0x1

    .line 73
    iget-object v2, v3, Lokio/Segment;->data:[B

    .line 75
    aget-byte v2, v2, v5

    .line 77
    add-int/lit8 v5, v6, 0x1

    .line 79
    iget-object v4, v1, Lokio/Segment;->data:[B

    .line 81
    aget-byte v4, v4, v6

    .line 83
    if-eq v2, v4, :cond_5

    .line 85
    goto :goto_1

    .line 87
    :cond_5
    const-wide/16 v16, 0x1

    .line 88
    add-long v13, v13, v16

    .line 90
    move v6, v5

    .line 92
    move v5, v15

    .line 93
    goto :goto_3

    .line 94
    :cond_6
    iget v2, v3, Lokio/Segment;->limit:I

    .line 95
    if-ne v5, v2, :cond_7

    .line 97
    iget-object v2, v3, Lokio/Segment;->next:Lokio/Segment;

    .line 99
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 101
    iget v3, v2, Lokio/Segment;->pos:I

    .line 104
    move v5, v3

    .line 106
    move-object v3, v2

    .line 107
    :cond_7
    iget v2, v1, Lokio/Segment;->limit:I

    .line 108
    if-ne v6, v2, :cond_8

    .line 110
    iget-object v1, v1, Lokio/Segment;->next:Lokio/Segment;

    .line 112
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 114
    iget v2, v1, Lokio/Segment;->pos:I

    .line 117
    move v6, v2

    .line 119
    :cond_8
    add-long/2addr v9, v11

    .line 120
    goto :goto_2

    .line 121
    :goto_4
    return v2
    .line 122
.end method

.method public final flush()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final getBuffer()Lokio/Buffer;
    .locals 0

    .line 1
    return-object p0
    .line 2
.end method

.method public final getByte(J)B
    .locals 6

    .line 1
    iget-wide v0, p0, Lokio/Buffer;->size:J

    .line 2
    const-wide/16 v4, 0x1

    .line 4
    move-wide v2, p1

    .line 6
    invoke-static/range {v0 .. v5}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 7
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 10
    if-eqz v0, :cond_3

    .line 12
    iget-wide v1, p0, Lokio/Buffer;->size:J

    .line 14
    sub-long v3, v1, p1

    .line 16
    cmp-long p0, v3, p1

    .line 18
    if-gez p0, :cond_1

    .line 20
    :goto_0
    cmp-long p0, v1, p1

    .line 22
    if-lez p0, :cond_0

    .line 24
    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    .line 26
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 28
    iget p0, v0, Lokio/Segment;->limit:I

    .line 31
    iget v3, v0, Lokio/Segment;->pos:I

    .line 33
    sub-int/2addr p0, v3

    .line 35
    int-to-long v3, p0

    .line 36
    sub-long/2addr v1, v3

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget p0, v0, Lokio/Segment;->pos:I

    .line 39
    int-to-long v3, p0

    .line 41
    add-long/2addr v3, p1

    .line 42
    sub-long/2addr v3, v1

    .line 43
    long-to-int p0, v3

    .line 44
    iget-object p1, v0, Lokio/Segment;->data:[B

    .line 45
    aget-byte p0, p1, p0

    .line 47
    goto :goto_2

    .line 49
    :cond_1
    const-wide/16 v1, 0x0

    .line 50
    :goto_1
    iget p0, v0, Lokio/Segment;->limit:I

    .line 52
    iget v3, v0, Lokio/Segment;->pos:I

    .line 54
    sub-int/2addr p0, v3

    .line 56
    int-to-long v4, p0

    .line 57
    add-long/2addr v4, v1

    .line 58
    cmp-long p0, v4, p1

    .line 59
    if-gtz p0, :cond_2

    .line 61
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    .line 63
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 65
    move-wide v1, v4

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    int-to-long v3, v3

    .line 70
    add-long/2addr v3, p1

    .line 71
    sub-long/2addr v3, v1

    .line 72
    long-to-int p0, v3

    .line 73
    iget-object p1, v0, Lokio/Segment;->data:[B

    .line 74
    aget-byte p0, p1, p0

    .line 76
    :goto_2
    return p0

    .line 78
    :cond_3
    const/4 p0, 0x0

    .line 79
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 80
    throw p0
    .line 83
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    goto :goto_1

    .line 7
    :cond_0
    const/4 v1, 0x1

    .line 8
    :cond_1
    iget v2, v0, Lokio/Segment;->pos:I

    .line 9
    iget v3, v0, Lokio/Segment;->limit:I

    .line 11
    :goto_0
    if-ge v2, v3, :cond_2

    .line 13
    mul-int/lit8 v1, v1, 0x1f

    .line 15
    iget-object v4, v0, Lokio/Segment;->data:[B

    .line 17
    aget-byte v4, v4, v2

    .line 19
    add-int/2addr v1, v4

    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    goto :goto_0

    .line 24
    :cond_2
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    .line 25
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 27
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 30
    if-ne v0, v2, :cond_1

    .line 32
    move p0, v1

    .line 34
    :goto_1
    return p0
    .line 35
.end method

.method public final indexOfElement(Lokio/ByteString;)J
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->indexOfElement(Lokio/ByteString;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final indexOfElement(Lokio/ByteString;J)J
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_14

    .line 2
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v2, :cond_1

    goto/16 :goto_11

    .line 3
    :cond_1
    iget-wide v5, p0, Lokio/Buffer;->size:J

    sub-long v7, v5, p2

    cmp-long v7, v7, p2

    const/4 v8, 0x2

    if-gez v7, :cond_a

    :goto_1
    cmp-long v0, v5, p2

    if-lez v0, :cond_2

    .line 4
    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 5
    iget v0, v2, Lokio/Segment;->limit:I

    iget v1, v2, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr v5, v0

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p1}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v0

    if-ne v0, v8, :cond_6

    .line 7
    invoke-virtual {p1, v3}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    move-result v0

    .line 8
    invoke-virtual {p1, v4}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    move-result p1

    .line 9
    :goto_2
    iget-wide v3, p0, Lokio/Buffer;->size:J

    cmp-long v1, v5, v3

    if-gez v1, :cond_13

    .line 10
    iget v1, v2, Lokio/Segment;->pos:I

    int-to-long v3, v1

    add-long/2addr v3, p2

    sub-long/2addr v3, v5

    long-to-int p2, v3

    .line 11
    iget p3, v2, Lokio/Segment;->limit:I

    :goto_3
    if-ge p2, p3, :cond_5

    .line 12
    iget-object v1, v2, Lokio/Segment;->data:[B

    aget-byte v1, v1, p2

    if-eq v1, v0, :cond_4

    if-ne v1, p1, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 13
    :cond_4
    :goto_4
    iget p0, v2, Lokio/Segment;->pos:I

    goto :goto_8

    .line 14
    :cond_5
    iget p2, v2, Lokio/Segment;->limit:I

    iget p3, v2, Lokio/Segment;->pos:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v5, p2

    .line 15
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide p2, v5

    goto :goto_2

    .line 16
    :cond_6
    invoke-virtual {p1}, Lokio/ByteString;->internalArray$external__okio__android_common__okio_lib()[B

    move-result-object p1

    .line 17
    :goto_5
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v0, v5, v0

    if-gez v0, :cond_13

    .line 18
    iget v0, v2, Lokio/Segment;->pos:I

    int-to-long v0, v0

    add-long/2addr v0, p2

    sub-long/2addr v0, v5

    long-to-int p2, v0

    .line 19
    iget p3, v2, Lokio/Segment;->limit:I

    :goto_6
    if-ge p2, p3, :cond_9

    .line 20
    iget-object v0, v2, Lokio/Segment;->data:[B

    aget-byte v0, v0, p2

    .line 21
    array-length v1, p1

    move v4, v3

    :goto_7
    if-ge v4, v1, :cond_8

    aget-byte v7, p1, v4

    if-ne v0, v7, :cond_7

    .line 22
    iget p0, v2, Lokio/Segment;->pos:I

    :goto_8
    sub-int/2addr p2, p0

    int-to-long p0, p2

    add-long/2addr p0, v5

    goto/16 :goto_12

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    .line 23
    :cond_9
    iget p2, v2, Lokio/Segment;->limit:I

    iget p3, v2, Lokio/Segment;->pos:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v5, p2

    .line 24
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide p2, v5

    goto :goto_5

    .line 25
    :cond_a
    :goto_9
    iget v5, v2, Lokio/Segment;->limit:I

    iget v6, v2, Lokio/Segment;->pos:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    add-long/2addr v5, v0

    cmp-long v7, v5, p2

    if-gtz v7, :cond_b

    .line 26
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide v0, v5

    goto :goto_9

    .line 27
    :cond_b
    invoke-virtual {p1}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v5

    if-ne v5, v8, :cond_f

    .line 28
    invoke-virtual {p1, v3}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    move-result v3

    .line 29
    invoke-virtual {p1, v4}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    move-result p1

    .line 30
    :goto_a
    iget-wide v4, p0, Lokio/Buffer;->size:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_13

    .line 31
    iget v4, v2, Lokio/Segment;->pos:I

    int-to-long v4, v4

    add-long/2addr v4, p2

    sub-long/2addr v4, v0

    long-to-int p2, v4

    .line 32
    iget p3, v2, Lokio/Segment;->limit:I

    :goto_b
    if-ge p2, p3, :cond_e

    .line 33
    iget-object v4, v2, Lokio/Segment;->data:[B

    aget-byte v4, v4, p2

    if-eq v4, v3, :cond_d

    if-ne v4, p1, :cond_c

    goto :goto_c

    :cond_c
    add-int/lit8 p2, p2, 0x1

    goto :goto_b

    .line 34
    :cond_d
    :goto_c
    iget p0, v2, Lokio/Segment;->pos:I

    goto :goto_10

    .line 35
    :cond_e
    iget p2, v2, Lokio/Segment;->limit:I

    iget p3, v2, Lokio/Segment;->pos:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    .line 36
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide p2, v0

    goto :goto_a

    .line 37
    :cond_f
    invoke-virtual {p1}, Lokio/ByteString;->internalArray$external__okio__android_common__okio_lib()[B

    move-result-object p1

    .line 38
    :goto_d
    iget-wide v4, p0, Lokio/Buffer;->size:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_13

    .line 39
    iget v4, v2, Lokio/Segment;->pos:I

    int-to-long v4, v4

    add-long/2addr v4, p2

    sub-long/2addr v4, v0

    long-to-int p2, v4

    .line 40
    iget p3, v2, Lokio/Segment;->limit:I

    :goto_e
    if-ge p2, p3, :cond_12

    .line 41
    iget-object v4, v2, Lokio/Segment;->data:[B

    aget-byte v4, v4, p2

    .line 42
    array-length v5, p1

    move v6, v3

    :goto_f
    if-ge v6, v5, :cond_11

    aget-byte v7, p1, v6

    if-ne v4, v7, :cond_10

    .line 43
    iget p0, v2, Lokio/Segment;->pos:I

    :goto_10
    sub-int/2addr p2, p0

    int-to-long p0, p2

    add-long/2addr p0, v0

    goto :goto_12

    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_11
    add-int/lit8 p2, p2, 0x1

    goto :goto_e

    .line 44
    :cond_12
    iget p2, v2, Lokio/Segment;->limit:I

    iget p3, v2, Lokio/Segment;->pos:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    .line 45
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide p2, v0

    goto :goto_d

    :cond_13
    :goto_11
    const-wide/16 p0, -0x1

    :goto_12
    return-wide p0

    .line 46
    :cond_14
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "fromIndex < 0: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final isOpen()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .locals 6

    .line 46
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 47
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget v2, v0, Lokio/Segment;->limit:I

    iget v3, v0, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 48
    iget-object v2, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->pos:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 49
    iget p1, v0, Lokio/Segment;->pos:I

    add-int/2addr p1, v1

    iput p1, v0, Lokio/Segment;->pos:I

    .line 50
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 51
    iget v2, v0, Lokio/Segment;->limit:I

    if-ne p1, v2, :cond_1

    .line 52
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object p1

    iput-object p1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 53
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    :cond_1
    return v1
.end method

.method public final read([BII)I
    .locals 7

    .line 54
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 55
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 56
    :cond_0
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 57
    iget v1, v0, Lokio/Segment;->pos:I

    add-int v2, v1, p3

    sub-int/2addr v2, v1

    .line 58
    iget-object v3, v0, Lokio/Segment;->data:[B

    invoke-static {v3, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    iget p1, v0, Lokio/Segment;->pos:I

    add-int/2addr p1, p3

    iput p1, v0, Lokio/Segment;->pos:I

    .line 60
    iget-wide v1, p0, Lokio/Buffer;->size:J

    int-to-long v3, p3

    sub-long/2addr v1, v3

    .line 61
    iput-wide v1, p0, Lokio/Buffer;->size:J

    .line 62
    iget p2, v0, Lokio/Segment;->limit:I

    if-ne p1, p2, :cond_1

    .line 63
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object p1

    iput-object p1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 64
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    :cond_1
    move p0, p3

    :goto_0
    return p0
.end method

.method public final read(Lokio/Buffer;J)J
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ltz v6, :cond_0

    move v6, v7

    goto :goto_0

    :cond_0
    move v6, v8

    :goto_0
    if-eqz v6, :cond_13

    .line 1
    iget-wide v9, v0, Lokio/Buffer;->size:J

    cmp-long v6, v9, v4

    if-nez v6, :cond_1

    const-wide/16 v0, -0x1

    goto/16 :goto_c

    :cond_1
    cmp-long v6, v2, v9

    if-lez v6, :cond_2

    move-wide v2, v9

    :cond_2
    if-eq v0, v1, :cond_3

    move v6, v7

    goto :goto_1

    :cond_3
    move v6, v8

    :goto_1
    if-eqz v6, :cond_12

    const-wide/16 v11, 0x0

    move-wide v13, v2

    .line 2
    invoke-static/range {v9 .. v14}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    move-wide v9, v2

    :goto_2
    cmp-long v6, v9, v4

    if-lez v6, :cond_11

    .line 3
    iget-object v6, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v6, v6, Lokio/Segment;->limit:I

    iget-object v11, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v11, v11, Lokio/Segment;->pos:I

    sub-int/2addr v6, v11

    int-to-long v11, v6

    cmp-long v6, v9, v11

    if-gez v6, :cond_a

    .line 4
    iget-object v6, v1, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v6, :cond_4

    iget-object v6, v6, Lokio/Segment;->prev:Lokio/Segment;

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    if-eqz v6, :cond_6

    .line 5
    iget-boolean v11, v6, Lokio/Segment;->owner:Z

    if-eqz v11, :cond_6

    .line 6
    iget v11, v6, Lokio/Segment;->limit:I

    int-to-long v11, v11

    add-long/2addr v11, v9

    iget-boolean v13, v6, Lokio/Segment;->shared:Z

    if-eqz v13, :cond_5

    move v13, v8

    goto :goto_4

    :cond_5
    iget v13, v6, Lokio/Segment;->pos:I

    :goto_4
    int-to-long v13, v13

    sub-long/2addr v11, v13

    const-wide/16 v13, 0x2000

    cmp-long v11, v11, v13

    if-gtz v11, :cond_6

    .line 7
    iget-object v4, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    long-to-int v5, v9

    invoke-virtual {v4, v6, v5}, Lokio/Segment;->writeTo(Lokio/Segment;I)V

    .line 8
    iget-wide v4, v0, Lokio/Buffer;->size:J

    sub-long/2addr v4, v9

    .line 9
    iput-wide v4, v0, Lokio/Buffer;->size:J

    .line 10
    iget-wide v4, v1, Lokio/Buffer;->size:J

    add-long/2addr v4, v9

    .line 11
    iput-wide v4, v1, Lokio/Buffer;->size:J

    goto/16 :goto_b

    .line 12
    :cond_6
    iget-object v6, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    long-to-int v11, v9

    if-lez v11, :cond_7

    .line 13
    iget v12, v6, Lokio/Segment;->limit:I

    iget v13, v6, Lokio/Segment;->pos:I

    sub-int/2addr v12, v13

    if-gt v11, v12, :cond_7

    move v12, v7

    goto :goto_5

    :cond_7
    move v12, v8

    :goto_5
    if-eqz v12, :cond_9

    const/16 v12, 0x400

    if-lt v11, v12, :cond_8

    .line 14
    invoke-virtual {v6}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v12

    goto :goto_6

    .line 15
    :cond_8
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object v12

    .line 16
    iget v13, v6, Lokio/Segment;->pos:I

    add-int v14, v13, v11

    sub-int/2addr v14, v13

    .line 17
    iget-object v15, v6, Lokio/Segment;->data:[B

    iget-object v4, v12, Lokio/Segment;->data:[B

    invoke-static {v15, v13, v4, v8, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    :goto_6
    iget v4, v12, Lokio/Segment;->pos:I

    add-int/2addr v4, v11

    iput v4, v12, Lokio/Segment;->limit:I

    .line 19
    iget v4, v6, Lokio/Segment;->pos:I

    add-int/2addr v4, v11

    iput v4, v6, Lokio/Segment;->pos:I

    .line 20
    iget-object v4, v6, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v12}, Lokio/Segment;->push(Lokio/Segment;)V

    .line 21
    iput-object v12, v0, Lokio/Buffer;->head:Lokio/Segment;

    goto :goto_7

    .line 22
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byteCount out of range"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_a
    :goto_7
    iget-object v4, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 24
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v5, v4, Lokio/Segment;->limit:I

    iget v6, v4, Lokio/Segment;->pos:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    .line 25
    invoke-virtual {v4}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v11

    iput-object v11, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 26
    iget-object v11, v1, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v11, :cond_b

    .line 27
    iput-object v4, v1, Lokio/Buffer;->head:Lokio/Segment;

    .line 28
    iput-object v4, v4, Lokio/Segment;->prev:Lokio/Segment;

    .line 29
    iput-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_a

    .line 30
    :cond_b
    iget-object v11, v11, Lokio/Segment;->prev:Lokio/Segment;

    .line 31
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v11, v4}, Lokio/Segment;->push(Lokio/Segment;)V

    .line 32
    iget-object v11, v4, Lokio/Segment;->prev:Lokio/Segment;

    if-eq v11, v4, :cond_c

    move v12, v7

    goto :goto_8

    :cond_c
    move v12, v8

    :goto_8
    if-eqz v12, :cond_10

    .line 33
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean v11, v11, Lokio/Segment;->owner:Z

    if-nez v11, :cond_d

    goto :goto_a

    .line 34
    :cond_d
    iget v11, v4, Lokio/Segment;->limit:I

    iget v12, v4, Lokio/Segment;->pos:I

    sub-int/2addr v11, v12

    .line 35
    iget-object v12, v4, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v12, v12, Lokio/Segment;->limit:I

    rsub-int v12, v12, 0x2000

    iget-object v13, v4, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean v13, v13, Lokio/Segment;->shared:Z

    if-eqz v13, :cond_e

    move v13, v8

    goto :goto_9

    :cond_e
    iget-object v13, v4, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v13, v13, Lokio/Segment;->pos:I

    :goto_9
    add-int/2addr v12, v13

    if-le v11, v12, :cond_f

    goto :goto_a

    .line 36
    :cond_f
    iget-object v12, v4, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v12, v11}, Lokio/Segment;->writeTo(Lokio/Segment;I)V

    .line 37
    invoke-virtual {v4}, Lokio/Segment;->pop()Lokio/Segment;

    .line 38
    invoke-static {v4}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 39
    :goto_a
    iget-wide v11, v0, Lokio/Buffer;->size:J

    sub-long/2addr v11, v5

    .line 40
    iput-wide v11, v0, Lokio/Buffer;->size:J

    .line 41
    iget-wide v11, v1, Lokio/Buffer;->size:J

    add-long/2addr v11, v5

    .line 42
    iput-wide v11, v1, Lokio/Buffer;->size:J

    sub-long/2addr v9, v5

    const-wide/16 v4, 0x0

    goto/16 :goto_2

    .line 43
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot compact"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    :goto_b
    move-wide v0, v2

    :goto_c
    return-wide v0

    .line 44
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == this"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "byteCount < 0: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final readByte()B
    .locals 8

    .line 1
    iget-wide v0, p0, Lokio/Buffer;->size:J

    .line 2
    const-wide/16 v2, 0x0

    .line 4
    cmp-long v0, v0, v2

    .line 6
    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 12
    iget v1, v0, Lokio/Segment;->pos:I

    .line 15
    iget v2, v0, Lokio/Segment;->limit:I

    .line 17
    add-int/lit8 v3, v1, 0x1

    .line 19
    iget-object v4, v0, Lokio/Segment;->data:[B

    .line 21
    aget-byte v1, v4, v1

    .line 23
    iget-wide v4, p0, Lokio/Buffer;->size:J

    .line 25
    const-wide/16 v6, 0x1

    .line 27
    sub-long/2addr v4, v6

    .line 29
    iput-wide v4, p0, Lokio/Buffer;->size:J

    .line 30
    if-ne v3, v2, :cond_0

    .line 32
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    .line 34
    move-result-object v2

    .line 37
    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 38
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 40
    goto :goto_0

    .line 43
    :cond_0
    iput v3, v0, Lokio/Segment;->pos:I

    .line 44
    :goto_0
    return v1

    .line 46
    :cond_1
    new-instance p0, Ljava/io/EOFException;

    .line 47
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 49
    throw p0
    .line 52
.end method

.method public final readByteArray(J)[B
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    cmp-long v0, p1, v0

    .line 4
    const/4 v1, 0x0

    .line 6
    if-ltz v0, :cond_0

    .line 7
    const-wide/32 v2, 0x7fffffff

    .line 9
    cmp-long v0, p1, v2

    .line 12
    if-gtz v0, :cond_0

    .line 14
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v1

    .line 18
    :goto_0
    if-eqz v0, :cond_4

    .line 19
    iget-wide v2, p0, Lokio/Buffer;->size:J

    .line 21
    cmp-long v0, v2, p1

    .line 23
    if-ltz v0, :cond_3

    .line 25
    long-to-int p1, p1

    .line 27
    new-array p2, p1, [B

    .line 28
    :goto_1
    if-ge v1, p1, :cond_2

    .line 30
    sub-int v0, p1, v1

    .line 32
    invoke-virtual {p0, p2, v1, v0}, Lokio/Buffer;->read([BII)I

    .line 34
    move-result v0

    .line 37
    const/4 v2, -0x1

    .line 38
    if-eq v0, v2, :cond_1

    .line 39
    add-int/2addr v1, v0

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    new-instance p0, Ljava/io/EOFException;

    .line 43
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 45
    throw p0

    .line 48
    :cond_2
    return-object p2

    .line 49
    :cond_3
    new-instance p0, Ljava/io/EOFException;

    .line 50
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 52
    throw p0

    .line 55
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 56
    const-string v0, "byteCount: "

    .line 58
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p0

    .line 69
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 75
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 76
    throw p1
    .line 79
.end method

.method public final readByteString()Lokio/ByteString;
    .locals 4

    .line 1
    iget-wide v0, p0, Lokio/Buffer;->size:J

    .line 2
    const-wide/16 v2, 0x0

    .line 4
    cmp-long v2, v0, v2

    .line 6
    if-ltz v2, :cond_0

    .line 8
    const-wide/32 v2, 0x7fffffff

    .line 10
    cmp-long v2, v0, v2

    .line 13
    if-gtz v2, :cond_0

    .line 15
    const/4 v2, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v2, 0x0

    .line 19
    :goto_0
    if-eqz v2, :cond_3

    .line 20
    cmp-long v2, v0, v0

    .line 22
    if-ltz v2, :cond_2

    .line 24
    const-wide/16 v2, 0x1000

    .line 26
    cmp-long v2, v0, v2

    .line 28
    if-ltz v2, :cond_1

    .line 30
    long-to-int v2, v0

    .line 32
    invoke-virtual {p0, v2}, Lokio/Buffer;->snapshot(I)Lokio/ByteString;

    .line 33
    move-result-object v2

    .line 36
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V

    .line 37
    goto :goto_1

    .line 40
    :cond_1
    new-instance v2, Lokio/ByteString;

    .line 41
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readByteArray(J)[B

    .line 43
    move-result-object p0

    .line 46
    invoke-direct {v2, p0}, Lokio/ByteString;-><init>([B)V

    .line 47
    :goto_1
    return-object v2

    .line 50
    :cond_2
    new-instance p0, Ljava/io/EOFException;

    .line 51
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 53
    throw p0

    .line 56
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 57
    const-string v2, "byteCount: "

    .line 59
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 73
    move-result-object p0

    .line 76
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 77
    throw v0
    .line 80
.end method

.method public final readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    cmp-long v0, p1, v0

    .line 4
    if-ltz v0, :cond_0

    .line 6
    const-wide/32 v1, 0x7fffffff

    .line 8
    cmp-long v1, p1, v1

    .line 11
    if-gtz v1, :cond_0

    .line 13
    const/4 v1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    :goto_0
    if-eqz v1, :cond_5

    .line 18
    iget-wide v1, p0, Lokio/Buffer;->size:J

    .line 20
    cmp-long v1, v1, p1

    .line 22
    if-ltz v1, :cond_4

    .line 24
    if-nez v0, :cond_1

    .line 26
    const-string p0, ""

    .line 28
    return-object p0

    .line 30
    :cond_1
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 31
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 33
    iget v1, v0, Lokio/Segment;->pos:I

    .line 36
    int-to-long v2, v1

    .line 38
    add-long/2addr v2, p1

    .line 39
    iget v4, v0, Lokio/Segment;->limit:I

    .line 40
    int-to-long v4, v4

    .line 42
    cmp-long v2, v2, v4

    .line 43
    if-lez v2, :cond_2

    .line 45
    new-instance v0, Ljava/lang/String;

    .line 47
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readByteArray(J)[B

    .line 49
    move-result-object p0

    .line 52
    invoke-direct {v0, p0, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 53
    return-object v0

    .line 56
    :cond_2
    new-instance v2, Ljava/lang/String;

    .line 57
    long-to-int v3, p1

    .line 59
    iget-object v4, v0, Lokio/Segment;->data:[B

    .line 60
    invoke-direct {v2, v4, v1, v3, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 62
    iget p3, v0, Lokio/Segment;->pos:I

    .line 65
    add-int/2addr p3, v3

    .line 67
    iput p3, v0, Lokio/Segment;->pos:I

    .line 68
    iget-wide v3, p0, Lokio/Buffer;->size:J

    .line 70
    sub-long/2addr v3, p1

    .line 72
    iput-wide v3, p0, Lokio/Buffer;->size:J

    .line 73
    iget p1, v0, Lokio/Segment;->limit:I

    .line 75
    if-ne p3, p1, :cond_3

    .line 77
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    .line 79
    move-result-object p1

    .line 82
    iput-object p1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 83
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 85
    :cond_3
    return-object v2

    .line 88
    :cond_4
    new-instance p0, Ljava/io/EOFException;

    .line 89
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 91
    throw p0

    .line 94
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 95
    const-string p3, "byteCount: "

    .line 97
    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object p0

    .line 108
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 111
    move-result-object p0

    .line 114
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 115
    throw p1
    .line 118
.end method

.method public final readUtf8(J)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final request(J)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lokio/Buffer;->size:J

    .line 2
    cmp-long p0, v0, p1

    .line 4
    if-ltz p0, :cond_0

    .line 6
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
    .line 11
.end method

.method public final select(Lokio/Options;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lokio/internal/BufferKt;->selectPrefix(Lokio/Buffer;Lokio/Options;Z)I

    .line 3
    move-result v0

    .line 6
    const/4 v1, -0x1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    move v0, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p1, Lokio/Options;->byteStrings:[Lokio/ByteString;

    .line 12
    aget-object p1, p1, v0

    .line 14
    invoke-virtual {p1}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    .line 16
    move-result p1

    .line 19
    int-to-long v1, p1

    .line 20
    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->skip(J)V

    .line 21
    :goto_0
    return v0
    .line 24
.end method

.method public final skip(J)V
    .locals 6

    .line 1
    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    .line 2
    cmp-long v0, p1, v0

    .line 4
    if-lez v0, :cond_2

    .line 6
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 8
    if-eqz v0, :cond_1

    .line 10
    iget v1, v0, Lokio/Segment;->limit:I

    .line 12
    iget v2, v0, Lokio/Segment;->pos:I

    .line 14
    sub-int/2addr v1, v2

    .line 16
    int-to-long v1, v1

    .line 17
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 18
    move-result-wide v1

    .line 21
    long-to-int v1, v1

    .line 22
    iget-wide v2, p0, Lokio/Buffer;->size:J

    .line 23
    int-to-long v4, v1

    .line 25
    sub-long/2addr v2, v4

    .line 26
    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 27
    sub-long/2addr p1, v4

    .line 29
    iget v2, v0, Lokio/Segment;->pos:I

    .line 30
    add-int/2addr v2, v1

    .line 32
    iput v2, v0, Lokio/Segment;->pos:I

    .line 33
    iget v1, v0, Lokio/Segment;->limit:I

    .line 35
    if-ne v2, v1, :cond_0

    .line 37
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    .line 39
    move-result-object v1

    .line 42
    iput-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 43
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 45
    goto :goto_0

    .line 48
    :cond_1
    new-instance p0, Ljava/io/EOFException;

    .line 49
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 51
    throw p0

    .line 54
    :cond_2
    return-void
    .line 55
.end method

.method public final snapshot(I)Lokio/ByteString;
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    sget-object p0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 4
    goto :goto_2

    .line 6
    :cond_0
    iget-wide v0, p0, Lokio/Buffer;->size:J

    .line 7
    const-wide/16 v2, 0x0

    .line 9
    int-to-long v4, p1

    .line 11
    invoke-static/range {v0 .. v5}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 12
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 15
    const/4 v1, 0x0

    .line 17
    move v2, v1

    .line 18
    move v3, v2

    .line 19
    :goto_0
    if-ge v2, p1, :cond_2

    .line 20
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 22
    iget v4, v0, Lokio/Segment;->limit:I

    .line 25
    iget v5, v0, Lokio/Segment;->pos:I

    .line 27
    if-eq v4, v5, :cond_1

    .line 29
    sub-int/2addr v4, v5

    .line 31
    add-int/2addr v2, v4

    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 33
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    .line 35
    goto :goto_0

    .line 37
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    .line 38
    const-string p1, "s.limit == s.pos"

    .line 40
    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 42
    throw p0

    .line 45
    :cond_2
    new-array v0, v3, [[B

    .line 46
    mul-int/lit8 v2, v3, 0x2

    .line 48
    new-array v2, v2, [I

    .line 50
    iget-object p0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 52
    move v4, v1

    .line 54
    :goto_1
    if-ge v1, p1, :cond_3

    .line 55
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 57
    iget-object v5, p0, Lokio/Segment;->data:[B

    .line 60
    aput-object v5, v0, v4

    .line 62
    iget v5, p0, Lokio/Segment;->limit:I

    .line 64
    iget v6, p0, Lokio/Segment;->pos:I

    .line 66
    sub-int/2addr v5, v6

    .line 68
    add-int/2addr v1, v5

    .line 69
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    .line 70
    move-result v5

    .line 73
    aput v5, v2, v4

    .line 74
    add-int v5, v4, v3

    .line 76
    iget v6, p0, Lokio/Segment;->pos:I

    .line 78
    aput v6, v2, v5

    .line 80
    const/4 v5, 0x1

    .line 82
    iput-boolean v5, p0, Lokio/Segment;->shared:Z

    .line 83
    add-int/2addr v4, v5

    .line 85
    iget-object p0, p0, Lokio/Segment;->next:Lokio/Segment;

    .line 86
    goto :goto_1

    .line 88
    :cond_3
    new-instance p0, Lokio/SegmentedByteString;

    .line 89
    invoke-direct {p0, v0, v2}, Lokio/SegmentedByteString;-><init>([[B[I)V

    .line 91
    :goto_2
    return-object p0
    .line 94
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-wide v0, p0, Lokio/Buffer;->size:J

    .line 2
    const-wide/32 v2, 0x7fffffff

    .line 4
    cmp-long v2, v0, v2

    .line 7
    if-gtz v2, :cond_0

    .line 9
    const/4 v2, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-eqz v2, :cond_1

    .line 14
    long-to-int v0, v0

    .line 16
    invoke-virtual {p0, v0}, Lokio/Buffer;->snapshot(I)Lokio/ByteString;

    .line 17
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Lokio/ByteString;->toString()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 26
    const-string v2, "size > Int.MAX_VALUE: "

    .line 28
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 39
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 45
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    throw v0
    .line 49
.end method

.method public final writableSegment$external__okio__android_common__okio_lib(I)Lokio/Segment;
    .locals 2

    .line 1
    const/16 v0, 0x2000

    .line 2
    const/4 v1, 0x1

    .line 4
    if-lt p1, v1, :cond_0

    .line 5
    if-gt p1, v0, :cond_0

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-eqz v1, :cond_4

    .line 11
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 13
    if-nez v1, :cond_1

    .line 15
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    .line 17
    move-result-object p1

    .line 20
    iput-object p1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 21
    iput-object p1, p1, Lokio/Segment;->prev:Lokio/Segment;

    .line 23
    iput-object p1, p1, Lokio/Segment;->next:Lokio/Segment;

    .line 25
    goto :goto_2

    .line 27
    :cond_1
    iget-object p0, v1, Lokio/Segment;->prev:Lokio/Segment;

    .line 28
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 30
    iget v1, p0, Lokio/Segment;->limit:I

    .line 33
    add-int/2addr v1, p1

    .line 35
    if-gt v1, v0, :cond_3

    .line 36
    iget-boolean p1, p0, Lokio/Segment;->owner:Z

    .line 38
    if-nez p1, :cond_2

    .line 40
    goto :goto_1

    .line 42
    :cond_2
    move-object p1, p0

    .line 43
    goto :goto_2

    .line 44
    :cond_3
    :goto_1
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    .line 45
    move-result-object p1

    .line 48
    invoke-virtual {p0, p1}, Lokio/Segment;->push(Lokio/Segment;)V

    .line 49
    :goto_2
    return-object p1

    .line 52
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 53
    const-string p1, "unexpected capacity"

    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 60
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    throw p0
    .line 64
.end method

.method public final write(Ljava/nio/ByteBuffer;)I
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    .line 2
    move-result v0

    .line 5
    move v1, v0

    .line 6
    :goto_0
    if-lez v1, :cond_0

    .line 7
    const/4 v2, 0x1

    .line 9
    invoke-virtual {p0, v2}, Lokio/Buffer;->writableSegment$external__okio__android_common__okio_lib(I)Lokio/Segment;

    .line 10
    move-result-object v2

    .line 13
    iget v3, v2, Lokio/Segment;->limit:I

    .line 14
    rsub-int v3, v3, 0x2000

    .line 16
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 18
    move-result v3

    .line 21
    iget-object v4, v2, Lokio/Segment;->data:[B

    .line 22
    iget v5, v2, Lokio/Segment;->limit:I

    .line 24
    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 26
    sub-int/2addr v1, v3

    .line 29
    iget v4, v2, Lokio/Segment;->limit:I

    .line 30
    add-int/2addr v4, v3

    .line 32
    iput v4, v2, Lokio/Segment;->limit:I

    .line 33
    goto :goto_0

    .line 35
    :cond_0
    iget-wide v1, p0, Lokio/Buffer;->size:J

    .line 36
    int-to-long v3, v0

    .line 38
    add-long/2addr v1, v3

    .line 39
    iput-wide v1, p0, Lokio/Buffer;->size:J

    .line 40
    return v0
    .line 42
.end method

.method public final writeByte(I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment$external__okio__android_common__okio_lib(I)Lokio/Segment;

    .line 3
    move-result-object v0

    .line 6
    iget v1, v0, Lokio/Segment;->limit:I

    .line 7
    add-int/lit8 v2, v1, 0x1

    .line 9
    iput v2, v0, Lokio/Segment;->limit:I

    .line 11
    int-to-byte p1, p1

    .line 13
    iget-object v0, v0, Lokio/Segment;->data:[B

    .line 14
    aput-byte p1, v0, v1

    .line 16
    iget-wide v0, p0, Lokio/Buffer;->size:J

    .line 18
    const-wide/16 v2, 0x1

    .line 20
    add-long/2addr v0, v2

    .line 22
    iput-wide v0, p0, Lokio/Buffer;->size:J

    .line 23
    return-void
    .line 25
.end method

.method public final writeInt(I)V
    .locals 5

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment$external__okio__android_common__okio_lib(I)Lokio/Segment;

    .line 3
    move-result-object v0

    .line 6
    iget v1, v0, Lokio/Segment;->limit:I

    .line 7
    add-int/lit8 v2, v1, 0x1

    .line 9
    ushr-int/lit8 v3, p1, 0x18

    .line 11
    and-int/lit16 v3, v3, 0xff

    .line 13
    int-to-byte v3, v3

    .line 15
    iget-object v4, v0, Lokio/Segment;->data:[B

    .line 16
    aput-byte v3, v4, v1

    .line 18
    add-int/lit8 v1, v2, 0x1

    .line 20
    ushr-int/lit8 v3, p1, 0x10

    .line 22
    and-int/lit16 v3, v3, 0xff

    .line 24
    int-to-byte v3, v3

    .line 26
    aput-byte v3, v4, v2

    .line 27
    add-int/lit8 v2, v1, 0x1

    .line 29
    ushr-int/lit8 v3, p1, 0x8

    .line 31
    and-int/lit16 v3, v3, 0xff

    .line 33
    int-to-byte v3, v3

    .line 35
    aput-byte v3, v4, v1

    .line 36
    add-int/lit8 v1, v2, 0x1

    .line 38
    and-int/lit16 p1, p1, 0xff

    .line 40
    int-to-byte p1, p1

    .line 42
    aput-byte p1, v4, v2

    .line 43
    iput v1, v0, Lokio/Segment;->limit:I

    .line 45
    iget-wide v0, p0, Lokio/Buffer;->size:J

    .line 47
    const-wide/16 v2, 0x4

    .line 49
    add-long/2addr v0, v2

    .line 51
    iput-wide v0, p0, Lokio/Buffer;->size:J

    .line 52
    return-void
    .line 54
.end method

.method public final writeUtf8(IILjava/lang/String;)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_f

    if-lt p2, p1, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    if-eqz v2, :cond_e

    .line 1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-gt p2, v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    if-eqz v2, :cond_d

    :goto_3
    if-ge p1, p2, :cond_c

    .line 2
    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_4

    .line 3
    invoke-virtual {p0, v1}, Lokio/Buffer;->writableSegment$external__okio__android_common__okio_lib(I)Lokio/Segment;

    move-result-object v4

    .line 4
    iget v5, v4, Lokio/Segment;->limit:I

    sub-int/2addr v5, p1

    rsub-int v6, v5, 0x2000

    .line 5
    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/lit8 v7, p1, 0x1

    add-int/2addr p1, v5

    int-to-byte v2, v2

    .line 6
    iget-object v8, v4, Lokio/Segment;->data:[B

    aput-byte v2, v8, p1

    :goto_4
    move p1, v7

    if-ge p1, v6, :cond_3

    .line 7
    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ge v2, v3, :cond_3

    add-int/lit8 v7, p1, 0x1

    add-int/2addr p1, v5

    int-to-byte v2, v2

    .line 8
    aput-byte v2, v8, p1

    goto :goto_4

    :cond_3
    add-int/2addr v5, p1

    .line 9
    iget v2, v4, Lokio/Segment;->limit:I

    sub-int/2addr v5, v2

    add-int/2addr v2, v5

    .line 10
    iput v2, v4, Lokio/Segment;->limit:I

    .line 11
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v4, v5

    add-long/2addr v2, v4

    .line 12
    iput-wide v2, p0, Lokio/Buffer;->size:J

    goto :goto_3

    :cond_4
    const/16 v4, 0x800

    if-ge v2, v4, :cond_5

    const/4 v4, 0x2

    .line 13
    invoke-virtual {p0, v4}, Lokio/Buffer;->writableSegment$external__okio__android_common__okio_lib(I)Lokio/Segment;

    move-result-object v5

    .line 14
    iget v6, v5, Lokio/Segment;->limit:I

    shr-int/lit8 v7, v2, 0x6

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    iget-object v8, v5, Lokio/Segment;->data:[B

    aput-byte v7, v8, v6

    add-int/lit8 v7, v6, 0x1

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 15
    aput-byte v2, v8, v7

    add-int/2addr v6, v4

    .line 16
    iput v6, v5, Lokio/Segment;->limit:I

    .line 17
    iget-wide v2, p0, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    .line 18
    iput-wide v2, p0, Lokio/Buffer;->size:J

    goto/16 :goto_9

    :cond_5
    const v4, 0xd800

    const/16 v5, 0x3f

    if-lt v2, v4, :cond_b

    const v4, 0xdfff

    if-le v2, v4, :cond_6

    goto :goto_8

    :cond_6
    add-int/lit8 v4, p1, 0x1

    if-ge v4, p2, :cond_7

    .line 19
    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_5

    :cond_7
    move v6, v0

    :goto_5
    const v7, 0xdbff

    if-gt v2, v7, :cond_a

    const v7, 0xdc00

    if-gt v7, v6, :cond_8

    const v7, 0xe000

    if-ge v6, v7, :cond_8

    move v7, v1

    goto :goto_6

    :cond_8
    move v7, v0

    :goto_6
    if-nez v7, :cond_9

    goto :goto_7

    :cond_9
    and-int/lit16 v2, v2, 0x3ff

    shl-int/lit8 v2, v2, 0xa

    and-int/lit16 v4, v6, 0x3ff

    or-int/2addr v2, v4

    const/high16 v4, 0x10000

    add-int/2addr v2, v4

    const/4 v4, 0x4

    .line 20
    invoke-virtual {p0, v4}, Lokio/Buffer;->writableSegment$external__okio__android_common__okio_lib(I)Lokio/Segment;

    move-result-object v6

    .line 21
    iget v7, v6, Lokio/Segment;->limit:I

    shr-int/lit8 v8, v2, 0x12

    or-int/lit16 v8, v8, 0xf0

    int-to-byte v8, v8

    iget-object v9, v6, Lokio/Segment;->data:[B

    aput-byte v8, v9, v7

    add-int/lit8 v8, v7, 0x1

    shr-int/lit8 v10, v2, 0xc

    and-int/2addr v10, v5

    or-int/2addr v10, v3

    int-to-byte v10, v10

    .line 22
    aput-byte v10, v9, v8

    add-int/lit8 v8, v7, 0x2

    shr-int/lit8 v10, v2, 0x6

    and-int/2addr v10, v5

    or-int/2addr v10, v3

    int-to-byte v10, v10

    .line 23
    aput-byte v10, v9, v8

    add-int/lit8 v8, v7, 0x3

    and-int/2addr v2, v5

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 24
    aput-byte v2, v9, v8

    add-int/2addr v7, v4

    .line 25
    iput v7, v6, Lokio/Segment;->limit:I

    .line 26
    iget-wide v2, p0, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    .line 27
    iput-wide v2, p0, Lokio/Buffer;->size:J

    add-int/lit8 p1, p1, 0x2

    goto/16 :goto_3

    .line 28
    :cond_a
    :goto_7
    invoke-virtual {p0, v5}, Lokio/Buffer;->writeByte(I)V

    move p1, v4

    goto/16 :goto_3

    :cond_b
    :goto_8
    const/4 v4, 0x3

    .line 29
    invoke-virtual {p0, v4}, Lokio/Buffer;->writableSegment$external__okio__android_common__okio_lib(I)Lokio/Segment;

    move-result-object v6

    .line 30
    iget v7, v6, Lokio/Segment;->limit:I

    shr-int/lit8 v8, v2, 0xc

    or-int/lit16 v8, v8, 0xe0

    int-to-byte v8, v8

    iget-object v9, v6, Lokio/Segment;->data:[B

    aput-byte v8, v9, v7

    add-int/lit8 v8, v7, 0x1

    shr-int/lit8 v10, v2, 0x6

    and-int/2addr v5, v10

    or-int/2addr v5, v3

    int-to-byte v5, v5

    .line 31
    aput-byte v5, v9, v8

    add-int/lit8 v5, v7, 0x2

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 32
    aput-byte v2, v9, v5

    add-int/2addr v7, v4

    .line 33
    iput v7, v6, Lokio/Segment;->limit:I

    .line 34
    iget-wide v2, p0, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x3

    add-long/2addr v2, v4

    .line 35
    iput-wide v2, p0, Lokio/Buffer;->size:J

    :goto_9
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_3

    :cond_c
    return-void

    .line 36
    :cond_d
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    const-string p1, "endIndex > string.length: "

    const-string p3, " > "

    .line 37
    invoke-static {p1, p2, p3, p0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 38
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    const-string p0, "endIndex < beginIndex: "

    const-string p3, " < "

    .line 39
    invoke-static {p0, p2, p3, p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 40
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    const-string p0, "beginIndex < 0: "

    .line 41
    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 42
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
