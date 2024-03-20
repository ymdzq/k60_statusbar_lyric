.class public Lcom/android/settings/cloudbackup/MinFileUtils;
.super Ljava/lang/Object;
.source "MinFileUtils.java"


# direct methods
.method public static writeOutInputStream(Ljava/io/File;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 154
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 155
    new-instance p0, Ljava/io/BufferedOutputStream;

    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 157
    :try_start_1
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-direct {p1, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 p2, 0x2000

    new-array v0, p2, [B

    :goto_0
    const/4 v1, 0x0

    .line 160
    invoke-virtual {p1, v0, v1, p2}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_0

    .line 161
    invoke-virtual {p0, v0, v1, v2}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, p0

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 167
    :cond_1
    throw p1
.end method
