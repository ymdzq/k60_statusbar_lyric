.class public final Lcom/xiaomi/onetrack/api/ar$b;
.super Landroid/os/Handler;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/api/ar;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/ar;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ar$b;->a:Lcom/xiaomi/onetrack/api/ar;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget p1, p1, Landroid/os/Message;->what:I

    .line 5
    const/4 v0, 0x1

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ar$b;->a:Lcom/xiaomi/onetrack/api/ar;

    .line 10
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/api/ar;->f()V

    .line 12
    goto/16 :goto_3

    .line 15
    :cond_0
    const/4 v1, 0x2

    .line 17
    if-ne p1, v1, :cond_4

    .line 18
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ar$b;->a:Lcom/xiaomi/onetrack/api/ar;

    .line 20
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/ar;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 24
    move-result p1

    .line 27
    const/4 v1, 0x0

    .line 28
    const-string v2, "ServiceConnectManager"

    .line 29
    if-nez p1, :cond_2

    .line 31
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/ar;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 35
    move-result p1

    .line 38
    if-nez p1, :cond_2

    .line 39
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/ar;->d:Lcom/miui/analytics/ITrack;

    .line 41
    if-nez p1, :cond_2

    .line 43
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/ar;->n:Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;

    .line 45
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/ar;->g:Landroid/content/Context;

    .line 47
    iget-object v4, p0, Lcom/xiaomi/onetrack/api/ar;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    const-string/jumbo v5, "unbindService e1: "

    .line 51
    const-string v6, "bindService:  mConnecting: "

    .line 54
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ar;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 58
    :try_start_0
    new-instance v7, Landroid/content/Intent;

    .line 61
    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 63
    const-string v8, "com.miui.analytics"

    .line 66
    const-string v9, "com.miui.analytics.onetrack.OneTrackService"

    .line 68
    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    invoke-virtual {v3, v7, p1, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 73
    move-result v7

    .line 76
    if-eqz v7, :cond_1

    .line 77
    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 79
    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 83
    :try_start_1
    invoke-virtual {v3, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    .line 90
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    .line 91
    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 96
    move-result-object v0

    .line 99
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object v0

    .line 106
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 110
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    const-string v5, " bindResult:"

    .line 118
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object v0

    .line 129
    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 130
    goto :goto_2

    .line 133
    :catchall_1
    move-exception v0

    .line 134
    :try_start_3
    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 135
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 138
    invoke-virtual {v3, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 141
    goto :goto_1

    .line 144
    :catchall_2
    move-exception p1

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    .line 146
    const-string v4, "bindService e1: "

    .line 148
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 153
    move-result-object p1

    .line 156
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    move-result-object p1

    .line 163
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 167
    const-string v3, "bindService e: "

    .line 169
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 174
    move-result-object v0

    .line 177
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    move-result-object p1

    .line 184
    invoke-static {v2, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :goto_2
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 188
    goto :goto_3

    .line 191
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 192
    const-string v3, "ensureService mConnecting: "

    .line 194
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/ar;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 199
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 201
    move-result v3

    .line 204
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 205
    const-string v3, " mIsBindSuccess:"

    .line 208
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/ar;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 213
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 215
    move-result v3

    .line 218
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 219
    const-string v3, " mAnalytics: "

    .line 222
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ar;->d:Lcom/miui/analytics/ITrack;

    .line 227
    if-nez p0, :cond_3

    .line 229
    move v0, v1

    .line 231
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    move-result-object p0

    .line 238
    invoke-static {v2, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_4
    :goto_3
    return-void
    .line 242
.end method
