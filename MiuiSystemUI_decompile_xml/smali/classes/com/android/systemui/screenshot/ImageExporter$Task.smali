.class public final Lcom/android/systemui/screenshot/ImageExporter$Task;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mBitmap:Landroid/graphics/Bitmap;

.field public final mCaptureTime:Ljava/time/ZonedDateTime;

.field public final mFileName:Ljava/lang/String;

.field public final mFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final mFormat:Landroid/graphics/Bitmap$CompressFormat;

.field public final mOwner:Landroid/os/UserHandle;

.field public final mPublish:Z

.field public final mQuality:I

.field public final mRequestId:Ljava/util/UUID;

.field public final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Ljava/util/UUID;Landroid/graphics/Bitmap;Ljava/time/ZonedDateTime;Landroid/graphics/Bitmap$CompressFormat;ILandroid/os/UserHandle;Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mResolver:Landroid/content/ContentResolver;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mRequestId:Ljava/util/UUID;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mBitmap:Landroid/graphics/Bitmap;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mCaptureTime:Ljava/time/ZonedDateTime;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 13
    iput p6, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mQuality:I

    .line 15
    iput-object p7, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mOwner:Landroid/os/UserHandle;

    .line 17
    invoke-static {p4, p5}, Lcom/android/systemui/screenshot/ImageExporter;->createFilename(Ljava/time/ZonedDateTime;Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mFileName:Ljava/lang/String;

    .line 23
    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mPublish:Z

    .line 26
    iput-object p8, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 28
    return-void
    .line 30
.end method


# virtual methods
.method public final execute()Lcom/android/systemui/screenshot/ImageExporter$Result;
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mFileName:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mCaptureTime:Ljava/time/ZonedDateTime;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 6
    iget-object v3, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mBitmap:Landroid/graphics/Bitmap;

    .line 8
    iget-object v4, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mResolver:Landroid/content/ContentResolver;

    .line 10
    const-string v5, "ImageExporter_execute"

    .line 12
    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 14
    new-instance v5, Lcom/android/systemui/screenshot/ImageExporter$Result;

    .line 17
    invoke-direct {v5}, Lcom/android/systemui/screenshot/ImageExporter$Result;-><init>()V

    .line 19
    const/4 v6, 0x0

    .line 22
    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mOwner:Landroid/os/UserHandle;

    .line 23
    invoke-static {v4, v2, v1, v0, v7}, Lcom/android/systemui/screenshot/ImageExporter;->-$$Nest$smcreateEntry(Landroid/content/ContentResolver;Landroid/graphics/Bitmap$CompressFormat;Ljava/time/ZonedDateTime;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/net/Uri;

    .line 25
    move-result-object v7
    :try_end_0
    .catch Lcom/android/systemui/screenshot/ImageExporter$ImageExportException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :try_start_1
    invoke-static {}, Lcom/android/systemui/screenshot/ImageExporter;->-$$Nest$smthrowIfInterrupted()V

    .line 29
    iget v8, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mQuality:I

    .line 32
    invoke-static {v4, v3, v2, v8, v7}, Lcom/android/systemui/screenshot/ImageExporter;->-$$Nest$smwriteImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ILandroid/net/Uri;)V

    .line 34
    invoke-static {}, Lcom/android/systemui/screenshot/ImageExporter;->-$$Nest$smthrowIfInterrupted()V

    .line 37
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 40
    move-result v11

    .line 43
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 44
    move-result v12

    .line 47
    iget-object v8, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mResolver:Landroid/content/ContentResolver;

    .line 48
    iget-object v10, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mRequestId:Ljava/util/UUID;

    .line 50
    iget-object v13, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mCaptureTime:Ljava/time/ZonedDateTime;

    .line 52
    move-object v9, v7

    .line 54
    invoke-static/range {v8 .. v13}, Lcom/android/systemui/screenshot/ImageExporter;->-$$Nest$smwriteExif(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/UUID;IILjava/time/ZonedDateTime;)V

    .line 55
    invoke-static {}, Lcom/android/systemui/screenshot/ImageExporter;->-$$Nest$smthrowIfInterrupted()V

    .line 58
    iget-boolean v3, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mPublish:Z

    .line 61
    if-eqz v3, :cond_0

    .line 63
    invoke-static {v4, v7}, Lcom/android/systemui/screenshot/ImageExporter;->-$$Nest$smpublishEntry(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 65
    const/4 v3, 0x1

    .line 68
    iput-boolean v3, v5, Lcom/android/systemui/screenshot/ImageExporter$Result;->published:Z

    .line 69
    :cond_0
    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    .line 71
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    .line 75
    move-result-wide v8

    .line 78
    iput-wide v8, v5, Lcom/android/systemui/screenshot/ImageExporter$Result;->timestamp:J

    .line 79
    iget-object p0, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mRequestId:Ljava/util/UUID;

    .line 81
    iput-object p0, v5, Lcom/android/systemui/screenshot/ImageExporter$Result;->requestId:Ljava/util/UUID;

    .line 83
    iput-object v7, v5, Lcom/android/systemui/screenshot/ImageExporter$Result;->uri:Landroid/net/Uri;

    .line 85
    iput-object v0, v5, Lcom/android/systemui/screenshot/ImageExporter$Result;->fileName:Ljava/lang/String;

    .line 87
    iput-object v2, v5, Lcom/android/systemui/screenshot/ImageExporter$Result;->format:Landroid/graphics/Bitmap$CompressFormat;
    :try_end_1
    .catch Lcom/android/systemui/screenshot/ImageExporter$ImageExportException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 91
    return-object v5

    .line 94
    :catch_0
    move-exception p0

    .line 95
    goto :goto_0

    .line 96
    :catch_1
    move-exception p0

    .line 97
    move-object v7, v6

    .line 98
    :goto_0
    if-eqz v7, :cond_1

    .line 99
    :try_start_2
    invoke-virtual {v4, v7, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    .line 101
    :cond_1
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    :catchall_0
    move-exception p0

    .line 105
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 106
    throw p0
    .line 109
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "export ["

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mBitmap:Landroid/graphics/Bitmap;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, "] to ["

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, "] at quality "

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget p0, p0, Lcom/android/systemui/screenshot/ImageExporter$Task;->mQuality:I

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 37
    return-object p0
    .line 38
.end method
