.class public final Lcom/xiaomi/onetrack/c/p;
.super Landroid/os/Handler;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public h:I

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    const/16 p1, 0x2710

    .line 5
    iput p1, p0, Lcom/xiaomi/onetrack/c/p;->h:I

    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    const/4 v0, 0x0

    .line 11
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 12
    iput-object p1, p0, Lcom/xiaomi/onetrack/c/p;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    return-void
    .line 17
.end method


# virtual methods
.method public final a(IZ)V
    .locals 5

    .line 1
    const/16 v0, 0x3e8

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 4
    move-result v0

    .line 7
    const-string v1, "UploadTimer"

    .line 8
    if-eqz v0, :cond_0

    .line 10
    new-instance p0, Ljava/lang/StringBuilder;

    .line 12
    const-string p2, "in retry mode, return, prio="

    .line 14
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 25
    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void

    .line 29
    :cond_0
    if-eqz p2, :cond_1

    .line 30
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 32
    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 35
    move-result v0

    .line 38
    if-nez v0, :cond_3

    .line 39
    if-eqz p2, :cond_2

    .line 41
    const-wide/16 v2, 0x0

    .line 43
    goto :goto_0

    .line 45
    :cond_2
    invoke-static {p1}, Lcom/xiaomi/onetrack/b/n;->a(I)I

    .line 46
    move-result p2

    .line 49
    int-to-long v2, p2

    .line 50
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 51
    const-string/jumbo v0, "will check prio="

    .line 53
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    const-string v0, ", delay="

    .line 62
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object p2

    .line 73
    invoke-static {v1, p2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 77
    new-instance p2, Ljava/lang/StringBuilder;

    .line 80
    const-string/jumbo v4, "will post msg, prio="

    .line 82
    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object p2

    .line 100
    invoke-static {v1, p2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 104
    :cond_3
    return-void
    .line 107
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    invoke-static {}, Lcom/xiaomi/onetrack/b/n;->a()Z

    .line 5
    move-result v0

    .line 8
    const-string v1, "UploadTimer"

    .line 9
    if-eqz v0, :cond_5

    .line 11
    invoke-static {}, Lcom/xiaomi/onetrack/g/c;->b()Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_5

    .line 17
    const-class v0, Lcom/xiaomi/onetrack/b/n;

    .line 19
    monitor-enter v0

    .line 21
    :try_start_0
    sget-boolean v2, Lcom/xiaomi/onetrack/b/n;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit v0

    .line 24
    if-eqz v2, :cond_0

    .line 25
    goto/16 :goto_1

    .line 27
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    .line 29
    const/16 v0, 0x3e8

    .line 31
    if-ne p1, v0, :cond_3

    .line 33
    sget-object p1, Lcom/xiaomi/onetrack/c/s$a;->a:Lcom/xiaomi/onetrack/c/s;

    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    const/4 p1, 0x2

    .line 40
    invoke-static {p1}, Lcom/xiaomi/onetrack/c/s;->a(I)Z

    .line 41
    move-result v2

    .line 44
    if-nez v2, :cond_2

    .line 45
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 47
    iget v2, p0, Lcom/xiaomi/onetrack/c/p;->h:I

    .line 50
    mul-int/2addr v2, p1

    .line 52
    iput v2, p0, Lcom/xiaomi/onetrack/c/p;->h:I

    .line 53
    const p1, 0x124f80

    .line 55
    if-le v2, p1, :cond_1

    .line 58
    iput p1, p0, Lcom/xiaomi/onetrack/c/p;->h:I

    .line 60
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 62
    const-string/jumbo v2, "will restart retry msg after "

    .line 64
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    iget v2, p0, Lcom/xiaomi/onetrack/c/p;->h:I

    .line 70
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 78
    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget p1, p0, Lcom/xiaomi/onetrack/c/p;->h:I

    .line 82
    int-to-long v1, p1

    .line 84
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 85
    goto :goto_0

    .line 88
    :cond_2
    const/16 p1, 0x2710

    .line 89
    iput p1, p0, Lcom/xiaomi/onetrack/c/p;->h:I

    .line 91
    const-string p0, "retry success"

    .line 93
    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :goto_0
    return-void

    .line 98
    :cond_3
    sget-object v2, Lcom/xiaomi/onetrack/c/s$a;->a:Lcom/xiaomi/onetrack/c/s;

    .line 99
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    invoke-static {p1}, Lcom/xiaomi/onetrack/c/s;->a(I)Z

    .line 104
    move-result v2

    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    .line 108
    const-string v4, "handleCheckUpload ret="

    .line 110
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 115
    const-string v4, ", prio="

    .line 118
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object p1

    .line 129
    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    if-nez v2, :cond_4

    .line 133
    const-string p1, "handleCheckUpload failed, will check if need to send retry msg"

    .line 135
    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 140
    move-result p1

    .line 143
    if-nez p1, :cond_4

    .line 144
    iget p1, p0, Lcom/xiaomi/onetrack/c/p;->h:I

    .line 146
    int-to-long v2, p1

    .line 148
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 149
    new-instance p1, Ljava/lang/StringBuilder;

    .line 152
    const-string v0, "fire retry timer after "

    .line 154
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    iget p0, p0, Lcom/xiaomi/onetrack/c/p;->h:I

    .line 159
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    move-result-object p0

    .line 167
    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_4
    return-void

    .line 171
    :catchall_0
    move-exception p0

    .line 172
    monitor-exit v0

    .line 173
    throw p0

    .line 174
    :cond_5
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 175
    const-string/jumbo p1, "\u4e0d\u7528\u5904\u7406\u6d88\u606f, available="

    .line 177
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lcom/xiaomi/onetrack/b/n;->a()Z

    .line 183
    move-result p1

    .line 186
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 187
    const-string p1, ", \u662f\u5426\u6709\u7f51="

    .line 190
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-static {}, Lcom/xiaomi/onetrack/g/c;->b()Z

    .line 195
    move-result p1

    .line 198
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 199
    const-string p1, ", \u6570\u636e\u5e93\u662f\u5426\u4e3a\u7a7a="

    .line 202
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-class p1, Lcom/xiaomi/onetrack/b/n;

    .line 207
    monitor-enter p1

    .line 209
    :try_start_1
    sget-boolean v0, Lcom/xiaomi/onetrack/b/n;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 210
    monitor-exit p1

    .line 212
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    move-result-object p0

    .line 219
    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-void

    .line 223
    :catchall_1
    move-exception p0

    .line 224
    monitor-exit p1

    .line 225
    throw p0
    .line 226
.end method
