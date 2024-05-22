.class public abstract Landroidx/emoji2/text/MetadataListReader;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static read(Ljava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataList;
    .locals 13

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    .line 2
    move-result-object p0

    .line 5
    new-instance v0, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;

    .line 6
    invoke-direct {v0, p0}, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;-><init>(Ljava/nio/ByteBuffer;)V

    .line 8
    const/4 v1, 0x4

    .line 11
    invoke-virtual {v0, v1}, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->skip(I)V

    .line 12
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 15
    move-result v2

    .line 18
    const v3, 0xffff

    .line 19
    and-int/2addr v2, v3

    .line 22
    const/16 v3, 0x64

    .line 23
    const-string v4, "Cannot read metadata."

    .line 25
    if-gt v2, v3, :cond_5

    .line 27
    const/4 v3, 0x6

    .line 29
    invoke-virtual {v0, v3}, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->skip(I)V

    .line 30
    const/4 v3, 0x0

    .line 33
    move v5, v3

    .line 34
    :goto_0
    iget-object v6, v0, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 35
    const-wide/16 v7, -0x1

    .line 37
    if-ge v5, v2, :cond_1

    .line 39
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    .line 41
    move-result v9

    .line 44
    invoke-virtual {v0, v1}, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->skip(I)V

    .line 45
    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->readUnsignedInt()J

    .line 48
    move-result-wide v10

    .line 51
    invoke-virtual {v0, v1}, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->skip(I)V

    .line 52
    const v12, 0x6d657461

    .line 55
    if-ne v12, v9, :cond_0

    .line 58
    goto :goto_1

    .line 60
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 61
    goto :goto_0

    .line 63
    :cond_1
    move-wide v10, v7

    .line 64
    :goto_1
    cmp-long v1, v10, v7

    .line 65
    if-eqz v1, :cond_4

    .line 67
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    .line 69
    move-result v1

    .line 72
    int-to-long v1, v1

    .line 73
    sub-long v1, v10, v1

    .line 74
    long-to-int v1, v1

    .line 76
    invoke-virtual {v0, v1}, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->skip(I)V

    .line 77
    const/16 v1, 0xc

    .line 80
    invoke-virtual {v0, v1}, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->skip(I)V

    .line 82
    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->readUnsignedInt()J

    .line 85
    move-result-wide v1

    .line 88
    :goto_2
    int-to-long v7, v3

    .line 89
    cmp-long v5, v7, v1

    .line 90
    if-gez v5, :cond_4

    .line 92
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    .line 94
    move-result v5

    .line 97
    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->readUnsignedInt()J

    .line 98
    move-result-wide v7

    .line 101
    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->readUnsignedInt()J

    .line 102
    const v9, 0x456d6a69

    .line 105
    if-eq v9, v5, :cond_3

    .line 108
    const v9, 0x656d6a69

    .line 110
    if-ne v9, v5, :cond_2

    .line 113
    goto :goto_3

    .line 115
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 116
    goto :goto_2

    .line 118
    :cond_3
    :goto_3
    add-long/2addr v7, v10

    .line 119
    long-to-int v0, v7

    .line 120
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 121
    new-instance v0, Landroidx/emoji2/text/flatbuffer/MetadataList;

    .line 124
    invoke-direct {v0}, Landroidx/emoji2/text/flatbuffer/MetadataList;-><init>()V

    .line 126
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 129
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 131
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    .line 134
    move-result v1

    .line 137
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 138
    move-result v1

    .line 141
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    .line 142
    move-result v2

    .line 145
    add-int/2addr v2, v1

    .line 146
    invoke-virtual {v0, v2, p0}, Landroidx/emoji2/text/flatbuffer/Table;->__reset(ILjava/nio/ByteBuffer;)V

    .line 147
    return-object v0

    .line 150
    :cond_4
    new-instance p0, Ljava/io/IOException;

    .line 151
    invoke-direct {p0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 153
    throw p0

    .line 156
    :cond_5
    new-instance p0, Ljava/io/IOException;

    .line 157
    invoke-direct {p0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 159
    throw p0
    .line 162
.end method
