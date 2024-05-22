.class public final Lcom/android/systemui/util/leak/DumpTruck;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final body:Ljava/lang/StringBuilder;

.field public final context:Landroid/content/Context;

.field public hprofUri:Landroid/net/Uri;

.field public final mGarbageMonitor:Lcom/android/systemui/util/leak/GarbageMonitor;

.field public rss:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/leak/GarbageMonitor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/util/leak/DumpTruck;->body:Ljava/lang/StringBuilder;

    .line 10
    iput-object p1, p0, Lcom/android/systemui/util/leak/DumpTruck;->context:Landroid/content/Context;

    .line 12
    iput-object p2, p0, Lcom/android/systemui/util/leak/DumpTruck;->mGarbageMonitor:Lcom/android/systemui/util/leak/GarbageMonitor;

    .line 14
    return-void
    .line 16
.end method

.method public static zipUp(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    .line 3
    new-instance v2, Ljava/io/FileOutputStream;

    .line 5
    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-direct {v1, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    const/high16 p0, 0x100000

    .line 13
    :try_start_1
    new-array v2, p0, [B

    .line 15
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object p1

    .line 20
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v3

    .line 24
    if-eqz v3, :cond_1

    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 30
    check-cast v3, Ljava/lang/String;

    .line 31
    new-instance v4, Ljava/io/BufferedInputStream;

    .line 33
    new-instance v5, Ljava/io/FileInputStream;

    .line 35
    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 40
    :try_start_2
    new-instance v5, Ljava/util/zip/ZipEntry;

    .line 43
    invoke-direct {v5, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v1, v5}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 48
    :goto_1
    invoke-virtual {v4, v2, v0, p0}, Ljava/io/InputStream;->read([BII)I

    .line 51
    move-result v3

    .line 54
    if-lez v3, :cond_0

    .line 55
    invoke-virtual {v1, v2, v0, v3}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 57
    goto :goto_1

    .line 60
    :cond_0
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 64
    goto :goto_0

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 69
    goto :goto_2

    .line 72
    :catchall_1
    move-exception p1

    .line 73
    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 74
    :goto_2
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 77
    :cond_1
    :try_start_6
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 78
    const/4 p0, 0x1

    .line 81
    return p0

    .line 82
    :catchall_2
    move-exception p0

    .line 83
    :try_start_7
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 84
    goto :goto_3

    .line 87
    :catchall_3
    move-exception p1

    .line 88
    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 89
    :goto_3
    throw p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 92
    :catch_0
    move-exception p0

    .line 93
    const-string p1, "DumpTruck"

    .line 94
    const-string v1, "error zipping up profile data"

    .line 96
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    return v0
    .line 101
.end method
