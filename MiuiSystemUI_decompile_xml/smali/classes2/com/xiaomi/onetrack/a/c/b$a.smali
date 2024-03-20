.class public final Lcom/xiaomi/onetrack/a/c/b$a;
.super Landroid/os/Handler;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# virtual methods
.method public final a(J)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v2, "will post msg, prio=0, delay="

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 20
    const-string v2, "AdMonitorUploadTimer"

    .line 21
    invoke-static {v2, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 26
    return-void
    .line 29
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 5
    const-string v0, "AdMonitorUploadTimer.handleMessage, msg.what="

    .line 7
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget p1, p1, Landroid/os/Message;->what:I

    .line 12
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 20
    const-string p1, "AdMonitorUploadTimer"

    .line 21
    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string p0, "AdMonitorUploader"

    .line 26
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;)Z

    .line 28
    move-result p1

    .line 31
    const/4 v0, 0x0

    .line 32
    if-eqz p1, :cond_0

    .line 33
    const-string/jumbo p1, "the device is not provisioned, stop poll!"

    .line 35
    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    goto :goto_0

    .line 41
    :cond_0
    invoke-static {}, Lcom/xiaomi/onetrack/g/c;->b()Z

    .line 42
    move-result p1

    .line 45
    if-nez p1, :cond_1

    .line 46
    const-string p1, "network is unconnected, stop poll!"

    .line 48
    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    goto :goto_0

    .line 53
    :cond_1
    invoke-static {}, Lcom/xiaomi/onetrack/a/a;->a()Lcom/xiaomi/onetrack/a/a;

    .line 54
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcom/xiaomi/onetrack/a/a;->e()J

    .line 58
    move-result-wide v1

    .line 61
    const-wide/16 v3, 0x0

    .line 62
    cmp-long p1, v1, v3

    .line 64
    if-nez p1, :cond_2

    .line 66
    const-string p1, "no data remain in db, stop poll!"

    .line 68
    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :goto_0
    move p1, v0

    .line 73
    goto :goto_1

    .line 74
    :cond_2
    const/4 p1, 0x1

    .line 75
    :goto_1
    if-nez p1, :cond_3

    .line 76
    goto/16 :goto_4

    .line 78
    :cond_3
    const-string/jumbo p1, "\u5373\u5c06\u8bfb\u53d6\u6570\u636e\u5e93\u5e76\u4e0a\u4f20\u6570\u636e"

    .line 80
    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_4
    const/16 p1, 0x14

    .line 86
    if-le v0, p1, :cond_5

    .line 88
    goto/16 :goto_4

    .line 90
    :cond_5
    invoke-static {}, Lcom/xiaomi/onetrack/a/a;->a()Lcom/xiaomi/onetrack/a/a;

    .line 92
    move-result-object p1

    .line 95
    invoke-virtual {p1}, Lcom/xiaomi/onetrack/a/a;->d()V

    .line 96
    invoke-static {}, Lcom/xiaomi/onetrack/a/a;->a()Lcom/xiaomi/onetrack/a/a;

    .line 99
    move-result-object p1

    .line 102
    invoke-virtual {p1}, Lcom/xiaomi/onetrack/a/a;->b()Lcom/xiaomi/onetrack/a/c/a;

    .line 103
    move-result-object p1

    .line 106
    if-eqz p1, :cond_b

    .line 107
    iget-object v1, p1, Lcom/xiaomi/onetrack/a/c/a;->b:Ljava/util/ArrayList;

    .line 109
    if-eqz v1, :cond_b

    .line 111
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 113
    move-result v2

    .line 116
    if-gtz v2, :cond_6

    .line 117
    goto :goto_3

    .line 119
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    .line 120
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 122
    new-instance v3, Ljava/util/ArrayList;

    .line 125
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 127
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 130
    move-result-object v1

    .line 133
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    move-result v4

    .line 137
    if-eqz v4, :cond_8

    .line 138
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    move-result-object v4

    .line 143
    check-cast v4, Lcom/xiaomi/onetrack/a/b/a;

    .line 144
    iget-object v5, v4, Lcom/xiaomi/onetrack/a/b/a;->f:Ljava/lang/String;

    .line 146
    invoke-static {v5}, Lcom/xiaomi/onetrack/g/b;->b(Ljava/lang/String;)Z

    .line 148
    move-result v5

    .line 151
    iget v4, v4, Lcom/xiaomi/onetrack/a/b/a;->e:I

    .line 152
    if-eqz v5, :cond_7

    .line 154
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    move-result-object v4

    .line 159
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    goto :goto_2

    .line 163
    :cond_7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    move-result-object v4

    .line 167
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    goto :goto_2

    .line 171
    :cond_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 172
    move-result v1

    .line 175
    if-lez v1, :cond_9

    .line 176
    invoke-static {}, Lcom/xiaomi/onetrack/a/a;->a()Lcom/xiaomi/onetrack/a/a;

    .line 178
    move-result-object v1

    .line 181
    invoke-virtual {v1, v2}, Lcom/xiaomi/onetrack/a/a;->a(Ljava/util/ArrayList;)V

    .line 182
    :cond_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 185
    move-result v1

    .line 188
    if-lez v1, :cond_a

    .line 189
    invoke-static {}, Lcom/xiaomi/onetrack/a/a;->a()Lcom/xiaomi/onetrack/a/a;

    .line 191
    move-result-object v1

    .line 194
    invoke-virtual {v1, v3}, Lcom/xiaomi/onetrack/a/a;->b(Ljava/util/ArrayList;)V

    .line 195
    :cond_a
    add-int/lit8 v0, v0, 0x1

    .line 198
    iget-boolean p1, p1, Lcom/xiaomi/onetrack/a/c/a;->c:Z

    .line 200
    if-eqz p1, :cond_4

    .line 202
    const-string p1, "No more ad monitor records"

    .line 204
    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    goto :goto_4

    .line 209
    :cond_b
    :goto_3
    const-string/jumbo p1, "\u6ee1\u8db3\u6761\u4ef6\u7684adMonitor\u8bb0\u5f55\u4e3a\u7a7a\uff0c\u5373\u5c06\u8fd4\u56de"

    .line 210
    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    goto :goto_4

    .line 216
    :catchall_0
    move-exception p1

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    .line 218
    const-string/jumbo v1, "uploadData Throwable:"

    .line 220
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 226
    move-result-object p1

    .line 229
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    move-result-object p1

    .line 236
    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :goto_4
    return-void
    .line 240
.end method
