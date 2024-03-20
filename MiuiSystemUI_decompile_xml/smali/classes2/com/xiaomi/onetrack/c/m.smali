.class public final Lcom/xiaomi/onetrack/c/m;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/xiaomi/onetrack/c/l;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/c/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/c/m;->d:Lcom/xiaomi/onetrack/c/l;

    .line 2
    iput-object p2, p0, Lcom/xiaomi/onetrack/c/m;->a:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/xiaomi/onetrack/c/m;->b:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/xiaomi/onetrack/c/m;->c:Ljava/lang/String;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/c/m;->d:Lcom/xiaomi/onetrack/c/l;

    .line 2
    iget-object v1, p0, Lcom/xiaomi/onetrack/c/m;->a:Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lcom/xiaomi/onetrack/c/m;->b:Ljava/lang/String;

    .line 6
    iget-object p0, p0, Lcom/xiaomi/onetrack/c/m;->c:Ljava/lang/String;

    .line 8
    const-string/jumbo v3, "systemimp doSaveData error: "

    .line 10
    monitor-enter v0

    .line 13
    const/4 v4, 0x0

    .line 14
    :try_start_0
    const-string/jumbo v5, "systemimp_cache_%s"

    .line 15
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 21
    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 25
    new-instance v5, Ljava/io/File;

    .line 26
    invoke-static {}, Lcom/xiaomi/onetrack/c/l;->c()Ljava/lang/String;

    .line 28
    move-result-object v6

    .line 31
    invoke-direct {v5, v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 35
    move-result v1

    .line 38
    if-nez v1, :cond_1

    .line 39
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 41
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 45
    move-result v1

    .line 48
    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 51
    goto :goto_0

    .line 54
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 55
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 57
    move-result-object v6

    .line 60
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 61
    move-result-object v6

    .line 64
    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 68
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 71
    :cond_1
    :goto_0
    new-instance v1, Lorg/json/JSONObject;

    .line 74
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 76
    const-string v6, "eventName"

    .line 79
    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    const-string v2, "data"

    .line 84
    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 89
    move-result-object p0

    .line 92
    invoke-static {p0}, Lcom/xiaomi/onetrack/c/c;->a(Ljava/lang/String;)[B

    .line 93
    move-result-object p0

    .line 96
    new-instance v1, Ljava/io/FileWriter;

    .line 97
    const/4 v2, 0x1

    .line 99
    invoke-direct {v1, v5, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 100
    :try_start_1
    new-instance v2, Ljava/io/BufferedWriter;

    .line 103
    invoke-direct {v2, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 105
    :try_start_2
    invoke-static {p0}, Lcom/xiaomi/onetrack/d/c;->a([B)Ljava/lang/String;

    .line 108
    move-result-object p0

    .line 111
    invoke-virtual {v2, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    :try_start_3
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V

    .line 118
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 121
    goto :goto_3

    .line 124
    :catchall_0
    move-exception p0

    .line 125
    move-object v4, v2

    .line 126
    goto :goto_1

    .line 127
    :catchall_1
    move-exception p0

    .line 128
    :goto_1
    move-object v7, v4

    .line 129
    move-object v4, v1

    .line 130
    move-object v1, v7

    .line 131
    goto :goto_2

    .line 132
    :catchall_2
    move-exception p0

    .line 133
    move-object v1, v4

    .line 134
    :goto_2
    :try_start_4
    const-string v2, "SystemImpCacheManager"

    .line 135
    new-instance v5, Ljava/lang/StringBuilder;

    .line 137
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 142
    move-result-object p0

    .line 145
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    move-result-object p0

    .line 152
    invoke-static {v2, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 153
    :try_start_5
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V

    .line 156
    invoke-static {v4}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 159
    :goto_3
    monitor-exit v0

    .line 162
    return-void

    .line 163
    :catchall_3
    move-exception p0

    .line 164
    :try_start_6
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V

    .line 165
    invoke-static {v4}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V

    .line 168
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 171
    :catchall_4
    move-exception p0

    .line 172
    monitor-exit v0

    .line 173
    throw p0
    .line 174
.end method
