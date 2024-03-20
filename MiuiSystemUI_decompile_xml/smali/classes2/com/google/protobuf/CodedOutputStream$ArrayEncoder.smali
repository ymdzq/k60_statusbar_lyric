.class public final Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;
.super Lcom/google/protobuf/ByteOutput;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final HAS_UNSAFE_ARRAY_OPERATIONS:Z

.field public static final logger:Ljava/util/logging/Logger;


# instance fields
.field public final buffer:[B

.field public final limit:I

.field public position:I

.field public wrapper:Lcom/google/protobuf/CodedOutputStreamWriter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    move-result-object v0

    .line 11
    sput-object v0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->logger:Ljava/util/logging/Logger;

    .line 12
    sget-boolean v0, Lcom/google/protobuf/UnsafeUtil;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    .line 14
    sput-boolean v0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    .line 16
    return-void
    .line 18
.end method

.method public constructor <init>([BI)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/ByteOutput;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    or-int v1, v0, p2

    .line 6
    array-length v2, p1

    .line 8
    add-int v3, v0, p2

    .line 9
    sub-int/2addr v2, v3

    .line 11
    or-int/2addr v1, v2

    .line 12
    if-ltz v1, :cond_0

    .line 13
    iput-object p1, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    .line 15
    iput v0, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 17
    iput v3, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    .line 19
    return-void

    .line 21
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 22
    array-length p1, p1

    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object p1

    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object v0

    .line 32
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object p2

    .line 36
    filled-new-array {p1, v0, p2}, [Ljava/lang/Object;

    .line 37
    move-result-object p1

    .line 40
    const-string p2, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    .line 41
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 46
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    throw p0
    .line 50
.end method

.method public static computeBytesSize(ILcom/google/protobuf/ByteString;)I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 2
    move-result p0

    .line 5
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    .line 6
    move-result p1

    .line 9
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    .line 10
    move-result v0

    .line 13
    add-int/2addr v0, p1

    .line 14
    add-int/2addr v0, p0

    .line 15
    return v0
    .line 16
.end method

.method public static computeFixed32Size(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 2
    move-result p0

    .line 5
    add-int/lit8 p0, p0, 0x4

    .line 6
    return p0
    .line 8
.end method

.method public static computeFixed64Size(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 2
    move-result p0

    .line 5
    add-int/lit8 p0, p0, 0x8

    .line 6
    return p0
    .line 8
.end method

.method public static computeGroupSize(ILcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 2
    move-result p0

    .line 5
    mul-int/lit8 p0, p0, 0x2

    .line 6
    check-cast p1, Lcom/google/protobuf/AbstractMessageLite;

    .line 8
    invoke-virtual {p1, p2}, Lcom/google/protobuf/AbstractMessageLite;->getSerializedSize(Lcom/google/protobuf/Schema;)I

    .line 10
    move-result p1

    .line 13
    add-int/2addr p1, p0

    .line 14
    return p1
    .line 15
.end method

.method public static computeInt32SizeNoTag(I)I
    .locals 0

    .line 1
    if-ltz p0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    .line 4
    move-result p0

    .line 7
    return p0

    .line 8
    :cond_0
    const/16 p0, 0xa

    .line 9
    return p0
    .line 11
.end method

.method public static computeStringSizeNoTag(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/protobuf/Utf8;->encodedLength(Ljava/lang/CharSequence;)I

    .line 2
    move-result p0
    :try_end_0
    .catch Lcom/google/protobuf/Utf8$UnpairedSurrogateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    goto :goto_0

    .line 6
    :catch_0
    sget-object v0, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 9
    move-result-object p0

    .line 12
    array-length p0, p0

    .line 13
    :goto_0
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    .line 14
    move-result v0

    .line 17
    add-int/2addr v0, p0

    .line 18
    return v0
    .line 19
.end method

.method public static computeTagSize(I)I
    .locals 0

    .line 1
    shl-int/lit8 p0, p0, 0x3

    .line 2
    or-int/lit8 p0, p0, 0x0

    .line 4
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method

.method public static computeUInt32SizeNoTag(I)I
    .locals 1

    .line 1
    and-int/lit8 v0, p0, -0x80

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    and-int/lit16 v0, p0, -0x4000

    .line 8
    if-nez v0, :cond_1

    .line 10
    const/4 p0, 0x2

    .line 12
    return p0

    .line 13
    :cond_1
    const/high16 v0, -0x200000

    .line 14
    and-int/2addr v0, p0

    .line 16
    if-nez v0, :cond_2

    .line 17
    const/4 p0, 0x3

    .line 19
    return p0

    .line 20
    :cond_2
    const/high16 v0, -0x10000000

    .line 21
    and-int/2addr p0, v0

    .line 23
    if-nez p0, :cond_3

    .line 24
    const/4 p0, 0x4

    .line 26
    return p0

    .line 27
    :cond_3
    const/4 p0, 0x5

    .line 28
    return p0
    .line 29
.end method

.method public static computeUInt64SizeNoTag(J)I
    .locals 6

    .line 1
    const-wide/16 v0, -0x80

    .line 2
    and-long/2addr v0, p0

    .line 4
    const-wide/16 v2, 0x0

    .line 5
    cmp-long v0, v0, v2

    .line 7
    if-nez v0, :cond_0

    .line 9
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_0
    cmp-long v0, p0, v2

    .line 13
    if-gez v0, :cond_1

    .line 15
    const/16 p0, 0xa

    .line 17
    return p0

    .line 19
    :cond_1
    const-wide v0, -0x800000000L

    .line 20
    and-long/2addr v0, p0

    .line 25
    cmp-long v0, v0, v2

    .line 26
    if-eqz v0, :cond_2

    .line 28
    const/16 v0, 0x1c

    .line 30
    ushr-long/2addr p0, v0

    .line 32
    const/4 v0, 0x6

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/4 v0, 0x2

    .line 35
    :goto_0
    const-wide/32 v4, -0x200000

    .line 36
    and-long/2addr v4, p0

    .line 39
    cmp-long v1, v4, v2

    .line 40
    if-eqz v1, :cond_3

    .line 42
    add-int/lit8 v0, v0, 0x2

    .line 44
    const/16 v1, 0xe

    .line 46
    ushr-long/2addr p0, v1

    .line 48
    :cond_3
    const-wide/16 v4, -0x4000

    .line 49
    and-long/2addr p0, v4

    .line 51
    cmp-long p0, p0, v2

    .line 52
    if-eqz p0, :cond_4

    .line 54
    add-int/lit8 v0, v0, 0x1

    .line 56
    :cond_4
    return v0
    .line 58
.end method


# virtual methods
.method public final write(B)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    aput-byte p1, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final write([BII)V
    .locals 2

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget p1, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6
    new-instance p2, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {v0, p0, p3}, [Ljava/lang/Object;

    move-result-object p0

    const-string p3, "Pos: %d, limit: %d, len: %d"

    invoke-static {p3, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final writeBytesNoTag(Lcom/google/protobuf/ByteString;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 6
    check-cast p1, Lcom/google/protobuf/ByteString$LiteralByteString;

    .line 9
    iget-object v0, p1, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 11
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    .line 13
    move-result v1

    .line 16
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString$LiteralByteString;->size()I

    .line 17
    move-result p1

    .line 20
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->write([BII)V

    .line 21
    return-void
    .line 24
.end method

.method public final writeFixed32(II)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeFixed32NoTag(I)V

    .line 6
    return-void
    .line 9
.end method

.method public final writeFixed32NoTag(I)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    .line 2
    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 4
    add-int/lit8 v2, v1, 0x1

    .line 6
    and-int/lit16 v3, p1, 0xff

    .line 8
    int-to-byte v3, v3

    .line 10
    aput-byte v3, v0, v1

    .line 11
    add-int/lit8 v1, v2, 0x1

    .line 13
    shr-int/lit8 v3, p1, 0x8

    .line 15
    and-int/lit16 v3, v3, 0xff

    .line 17
    int-to-byte v3, v3

    .line 19
    aput-byte v3, v0, v2

    .line 20
    add-int/lit8 v2, v1, 0x1

    .line 22
    shr-int/lit8 v3, p1, 0x10

    .line 24
    and-int/lit16 v3, v3, 0xff

    .line 26
    int-to-byte v3, v3

    .line 28
    aput-byte v3, v0, v1

    .line 29
    add-int/lit8 v1, v2, 0x1

    .line 31
    iput v1, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 33
    shr-int/lit8 p1, p1, 0x18

    .line 35
    and-int/lit16 p1, p1, 0xff

    .line 37
    int-to-byte p1, p1

    .line 39
    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    return-void

    .line 42
    :catch_0
    move-exception p1

    .line 43
    new-instance v0, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    .line 44
    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object v1

    .line 51
    iget p0, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    .line 52
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object p0

    .line 57
    const/4 v2, 0x1

    .line 58
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object v2

    .line 62
    filled-new-array {v1, p0, v2}, [Ljava/lang/Object;

    .line 63
    move-result-object p0

    .line 66
    const-string v1, "Pos: %d, limit: %d, len: %d"

    .line 67
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    move-result-object p0

    .line 72
    invoke-direct {v0, p0, p1}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    throw v0
    .line 76
.end method

.method public final writeFixed64(IJ)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeFixed64NoTag(J)V

    .line 6
    return-void
    .line 9
.end method

.method public final writeFixed64NoTag(J)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    .line 2
    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 4
    add-int/lit8 v2, v1, 0x1

    .line 6
    long-to-int v3, p1

    .line 8
    and-int/lit16 v3, v3, 0xff

    .line 9
    int-to-byte v3, v3

    .line 11
    aput-byte v3, v0, v1

    .line 12
    add-int/lit8 v1, v2, 0x1

    .line 14
    const/16 v3, 0x8

    .line 16
    shr-long v3, p1, v3

    .line 18
    long-to-int v3, v3

    .line 20
    and-int/lit16 v3, v3, 0xff

    .line 21
    int-to-byte v3, v3

    .line 23
    aput-byte v3, v0, v2

    .line 24
    add-int/lit8 v2, v1, 0x1

    .line 26
    const/16 v3, 0x10

    .line 28
    shr-long v3, p1, v3

    .line 30
    long-to-int v3, v3

    .line 32
    and-int/lit16 v3, v3, 0xff

    .line 33
    int-to-byte v3, v3

    .line 35
    aput-byte v3, v0, v1

    .line 36
    add-int/lit8 v1, v2, 0x1

    .line 38
    const/16 v3, 0x18

    .line 40
    shr-long v3, p1, v3

    .line 42
    long-to-int v3, v3

    .line 44
    and-int/lit16 v3, v3, 0xff

    .line 45
    int-to-byte v3, v3

    .line 47
    aput-byte v3, v0, v2

    .line 48
    add-int/lit8 v2, v1, 0x1

    .line 50
    const/16 v3, 0x20

    .line 52
    shr-long v3, p1, v3

    .line 54
    long-to-int v3, v3

    .line 56
    and-int/lit16 v3, v3, 0xff

    .line 57
    int-to-byte v3, v3

    .line 59
    aput-byte v3, v0, v1

    .line 60
    add-int/lit8 v1, v2, 0x1

    .line 62
    const/16 v3, 0x28

    .line 64
    shr-long v3, p1, v3

    .line 66
    long-to-int v3, v3

    .line 68
    and-int/lit16 v3, v3, 0xff

    .line 69
    int-to-byte v3, v3

    .line 71
    aput-byte v3, v0, v2

    .line 72
    add-int/lit8 v2, v1, 0x1

    .line 74
    const/16 v3, 0x30

    .line 76
    shr-long v3, p1, v3

    .line 78
    long-to-int v3, v3

    .line 80
    and-int/lit16 v3, v3, 0xff

    .line 81
    int-to-byte v3, v3

    .line 83
    aput-byte v3, v0, v1

    .line 84
    add-int/lit8 v1, v2, 0x1

    .line 86
    iput v1, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 88
    const/16 v1, 0x38

    .line 90
    shr-long/2addr p1, v1

    .line 92
    long-to-int p1, p1

    .line 93
    and-int/lit16 p1, p1, 0xff

    .line 94
    int-to-byte p1, p1

    .line 96
    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    return-void

    .line 99
    :catch_0
    move-exception p1

    .line 100
    new-instance p2, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    .line 101
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 103
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    move-result-object v0

    .line 108
    iget p0, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    .line 109
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    move-result-object p0

    .line 114
    const/4 v1, 0x1

    .line 115
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    move-result-object v1

    .line 119
    filled-new-array {v0, p0, v1}, [Ljava/lang/Object;

    .line 120
    move-result-object p0

    .line 123
    const-string v0, "Pos: %d, limit: %d, len: %d"

    .line 124
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 126
    move-result-object p0

    .line 129
    invoke-direct {p2, p0, p1}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    throw p2
    .line 133
.end method

.method public final writeInt32NoTag(I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 4
    goto :goto_0

    .line 7
    :cond_0
    int-to-long v0, p1

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt64NoTag(J)V

    .line 9
    :goto_0
    return-void
    .line 12
.end method

.method public final writeStringNoTag(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    move-result v1

    .line 7
    mul-int/lit8 v1, v1, 0x3

    .line 8
    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    .line 10
    move-result v1

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 14
    move-result v2

    .line 17
    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    .line 18
    move-result v2
    :try_end_0
    .catch Lcom/google/protobuf/Utf8$UnpairedSurrogateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    iget v3, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    .line 22
    iget-object v4, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    .line 24
    if-ne v2, v1, :cond_0

    .line 26
    add-int v1, v0, v2

    .line 28
    :try_start_1
    iput v1, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 30
    sub-int/2addr v3, v1

    .line 32
    invoke-static {p1, v4, v1, v3}, Lcom/google/protobuf/Utf8;->encode(Ljava/lang/CharSequence;[BII)I

    .line 33
    move-result v1

    .line 36
    iput v0, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 37
    sub-int v3, v1, v0

    .line 39
    sub-int/2addr v3, v2

    .line 41
    invoke-virtual {p0, v3}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 42
    iput v1, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 45
    goto :goto_0

    .line 47
    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/Utf8;->encodedLength(Ljava/lang/CharSequence;)I

    .line 48
    move-result v1

    .line 51
    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 52
    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 55
    sub-int/2addr v3, v1

    .line 57
    invoke-static {p1, v4, v1, v3}, Lcom/google/protobuf/Utf8;->encode(Ljava/lang/CharSequence;[BII)I

    .line 58
    move-result v1

    .line 61
    iput v1, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I
    :try_end_1
    .catch Lcom/google/protobuf/Utf8$UnpairedSurrogateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 62
    goto :goto_0

    .line 64
    :catch_0
    move-exception p0

    .line 65
    new-instance p1, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    .line 66
    invoke-direct {p1, p0}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    .line 68
    throw p1

    .line 71
    :catch_1
    move-exception v1

    .line 72
    iput v0, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 73
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 75
    const-string v2, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    .line 77
    sget-object v3, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->logger:Ljava/util/logging/Logger;

    .line 79
    invoke-virtual {v3, v0, v2, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    sget-object v0, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 86
    move-result-object p1

    .line 89
    :try_start_2
    array-length v0, p1

    .line 90
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 91
    array-length v0, p1

    .line 94
    const/4 v1, 0x0

    .line 95
    invoke-virtual {p0, p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->write([BII)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 96
    :goto_0
    return-void

    .line 99
    :catch_2
    move-exception p0

    .line 100
    new-instance p1, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    .line 101
    invoke-direct {p1, p0}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    .line 103
    throw p1
    .line 106
.end method

.method public final writeTag(II)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    or-int/2addr p1, p2

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 5
    return-void
    .line 8
.end method

.method public final writeUInt32NoTag(I)V
    .locals 3

    .line 1
    :goto_0
    and-int/lit8 v0, p1, -0x80

    .line 2
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    .line 4
    if-nez v0, :cond_0

    .line 6
    :try_start_0
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 8
    add-int/lit8 v2, v0, 0x1

    .line 10
    iput v2, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 12
    int-to-byte p1, p1

    .line 14
    aput-byte p1, v1, v0

    .line 15
    return-void

    .line 17
    :cond_0
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 18
    add-int/lit8 v2, v0, 0x1

    .line 20
    iput v2, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 22
    and-int/lit8 v2, p1, 0x7f

    .line 24
    or-int/lit16 v2, v2, 0x80

    .line 26
    int-to-byte v2, v2

    .line 28
    aput-byte v2, v1, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    ushr-int/lit8 p1, p1, 0x7

    .line 31
    goto :goto_0

    .line 33
    :catch_0
    move-exception p1

    .line 34
    new-instance v0, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    .line 35
    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v1

    .line 42
    iget p0, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    .line 43
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object p0

    .line 48
    const/4 v2, 0x1

    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object v2

    .line 53
    filled-new-array {v1, p0, v2}, [Ljava/lang/Object;

    .line 54
    move-result-object p0

    .line 57
    const-string v1, "Pos: %d, limit: %d, len: %d"

    .line 58
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    move-result-object p0

    .line 63
    invoke-direct {v0, p0, p1}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    throw v0
    .line 67
.end method

.method public final writeUInt64(IJ)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt64NoTag(J)V

    .line 6
    return-void
    .line 9
.end method

.method public final writeUInt64NoTag(J)V
    .locals 9

    .line 1
    const/4 v0, 0x7

    .line 2
    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    .line 3
    const-wide/16 v2, 0x0

    .line 5
    const-wide/16 v4, -0x80

    .line 7
    iget-object v6, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    .line 9
    sget-boolean v7, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    .line 11
    if-eqz v7, :cond_1

    .line 13
    iget v7, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 15
    sub-int v7, v1, v7

    .line 17
    const/16 v8, 0xa

    .line 19
    if-lt v7, v8, :cond_1

    .line 21
    :goto_0
    and-long v7, p1, v4

    .line 23
    cmp-long v1, v7, v2

    .line 25
    if-nez v1, :cond_0

    .line 27
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 29
    add-int/lit8 v1, v0, 0x1

    .line 31
    iput v1, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 33
    int-to-long v0, v0

    .line 35
    long-to-int p0, p1

    .line 36
    int-to-byte p0, p0

    .line 37
    invoke-static {v6, v0, v1, p0}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 38
    return-void

    .line 41
    :cond_0
    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 42
    add-int/lit8 v7, v1, 0x1

    .line 44
    iput v7, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 46
    int-to-long v7, v1

    .line 48
    long-to-int v1, p1

    .line 49
    and-int/lit8 v1, v1, 0x7f

    .line 50
    or-int/lit16 v1, v1, 0x80

    .line 52
    int-to-byte v1, v1

    .line 54
    invoke-static {v6, v7, v8, v1}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 55
    ushr-long/2addr p1, v0

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    :goto_1
    and-long v7, p1, v4

    .line 60
    cmp-long v7, v7, v2

    .line 62
    if-nez v7, :cond_2

    .line 64
    :try_start_0
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 66
    add-int/lit8 v2, v0, 0x1

    .line 68
    iput v2, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 70
    long-to-int p1, p1

    .line 72
    int-to-byte p1, p1

    .line 73
    aput-byte p1, v6, v0

    .line 74
    return-void

    .line 76
    :cond_2
    iget v7, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 77
    add-int/lit8 v8, v7, 0x1

    .line 79
    iput v8, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 81
    long-to-int v8, p1

    .line 83
    and-int/lit8 v8, v8, 0x7f

    .line 84
    or-int/lit16 v8, v8, 0x80

    .line 86
    int-to-byte v8, v8

    .line 88
    aput-byte v8, v6, v7
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    ushr-long/2addr p1, v0

    .line 91
    goto :goto_1

    .line 92
    :catch_0
    move-exception p1

    .line 93
    new-instance p2, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    .line 94
    iget p0, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 96
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    move-result-object p0

    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    move-result-object v0

    .line 105
    const/4 v1, 0x1

    .line 106
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    move-result-object v1

    .line 110
    filled-new-array {p0, v0, v1}, [Ljava/lang/Object;

    .line 111
    move-result-object p0

    .line 114
    const-string v0, "Pos: %d, limit: %d, len: %d"

    .line 115
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 117
    move-result-object p0

    .line 120
    invoke-direct {p2, p0, p1}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    throw p2
    .line 124
.end method
