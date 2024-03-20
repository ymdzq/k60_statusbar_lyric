.class public final Lcom/xiaomi/onetrack/api/n;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/api/m;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/n;->a:Lcom/xiaomi/onetrack/api/m;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/api/c;->a()Lcom/xiaomi/onetrack/api/c;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/n;->a:Lcom/xiaomi/onetrack/api/m;

    .line 6
    iget-object v1, v1, Lcom/xiaomi/onetrack/api/m;->b:Lcom/xiaomi/onetrack/api/j;

    .line 8
    iget-object v0, v0, Lcom/xiaomi/onetrack/api/c;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    .line 12
    move-result v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_0
    sget-object v0, Lcom/xiaomi/onetrack/b/a;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    sget-object v0, Lcom/xiaomi/onetrack/b/a$a;->a:Lcom/xiaomi/onetrack/b/a;

    .line 23
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/n;->a:Lcom/xiaomi/onetrack/api/m;

    .line 25
    iget-object v1, v1, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    .line 27
    iget-object v1, v1, Lcom/xiaomi/onetrack/Configuration;->a:Ljava/lang/String;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    sget-object v0, Lcom/xiaomi/onetrack/b/a;->B:Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 36
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/n;->a:Lcom/xiaomi/onetrack/api/m;

    .line 41
    iget-object v0, v0, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->D()V

    .line 48
    sget-object v0, Lcom/xiaomi/onetrack/util/aa;->c:Landroid/content/SharedPreferences;

    .line 51
    const-string v1, "first_launch_time"

    .line 53
    const-wide/16 v2, 0x0

    .line 55
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 57
    move-result-wide v0

    .line 60
    cmp-long v0, v0, v2

    .line 61
    if-nez v0, :cond_1

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 65
    move-result-wide v0

    .line 68
    const-string v2, "first_launch_time"

    .line 69
    invoke-static {v2, v0, v1}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;J)V

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/n;->a:Lcom/xiaomi/onetrack/api/m;

    .line 74
    iget-object v0, v0, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    const/4 v0, 0x0

    .line 81
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 82
    move-result v1

    .line 85
    if-nez v1, :cond_4

    .line 86
    invoke-static {}, Lcom/xiaomi/onetrack/util/o;->a()Lcom/xiaomi/onetrack/util/o;

    .line 88
    move-result-object v1

    .line 91
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/n;->a:Lcom/xiaomi/onetrack/api/m;

    .line 92
    iget-object v2, v2, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    .line 94
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 102
    move-result v2

    .line 105
    if-eqz v2, :cond_2

    .line 106
    goto :goto_0

    .line 108
    :cond_2
    sput-object v0, Lcom/xiaomi/onetrack/util/o;->g:Ljava/lang/String;

    .line 109
    iget-boolean v2, v1, Lcom/xiaomi/onetrack/util/o;->k:Z

    .line 111
    if-eqz v2, :cond_3

    .line 113
    invoke-virtual {v1, v0}, Lcom/xiaomi/onetrack/util/o;->b(Ljava/lang/String;)V

    .line 115
    :cond_3
    sget-object v0, Lcom/xiaomi/onetrack/util/o;->g:Ljava/lang/String;

    .line 118
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/aa;->e(Ljava/lang/String;)V

    .line 120
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/n;->a:Lcom/xiaomi/onetrack/api/m;

    .line 123
    invoke-static {p0}, Lcom/xiaomi/onetrack/api/m;->c(Lcom/xiaomi/onetrack/api/m;)V

    .line 125
    sget-object p0, Lcom/xiaomi/onetrack/util/d;->h:Lcom/xiaomi/onetrack/util/d;

    .line 128
    if-nez p0, :cond_6

    .line 130
    const-class p0, Lcom/xiaomi/onetrack/util/d;

    .line 132
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 134
    :try_start_1
    sget-object v0, Lcom/xiaomi/onetrack/util/d;->h:Lcom/xiaomi/onetrack/util/d;

    .line 135
    if-nez v0, :cond_5

    .line 137
    new-instance v0, Lcom/xiaomi/onetrack/util/d;

    .line 139
    invoke-direct {v0}, Lcom/xiaomi/onetrack/util/d;-><init>()V

    .line 141
    sput-object v0, Lcom/xiaomi/onetrack/util/d;->h:Lcom/xiaomi/onetrack/util/d;

    .line 144
    :cond_5
    monitor-exit p0

    .line 146
    goto :goto_1

    .line 147
    :catchall_0
    move-exception v0

    .line 148
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    :try_start_2
    throw v0

    .line 150
    :cond_6
    :goto_1
    const/4 p0, 0x0

    .line 151
    invoke-static {p0}, Lcom/xiaomi/onetrack/c/i;->c(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 152
    goto :goto_2

    .line 155
    :catchall_1
    move-exception p0

    .line 156
    const-string v0, "OneTrackImp"

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    .line 159
    const-string v2, "init WorkerExecutor execute throwable:"

    .line 161
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 166
    move-result-object p0

    .line 169
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    move-result-object p0

    .line 176
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :goto_2
    return-void
    .line 180
.end method
