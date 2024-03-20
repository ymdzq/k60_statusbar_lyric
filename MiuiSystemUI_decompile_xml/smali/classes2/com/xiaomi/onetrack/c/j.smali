.class public final Lcom/xiaomi/onetrack/c/j;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/c/j;->a:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/xiaomi/onetrack/c/j;->b:Ljava/lang/String;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/xiaomi/onetrack/api/c;->a()Lcom/xiaomi/onetrack/api/c;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-boolean v1, Lcom/xiaomi/onetrack/api/c;->h:Z

    .line 9
    const/4 v2, 0x1

    .line 11
    if-nez v1, :cond_0

    .line 12
    sput-boolean v2, Lcom/xiaomi/onetrack/api/c;->h:Z

    .line 14
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    .line 16
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 18
    const-string v3, "android.intent.action.SCREEN_ON"

    .line 21
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 23
    const-string v3, "android.intent.action.SCREEN_OFF"

    .line 26
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    sget-object v3, Lcom/xiaomi/onetrack/f/a;->a:Landroid/content/Context;

    .line 31
    iget-object v0, v0, Lcom/xiaomi/onetrack/api/c;->n:Lcom/xiaomi/onetrack/api/d;

    .line 33
    invoke-virtual {v3, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 35
    const-string v0, "BroadcastManager"

    .line 38
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 43
    const-string v1, "register screen receiver"

    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    goto :goto_0

    .line 49
    :catchall_0
    const/4 v0, 0x0

    .line 50
    sput-boolean v0, Lcom/xiaomi/onetrack/api/c;->h:Z

    .line 51
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/c/j;->a:Ljava/lang/String;

    .line 53
    iget-object p0, p0, Lcom/xiaomi/onetrack/c/j;->b:Ljava/lang/String;

    .line 55
    const-string v1, "cta doSaveData error: "

    .line 57
    const-class v3, Lcom/xiaomi/onetrack/c/i;

    .line 59
    monitor-enter v3

    .line 61
    :try_start_1
    sget-object v4, Lcom/xiaomi/onetrack/c/i;->i:Ljava/text/SimpleDateFormat;

    .line 62
    new-instance v5, Ljava/util/Date;

    .line 64
    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 66
    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 69
    move-result-object v4

    .line 72
    const-string v5, "onetrack_netaccess_%s"

    .line 73
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 75
    move-result-object v4

    .line 78
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 79
    move-result-object v4

    .line 82
    new-instance v5, Ljava/io/File;

    .line 83
    invoke-static {}, Lcom/xiaomi/onetrack/c/i;->e()Ljava/lang/String;

    .line 85
    move-result-object v6

    .line 88
    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 89
    const/4 v4, 0x0

    .line 92
    :try_start_2
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 93
    move-result v6

    .line 96
    if-nez v6, :cond_2

    .line 97
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 99
    move-result-object v6

    .line 102
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 103
    move-result v6

    .line 106
    if-eqz v6, :cond_1

    .line 107
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 109
    goto :goto_1

    .line 112
    :cond_1
    new-instance v6, Ljava/io/File;

    .line 113
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 115
    move-result-object v7

    .line 118
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 119
    move-result-object v7

    .line 122
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 126
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 129
    :cond_2
    :goto_1
    new-instance v6, Lorg/json/JSONObject;

    .line 132
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 134
    const-string v7, "eventName"

    .line 137
    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    const-string v0, "data"

    .line 142
    invoke-virtual {v6, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 147
    move-result-object p0

    .line 150
    invoke-static {p0}, Lcom/xiaomi/onetrack/c/c;->a(Ljava/lang/String;)[B

    .line 151
    move-result-object p0

    .line 154
    new-instance v0, Ljava/io/FileWriter;

    .line 155
    invoke-direct {v0, v5, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 157
    :try_start_3
    new-instance v5, Ljava/io/BufferedWriter;

    .line 160
    invoke-direct {v5, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 162
    :try_start_4
    invoke-static {p0}, Lcom/xiaomi/onetrack/d/c;->a([B)Ljava/lang/String;

    .line 165
    move-result-object p0

    .line 168
    invoke-virtual {v5, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->newLine()V

    .line 172
    sput-boolean v2, Lcom/xiaomi/onetrack/c/i;->k:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 175
    :try_start_5
    invoke-static {v5}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 177
    goto :goto_3

    .line 180
    :catchall_1
    move-exception p0

    .line 181
    move-object v4, v5

    .line 182
    goto :goto_4

    .line 183
    :catch_0
    move-exception p0

    .line 184
    move-object v4, v5

    .line 185
    goto :goto_2

    .line 186
    :catch_1
    move-exception p0

    .line 187
    goto :goto_2

    .line 188
    :catchall_2
    move-exception p0

    .line 189
    move-object v0, v4

    .line 190
    goto :goto_4

    .line 191
    :catch_2
    move-exception p0

    .line 192
    move-object v0, v4

    .line 193
    :goto_2
    :try_start_6
    const-string v2, "NetworkAccessManager"

    .line 194
    new-instance v5, Ljava/lang/StringBuilder;

    .line 196
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 201
    move-result-object v1

    .line 204
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    move-result-object v1

    .line 211
    invoke-static {v2, v1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 215
    :try_start_7
    invoke-static {v4}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V

    .line 218
    :goto_3
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 221
    monitor-exit v3

    .line 224
    return-void

    .line 225
    :catchall_3
    move-exception p0

    .line 226
    move-object v8, v4

    .line 227
    move-object v4, v0

    .line 228
    move-object v0, v8

    .line 229
    move-object v8, v4

    .line 230
    move-object v4, v0

    .line 231
    move-object v0, v8

    .line 232
    :goto_4
    :try_start_8
    invoke-static {v4}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V

    .line 233
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V

    .line 236
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 239
    :catchall_4
    move-exception p0

    .line 240
    monitor-exit v3

    .line 241
    throw p0
    .line 242
.end method
