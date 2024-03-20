.class public final Lcom/android/systemui/screenshot/ImageExporter;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final PENDING_ENTRY_TTL:Ljava/time/Duration;

.field public static final SCREENSHOTS_PATH:Ljava/lang/String;


# instance fields
.field public final mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field public final mFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final mQuality:I

.field public final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public static -$$Nest$smcreateEntry(Landroid/content/ContentResolver;Landroid/graphics/Bitmap$CompressFormat;Ljava/time/ZonedDateTime;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/net/Uri;
    .locals 2

    .line 1
    const-string v0, "Inserted new URI: "

    .line 2
    const-string v1, "ImageExporter_createEntry"

    .line 4
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 6
    :try_start_0
    invoke-static {p2, p1, p3}, Lcom/android/systemui/screenshot/ImageExporter;->createMetadata(Ljava/time/ZonedDateTime;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 9
    move-result-object p1

    .line 12
    sget-object p2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 13
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 15
    move-result p3

    .line 18
    invoke-static {p2, p3}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    .line 19
    move-result-object p2

    .line 22
    invoke-virtual {p0, p2, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 23
    move-result-object p0

    .line 26
    if-eqz p0, :cond_0

    .line 27
    const-string p1, "Screenshot"

    .line 29
    new-instance p2, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p2

    .line 42
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 46
    return-object p0

    .line 49
    :cond_0
    :try_start_1
    new-instance p0, Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;

    .line 50
    const-string p1, "ContentResolver#insert returned null."

    .line 52
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;-><init>(Ljava/lang/String;)V

    .line 54
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 59
    throw p0
    .line 62
.end method

.method public static -$$Nest$smpublishEntry(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 3

    .line 1
    const-string v0, "ImageExporter_publishEntry"

    .line 2
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    .line 7
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 9
    const-string v1, "is_pending"

    .line 12
    const/4 v2, 0x0

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v2

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 19
    const-string v1, "date_expires"

    .line 22
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 24
    const/4 v1, 0x0

    .line 27
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    .line 28
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    const/4 p1, 0x1

    .line 32
    if-lt p0, p1, :cond_0

    .line 33
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 35
    return-void

    .line 38
    :cond_0
    :try_start_1
    new-instance p0, Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;

    .line 39
    const-string p1, "Failed to publish entry. ContentResolver#update reported no rows updated."

    .line 41
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;-><init>(Ljava/lang/String;)V

    .line 43
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 48
    throw p0
    .line 51
.end method

.method public static -$$Nest$smthrowIfInterrupted()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/InterruptedException;

    .line 13
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    .line 15
    throw v0
    .line 18
.end method

.method public static -$$Nest$smwriteExif(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/UUID;IILjava/time/ZonedDateTime;)V
    .locals 2

    .line 1
    const-string v0, "ImageExporter_writeExif"

    .line 2
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    const/4 v0, 0x0

    .line 7
    :try_start_0
    const-string/jumbo v1, "rw"

    .line 8
    invoke-virtual {p0, p1, v1, v0}, Landroid/content/ContentResolver;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    .line 11
    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    :try_start_1
    new-instance p0, Landroidx/exifinterface/media/ExifInterface;

    .line 17
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 19
    move-result-object p1

    .line 22
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    :try_start_2
    invoke-static {p0, p2, p3, p4, p5}, Lcom/android/systemui/screenshot/ImageExporter;->updateExifAttributes(Landroidx/exifinterface/media/ExifInterface;Ljava/util/UUID;IILjava/time/ZonedDateTime;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    :try_start_3
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->saveAttributes()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 29
    invoke-static {v0}, Landroid/os/FileUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 32
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 35
    return-void

    .line 38
    :catch_0
    move-exception p0

    .line 39
    :try_start_4
    new-instance p1, Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;

    .line 40
    const-string p2, "ExifInterface threw an exception writing to the file descriptor."

    .line 42
    invoke-direct {p1, p2, p0}, Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    throw p1

    .line 47
    :catch_1
    move-exception p0

    .line 48
    new-instance p1, Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;

    .line 49
    const-string p2, "ExifInterface threw an exception reading from the file descriptor."

    .line 51
    invoke-direct {p1, p2, p0}, Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    throw p1

    .line 56
    :cond_0
    new-instance p0, Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;

    .line 57
    const-string p1, "ContentResolver#openFile returned null."

    .line 59
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;-><init>(Ljava/lang/String;)V

    .line 61
    throw p0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_0

    .line 66
    :catch_2
    move-exception p0

    .line 67
    :try_start_5
    new-instance p1, Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;

    .line 68
    const-string p2, "ContentResolver#openFile threw an exception."

    .line 70
    invoke-direct {p1, p2, p0}, Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 75
    :goto_0
    invoke-static {v0}, Landroid/os/FileUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 76
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 79
    throw p0
    .line 82
.end method

.method public static -$$Nest$smwriteImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ILandroid/net/Uri;)V
    .locals 1

    .line 1
    const-string v0, "ImageExporter_writeImage"

    .line 2
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    :try_start_0
    invoke-virtual {p0, p4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    .line 7
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 10
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    invoke-virtual {p1, p2, p3, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 14
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    if-eqz p1, :cond_1

    .line 18
    if-eqz p0, :cond_0

    .line 20
    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 22
    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 25
    return-void

    .line 28
    :cond_1
    :try_start_3
    new-instance p1, Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;

    .line 29
    const-string p2, "Bitmap.compress returned false. (Failure unknown)"

    .line 31
    invoke-direct {p1, p2}, Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;-><init>(Ljava/lang/String;)V

    .line 33
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    if-eqz p0, :cond_2

    .line 38
    :try_start_4
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 40
    goto :goto_0

    .line 43
    :catchall_1
    move-exception p0

    .line 44
    :try_start_5
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 45
    :cond_2
    :goto_0
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 48
    :catchall_2
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    :catch_0
    move-exception p0

    .line 51
    :try_start_6
    new-instance p1, Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;

    .line 52
    const-string p2, "ContentResolver#openOutputStream threw an exception."

    .line 54
    invoke-direct {p1, p2, p0}, Lcom/android/systemui/screenshot/ImageExporter$ImageExportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 59
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 60
    throw p0
    .line 63
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x18

    .line 2
    invoke-static {v0, v1}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    .line 4
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/systemui/screenshot/ImageExporter;->PENDING_ENTRY_TTL:Ljava/time/Duration;

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    sget-object v1, Landroid/os/Environment;->DIRECTORY_SCREENSHOTS:Ljava/lang/String;

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 33
    sput-object v0, Lcom/android/systemui/screenshot/ImageExporter;->SCREENSHOTS_PATH:Ljava/lang/String;

    .line 34
    return-void
    .line 36
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 5
    iput-object v0, p0, Lcom/android/systemui/screenshot/ImageExporter;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 7
    const/16 v0, 0x64

    .line 9
    iput v0, p0, Lcom/android/systemui/screenshot/ImageExporter;->mQuality:I

    .line 11
    iput-object p1, p0, Lcom/android/systemui/screenshot/ImageExporter;->mResolver:Landroid/content/ContentResolver;

    .line 13
    iput-object p2, p0, Lcom/android/systemui/screenshot/ImageExporter;->mFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 15
    return-void
    .line 17
.end method

.method public static createFilename(Ljava/time/ZonedDateTime;Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    const/4 v2, 0x0

    .line 5
    aput-object p0, v1, v2

    .line 6
    sget-object p0, Lcom/android/systemui/screenshot/ImageExporter$1;->$SwitchMap$android$graphics$Bitmap$CompressFormat:[I

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Bitmap$CompressFormat;->ordinal()I

    .line 10
    move-result p1

    .line 13
    aget p0, p0, p1

    .line 14
    const/4 p1, 0x1

    .line 16
    if-eq p0, p1, :cond_3

    .line 17
    if-eq p0, v0, :cond_2

    .line 19
    const/4 v0, 0x3

    .line 21
    if-eq p0, v0, :cond_1

    .line 22
    const/4 v0, 0x4

    .line 24
    if-eq p0, v0, :cond_1

    .line 25
    const/4 v0, 0x5

    .line 27
    if-ne p0, v0, :cond_0

    .line 28
    goto :goto_0

    .line 30
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 31
    const-string p1, "Unknown CompressFormat!"

    .line 33
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    throw p0

    .line 38
    :cond_1
    :goto_0
    const-string/jumbo p0, "webp"

    .line 39
    goto :goto_1

    .line 42
    :cond_2
    const-string p0, "png"

    .line 43
    goto :goto_1

    .line 45
    :cond_3
    const-string p0, "jpg"

    .line 46
    :goto_1
    aput-object p0, v1, p1

    .line 48
    const-string p0, "Screenshot_%1$tY%<tm%<td-%<tH%<tM%<tS.%2$s"

    .line 50
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 55
    return-object p0
    .line 56
.end method

.method public static createMetadata(Ljava/time/ZonedDateTime;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    const-string/jumbo v1, "relative_path"

    .line 7
    sget-object v2, Lcom/android/systemui/screenshot/ImageExporter;->SCREENSHOTS_PATH:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    const-string v1, "_display_name"

    .line 15
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    sget-object p2, Lcom/android/systemui/screenshot/ImageExporter$1;->$SwitchMap$android$graphics$Bitmap$CompressFormat:[I

    .line 20
    invoke-virtual {p1}, Landroid/graphics/Bitmap$CompressFormat;->ordinal()I

    .line 22
    move-result p1

    .line 25
    aget p1, p2, p1

    .line 26
    const/4 p2, 0x1

    .line 28
    if-eq p1, p2, :cond_3

    .line 29
    const/4 v1, 0x2

    .line 31
    if-eq p1, v1, :cond_2

    .line 32
    const/4 v1, 0x3

    .line 34
    if-eq p1, v1, :cond_1

    .line 35
    const/4 v1, 0x4

    .line 37
    if-eq p1, v1, :cond_1

    .line 38
    const/4 v1, 0x5

    .line 40
    if-ne p1, v1, :cond_0

    .line 41
    goto :goto_0

    .line 43
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 44
    const-string p1, "Unknown CompressFormat!"

    .line 46
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    throw p0

    .line 51
    :cond_1
    :goto_0
    const-string p1, "image/webp"

    .line 52
    goto :goto_1

    .line 54
    :cond_2
    const-string p1, "image/png"

    .line 55
    goto :goto_1

    .line 57
    :cond_3
    const-string p1, "image/jpeg"

    .line 58
    :goto_1
    const-string v1, "mime_type"

    .line 60
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    .line 65
    move-result-wide v1

    .line 68
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 69
    move-result-object p1

    .line 72
    const-string v1, "date_added"

    .line 73
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 75
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    .line 78
    move-result-wide v1

    .line 81
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 82
    move-result-object p1

    .line 85
    const-string v1, "date_modified"

    .line 86
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 88
    sget-object p1, Lcom/android/systemui/screenshot/ImageExporter;->PENDING_ENTRY_TTL:Ljava/time/Duration;

    .line 91
    invoke-virtual {p0, p1}, Ljava/time/ZonedDateTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/ZonedDateTime;

    .line 93
    move-result-object p0

    .line 96
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    .line 97
    move-result-wide p0

    .line 100
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 101
    move-result-object p0

    .line 104
    const-string p1, "date_expires"

    .line 105
    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 107
    const-string p0, "is_pending"

    .line 110
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    move-result-object p1

    .line 115
    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 116
    return-object v0
    .line 119
.end method

.method public static updateExifAttributes(Landroidx/exifinterface/media/ExifInterface;Ljava/util/UUID;IILjava/time/ZonedDateTime;)V
    .locals 1

    .line 1
    const-string v0, "ImageUniqueID"

    .line 2
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 7
    invoke-virtual {p0, v0, p1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 11
    const-string v0, "Android "

    .line 13
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 26
    const-string v0, "Software"

    .line 27
    invoke-virtual {p0, v0, p1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string p1, "ImageWidth"

    .line 32
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 34
    move-result-object p2

    .line 37
    invoke-virtual {p0, p1, p2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string p1, "ImageLength"

    .line 41
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 43
    move-result-object p2

    .line 46
    invoke-virtual {p0, p1, p2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string/jumbo p1, "yyyy:MM:dd HH:mm:ss"

    .line 50
    invoke-static {p1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    .line 53
    move-result-object p1

    .line 56
    invoke-virtual {p1, p4}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 60
    const-string p2, "SSS"

    .line 61
    invoke-static {p2}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    .line 63
    move-result-object p2

    .line 66
    invoke-virtual {p2, p4}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    .line 67
    move-result-object p2

    .line 70
    const-string/jumbo p3, "xxx"

    .line 71
    invoke-static {p3}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    .line 74
    move-result-object p3

    .line 77
    invoke-virtual {p3, p4}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    .line 78
    move-result-object p3

    .line 81
    const-string p4, "DateTimeOriginal"

    .line 82
    invoke-virtual {p0, p4, p1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string p1, "SubSecTimeOriginal"

    .line 87
    invoke-virtual {p0, p1, p2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string p1, "OffsetTimeOriginal"

    .line 92
    invoke-virtual {p0, p1, p3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
    .line 97
.end method


# virtual methods
.method public final export(Ljava/util/concurrent/Executor;Ljava/util/UUID;Landroid/graphics/Bitmap;Ljava/time/ZonedDateTime;Landroid/os/UserHandle;)Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;
    .locals 10

    .line 1
    new-instance v9, Lcom/android/systemui/screenshot/ImageExporter$Task;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/screenshot/ImageExporter;->mResolver:Landroid/content/ContentResolver;

    .line 4
    iget-object v5, p0, Lcom/android/systemui/screenshot/ImageExporter;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 6
    iget v6, p0, Lcom/android/systemui/screenshot/ImageExporter;->mQuality:I

    .line 8
    iget-object v8, p0, Lcom/android/systemui/screenshot/ImageExporter;->mFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 10
    move-object v0, v9

    .line 12
    move-object v2, p2

    .line 13
    move-object v3, p3

    .line 14
    move-object v4, p4

    .line 15
    move-object v7, p5

    .line 16
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/screenshot/ImageExporter$Task;-><init>(Landroid/content/ContentResolver;Ljava/util/UUID;Landroid/graphics/Bitmap;Ljava/time/ZonedDateTime;Landroid/graphics/Bitmap$CompressFormat;ILandroid/os/UserHandle;Lcom/android/systemui/flags/FeatureFlags;)V

    .line 17
    new-instance p0, Lcom/android/systemui/screenshot/ImageExporter$$ExternalSyntheticLambda0;

    .line 20
    invoke-direct {p0, p1, v9}, Lcom/android/systemui/screenshot/ImageExporter$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/screenshot/ImageExporter$Task;)V

    .line 22
    invoke-static {p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 25
    move-result-object p0

    .line 28
    return-object p0
    .line 29
.end method
