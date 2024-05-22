.class public final Lokio/SegmentedByteString;
.super Lokio/ByteString;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final transient directory:[I

.field public final transient segments:[[B


# direct methods
.method public constructor <init>([[B[I)V
    .locals 1

    .line 1
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 2
    invoke-virtual {v0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    .line 4
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lokio/ByteString;-><init>([B)V

    .line 8
    iput-object p1, p0, Lokio/SegmentedByteString;->segments:[[B

    .line 11
    iput-object p2, p0, Lokio/SegmentedByteString;->directory:[I

    .line 13
    return-void
    .line 15
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lokio/ByteString;

    .line 2
    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteArray()[B

    .line 4
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    .line 8
    return-object v0
    .line 11
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lokio/ByteString;

    .line 5
    if-eqz v0, :cond_1

    .line 7
    check-cast p1, Lokio/ByteString;

    .line 9
    invoke-virtual {p1}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    .line 11
    move-result v0

    .line 14
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSize$external__okio__android_common__okio_lib()I

    .line 15
    move-result v1

    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSize$external__okio__android_common__okio_lib()I

    .line 21
    move-result v0

    .line 24
    invoke-virtual {p0, p1, v0}, Lokio/SegmentedByteString;->rangeEquals(Lokio/ByteString;I)Z

    .line 25
    move-result p0

    .line 28
    if-eqz p0, :cond_1

    .line 29
    :goto_0
    const/4 p0, 0x1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 p0, 0x0

    .line 33
    :goto_1
    return p0
    .line 34
.end method

.method public final getSize$external__okio__android_common__okio_lib()I
    .locals 1

    .line 1
    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    .line 2
    iget-object p0, p0, Lokio/SegmentedByteString;->segments:[[B

    .line 4
    array-length p0, p0

    .line 6
    add-int/lit8 p0, p0, -0x1

    .line 7
    aget p0, v0, p0

    .line 9
    return p0
    .line 11
.end method

.method public final hashCode()I
    .locals 8

    .line 1
    iget v0, p0, Lokio/ByteString;->hashCode:I

    .line 2
    if-eqz v0, :cond_0

    .line 4
    goto :goto_2

    .line 6
    :cond_0
    iget-object v0, p0, Lokio/SegmentedByteString;->segments:[[B

    .line 7
    array-length v0, v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    move v3, v1

    .line 12
    :goto_0
    if-ge v1, v0, :cond_2

    .line 13
    iget-object v4, p0, Lokio/SegmentedByteString;->directory:[I

    .line 15
    add-int v5, v0, v1

    .line 17
    aget v5, v4, v5

    .line 19
    aget v4, v4, v1

    .line 21
    iget-object v6, p0, Lokio/SegmentedByteString;->segments:[[B

    .line 23
    aget-object v6, v6, v1

    .line 25
    sub-int v3, v4, v3

    .line 27
    add-int/2addr v3, v5

    .line 29
    :goto_1
    if-ge v5, v3, :cond_1

    .line 30
    mul-int/lit8 v2, v2, 0x1f

    .line 32
    aget-byte v7, v6, v5

    .line 34
    add-int/2addr v2, v7

    .line 36
    add-int/lit8 v5, v5, 0x1

    .line 37
    goto :goto_1

    .line 39
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 40
    move v3, v4

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    iput v2, p0, Lokio/ByteString;->hashCode:I

    .line 44
    move v0, v2

    .line 46
    :goto_2
    return v0
    .line 47
.end method

.method public final hex()Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Lokio/ByteString;

    .line 2
    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteArray()[B

    .line 4
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    .line 8
    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 14
    return-object p0
    .line 15
.end method

.method public final internalArray$external__okio__android_common__okio_lib()[B
    .locals 0

    .line 1
    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteArray()[B

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public final internalGet$external__okio__android_common__okio_lib(I)B
    .locals 7

    .line 1
    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    .line 2
    iget-object v1, p0, Lokio/SegmentedByteString;->segments:[[B

    .line 4
    array-length v1, v1

    .line 6
    add-int/lit8 v1, v1, -0x1

    .line 7
    aget v0, v0, v1

    .line 9
    int-to-long v1, v0

    .line 11
    int-to-long v3, p1

    .line 12
    const-wide/16 v5, 0x1

    .line 13
    invoke-static/range {v1 .. v6}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 15
    invoke-static {p0, p1}, Lokio/internal/SegmentedByteStringKt;->segment(Lokio/SegmentedByteString;I)I

    .line 18
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    const/4 v1, 0x0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v1, p0, Lokio/SegmentedByteString;->directory:[I

    .line 26
    add-int/lit8 v2, v0, -0x1

    .line 28
    aget v1, v1, v2

    .line 30
    :goto_0
    iget-object v2, p0, Lokio/SegmentedByteString;->directory:[I

    .line 32
    iget-object p0, p0, Lokio/SegmentedByteString;->segments:[[B

    .line 34
    array-length v3, p0

    .line 36
    add-int/2addr v3, v0

    .line 37
    aget v2, v2, v3

    .line 38
    aget-object p0, p0, v0

    .line 40
    sub-int/2addr p1, v1

    .line 42
    add-int/2addr p1, v2

    .line 43
    aget-byte p0, p0, p1

    .line 44
    return p0
    .line 46
.end method

.method public final rangeEquals(III[B)Z
    .locals 9

    const/4 v0, 0x0

    if-ltz p1, :cond_6

    .line 1
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v1

    sub-int/2addr v1, p3

    if-gt p1, v1, :cond_6

    if-ltz p2, :cond_6

    .line 2
    array-length v1, p4

    sub-int/2addr v1, p3

    if-le p2, v1, :cond_0

    goto :goto_4

    :cond_0
    add-int/2addr p3, p1

    .line 3
    invoke-static {p0, p1}, Lokio/internal/SegmentedByteStringKt;->segment(Lokio/SegmentedByteString;I)I

    move-result v1

    :goto_0
    const/4 v2, 0x1

    if-ge p1, p3, :cond_5

    if-nez v1, :cond_1

    move v3, v0

    goto :goto_1

    .line 4
    :cond_1
    iget-object v3, p0, Lokio/SegmentedByteString;->directory:[I

    add-int/lit8 v4, v1, -0x1

    .line 5
    aget v3, v3, v4

    .line 6
    :goto_1
    iget-object v4, p0, Lokio/SegmentedByteString;->directory:[I

    .line 7
    aget v5, v4, v1

    sub-int/2addr v5, v3

    .line 8
    iget-object v6, p0, Lokio/SegmentedByteString;->segments:[[B

    .line 9
    array-length v6, v6

    add-int/2addr v6, v1

    aget v4, v4, v6

    add-int/2addr v5, v3

    .line 10
    invoke-static {p3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int/2addr v5, p1

    sub-int v3, p1, v3

    add-int/2addr v3, v4

    .line 11
    iget-object v4, p0, Lokio/SegmentedByteString;->segments:[[B

    .line 12
    aget-object v4, v4, v1

    move v6, v0

    :goto_2
    if-ge v6, v5, :cond_3

    add-int v7, v6, v3

    .line 13
    aget-byte v7, v4, v7

    add-int v8, v6, p2

    aget-byte v8, p4, v8

    if-eq v7, v8, :cond_2

    move v2, v0

    goto :goto_3

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    add-int/2addr p2, v5

    add-int/2addr p1, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    move v0, v2

    :cond_6
    :goto_4
    return v0
.end method

.method public final rangeEquals(Lokio/ByteString;I)Z
    .locals 8

    .line 14
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v0

    sub-int/2addr v0, p2

    const/4 v1, 0x0

    if-gez v0, :cond_0

    goto :goto_2

    :cond_0
    add-int/2addr p2, v1

    .line 15
    invoke-static {p0, v1}, Lokio/internal/SegmentedByteStringKt;->segment(Lokio/SegmentedByteString;I)I

    move-result v0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, p2, :cond_3

    if-nez v0, :cond_1

    move v4, v1

    goto :goto_1

    .line 16
    :cond_1
    iget-object v4, p0, Lokio/SegmentedByteString;->directory:[I

    add-int/lit8 v5, v0, -0x1

    .line 17
    aget v4, v4, v5

    .line 18
    :goto_1
    iget-object v5, p0, Lokio/SegmentedByteString;->directory:[I

    .line 19
    aget v6, v5, v0

    sub-int/2addr v6, v4

    .line 20
    iget-object v7, p0, Lokio/SegmentedByteString;->segments:[[B

    .line 21
    array-length v7, v7

    add-int/2addr v7, v0

    aget v5, v5, v7

    add-int/2addr v6, v4

    .line 22
    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int/2addr v6, v2

    sub-int v4, v2, v4

    add-int/2addr v4, v5

    .line 23
    iget-object v5, p0, Lokio/SegmentedByteString;->segments:[[B

    .line 24
    aget-object v5, v5, v0

    .line 25
    invoke-virtual {p1, v3, v4, v6, v5}, Lokio/ByteString;->rangeEquals(III[B)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/2addr v3, v6

    add-int/2addr v2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    :goto_2
    return v1
.end method

.method public final toByteArray()[B
    .locals 9

    .line 1
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSize$external__okio__android_common__okio_lib()I

    .line 2
    move-result v0

    .line 5
    new-array v0, v0, [B

    .line 6
    iget-object v1, p0, Lokio/SegmentedByteString;->segments:[[B

    .line 8
    array-length v1, v1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    move v4, v3

    .line 13
    :goto_0
    if-ge v2, v1, :cond_0

    .line 14
    iget-object v5, p0, Lokio/SegmentedByteString;->directory:[I

    .line 16
    add-int v6, v1, v2

    .line 18
    aget v6, v5, v6

    .line 20
    aget v5, v5, v2

    .line 22
    iget-object v7, p0, Lokio/SegmentedByteString;->segments:[[B

    .line 24
    aget-object v7, v7, v2

    .line 26
    sub-int v3, v5, v3

    .line 28
    add-int v8, v6, v3

    .line 30
    sub-int/2addr v8, v6

    .line 32
    invoke-static {v7, v6, v0, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    add-int/2addr v4, v3

    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 37
    move v3, v5

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    return-object v0
    .line 41
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Lokio/ByteString;

    .line 2
    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteArray()[B

    .line 4
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    .line 8
    invoke-virtual {v0}, Lokio/ByteString;->toString()Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 14
    return-object p0
    .line 15
.end method
