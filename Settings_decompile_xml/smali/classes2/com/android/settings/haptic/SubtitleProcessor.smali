.class public Lcom/android/settings/haptic/SubtitleProcessor;
.super Ljava/lang/Object;
.source "SubtitleProcessor.java"


# direct methods
.method public static varargs closeStreams([Ljava/io/Closeable;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 72
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    .line 75
    :try_start_0
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 77
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 64
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 65
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static findTrackIndexFor(I[Landroid/media/MediaPlayer$TrackInfo;)I
    .locals 2

    const/4 v0, 0x0

    .line 25
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 26
    aget-object v1, p1, v0

    invoke-virtual {v1}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v1

    if-ne v1, p0, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getSubtitleFile(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-virtual {p0, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "SubtitleProcessor"

    if-eqz v1, :cond_0

    const-string p0, "Subtitle already exists"

    .line 37
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v1, "Subtitle does not exists, copy it from res/raw"

    .line 40
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 47
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 48
    :try_start_1
    new-instance p1, Ljava/io/FileOutputStream;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    :try_start_2
    invoke-static {p0, p1}, Lcom/android/settings/haptic/SubtitleProcessor;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 50
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    filled-new-array {p0, p1}, [Ljava/io/Closeable;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/haptic/SubtitleProcessor;->closeStreams([Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p1, v1

    :goto_0
    move-object v1, p0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object p1, v1

    :goto_1
    move-object v1, p0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object p1, v1

    goto :goto_3

    :catch_2
    move-exception v0

    move-object p1, v1

    .line 52
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 54
    filled-new-array {v1, p1}, [Ljava/io/Closeable;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/haptic/SubtitleProcessor;->closeStreams([Ljava/io/Closeable;)V

    const-string p0, ""

    return-object p0

    :catchall_3
    move-exception v0

    :goto_3
    filled-new-array {v1, p1}, [Ljava/io/Closeable;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/haptic/SubtitleProcessor;->closeStreams([Ljava/io/Closeable;)V

    .line 55
    throw v0
.end method
