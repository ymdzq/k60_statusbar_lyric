.class public Lsrc/com/android/settings/emergency/util/WaveHeader;
.super Ljava/lang/Object;
.source "WaveHeader.java"


# instance fields
.field public AvgBytesPerSec:I

.field public BitsPerSample:S

.field public BlockAlign:S

.field public Channels:S

.field public DataHdrID:[C

.field public DataHdrLeth:I

.field public FmtHdrID:[C

.field public FmtHdrLeth:I

.field public FormatTag:S

.field public SamplesPerSec:I

.field public final fileID:[C

.field public fileLength:I

.field public wavTag:[C


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [C

    .line 7
    fill-array-data v1, :array_0

    iput-object v1, p0, Lsrc/com/android/settings/emergency/util/WaveHeader;->fileID:[C

    new-array v1, v0, [C

    .line 9
    fill-array-data v1, :array_1

    iput-object v1, p0, Lsrc/com/android/settings/emergency/util/WaveHeader;->wavTag:[C

    new-array v1, v0, [C

    .line 10
    fill-array-data v1, :array_2

    iput-object v1, p0, Lsrc/com/android/settings/emergency/util/WaveHeader;->FmtHdrID:[C

    new-array v0, v0, [C

    .line 18
    fill-array-data v0, :array_3

    iput-object v0, p0, Lsrc/com/android/settings/emergency/util/WaveHeader;->DataHdrID:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x52s
        0x49s
        0x46s
        0x46s
    .end array-data

    :array_1
    .array-data 2
        0x57s
        0x41s
        0x56s
        0x45s
    .end array-data

    :array_2
    .array-data 2
        0x66s
        0x6ds
        0x74s
        0x20s
    .end array-data

    :array_3
    .array-data 2
        0x64s
        0x61s
        0x74s
        0x61s
    .end array-data
.end method

.method private WriteChar(Ljava/io/ByteArrayOutputStream;[C)V
    .locals 2

    .line 59
    array-length p0, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    aget-char v1, p2, v0

    .line 60
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private WriteInt(Ljava/io/ByteArrayOutputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x4

    new-array p0, p0, [B

    shr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    const/4 v1, 0x3

    aput-byte v0, p0, v1

    shl-int/lit8 v0, p2, 0x8

    shr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    const/4 v1, 0x2

    aput-byte v0, p0, v1

    shl-int/lit8 v0, p2, 0x10

    shr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, p0, v1

    shl-int/lit8 p2, p2, 0x18

    shr-int/lit8 p2, p2, 0x18

    int-to-byte p2, p2

    const/4 v0, 0x0

    aput-byte p2, p0, v0

    .line 55
    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    return-void
.end method

.method private WriteShort(Ljava/io/ByteArrayOutputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x2

    new-array p0, p0, [B

    shl-int/lit8 v0, p2, 0x10

    shr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, p0, v1

    shl-int/lit8 p2, p2, 0x18

    shr-int/lit8 p2, p2, 0x18

    int-to-byte p2, p2

    const/4 v0, 0x0

    aput-byte p2, p0, v0

    .line 46
    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public getHeader()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 23
    iget-object v1, p0, Lsrc/com/android/settings/emergency/util/WaveHeader;->fileID:[C

    invoke-direct {p0, v0, v1}, Lsrc/com/android/settings/emergency/util/WaveHeader;->WriteChar(Ljava/io/ByteArrayOutputStream;[C)V

    .line 24
    iget v1, p0, Lsrc/com/android/settings/emergency/util/WaveHeader;->fileLength:I

    invoke-direct {p0, v0, v1}, Lsrc/com/android/settings/emergency/util/WaveHeader;->WriteInt(Ljava/io/ByteArrayOutputStream;I)V

    .line 25
    iget-object v1, p0, Lsrc/com/android/settings/emergency/util/WaveHeader;->wavTag:[C

    invoke-direct {p0, v0, v1}, Lsrc/com/android/settings/emergency/util/WaveHeader;->WriteChar(Ljava/io/ByteArrayOutputStream;[C)V

    .line 26
    iget-object v1, p0, Lsrc/com/android/settings/emergency/util/WaveHeader;->FmtHdrID:[C

    invoke-direct {p0, v0, v1}, Lsrc/com/android/settings/emergency/util/WaveHeader;->WriteChar(Ljava/io/ByteArrayOutputStream;[C)V

    .line 27
    iget v1, p0, Lsrc/com/android/settings/emergency/util/WaveHeader;->FmtHdrLeth:I

    invoke-direct {p0, v0, v1}, Lsrc/com/android/settings/emergency/util/WaveHeader;->WriteInt(Ljava/io/ByteArrayOutputStream;I)V

    .line 28
    iget-short v1, p0, Lsrc/com/android/settings/emergency/util/WaveHeader;->FormatTag:S

    invoke-direct {p0, v0, v1}, Lsrc/com/android/settings/emergency/util/WaveHeader;->WriteShort(Ljava/io/ByteArrayOutputStream;I)V

    .line 29
    iget-short v1, p0, Lsrc/com/android/settings/emergency/util/WaveHeader;->Channels:S

    invoke-direct {p0, v0, v1}, Lsrc/com/android/settings/emergency/util/WaveHeader;->WriteShort(Ljava/io/ByteArrayOutputStream;I)V

    .line 30
    iget v1, p0, Lsrc/com/android/settings/emergency/util/WaveHeader;->SamplesPerSec:I

    invoke-direct {p0, v0, v1}, Lsrc/com/android/settings/emergency/util/WaveHeader;->WriteInt(Ljava/io/ByteArrayOutputStream;I)V

    .line 31
    iget v1, p0, Lsrc/com/android/settings/emergency/util/WaveHeader;->AvgBytesPerSec:I

    invoke-direct {p0, v0, v1}, Lsrc/com/android/settings/emergency/util/WaveHeader;->WriteInt(Ljava/io/ByteArrayOutputStream;I)V

    .line 32
    iget-short v1, p0, Lsrc/com/android/settings/emergency/util/WaveHeader;->BlockAlign:S

    invoke-direct {p0, v0, v1}, Lsrc/com/android/settings/emergency/util/WaveHeader;->WriteShort(Ljava/io/ByteArrayOutputStream;I)V

    .line 33
    iget-short v1, p0, Lsrc/com/android/settings/emergency/util/WaveHeader;->BitsPerSample:S

    invoke-direct {p0, v0, v1}, Lsrc/com/android/settings/emergency/util/WaveHeader;->WriteShort(Ljava/io/ByteArrayOutputStream;I)V

    .line 34
    iget-object v1, p0, Lsrc/com/android/settings/emergency/util/WaveHeader;->DataHdrID:[C

    invoke-direct {p0, v0, v1}, Lsrc/com/android/settings/emergency/util/WaveHeader;->WriteChar(Ljava/io/ByteArrayOutputStream;[C)V

    .line 35
    iget v1, p0, Lsrc/com/android/settings/emergency/util/WaveHeader;->DataHdrLeth:I

    invoke-direct {p0, v0, v1}, Lsrc/com/android/settings/emergency/util/WaveHeader;->WriteInt(Ljava/io/ByteArrayOutputStream;I)V

    .line 36
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 37
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 38
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p0
.end method
