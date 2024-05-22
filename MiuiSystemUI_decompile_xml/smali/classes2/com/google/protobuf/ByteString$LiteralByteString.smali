.class Lcom/google/protobuf/ByteString$LiteralByteString;
.super Lcom/google/protobuf/ByteString$LeafByteString;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final bytes:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/ByteString$LeafByteString;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 8
    return-void
    .line 10
.end method


# virtual methods
.method public byteAt(I)B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 2
    aget-byte p0, p0, p1

    .line 4
    return p0
    .line 6
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/protobuf/ByteString;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->size()I

    .line 12
    move-result v1

    .line 15
    move-object v3, p1

    .line 16
    check-cast v3, Lcom/google/protobuf/ByteString;

    .line 17
    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->size()I

    .line 19
    move-result v3

    .line 22
    if-eq v1, v3, :cond_2

    .line 23
    return v2

    .line 25
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->size()I

    .line 26
    move-result v1

    .line 29
    if-nez v1, :cond_3

    .line 30
    return v0

    .line 32
    :cond_3
    instance-of v1, p1, Lcom/google/protobuf/ByteString$LiteralByteString;

    .line 33
    if-eqz v1, :cond_9

    .line 35
    check-cast p1, Lcom/google/protobuf/ByteString$LiteralByteString;

    .line 37
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->peekCachedHashCode()I

    .line 39
    move-result v1

    .line 42
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->peekCachedHashCode()I

    .line 43
    move-result v3

    .line 46
    if-eqz v1, :cond_4

    .line 47
    if-eqz v3, :cond_4

    .line 49
    if-eq v1, v3, :cond_4

    .line 51
    return v2

    .line 53
    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->size()I

    .line 54
    move-result v1

    .line 57
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString$LiteralByteString;->size()I

    .line 58
    move-result v3

    .line 61
    if-gt v1, v3, :cond_8

    .line 62
    add-int v3, v2, v1

    .line 64
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString$LiteralByteString;->size()I

    .line 66
    move-result v4

    .line 69
    if-gt v3, v4, :cond_7

    .line 70
    iget-object v3, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 72
    iget-object v4, p1, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 74
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    .line 76
    move-result v5

    .line 79
    add-int/2addr v5, v1

    .line 80
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    .line 81
    move-result p0

    .line 84
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    .line 85
    move-result p1

    .line 88
    add-int/2addr p1, v2

    .line 89
    :goto_0
    if-ge p0, v5, :cond_6

    .line 90
    aget-byte v1, v3, p0

    .line 92
    aget-byte v6, v4, p1

    .line 94
    if-eq v1, v6, :cond_5

    .line 96
    move v0, v2

    .line 98
    goto :goto_1

    .line 99
    :cond_5
    add-int/lit8 p0, p0, 0x1

    .line 100
    add-int/lit8 p1, p1, 0x1

    .line 102
    goto :goto_0

    .line 104
    :cond_6
    :goto_1
    return v0

    .line 105
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 106
    const-string v0, "Ran off end of other: 0, "

    .line 108
    const-string v2, ", "

    .line 110
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    move-result-object v0

    .line 115
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString$LiteralByteString;->size()I

    .line 116
    move-result p1

    .line 119
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object p1

    .line 126
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 127
    throw p0

    .line 130
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    .line 133
    const-string v2, "Length too large: "

    .line 135
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->size()I

    .line 143
    move-result p0

    .line 146
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    move-result-object p0

    .line 153
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 154
    throw p1

    .line 157
    :cond_9
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 158
    move-result p0

    .line 161
    return p0
    .line 162
.end method

.method public getOffsetIntoBytes()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public internalByteAt(I)B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 2
    aget-byte p0, p0, p1

    .line 4
    return p0
    .line 6
.end method

.method public size()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 2
    array-length p0, p0

    .line 4
    return p0
    .line 5
.end method
