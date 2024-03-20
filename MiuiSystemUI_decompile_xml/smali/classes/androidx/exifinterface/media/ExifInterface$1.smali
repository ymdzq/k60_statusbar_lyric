.class public final Landroidx/exifinterface/media/ExifInterface$1;
.super Landroid/media/MediaDataSource;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mPosition:J

.field public final synthetic val$in:Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;


# direct methods
.method public constructor <init>(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/exifinterface/media/ExifInterface$1;->val$in:Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;

    .line 2
    invoke-direct {p0}, Landroid/media/MediaDataSource;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final close()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final getSize()J
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    return-wide v0
    .line 4
.end method

.method public final readAt(J[BII)I
    .locals 6

    .line 1
    if-nez p5, :cond_0

    .line 2
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    const-wide/16 v0, 0x0

    .line 6
    cmp-long v2, p1, v0

    .line 8
    const/4 v3, -0x1

    .line 10
    if-gez v2, :cond_1

    .line 11
    return v3

    .line 13
    :cond_1
    :try_start_0
    iget-wide v4, p0, Landroidx/exifinterface/media/ExifInterface$1;->mPosition:J

    .line 14
    cmp-long v2, v4, p1

    .line 16
    if-eqz v2, :cond_3

    .line 18
    cmp-long v0, v4, v0

    .line 20
    if-ltz v0, :cond_2

    .line 22
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface$1;->val$in:Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;

    .line 24
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->available()I

    .line 26
    move-result v0

    .line 29
    int-to-long v0, v0

    .line 30
    add-long/2addr v4, v0

    .line 31
    cmp-long v0, p1, v4

    .line 32
    if-ltz v0, :cond_2

    .line 34
    return v3

    .line 36
    :cond_2
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface$1;->val$in:Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;

    .line 37
    invoke-virtual {v0, p1, p2}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 39
    iput-wide p1, p0, Landroidx/exifinterface/media/ExifInterface$1;->mPosition:J

    .line 42
    :cond_3
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface$1;->val$in:Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;

    .line 44
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->available()I

    .line 46
    move-result p1

    .line 49
    if-le p5, p1, :cond_4

    .line 50
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface$1;->val$in:Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;

    .line 52
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->available()I

    .line 54
    move-result p5

    .line 57
    :cond_4
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface$1;->val$in:Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;

    .line 58
    invoke-virtual {p1, p3, p4, p5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([BII)I

    .line 60
    move-result p1

    .line 63
    if-ltz p1, :cond_5

    .line 64
    iget-wide p2, p0, Landroidx/exifinterface/media/ExifInterface$1;->mPosition:J

    .line 66
    int-to-long p4, p1

    .line 68
    add-long/2addr p2, p4

    .line 69
    iput-wide p2, p0, Landroidx/exifinterface/media/ExifInterface$1;->mPosition:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    return p1

    .line 72
    :catch_0
    :cond_5
    const-wide/16 p1, -0x1

    .line 73
    iput-wide p1, p0, Landroidx/exifinterface/media/ExifInterface$1;->mPosition:J

    .line 75
    return v3
    .line 77
.end method
