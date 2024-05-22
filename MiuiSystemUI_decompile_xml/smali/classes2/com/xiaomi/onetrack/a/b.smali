.class public final Lcom/xiaomi/onetrack/a/b;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/f/b;

.field public final synthetic b:Lcom/xiaomi/onetrack/a/a;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/a/a;Lcom/xiaomi/onetrack/f/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/a/b;->b:Lcom/xiaomi/onetrack/a/a;

    .line 2
    iput-object p2, p0, Lcom/xiaomi/onetrack/a/b;->a:Lcom/xiaomi/onetrack/f/b;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/b;->a:Lcom/xiaomi/onetrack/f/b;

    .line 2
    instance-of v1, v0, Lcom/xiaomi/onetrack/a/b/b;

    .line 4
    if-eqz v1, :cond_2

    .line 6
    check-cast v0, Lcom/xiaomi/onetrack/a/b/b;

    .line 8
    iget-object v0, v0, Lcom/xiaomi/onetrack/a/b/b;->e:Ljava/util/List;

    .line 10
    if-eqz v0, :cond_2

    .line 12
    check-cast v0, Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 16
    move-result v1

    .line 19
    if-lez v1, :cond_2

    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v0

    .line 25
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v1

    .line 29
    if-eqz v1, :cond_2

    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 35
    check-cast v1, Lcom/xiaomi/onetrack/a/b/a;

    .line 36
    iget-object v2, p0, Lcom/xiaomi/onetrack/a/b;->b:Lcom/xiaomi/onetrack/a/a;

    .line 38
    const-string/jumbo v3, "\u6dfb\u52a0\u540e\uff0cad monitor url \u4e2d\u4e8b\u4ef6\u4e2a\u6570\u4e3a "

    .line 40
    const-string v4, "DB-Thread: AdMonitorManager.addAdMonitorToDatabase , row="

    .line 43
    const-string v5, "addAdMonitorToDatabase event is inValid, event:"

    .line 45
    const-string v6, "addAdMonitorToDatabase Throwable\uff1a"

    .line 47
    iget-object v7, v2, Lcom/xiaomi/onetrack/a/a;->i:Lcom/xiaomi/onetrack/a/a$a;

    .line 49
    monitor-enter v7

    .line 51
    :try_start_0
    invoke-virtual {v1}, Lcom/xiaomi/onetrack/a/b/a;->h()Z

    .line 52
    move-result v8

    .line 55
    if-nez v8, :cond_0

    .line 56
    const-string v2, "AdMonitorManager"

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    .line 60
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    iget-object v1, v1, Lcom/xiaomi/onetrack/a/b/a;->j:Ljava/lang/String;

    .line 65
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v1

    .line 73
    invoke-static {v2, v1}, Lcom/xiaomi/onetrack/util/p;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    goto :goto_0

    .line 78
    :cond_0
    :try_start_2
    iget-object v5, v2, Lcom/xiaomi/onetrack/a/a;->i:Lcom/xiaomi/onetrack/a/a$a;

    .line 79
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 81
    move-result-object v5

    .line 84
    new-instance v8, Landroid/content/ContentValues;

    .line 85
    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 87
    const-string v9, "appid"

    .line 90
    iget-object v10, v1, Lcom/xiaomi/onetrack/a/b/a;->h:Ljava/lang/String;

    .line 92
    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v9, "package"

    .line 97
    iget-object v10, v1, Lcom/xiaomi/onetrack/a/b/a;->i:Ljava/lang/String;

    .line 99
    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v9, "event_name"

    .line 104
    iget-object v10, v1, Lcom/xiaomi/onetrack/a/b/a;->j:Ljava/lang/String;

    .line 106
    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string/jumbo v9, "timestamp"

    .line 111
    iget-wide v10, v1, Lcom/xiaomi/onetrack/a/b/a;->g:J

    .line 114
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 116
    move-result-object v10

    .line 119
    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 120
    const-string/jumbo v9, "url"

    .line 123
    iget-object v1, v1, Lcom/xiaomi/onetrack/a/b/a;->f:Ljava/lang/String;

    .line 126
    invoke-virtual {v8, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v1, "monitor"

    .line 131
    const/4 v9, 0x0

    .line 133
    invoke-virtual {v5, v1, v9, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 134
    move-result-wide v8

    .line 137
    const-string v1, "AdMonitorManager"

    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    .line 140
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object v4

    .line 151
    invoke-static {v1, v4}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    sget-boolean v1, Lcom/xiaomi/onetrack/util/p;->a:Z

    .line 155
    if-eqz v1, :cond_1

    .line 157
    const-string v1, "AdMonitorManager"

    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    .line 161
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v2}, Lcom/xiaomi/onetrack/a/a;->e()J

    .line 166
    move-result-wide v2

    .line 169
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    move-result-object v2

    .line 176
    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 177
    :cond_1
    :try_start_3
    monitor-exit v7

    .line 180
    goto/16 :goto_0

    .line 181
    :catchall_0
    move-exception v1

    .line 183
    const-string v2, "AdMonitorManager"

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    .line 186
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 191
    move-result-object v1

    .line 194
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    move-result-object v1

    .line 201
    invoke-static {v2, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    monitor-exit v7

    .line 205
    goto/16 :goto_0

    .line 206
    :catchall_1
    move-exception p0

    .line 208
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 209
    throw p0

    .line 210
    :cond_2
    invoke-static {}, Lcom/xiaomi/onetrack/a/c/b;->a()Lcom/xiaomi/onetrack/a/c/b;

    .line 211
    move-result-object p0

    .line 214
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/a/c/b;->b()V

    .line 215
    return-void
    .line 218
.end method
