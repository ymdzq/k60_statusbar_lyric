.class public abstract Lcom/airbnb/lottie/LottieCompositionFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final MAGIC:[B

.field public static final taskCache:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    sput-object v0, Lcom/airbnb/lottie/LottieCompositionFactory;->taskCache:Ljava/util/Map;

    .line 7
    const/4 v0, 0x4

    .line 9
    new-array v0, v0, [B

    .line 10
    fill-array-data v0, :array_0

    .line 12
    sput-object v0, Lcom/airbnb/lottie/LottieCompositionFactory;->MAGIC:[B

    .line 15
    return-void

    .line 17
    :array_0
    .array-data 1
        0x50t
        0x4bt
        0x3t
        0x4t
    .end array-data
    .line 18
.end method

.method public static cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/LottieTask;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 2
    const/4 v0, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/model/LottieCompositionCache;->INSTANCE:Lcom/airbnb/lottie/model/LottieCompositionCache;

    .line 6
    iget-object v0, v0, Lcom/airbnb/lottie/model/LottieCompositionCache;->cache:Landroidx/collection/LruCache;

    .line 8
    invoke-virtual {v0, p0}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 13
    check-cast v0, Lcom/airbnb/lottie/LottieComposition;

    .line 14
    :goto_0
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    new-instance p0, Lcom/airbnb/lottie/LottieTask;

    .line 19
    new-instance p1, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda2;

    .line 21
    invoke-direct {p1, v0}, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda2;-><init>(Lcom/airbnb/lottie/LottieComposition;)V

    .line 23
    invoke-direct {p0, p1, v1}, Lcom/airbnb/lottie/LottieTask;-><init>(Ljava/util/concurrent/Callable;Z)V

    .line 26
    return-object p0

    .line 29
    :cond_1
    sget-object v0, Lcom/airbnb/lottie/LottieCompositionFactory;->taskCache:Ljava/util/Map;

    .line 30
    if-eqz p0, :cond_2

    .line 32
    move-object v2, v0

    .line 34
    check-cast v2, Ljava/util/HashMap;

    .line 35
    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 37
    move-result v3

    .line 40
    if-eqz v3, :cond_2

    .line 41
    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    move-result-object p0

    .line 46
    check-cast p0, Lcom/airbnb/lottie/LottieTask;

    .line 47
    return-object p0

    .line 49
    :cond_2
    new-instance v2, Lcom/airbnb/lottie/LottieTask;

    .line 50
    invoke-direct {v2, p1, v1}, Lcom/airbnb/lottie/LottieTask;-><init>(Ljava/util/concurrent/Callable;Z)V

    .line 52
    if-eqz p0, :cond_5

    .line 55
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    invoke-direct {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 59
    new-instance v3, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda3;

    .line 62
    invoke-direct {v3, p0, p1, v1}, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;I)V

    .line 64
    monitor-enter v2

    .line 67
    :try_start_0
    iget-object v1, v2, Lcom/airbnb/lottie/LottieTask;->result:Lcom/airbnb/lottie/LottieResult;

    .line 68
    if-eqz v1, :cond_3

    .line 70
    iget-object v1, v1, Lcom/airbnb/lottie/LottieResult;->value:Ljava/lang/Object;

    .line 72
    if-eqz v1, :cond_3

    .line 74
    invoke-virtual {v3, v1}, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda3;->onResult(Ljava/lang/Object;)V

    .line 76
    :cond_3
    iget-object v1, v2, Lcom/airbnb/lottie/LottieTask;->successListeners:Ljava/util/Set;

    .line 79
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 81
    monitor-exit v2

    .line 84
    new-instance v1, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda3;

    .line 85
    const/4 v3, 0x1

    .line 87
    invoke-direct {v1, p0, p1, v3}, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;I)V

    .line 88
    monitor-enter v2

    .line 91
    :try_start_1
    iget-object v3, v2, Lcom/airbnb/lottie/LottieTask;->result:Lcom/airbnb/lottie/LottieResult;

    .line 92
    if-eqz v3, :cond_4

    .line 94
    iget-object v3, v3, Lcom/airbnb/lottie/LottieResult;->exception:Ljava/lang/Throwable;

    .line 96
    if-eqz v3, :cond_4

    .line 98
    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda3;->onResult(Ljava/lang/Object;)V

    .line 100
    :cond_4
    iget-object v3, v2, Lcom/airbnb/lottie/LottieTask;->failureListeners:Ljava/util/Set;

    .line 103
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    monitor-exit v2

    .line 108
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 109
    move-result p1

    .line 112
    if-nez p1, :cond_5

    .line 113
    check-cast v0, Ljava/util/HashMap;

    .line 115
    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    goto :goto_1

    .line 120
    :catchall_0
    move-exception p0

    .line 121
    monitor-exit v2

    .line 122
    throw p0

    .line 123
    :catchall_1
    move-exception p0

    .line 124
    monitor-exit v2

    .line 125
    throw p0

    .line 126
    :cond_5
    :goto_1
    return-object v2
    .line 127
.end method

.method public static fromAssetSync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 1

    .line 1
    :try_start_0
    const-string v0, ".zip"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    const-string v0, ".lottie"

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 19
    move-result-object p0

    .line 22
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 23
    move-result-object p0

    .line 26
    invoke-static {p0, p2}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 27
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/zip/ZipInputStream;

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 34
    move-result-object p0

    .line 37
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 38
    move-result-object p0

    .line 41
    invoke-direct {v0, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 42
    invoke-static {v0, p2}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromZipStreamSync(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 45
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    return-object p0

    .line 49
    :catch_0
    move-exception p0

    .line 50
    new-instance p1, Lcom/airbnb/lottie/LottieResult;

    .line 51
    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V

    .line 53
    return-object p1
    .line 56
.end method

.method public static fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 2

    .line 1
    :try_start_0
    sget v0, Lokio/Okio__JvmOkioKt;->$r8$clinit:I

    .line 2
    new-instance v0, Lokio/InputStreamSource;

    .line 4
    new-instance v1, Lokio/Timeout;

    .line 6
    invoke-direct {v1}, Lokio/Timeout;-><init>()V

    .line 8
    invoke-direct {v0, p0, v1}, Lokio/InputStreamSource;-><init>(Ljava/io/InputStream;Lokio/Timeout;)V

    .line 11
    new-instance v1, Lokio/RealBufferedSource;

    .line 14
    invoke-direct {v1, v0}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    .line 16
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->REPLACEMENT_CHARS:[Ljava/lang/String;

    .line 19
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;

    .line 21
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;-><init>(Lokio/RealBufferedSource;)V

    .line 23
    const/4 v1, 0x1

    .line 26
    invoke-static {v0, p1, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonReaderSyncInternal(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Ljava/lang/String;Z)Lcom/airbnb/lottie/LottieResult;

    .line 27
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-static {p0}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 31
    return-object p1

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    invoke-static {p0}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 36
    throw p1
    .line 39
.end method

.method public static fromJsonReaderSyncInternal(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Ljava/lang/String;Z)Lcom/airbnb/lottie/LottieResult;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;)Lcom/airbnb/lottie/LottieComposition;

    .line 2
    move-result-object v0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    sget-object v1, Lcom/airbnb/lottie/model/LottieCompositionCache;->INSTANCE:Lcom/airbnb/lottie/model/LottieCompositionCache;

    .line 8
    iget-object v1, v1, Lcom/airbnb/lottie/model/LottieCompositionCache;->cache:Landroidx/collection/LruCache;

    .line 10
    invoke-virtual {v1, p1, v0}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    goto :goto_2

    .line 17
    :catch_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    new-instance p1, Lcom/airbnb/lottie/LottieResult;

    .line 20
    invoke-direct {p1, v0}, Lcom/airbnb/lottie/LottieResult;-><init>(Lcom/airbnb/lottie/LottieComposition;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    if-eqz p2, :cond_1

    .line 25
    invoke-static {p0}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 27
    :cond_1
    return-object p1

    .line 30
    :goto_1
    :try_start_1
    new-instance v0, Lcom/airbnb/lottie/LottieResult;

    .line 31
    invoke-direct {v0, p1}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    if-eqz p2, :cond_2

    .line 36
    invoke-static {p0}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 38
    :cond_2
    return-object v0

    .line 41
    :goto_2
    if-eqz p2, :cond_3

    .line 42
    invoke-static {p0}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 44
    :cond_3
    throw p1
    .line 47
.end method

.method public static fromRawRes(Landroid/content/Context;Ljava/lang/String;I)Lcom/airbnb/lottie/LottieTask;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    move-result-object p0

    .line 10
    new-instance v1, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda4;

    .line 11
    invoke-direct {v1, v0, p0, p2, p1}, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda4;-><init>(Ljava/lang/ref/WeakReference;Landroid/content/Context;ILjava/lang/String;)V

    .line 13
    invoke-static {p1, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/LottieTask;

    .line 16
    move-result-object p0

    .line 19
    return-object p0
    .line 20
.end method

.method public static fromRawResSync(Landroid/content/Context;Ljava/lang/String;I)Lcom/airbnb/lottie/LottieResult;
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 6
    move-result-object p0

    .line 9
    sget p2, Lokio/Okio__JvmOkioKt;->$r8$clinit:I

    .line 10
    new-instance p2, Lokio/InputStreamSource;

    .line 12
    new-instance v0, Lokio/Timeout;

    .line 14
    invoke-direct {v0}, Lokio/Timeout;-><init>()V

    .line 16
    invoke-direct {p2, p0, v0}, Lokio/InputStreamSource;-><init>(Ljava/io/InputStream;Lokio/Timeout;)V

    .line 19
    new-instance p0, Lokio/RealBufferedSource;

    .line 22
    invoke-direct {p0, p2}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 24
    :try_start_1
    invoke-virtual {p0}, Lokio/RealBufferedSource;->peek()Lokio/RealBufferedSource;

    .line 27
    move-result-object p2

    .line 30
    sget-object v0, Lcom/airbnb/lottie/LottieCompositionFactory;->MAGIC:[B

    .line 31
    array-length v1, v0

    .line 33
    const/4 v2, 0x0

    .line 34
    :goto_0
    if-ge v2, v1, :cond_1

    .line 35
    aget-byte v3, v0, v2

    .line 37
    invoke-virtual {p2}, Lokio/RealBufferedSource;->readByte()B

    .line 39
    move-result v4

    .line 42
    if-eq v4, v3, :cond_0

    .line 43
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 45
    goto :goto_1

    .line 47
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 48
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p2}, Lokio/RealBufferedSource;->close()V

    .line 51
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 54
    goto :goto_1

    .line 56
    :catch_0
    :try_start_2
    sget-object p2, Lcom/airbnb/lottie/utils/Logger;->INSTANCE:Lcom/airbnb/lottie/utils/LogcatLogger;

    .line 57
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 62
    goto :goto_1

    .line 64
    :catch_1
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 65
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 67
    move-result p2

    .line 70
    if-eqz p2, :cond_2

    .line 71
    new-instance p2, Ljava/util/zip/ZipInputStream;

    .line 73
    new-instance v0, Lokio/RealBufferedSource$inputStream$1;

    .line 75
    invoke-direct {v0, p0}, Lokio/RealBufferedSource$inputStream$1;-><init>(Lokio/RealBufferedSource;)V

    .line 77
    invoke-direct {p2, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 80
    invoke-static {p2, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromZipStreamSync(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 83
    move-result-object p0

    .line 86
    return-object p0

    .line 87
    :cond_2
    new-instance p2, Lokio/RealBufferedSource$inputStream$1;

    .line 88
    invoke-direct {p2, p0}, Lokio/RealBufferedSource$inputStream$1;-><init>(Lokio/RealBufferedSource;)V

    .line 90
    invoke-static {p2, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 93
    move-result-object p0
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 96
    return-object p0

    .line 97
    :catch_2
    move-exception p0

    .line 98
    new-instance p1, Lcom/airbnb/lottie/LottieResult;

    .line 99
    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V

    .line 101
    return-object p1
    .line 104
.end method

.method public static fromZipStreamSync(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromZipStreamSyncInternal(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 2
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-static {p0}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 6
    return-object p1

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    invoke-static {p0}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 11
    throw p1
    .line 14
.end method

.method public static fromZipStreamSyncInternal(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    :try_start_0
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    .line 7
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    move-object v3, v2

    .line 12
    :goto_0
    if-eqz v1, :cond_5

    .line 13
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 15
    move-result-object v4

    .line 18
    const-string v5, "__MACOSX"

    .line 19
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 21
    move-result v5

    .line 24
    if-eqz v5, :cond_0

    .line 25
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 27
    goto/16 :goto_2

    .line 30
    :cond_0
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 32
    move-result-object v5

    .line 35
    const-string v6, "manifest.json"

    .line 36
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 38
    move-result v5

    .line 41
    if-eqz v5, :cond_1

    .line 42
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 44
    goto :goto_2

    .line 47
    :cond_1
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 51
    const-string v5, ".json"

    .line 52
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 54
    move-result v1

    .line 57
    if-eqz v1, :cond_2

    .line 58
    sget v1, Lokio/Okio__JvmOkioKt;->$r8$clinit:I

    .line 60
    new-instance v1, Lokio/InputStreamSource;

    .line 62
    new-instance v3, Lokio/Timeout;

    .line 64
    invoke-direct {v3}, Lokio/Timeout;-><init>()V

    .line 66
    invoke-direct {v1, p0, v3}, Lokio/InputStreamSource;-><init>(Ljava/io/InputStream;Lokio/Timeout;)V

    .line 69
    new-instance v3, Lokio/RealBufferedSource;

    .line 72
    invoke-direct {v3, v1}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    .line 74
    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonReader;->REPLACEMENT_CHARS:[Ljava/lang/String;

    .line 77
    new-instance v1, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;

    .line 79
    invoke-direct {v1, v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;-><init>(Lokio/RealBufferedSource;)V

    .line 81
    const/4 v3, 0x0

    .line 84
    invoke-static {v1, v2, v3}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonReaderSyncInternal(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Ljava/lang/String;Z)Lcom/airbnb/lottie/LottieResult;

    .line 85
    move-result-object v1

    .line 88
    iget-object v1, v1, Lcom/airbnb/lottie/LottieResult;->value:Ljava/lang/Object;

    .line 89
    move-object v3, v1

    .line 91
    check-cast v3, Lcom/airbnb/lottie/LottieComposition;

    .line 92
    goto :goto_2

    .line 94
    :cond_2
    const-string v1, ".png"

    .line 95
    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 97
    move-result v1

    .line 100
    if-nez v1, :cond_4

    .line 101
    const-string v1, ".webp"

    .line 103
    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 105
    move-result v1

    .line 108
    if-nez v1, :cond_4

    .line 109
    const-string v1, ".jpg"

    .line 111
    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 113
    move-result v1

    .line 116
    if-nez v1, :cond_4

    .line 117
    const-string v1, ".jpeg"

    .line 119
    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 121
    move-result v1

    .line 124
    if-eqz v1, :cond_3

    .line 125
    goto :goto_1

    .line 127
    :cond_3
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 128
    goto :goto_2

    .line 131
    :cond_4
    :goto_1
    const-string v1, "/"

    .line 132
    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 134
    move-result-object v1

    .line 137
    array-length v4, v1

    .line 138
    add-int/lit8 v4, v4, -0x1

    .line 139
    aget-object v1, v1, v4

    .line 141
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    .line 143
    move-result-object v4

    .line 146
    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :goto_2
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    .line 150
    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    goto/16 :goto_0

    .line 154
    :cond_5
    if-nez v3, :cond_6

    .line 156
    new-instance p0, Lcom/airbnb/lottie/LottieResult;

    .line 158
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 160
    const-string v0, "Unable to parse composition"

    .line 162
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V

    .line 167
    return-object p0

    .line 170
    :cond_6
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 171
    move-result-object p0

    .line 174
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 175
    move-result-object p0

    .line 178
    :cond_7
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 179
    move-result v0

    .line 182
    if-eqz v0, :cond_b

    .line 183
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 185
    move-result-object v0

    .line 188
    check-cast v0, Ljava/util/Map$Entry;

    .line 189
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 191
    move-result-object v1

    .line 194
    check-cast v1, Ljava/lang/String;

    .line 195
    iget-object v4, v3, Lcom/airbnb/lottie/LottieComposition;->images:Ljava/util/Map;

    .line 197
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 199
    move-result-object v4

    .line 202
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 203
    move-result-object v4

    .line 206
    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 207
    move-result v5

    .line 210
    if-eqz v5, :cond_9

    .line 211
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 213
    move-result-object v5

    .line 216
    check-cast v5, Lcom/airbnb/lottie/LottieImageAsset;

    .line 217
    iget-object v6, v5, Lcom/airbnb/lottie/LottieImageAsset;->fileName:Ljava/lang/String;

    .line 219
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    move-result v6

    .line 224
    if-eqz v6, :cond_8

    .line 225
    goto :goto_4

    .line 227
    :cond_9
    move-object v5, v2

    .line 228
    :goto_4
    if-eqz v5, :cond_7

    .line 229
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 231
    move-result-object v0

    .line 234
    check-cast v0, Landroid/graphics/Bitmap;

    .line 235
    sget-object v1, Lcom/airbnb/lottie/utils/Utils;->threadLocalPathMeasure:Lcom/airbnb/lottie/utils/Utils$1;

    .line 237
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 239
    move-result v1

    .line 242
    iget v4, v5, Lcom/airbnb/lottie/LottieImageAsset;->width:I

    .line 243
    iget v6, v5, Lcom/airbnb/lottie/LottieImageAsset;->height:I

    .line 245
    if-ne v1, v4, :cond_a

    .line 247
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 249
    move-result v1

    .line 252
    if-ne v1, v6, :cond_a

    .line 253
    goto :goto_5

    .line 255
    :cond_a
    const/4 v1, 0x1

    .line 256
    invoke-static {v0, v4, v6, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 257
    move-result-object v1

    .line 260
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 261
    move-object v0, v1

    .line 264
    :goto_5
    iput-object v0, v5, Lcom/airbnb/lottie/LottieImageAsset;->bitmap:Landroid/graphics/Bitmap;

    .line 265
    goto :goto_3

    .line 267
    :cond_b
    iget-object p0, v3, Lcom/airbnb/lottie/LottieComposition;->images:Ljava/util/Map;

    .line 268
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 270
    move-result-object p0

    .line 273
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 274
    move-result-object p0

    .line 277
    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 278
    move-result v0

    .line 281
    if-eqz v0, :cond_d

    .line 282
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 284
    move-result-object v0

    .line 287
    check-cast v0, Ljava/util/Map$Entry;

    .line 288
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 290
    move-result-object v1

    .line 293
    check-cast v1, Lcom/airbnb/lottie/LottieImageAsset;

    .line 294
    iget-object v1, v1, Lcom/airbnb/lottie/LottieImageAsset;->bitmap:Landroid/graphics/Bitmap;

    .line 296
    if-nez v1, :cond_c

    .line 298
    new-instance p0, Lcom/airbnb/lottie/LottieResult;

    .line 300
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    .line 304
    const-string v2, "There is no image for "

    .line 306
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 311
    move-result-object v0

    .line 314
    check-cast v0, Lcom/airbnb/lottie/LottieImageAsset;

    .line 315
    iget-object v0, v0, Lcom/airbnb/lottie/LottieImageAsset;->fileName:Ljava/lang/String;

    .line 317
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    move-result-object v0

    .line 325
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 326
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V

    .line 329
    return-object p0

    .line 332
    :cond_d
    if-eqz p1, :cond_e

    .line 333
    sget-object p0, Lcom/airbnb/lottie/model/LottieCompositionCache;->INSTANCE:Lcom/airbnb/lottie/model/LottieCompositionCache;

    .line 335
    iget-object p0, p0, Lcom/airbnb/lottie/model/LottieCompositionCache;->cache:Landroidx/collection/LruCache;

    .line 337
    invoke-virtual {p0, p1, v3}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    :cond_e
    new-instance p0, Lcom/airbnb/lottie/LottieResult;

    .line 342
    invoke-direct {p0, v3}, Lcom/airbnb/lottie/LottieResult;-><init>(Lcom/airbnb/lottie/LottieComposition;)V

    .line 344
    return-object p0

    .line 347
    :catch_0
    move-exception p0

    .line 348
    new-instance p1, Lcom/airbnb/lottie/LottieResult;

    .line 349
    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V

    .line 351
    return-object p1
    .line 354
.end method

.method public static rawResCacheKey(ILandroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "rawRes"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 13
    move-result-object p1

    .line 16
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 17
    and-int/lit8 p1, p1, 0x30

    .line 19
    const/16 v1, 0x20

    .line 21
    if-ne p1, v1, :cond_0

    .line 23
    const/4 p1, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    :goto_0
    if-eqz p1, :cond_1

    .line 28
    const-string p1, "_night_"

    .line 30
    goto :goto_1

    .line 32
    :cond_1
    const-string p1, "_day_"

    .line 33
    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 44
    return-object p0
    .line 45
.end method
