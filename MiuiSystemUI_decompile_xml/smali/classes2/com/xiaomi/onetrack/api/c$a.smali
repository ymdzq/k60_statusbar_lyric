.class public final Lcom/xiaomi/onetrack/api/c$a;
.super Landroid/os/Handler;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/api/c;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/c;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/c$a;->a:Lcom/xiaomi/onetrack/api/c;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 5
    const/16 v1, 0x65

    .line 7
    const/16 v2, 0x64

    .line 9
    const-string v3, "BroadcastManager"

    .line 11
    if-eq v0, v2, :cond_1

    .line 13
    if-ne v0, v1, :cond_4

    .line 15
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/xiaomi/onetrack/api/c$a;->a:Lcom/xiaomi/onetrack/api/c;

    .line 17
    iget-object v4, v4, Lcom/xiaomi/onetrack/api/c;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v4

    .line 24
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v5

    .line 28
    if-eqz v5, :cond_4

    .line 29
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v5

    .line 34
    check-cast v5, Lcom/xiaomi/onetrack/api/j;

    .line 35
    if-ne v0, v2, :cond_3

    .line 37
    invoke-interface {v5}, Lcom/xiaomi/onetrack/api/j;->a()V

    .line 39
    goto :goto_0

    .line 42
    :cond_3
    if-ne v0, v1, :cond_2

    .line 43
    invoke-interface {v5}, Lcom/xiaomi/onetrack/api/j;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    const-string v1, "screenReceiver exception: "

    .line 50
    invoke-static {v3, v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    .line 55
    const/16 v1, 0xa

    .line 57
    if-ne v0, v1, :cond_9

    .line 59
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/c$a;->a:Lcom/xiaomi/onetrack/api/c;

    .line 61
    iget-object v0, v0, Lcom/xiaomi/onetrack/api/c;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 65
    move-result v0

    .line 68
    if-eqz v0, :cond_8

    .line 69
    :try_start_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 71
    check-cast p1, Landroid/content/Intent;

    .line 73
    invoke-static {}, Lcom/xiaomi/onetrack/g/c;->b()Z

    .line 75
    move-result p1

    .line 78
    sput-boolean p1, Lcom/xiaomi/onetrack/b/n;->c:Z

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    .line 81
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    const-string v1, "Only one of allowed NetworkInfo :"

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const/4 v1, 0x0

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 92
    const-string v1, " ,network status changed, isNetworkConnected: "

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    sget-boolean v1, Lcom/xiaomi/onetrack/b/n;->c:Z

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object v0

    .line 108
    invoke-static {v3, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    if-eqz p1, :cond_8

    .line 112
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/c$a;->a:Lcom/xiaomi/onetrack/api/c;

    .line 114
    iget-boolean p1, p1, Lcom/xiaomi/onetrack/api/c;->l:Z

    .line 116
    if-eqz p1, :cond_6

    .line 118
    invoke-static {}, Lcom/xiaomi/onetrack/a/c/b;->a()Lcom/xiaomi/onetrack/a/c/b;

    .line 120
    move-result-object p1

    .line 123
    sget-boolean v0, Lcom/xiaomi/onetrack/b/n;->c:Z

    .line 124
    if-eqz v0, :cond_5

    .line 126
    iget-object p1, p1, Lcom/xiaomi/onetrack/a/c/b;->c:Lcom/xiaomi/onetrack/a/c/b$a;

    .line 128
    if-eqz p1, :cond_6

    .line 130
    const-wide/16 v0, 0x3e8

    .line 132
    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/onetrack/a/c/b$a;->a(J)V

    .line 134
    goto :goto_1

    .line 137
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/c$a;->a:Lcom/xiaomi/onetrack/api/c;

    .line 141
    iget-boolean p1, p1, Lcom/xiaomi/onetrack/api/c;->m:Z

    .line 143
    if-eqz p1, :cond_8

    .line 145
    sget-object p1, Lcom/xiaomi/onetrack/c/s$a;->a:Lcom/xiaomi/onetrack/c/s;

    .line 147
    sget-boolean v0, Lcom/xiaomi/onetrack/b/n;->c:Z

    .line 149
    iget-object p1, p1, Lcom/xiaomi/onetrack/c/s;->g:Lcom/xiaomi/onetrack/c/p;

    .line 151
    if-eqz p1, :cond_7

    .line 153
    new-instance v1, Lcom/xiaomi/onetrack/c/q;

    .line 155
    invoke-direct {v1, p1, v0}, Lcom/xiaomi/onetrack/c/q;-><init>(Lcom/xiaomi/onetrack/c/p;Z)V

    .line 157
    invoke-static {v1}, Lcom/xiaomi/onetrack/c/a;->a(Ljava/lang/Runnable;)V

    .line 160
    goto :goto_2

    .line 163
    :cond_7
    const-string p1, "UploaderEngine"

    .line 164
    const-string v0, "*** impossible, upload timer should not be null"

    .line 166
    invoke-static {p1, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    goto :goto_2

    .line 171
    :catchall_0
    move-exception p1

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    .line 173
    const-string v1, "MESSAGE_BROADCAST_NET_RECEIVER throwable:"

    .line 175
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 180
    move-result-object p1

    .line 183
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    move-result-object p1

    .line 190
    invoke-static {v3, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_8
    :goto_2
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/c$a;->a:Lcom/xiaomi/onetrack/api/c;

    .line 194
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/c;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 196
    const/4 p1, 0x1

    .line 198
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 199
    :cond_9
    return-void
    .line 202
.end method
