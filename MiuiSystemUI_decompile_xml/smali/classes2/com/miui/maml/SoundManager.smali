.class public Lcom/miui/maml/SoundManager;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# static fields
.field private static final ADVANCE:Ljava/lang/String; = "advance/"

.field private static final LOCKSCREEN_AUDIO:Ljava/lang/String; = "lockscreen_audio/"

.field private static final LOG_TAG:Ljava/lang/String; = "MamlSoundManager"

.field private static final MAX_FILE_SIZE:I = 0x80000

.field private static final MAX_STREAMS:I = 0x8


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mInitSignal:Ljava/lang/Object;

.field private mInitialized:Z

.field private mPendingSoundMap:Ljava/util/HashMap;

.field private mPlayingSoundMap:Ljava/util/ArrayList;

.field private mResourceManager:Lcom/miui/maml/ResourceManager;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolMap:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenContext;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/miui/maml/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    .line 12
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/miui/maml/SoundManager;->mPendingSoundMap:Ljava/util/HashMap;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/miui/maml/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljava/lang/Object;

    .line 26
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/miui/maml/SoundManager;->mInitSignal:Ljava/lang/Object;

    .line 31
    iget-object v0, p1, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 33
    iput-object v0, p0, Lcom/miui/maml/SoundManager;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 35
    invoke-virtual {p1}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 37
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/miui/maml/SoundManager;->mHandler:Landroid/os/Handler;

    .line 41
    return-void
    .line 43
.end method

