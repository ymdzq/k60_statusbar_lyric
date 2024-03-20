.class public final Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;
.super Ljava/io/FilterOutputStream;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mByteOrder:Ljava/nio/ByteOrder;

.field public final mOutputStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2
    iput-object p1, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    .line 5
    iput-object p2, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final write([B)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public final write([BII)V
    .locals 0

    .line 2
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public final writeByte(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    .line 2
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 4
    return-void
    .line 7
.end method

.method public final writeInt(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 2
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 4
    if-ne v0, v1, :cond_0

    .line 6
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    .line 8
    ushr-int/lit8 v1, p1, 0x0

    .line 10
    and-int/lit16 v1, v1, 0xff

    .line 12
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 14
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    .line 17
    ushr-int/lit8 v1, p1, 0x8

    .line 19
    and-int/lit16 v1, v1, 0xff

    .line 21
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 23
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    .line 26
    ushr-int/lit8 v1, p1, 0x10

    .line 28
    and-int/lit16 v1, v1, 0xff

    .line 30
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 32
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    .line 35
    ushr-int/lit8 p1, p1, 0x18

    .line 37
    and-int/lit16 p1, p1, 0xff

    .line 39
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 41
    goto :goto_0

    .line 44
    :cond_0
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 45
    if-ne v0, v1, :cond_1

    .line 47
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    .line 49
    ushr-int/lit8 v1, p1, 0x18

    .line 51
    and-int/lit16 v1, v1, 0xff

    .line 53
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 55
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    .line 58
    ushr-int/lit8 v1, p1, 0x10

    .line 60
    and-int/lit16 v1, v1, 0xff

    .line 62
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 64
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    .line 67
    ushr-int/lit8 v1, p1, 0x8

    .line 69
    and-int/lit16 v1, v1, 0xff

    .line 71
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 73
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    .line 76
    ushr-int/lit8 p1, p1, 0x0

    .line 78
    and-int/lit16 p1, p1, 0xff

    .line 80
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 82
    :cond_1
    :goto_0
    return-void
    .line 85
.end method

.method public final writeShort(S)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 2
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 4
    if-ne v0, v1, :cond_0

    .line 6
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    .line 8
    ushr-int/lit8 v1, p1, 0x0

    .line 10
    and-int/lit16 v1, v1, 0xff

    .line 12
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 14
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    .line 17
    ushr-int/lit8 p1, p1, 0x8

    .line 19
    and-int/lit16 p1, p1, 0xff

    .line 21
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 23
    goto :goto_0

    .line 26
    :cond_0
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 27
    if-ne v0, v1, :cond_1

    .line 29
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    .line 31
    ushr-int/lit8 v1, p1, 0x8

    .line 33
    and-int/lit16 v1, v1, 0xff

    .line 35
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 37
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    .line 40
    ushr-int/lit8 p1, p1, 0x0

    .line 42
    and-int/lit16 p1, p1, 0xff

    .line 44
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 46
    :cond_1
    :goto_0
    return-void
    .line 49
.end method

.method public final writeUnsignedInt(J)V
    .locals 2

    .line 1
    const-wide v0, 0xffffffffL

    .line 2
    cmp-long v0, p1, v0

    .line 7
    if-gtz v0, :cond_0

    .line 9
    long-to-int p1, p1

    .line 11
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 12
    return-void

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 16
    const-string/jumbo p1, "val is larger than the maximum value of a 32-bit unsigned integer"

    .line 18
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    throw p0
.end method

.method public final writeUnsignedShort(I)V
    .locals 1

    .line 1
    const v0, 0xffff

    .line 2
    if-gt p1, v0, :cond_0

    .line 5
    int-to-short p1, p1

    .line 7
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeShort(S)V

    .line 8
    return-void

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 12
    const-string/jumbo p1, "val is larger than the maximum value of a 16-bit unsigned integer"

    .line 14
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    throw p0
    .line 20
.end method
