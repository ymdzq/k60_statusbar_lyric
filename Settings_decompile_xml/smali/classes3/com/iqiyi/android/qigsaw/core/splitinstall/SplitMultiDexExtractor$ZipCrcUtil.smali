.class final Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitMultiDexExtractor$ZipCrcUtil;
.super Ljava/lang/Object;
.source "SplitMultiDexExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitMultiDexExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ZipCrcUtil"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computeCrcOfCentralDir(Ljava/io/RandomAccessFile;Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitMultiDexExtractor$CentralDirectory;)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 368
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 369
    iget-wide v1, p1, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitMultiDexExtractor$CentralDirectory;->size:J

    .line 370
    iget-wide v3, p1, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitMultiDexExtractor$CentralDirectory;->offset:J

    invoke-virtual {p0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    const-wide/16 v3, 0x4000

    .line 371
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int p1, v5

    const/16 v5, 0x4000

    new-array v5, v5, [B

    const/4 v6, 0x0

    .line 374
    :goto_0
    invoke-virtual {p0, v5, v6, p1}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    const/4 v7, -0x1

    if-eq p1, v7, :cond_1

    .line 375
    invoke-virtual {v0, v5, v6, p1}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long v7, p1

    sub-long/2addr v1, v7

    const-wide/16 v7, 0x0

    cmp-long p1, v1, v7

    if-nez p1, :cond_0

    goto :goto_1

    .line 381
    :cond_0
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int p1, v7

    goto :goto_0

    .line 384
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private static findCentralDirectory(Ljava/io/RandomAccessFile;)Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitMultiDexExtractor$CentralDirectory;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 336
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x16

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_3

    const-wide/32 v4, 0x10000

    sub-long v4, v0, v4

    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    goto :goto_0

    :cond_0
    move-wide v2, v4

    :goto_0
    const v4, 0x6054b50

    .line 345
    invoke-static {v4}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v4

    .line 348
    :goto_1
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 349
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v5

    if-ne v5, v4, :cond_1

    const/4 v0, 0x2

    .line 350
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 351
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 352
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 353
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 354
    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitMultiDexExtractor$CentralDirectory;

    invoke-direct {v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitMultiDexExtractor$CentralDirectory;-><init>()V

    .line 355
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    iput-wide v1, v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitMultiDexExtractor$CentralDirectory;->size:J

    .line 356
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    int-to-long v1, p0

    and-long/2addr v1, v3

    iput-wide v1, v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitMultiDexExtractor$CentralDirectory;->offset:J

    return-object v0

    :cond_1
    const-wide/16 v5, 0x1

    sub-long/2addr v0, v5

    cmp-long v5, v0, v2

    if-ltz v5, :cond_2

    goto :goto_1

    .line 363
    :cond_2
    new-instance p0, Ljava/util/zip/ZipException;

    const-string v0, "End Of Central Directory signature not found"

    invoke-direct {p0, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 338
    :cond_3
    new-instance v0, Ljava/util/zip/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File too short to be a zip file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getZipCrc(Ljava/io/File;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 324
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 327
    :try_start_0
    invoke-static {v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitMultiDexExtractor$ZipCrcUtil;->findCentralDirectory(Ljava/io/RandomAccessFile;)Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitMultiDexExtractor$CentralDirectory;

    move-result-object p0

    .line 328
    invoke-static {v0, p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitMultiDexExtractor$ZipCrcUtil;->computeCrcOfCentralDir(Ljava/io/RandomAccessFile;Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitMultiDexExtractor$CentralDirectory;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-wide v1

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 331
    throw p0
.end method