.method public static synthetic access$000(Lcom/miui/maml/SoundManager;)Landroid/media/SoundPool;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$002(Lcom/miui/maml/SoundManager;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    .line 2
    return-object p1
    .line 4
.end method

.method public static synthetic access$100(Lcom/miui/maml/SoundManager;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/SoundManager;->mInitSignal:Ljava/lang/Object;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$202(Lcom/miui/maml/SoundManager;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/SoundManager;->mInitialized:Z

    .line 2
    return p1
    .line 4
.end method

.method private init()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/SoundManager;->mInitialized:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 7
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    .line 11
    move-result-wide v0

    .line 14
    iget-object v2, p0, Lcom/miui/maml/SoundManager;->mHandler:Landroid/os/Handler;

    .line 15
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 17
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 21
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    .line 25
    move-result-wide v2

    .line 28
    cmp-long v0, v0, v2

    .line 29
    if-nez v0, :cond_1

    .line 31
    new-instance v0, Landroid/media/SoundPool;

    .line 33
    const/4 v1, 0x3

    .line 35
    const/16 v2, 0x64

    .line 36
    const/16 v3, 0x8

    .line 38
    invoke-direct {v0, v3, v1, v2}, Landroid/media/SoundPool;-><init>(III)V

    .line 40
    iput-object v0, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    .line 43
    invoke-virtual {v0, p0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 45
    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/miui/maml/SoundManager;->mInitialized:Z

    .line 49
    goto :goto_1

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/SoundManager;->mHandler:Landroid/os/Handler;

    .line 52
    new-instance v1, Lcom/miui/maml/SoundManager$1;

    .line 54
    invoke-direct {v1, p0}, Lcom/miui/maml/SoundManager$1;-><init>(Lcom/miui/maml/SoundManager;)V

    .line 56
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    iget-object v0, p0, Lcom/miui/maml/SoundManager;->mInitSignal:Ljava/lang/Object;

    .line 62
    monitor-enter v0

    .line 64
    :catch_0
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/maml/SoundManager;->mInitialized:Z

    .line 65
    if-eqz v1, :cond_2

    .line 67
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :goto_1
    return-void

    .line 70
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/miui/maml/SoundManager;->mInitSignal:Ljava/lang/Object;

    .line 71
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    goto :goto_0

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    throw p0
    .line 79
.end method

.method private declared-synchronized playSoundImp(ILcom/miui/maml/SoundManager$SoundOptions;)I
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    const/4 v1, 0x0

    .line 5
    if-nez v0, :cond_0

    .line 6
    monitor-exit p0

    .line 8
    return v1

    .line 9
    :cond_0
    :try_start_1
    iget-boolean v0, p2, Lcom/miui/maml/SoundManager$SoundOptions;->mKeepCur:Z

    .line 10
    if-nez v0, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/miui/maml/SoundManager;->stopAllPlaying()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/miui/maml/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    .line 17
    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 19
    :try_start_3
    iget-object v2, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    .line 20
    iget v5, p2, Lcom/miui/maml/SoundManager$SoundOptions;->mVolume:F

    .line 22
    const/4 v6, 0x1

    .line 24
    iget-boolean p2, p2, Lcom/miui/maml/SoundManager$SoundOptions;->mLoop:Z

    .line 25
    if-eqz p2, :cond_2

    .line 27
    const/4 p2, -0x1

    .line 29
    move v7, p2

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    move v7, v1

    .line 32
    :goto_0
    const/high16 v8, 0x3f800000    # 1.0f

    .line 33
    move v3, p1

    .line 35
    move v4, v5

    .line 36
    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 37
    move-result p1

    .line 40
    iget-object p2, p0, Lcom/miui/maml/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    move-result-object v2

    .line 46
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 50
    monitor-exit p0

    .line 51
    return p1

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 54
    :try_start_5
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 55
    :catch_0
    move-exception p1

    .line 56
    :try_start_6
    const-string p2, "MamlSoundManager"

    .line 57
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 62
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 63
    monitor-exit p0

    .line 66
    return v1

    .line 67
    :catchall_1
    move-exception p1

    .line 68
    monitor-exit p0

    .line 69
    throw p1
    .line 70
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 0

    .line 1
    if-nez p3, :cond_0

    .line 2
    iget-object p1, p0, Lcom/miui/maml/SoundManager;->mPendingSoundMap:Ljava/util/HashMap;

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p3

    .line 9
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 13
    check-cast p1, Lcom/miui/maml/SoundManager$SoundOptions;

    .line 14
    invoke-direct {p0, p2, p1}, Lcom/miui/maml/SoundManager;->playSoundImp(ILcom/miui/maml/SoundManager$SoundOptions;)I

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/SoundManager;->mPendingSoundMap:Ljava/util/HashMap;

    .line 19
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    return-void
    .line 28
.end method

.method public pause()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/SoundManager;->stopAllPlaying()V

    .line 2
    return-void
    .line 5
.end method

.method public declared-synchronized playSound(Ljava/lang/String;Lcom/miui/maml/SoundManager$SoundOptions;)I
    .locals 12

    const-string/jumbo v0, "the sound does not exist: "

    const-string v1, "lockscreen_audio/advance/"

    monitor-enter p0

    .line 13
    :try_start_0
    iget-boolean v2, p0, Lcom/miui/maml/SoundManager;->mInitialized:Z

    if-nez v2, :cond_0

    .line 14
    invoke-direct {p0}, Lcom/miui/maml/SoundManager;->init()V

    .line 15
    :cond_0
    iget-object v2, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 16
    monitor-exit p0

    return v3

    .line 17
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/miui/maml/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_7

    .line 18
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lmiui/content/res/ThemeResources;->THEME_MAGIC_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 20
    iget-object v1, p0, Lcom/miui/maml/SoundManager;->mResourceManager:Lcom/miui/maml/ResourceManager;

    invoke-virtual {v1, p1}, Lcom/miui/maml/ResourceManager;->getExtraFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 21
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    const-string p2, "MamlSoundManager"

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 23
    monitor-exit p0

    return v3

    .line 24
    :cond_3
    :try_start_2
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v5, 0x80000

    cmp-long v0, v0, v5

    if-lez v0, :cond_4

    const-string p2, "MamlSoundManager"

    const-string/jumbo v0, "the sound file is larger than %d KB: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x200

    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 26
    monitor-exit p0

    return v3

    :cond_4
    const/high16 v0, 0x10000000

    .line 27
    :try_start_3
    invoke-static {v4, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v0, :cond_5

    .line 28
    :try_start_4
    iget-object v5, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v9

    const/4 v11, 0x1

    invoke-virtual/range {v5 .. v11}, Landroid/media/SoundPool;->load(Ljava/io/FileDescriptor;JJI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 29
    :try_start_5
    iget-object v2, p0, Lcom/miui/maml/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v2, v1

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v2, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 30
    :goto_0
    :try_start_6
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_7
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1

    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    .line 31
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_8
    const-string v0, "MamlSoundManager"

    const-string v1, "fail to load sound. "

    .line 32
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/miui/maml/SoundManager;->mPendingSoundMap:Ljava/util/HashMap;

    invoke-virtual {p1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 34
    monitor-exit p0

    return v3

    .line 35
    :cond_7
    :try_start_9
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/miui/maml/SoundManager;->playSoundImp(ILcom/miui/maml/SoundManager$SoundOptions;)I

    move-result p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    monitor-exit p0

    return p1

    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized playSound(ILcom/miui/maml/SoundManager$Command;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/miui/maml/SoundManager;->mInitialized:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/miui/maml/SoundManager;->init()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_5

    if-gtz p1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    sget-object v0, Lcom/miui/maml/SoundManager$2;->$SwitchMap$com$miui$maml$SoundManager$Command:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    const/4 v0, 0x3

    if-eq p2, v0, :cond_3

    const/4 v0, 0x4

    if-eq p2, v0, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    iget-object p2, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p2, p1}, Landroid/media/SoundPool;->stop(I)V

    .line 6
    iget-object p2, p0, Lcom/miui/maml/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    iget-object v0, p0, Lcom/miui/maml/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    .line 9
    :cond_3
    iget-object p2, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p2, p1}, Landroid/media/SoundPool;->resume(I)V

    goto :goto_0

    .line 10
    :cond_4
    iget-object p2, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p2, p1}, Landroid/media/SoundPool;->pause(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 11
    :goto_0
    monitor-exit p0

    return-void

    .line 12
    :cond_5
    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized release()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/miui/maml/SoundManager;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    if-nez v0, :cond_0

    .line 5
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/miui/maml/SoundManager;->stopAllPlaying()V

    .line 9
    iget-object v0, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    .line 12
    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/miui/maml/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    .line 16
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 18
    iget-object v0, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    .line 21
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 24
    iget-object v0, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    .line 27
    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 29
    iput-object v1, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    .line 32
    :cond_1
    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/miui/maml/SoundManager;->mInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    monitor-exit p0

    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    monitor-exit p0

    .line 40
    throw v0
    .line 41
.end method

.method public stopAllPlaying()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    .line 11
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    .line 14
    if-eqz v1, :cond_1

    .line 16
    iget-object v1, p0, Lcom/miui/maml/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v1

    .line 23
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 33
    check-cast v2, Ljava/lang/Integer;

    .line 34
    iget-object v3, p0, Lcom/miui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    .line 36
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 38
    move-result v2

    .line 41
    invoke-virtual {v3, v2}, Landroid/media/SoundPool;->stop(I)V

    .line 42
    goto :goto_0

    .line 45
    :cond_1
    iget-object p0, p0, Lcom/miui/maml/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    .line 46
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 48
    monitor-exit v0

    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p0
    .line 55
.end method
