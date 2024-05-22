.class public Lcom/miui/maml/util/MamlMediaDataSource;
.super Landroid/media/MediaDataSource;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final MAX_VIDEO_SIZE:I = 0x3200000

.field private static final MEMORY_THRESHOLD:I = 0x6400000

.field private static final TAG:Ljava/lang/String; = "MamlMediaDataSource"


# instance fields
.field private mComponentCallback:Landroid/content/ComponentCallbacks2;

.field private mContext:Landroid/content/Context;

.field private mCurrentPosition:J

.field private mFile:Landroid/os/MemoryFile;

.field private final mLock:Ljava/lang/Object;

.field private mManager:Lcom/miui/maml/ResourceManager;

.field private mPath:Ljava/lang/String;

.field private mSize:J

.field private mStream:Ljava/io/InputStream;

.field private mSupportMark:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/maml/ResourceManager;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/media/MediaDataSource;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mLock:Ljava/lang/Object;

    .line 10
    new-instance v0, Lcom/miui/maml/util/MamlMediaDataSource$1;

    .line 12
    invoke-direct {v0, p0}, Lcom/miui/maml/util/MamlMediaDataSource$1;-><init>(Lcom/miui/maml/util/MamlMediaDataSource;)V

    .line 14
    iput-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mComponentCallback:Landroid/content/ComponentCallbacks2;

    .line 17
    iput-object p1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mContext:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mManager:Lcom/miui/maml/ResourceManager;

    .line 21
    iput-object p3, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mPath:Ljava/lang/String;

    .line 23
    invoke-direct {p0}, Lcom/miui/maml/util/MamlMediaDataSource;->init()V

    .line 25
    :try_start_0
    iget-object p1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mContext:Landroid/content/Context;

    .line 28
    iget-object p0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mComponentCallback:Landroid/content/ComponentCallbacks2;

    .line 30
    invoke-virtual {p1, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :catch_0
    return-void
    .line 35
.end method

.method public static synthetic access$000(Lcom/miui/maml/util/MamlMediaDataSource;Landroid/os/MemoryFile;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/util/MamlMediaDataSource;->setMemoryFile(Landroid/os/MemoryFile;)V

    .line 2
    return-void
    .line 5
.end method

.method private closeStream()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mStream:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    if-eqz v1, :cond_0

    .line 7
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    goto :goto_0

    .line 12
    :catch_0
    move-exception v1

    .line 13
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 14
    :goto_0
    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mStream:Ljava/io/InputStream;

    .line 18
    :cond_0
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    throw p0
    .line 24
.end method

.method private generateMemoryFile()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mFile:Landroid/os/MemoryFile;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/miui/maml/util/MamlMediaDataSource$MemoryFileAsyncTask;

    .line 7
    iget-object v1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mPath:Ljava/lang/String;

    .line 9
    iget-object v2, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mManager:Lcom/miui/maml/ResourceManager;

    .line 11
    invoke-direct {v0, v1, v2, p0}, Lcom/miui/maml/util/MamlMediaDataSource$MemoryFileAsyncTask;-><init>(Ljava/lang/String;Lcom/miui/maml/ResourceManager;Lcom/miui/maml/util/MamlMediaDataSource;)V

    .line 13
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 16
    const/4 v1, 0x0

    .line 18
    new-array v1, v1, [Ljava/lang/Void;

    .line 19
    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 21
    return-void
    .line 24
.end method

.method private init()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mPath:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mLock:Ljava/lang/Object;

    .line 10
    monitor-enter v0

    .line 12
    const/4 v1, 0x1

    .line 13
    :try_start_0
    new-array v1, v1, [J

    .line 14
    iget-object v2, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mManager:Lcom/miui/maml/ResourceManager;

    .line 16
    iget-object v3, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mPath:Ljava/lang/String;

    .line 18
    invoke-virtual {v2, v3, v1}, Lcom/miui/maml/ResourceManager;->getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    .line 20
    move-result-object v2

    .line 23
    iput-object v2, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mStream:Ljava/io/InputStream;

    .line 24
    const/4 v3, 0x0

    .line 26
    aget-wide v3, v1, v3

    .line 27
    iput-wide v3, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mSize:J

    .line 29
    if-eqz v2, :cond_1

    .line 31
    invoke-virtual {v2}, Ljava/io/InputStream;->markSupported()Z

    .line 33
    move-result v1

    .line 36
    iput-boolean v1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mSupportMark:Z

    .line 37
    if-eqz v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mStream:Ljava/io/InputStream;

    .line 41
    const v2, 0x7fffffff

    .line 43
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->mark(I)V

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/util/MamlMediaDataSource;->tryToGenerateMemoryFile()V

    .line 49
    :cond_1
    monitor-exit v0

    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p0

    .line 56
    :cond_2
    :goto_0
    return-void
    .line 57
.end method

.method private isFileSizeValid()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mSize:J

    .line 2
    const-wide/32 v2, 0x3200000

    .line 4
    cmp-long p0, v0, v2

    .line 7
    if-gez p0, :cond_0

    .line 9
    const/4 p0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return p0
    .line 14
.end method

.method private isMemoryEnough()Z
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mContext:Landroid/content/Context;

    .line 2
    const-string v0, "activity"

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Landroid/app/ActivityManager;

    .line 10
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    .line 12
    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 14
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 17
    iget-boolean p0, v0, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    .line 20
    if-nez p0, :cond_0

    .line 22
    iget-wide v1, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 24
    iget-wide v3, v0, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    .line 26
    sub-long/2addr v1, v3

    .line 28
    const-wide/32 v3, 0x6400000

    .line 29
    cmp-long p0, v1, v3

    .line 32
    if-lez p0, :cond_0

    .line 34
    const/4 p0, 0x1

    .line 36
    return p0

    .line 37
    :cond_0
    const/4 p0, 0x0

    .line 38
    return p0
    .line 39
.end method

.method private resetStream()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mStream:Ljava/io/InputStream;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    return v1

    .line 7
    :cond_0
    iget-boolean v2, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mSupportMark:Z

    .line 8
    const/4 v3, 0x1

    .line 10
    if-eqz v2, :cond_1

    .line 11
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 18
    return v1

    .line 21
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 22
    new-array v0, v3, [J

    .line 25
    iget-object v1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mManager:Lcom/miui/maml/ResourceManager;

    .line 27
    iget-object v2, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mPath:Ljava/lang/String;

    .line 29
    invoke-virtual {v1, v2, v0}, Lcom/miui/maml/ResourceManager;->getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    .line 31
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mStream:Ljava/io/InputStream;

    .line 35
    :goto_0
    return v3

    .line 37
    :catch_1
    move-exception p0

    .line 38
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 39
    return v1
    .line 42
.end method

.method private setMemoryFile(Landroid/os/MemoryFile;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mFile:Landroid/os/MemoryFile;

    .line 5
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
    .line 11
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/util/MamlMediaDataSource;->closeStream()V

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/util/MamlMediaDataSource;->releaseMemoryFile()V

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mContext:Landroid/content/Context;

    .line 8
    iget-object p0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mComponentCallback:Landroid/content/ComponentCallbacks2;

    .line 10
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :catch_0
    return-void
    .line 15
.end method

.method public finalize()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/util/MamlMediaDataSource;->close()V

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 5
    return-void
    .line 8
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mPath:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public getSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mSize:J

    .line 2
    return-wide v0
    .line 4
.end method

.method public readAt(J[BII)I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mFile:Landroid/os/MemoryFile;

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mStream:Ljava/io/InputStream;

    .line 6
    if-nez v0, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/miui/maml/util/MamlMediaDataSource;->init()V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mLock:Ljava/lang/Object;

    .line 13
    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mFile:Landroid/os/MemoryFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_3

    .line 19
    int-to-long v3, p5

    .line 21
    add-long/2addr v3, p1

    .line 22
    :try_start_1
    iget-wide v5, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mSize:J

    .line 23
    cmp-long v1, v3, v5

    .line 25
    if-lez v1, :cond_2

    .line 27
    cmp-long p5, p1, v5

    .line 29
    if-gez p5, :cond_1

    .line 31
    const-string p5, "MamlMediaDataSource"

    .line 33
    const-string v1, "readAt: position+size is larger than file size, read left data"

    .line 35
    invoke-static {p5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-wide v3, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mSize:J

    .line 40
    sub-long/2addr v3, p1

    .line 42
    long-to-int p5, v3

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const-string p1, "MamlMediaDataSource"

    .line 45
    const-string p2, "readAt: position is larger than file size, return 0"

    .line 47
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    return v2

    .line 53
    :cond_2
    :goto_0
    :try_start_3
    iget-object v1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mFile:Landroid/os/MemoryFile;

    .line 54
    long-to-int v3, p1

    .line 56
    invoke-virtual {v1, p3, v3, p4, p5}, Landroid/os/MemoryFile;->readBytes([BIII)I

    .line 57
    move-result v2
    :try_end_3
    .catch Ljava/nio/BufferUnderflowException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 60
    goto :goto_2

    .line 61
    :catch_0
    move-exception p1

    .line 62
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 63
    iget-object p1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mFile:Landroid/os/MemoryFile;

    .line 66
    invoke-virtual {p1}, Landroid/os/MemoryFile;->close()V

    .line 68
    const/4 p1, 0x0

    .line 71
    iput-object p1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mFile:Landroid/os/MemoryFile;

    .line 72
    monitor-exit v0

    .line 74
    return v2

    .line 75
    :catch_1
    monitor-exit v0

    .line 76
    return v2

    .line 77
    :cond_3
    iget-object v1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mStream:Ljava/io/InputStream;

    .line 78
    if-eqz v1, :cond_7

    .line 80
    iget-wide v3, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mCurrentPosition:J

    .line 82
    cmp-long v1, v3, p1

    .line 84
    if-lez v1, :cond_5

    .line 86
    invoke-direct {p0}, Lcom/miui/maml/util/MamlMediaDataSource;->resetStream()Z

    .line 88
    move-result v1

    .line 91
    if-eqz v1, :cond_4

    .line 92
    move-wide v3, p1

    .line 94
    goto :goto_1

    .line 95
    :cond_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 96
    return v2

    .line 97
    :cond_5
    sub-long v3, p1, v3

    .line 98
    :goto_1
    const-wide/16 v5, 0x0

    .line 100
    cmp-long v1, v3, v5

    .line 102
    if-eqz v1, :cond_6

    .line 104
    :try_start_5
    iget-object v1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mStream:Ljava/io/InputStream;

    .line 106
    invoke-virtual {v1, v3, v4}, Ljava/io/InputStream;->skip(J)J

    .line 108
    :cond_6
    iget-object v1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mStream:Ljava/io/InputStream;

    .line 111
    invoke-virtual {v1, p3, p4, p5}, Ljava/io/InputStream;->read([BII)I

    .line 113
    move-result v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 116
    goto :goto_2

    .line 117
    :catch_2
    move-exception p3

    .line 118
    :try_start_6
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 119
    :cond_7
    :goto_2
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 122
    if-lez v2, :cond_8

    .line 123
    int-to-long p3, v2

    .line 125
    add-long/2addr p1, p3

    .line 126
    iput-wide p1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mCurrentPosition:J

    .line 127
    :cond_8
    return v2

    .line 129
    :catchall_0
    move-exception p0

    .line 130
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 131
    throw p0
    .line 132
.end method

.method public releaseMemoryFile()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mFile:Landroid/os/MemoryFile;

    .line 5
    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1}, Landroid/os/MemoryFile;->close()V

    .line 9
    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mFile:Landroid/os/MemoryFile;

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
    .line 19
.end method

.method public tryToGenerateMemoryFile()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mFile:Landroid/os/MemoryFile;

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mStream:Ljava/io/InputStream;

    .line 6
    instance-of v0, v0, Ljava/util/zip/InflaterInputStream;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    invoke-direct {p0}, Lcom/miui/maml/util/MamlMediaDataSource;->isMemoryEnough()Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    invoke-direct {p0}, Lcom/miui/maml/util/MamlMediaDataSource;->isFileSizeValid()Z

    .line 18
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    invoke-direct {p0}, Lcom/miui/maml/util/MamlMediaDataSource;->generateMemoryFile()V

    .line 24
    :cond_0
    return-void
    .line 27
.end method
