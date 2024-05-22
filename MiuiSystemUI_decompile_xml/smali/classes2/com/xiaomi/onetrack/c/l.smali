.class public final Lcom/xiaomi/onetrack/c/l;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static volatile f:Lcom/xiaomi/onetrack/c/l;


# instance fields
.field public final h:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    :try_start_0
    new-instance v0, Landroid/os/HandlerThread;

    .line 5
    const-string/jumbo v1, "system_imp_cache_manager"

    .line 7
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 13
    new-instance v1, Landroid/os/Handler;

    .line 16
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 18
    move-result-object v0

    .line 21
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 22
    iput-object v1, p0, Lcom/xiaomi/onetrack/c/l;->h:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    const-string v1, "SystemImpCacheManager init Throwable: "

    .line 31
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 46
    const-string v0, "SystemImpCacheManager"

    .line 47
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :goto_0
    return-void
    .line 52
.end method

.method public static a()Lcom/xiaomi/onetrack/c/l;
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/c/l;->f:Lcom/xiaomi/onetrack/c/l;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/xiaomi/onetrack/c/l;->f:Lcom/xiaomi/onetrack/c/l;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/xiaomi/onetrack/c/l;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/xiaomi/onetrack/c/l;->f:Lcom/xiaomi/onetrack/c/l;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/xiaomi/onetrack/c/l;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/c/l;-><init>()V

    sput-object v1, Lcom/xiaomi/onetrack/c/l;->f:Lcom/xiaomi/onetrack/c/l;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaomi/onetrack/c/l;->f:Lcom/xiaomi/onetrack/c/l;

    return-object v0
.end method

.method public static declared-synchronized b(Ljava/lang/String;)Ljava/util/List;
    .locals 8

    .line 1
    const-class v0, Lcom/xiaomi/onetrack/c/l;

    .line 2
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    const-string/jumbo v2, "systemimp_cache_%s"

    .line 6
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 12
    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    move-result-object p0

    .line 16
    new-instance v2, Ljava/io/File;

    .line 17
    invoke-static {}, Lcom/xiaomi/onetrack/c/l;->c()Ljava/lang/String;

    .line 19
    move-result-object v3

    .line 22
    invoke-direct {v2, v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 26
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 29
    if-nez p0, :cond_0

    .line 30
    monitor-exit v0

    .line 32
    return-object v1

    .line 33
    :cond_0
    :try_start_1
    new-instance p0, Ljava/util/ArrayList;

    .line 34
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 36
    :try_start_2
    new-instance v3, Ljava/io/FileReader;

    .line 39
    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 41
    :try_start_3
    new-instance v2, Ljava/io/BufferedReader;

    .line 44
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 46
    :goto_0
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    invoke-static {v1}, Lcom/xiaomi/onetrack/d/c;->a(Ljava/lang/String;)[B

    .line 55
    move-result-object v1

    .line 58
    invoke-static {v1}, Lcom/xiaomi/onetrack/c/c;->a([B)Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 62
    new-instance v4, Lorg/json/JSONObject;

    .line 63
    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 68
    goto :goto_0

    .line 71
    :cond_1
    :try_start_5
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V

    .line 72
    :goto_1
    invoke-static {v3}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 75
    goto :goto_5

    .line 78
    :catch_0
    move-exception v1

    .line 79
    goto :goto_4

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto :goto_6

    .line 82
    :catch_1
    move-exception v2

    .line 83
    move-object v7, v2

    .line 84
    move-object v2, v1

    .line 85
    move-object v1, v7

    .line 86
    goto :goto_4

    .line 87
    :catch_2
    move-exception v2

    .line 88
    move-object v3, v1

    .line 89
    move-object v1, v2

    .line 90
    move-object v2, v3

    .line 91
    goto :goto_4

    .line 92
    :catchall_1
    move-exception p0

    .line 93
    goto :goto_2

    .line 94
    :catch_3
    move-exception p0

    .line 95
    goto :goto_3

    .line 96
    :goto_2
    move-object v3, v1

    .line 97
    goto :goto_6

    .line 98
    :goto_3
    move-object v2, v1

    .line 99
    move-object v3, v2

    .line 100
    move-object v1, p0

    .line 101
    move-object p0, v3

    .line 102
    :goto_4
    :try_start_6
    const-string v4, "SystemImpCacheManager"

    .line 103
    new-instance v5, Ljava/lang/StringBuilder;

    .line 105
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    const-string v6, "cta getCacheData error: "

    .line 110
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 115
    move-result-object v6

    .line 118
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object v5

    .line 125
    invoke-static {v4, v5}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 129
    :try_start_7
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 132
    goto :goto_1

    .line 135
    :goto_5
    monitor-exit v0

    .line 136
    return-object p0

    .line 137
    :catchall_2
    move-exception p0

    .line 138
    move-object v1, v2

    .line 139
    :goto_6
    :try_start_8
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V

    .line 140
    invoke-static {v3}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V

    .line 143
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 146
    :catchall_3
    move-exception p0

    .line 147
    monitor-exit v0

    .line 148
    throw p0
    .line 149
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    const-string/jumbo v2, "systemimp_cache"

    .line 3
    invoke-static {v1, v0, v2}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 8
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/xiaomi/onetrack/c/l;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-string/jumbo v1, "systemimp_cache_%s"

    .line 10
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 12
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 13
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 14
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 15
    aget-object p1, v0, v1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 16
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_1
    const-string v0, "SystemImpCacheManager"

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "systemimp removeObsoleteEvent error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :cond_3
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/c/l;->h:Landroid/os/Handler;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/c/l;->h:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/onetrack/c/n;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/c/n;-><init>(Lcom/xiaomi/onetrack/c/l;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    .line 10
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
