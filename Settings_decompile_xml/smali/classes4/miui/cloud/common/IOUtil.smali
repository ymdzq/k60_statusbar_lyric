.class public Lmiui/cloud/common/IOUtil;
.super Ljava/lang/Object;
.source "IOUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    .line 13
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Closing failed. "

    .line 15
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static realFlush(Ljava/io/Flushable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    invoke-interface {p0}, Ljava/io/Flushable;->flush()V

    .line 30
    instance-of v0, p0, Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 31
    check-cast p0, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V

    :cond_0
    return-void
.end method

.method public static realFlushQuietly(Ljava/io/Flushable;)V
    .locals 0

    .line 21
    :try_start_0
    invoke-static {p0}, Lmiui/cloud/common/IOUtil;->realFlush(Ljava/io/Flushable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Flush failed. "

    .line 23
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
