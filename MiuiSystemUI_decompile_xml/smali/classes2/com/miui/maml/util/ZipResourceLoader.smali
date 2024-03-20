.class public Lcom/miui/maml/util/ZipResourceLoader;
.super Lcom/miui/maml/ResourceLoader;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ZipResourceLoader"


# instance fields
.field private mInnerPath:Ljava/lang/String;

.field private mLock:Ljava/lang/Object;

.field private mResourcePath:Ljava/lang/String;

.field private mZipFile:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lcom/miui/maml/util/ZipResourceLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/maml/util/ZipResourceLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/miui/maml/ResourceLoader;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/util/ZipResourceLoader;->mLock:Ljava/lang/Object;

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    iput-object p1, p0, Lcom/miui/maml/util/ZipResourceLoader;->mResourcePath:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p2, ""

    .line 7
    :cond_0
    iput-object p2, p0, Lcom/miui/maml/util/ZipResourceLoader;->mInnerPath:Ljava/lang/String;

    if-eqz p3, :cond_1

    .line 8
    iput-object p3, p0, Lcom/miui/maml/ResourceLoader;->mManifestName:Ljava/lang/String;

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/miui/maml/util/ZipResourceLoader;->init()V

    return-void

    .line 10
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "empty zip path"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/ZipResourceLoader;->mLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    if-eqz v1, :cond_0

    .line 7
    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :catch_0
    const/4 v1, 0x0

    .line 12
    :try_start_2
    iput-object v1, p0, Lcom/miui/maml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;

    .line 13
    :cond_0
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    throw p0
    .line 19
.end method


# virtual methods
.method public finalize()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/util/ZipResourceLoader;->close()V

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 5
    return-void
    .line 8
.end method

.method public finish()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/util/ZipResourceLoader;->close()V

    .line 2
    invoke-super {p0}, Lcom/miui/maml/ResourceLoader;->finish()V

    .line 5
    return-void
    .line 8
.end method

.method public getExtraFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, "/"

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    new-instance p0, Ljava/io/File;

    .line 19
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    return-object p0

    .line 24
    :cond_1
    new-instance v0, Ljava/io/File;

    .line 25
    iget-object p0, p0, Lcom/miui/maml/util/ZipResourceLoader;->mResourcePath:Ljava/lang/String;

    .line 27
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 35
    new-instance v0, Ljava/io/File;

    .line 36
    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-object v0

    .line 41
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 42
    return-object p0
    .line 43
.end method

.method public getID()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "ZipResourceLoader"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/miui/maml/util/ZipResourceLoader;->mResourcePath:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object p0, p0, Lcom/miui/maml/util/ZipResourceLoader;->mInnerPath:Ljava/lang/String;

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 22
    return-object p0
    .line 23
.end method

.method public getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_4

    .line 5
    if-nez p1, :cond_0

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/util/ZipResourceLoader;->mLock:Ljava/lang/Object;

    .line 10
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/miui/maml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;

    .line 13
    if-eqz v2, :cond_3

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    iget-object v4, p0, Lcom/miui/maml/util/ZipResourceLoader;->mInnerPath:Ljava/lang/String;

    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 33
    invoke-virtual {v2, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 34
    move-result-object p1

    .line 37
    if-nez p1, :cond_1

    .line 38
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    return-object v1

    .line 41
    :cond_1
    if-eqz p2, :cond_2

    .line 42
    :try_start_1
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    .line 44
    move-result-wide v2

    .line 47
    const/4 v4, 0x0

    .line 48
    aput-wide v2, p2, v4

    .line 49
    :cond_2
    iget-object p0, p0, Lcom/miui/maml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;

    .line 51
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 53
    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :try_start_2
    monitor-exit v0

    .line 57
    return-object p0

    .line 58
    :catch_0
    move-exception p0

    .line 59
    const-string p1, "ZipResourceLoader"

    .line 60
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 65
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_3
    monitor-exit v0

    .line 69
    return-object v1

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    throw p0

    .line 73
    :cond_4
    :goto_0
    return-object v1
    .line 74
.end method

.method public init()V
    .locals 4

    .line 1
    const-string v0, "fail to init zip file: "

    .line 2
    invoke-super {p0}, Lcom/miui/maml/ResourceLoader;->init()V

    .line 4
    iget-object v1, p0, Lcom/miui/maml/util/ZipResourceLoader;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/miui/maml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    if-nez v2, :cond_0

    .line 12
    :try_start_1
    new-instance v2, Ljava/util/zip/ZipFile;

    .line 14
    iget-object v3, p0, Lcom/miui/maml/util/ZipResourceLoader;->mResourcePath:Ljava/lang/String;

    .line 16
    invoke-direct {v2, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 18
    iput-object v2, p0, Lcom/miui/maml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    goto :goto_0

    .line 23
    :catch_0
    move-exception v2

    .line 24
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 25
    const-string v2, "ZipResourceLoader"

    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    iget-object p0, p0, Lcom/miui/maml/util/ZipResourceLoader;->mResourcePath:Ljava/lang/String;

    .line 35
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 43
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_0
    :goto_0
    monitor-exit v1

    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    throw p0
    .line 51
.end method

.method public resourceExists(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    if-nez p1, :cond_0

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/util/ZipResourceLoader;->mLock:Ljava/lang/Object;

    .line 10
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/miui/maml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;

    .line 13
    if-eqz v2, :cond_1

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    iget-object p0, p0, Lcom/miui/maml/util/ZipResourceLoader;->mInnerPath:Ljava/lang/String;

    .line 22
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 33
    invoke-virtual {v2, p0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 34
    move-result-object p0

    .line 37
    if-eqz p0, :cond_1

    .line 38
    const/4 v1, 0x1

    .line 40
    :cond_1
    monitor-exit v0

    .line 41
    return v1

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p0

    .line 45
    :cond_2
    :goto_0
    return v1
    .line 46
.end method
