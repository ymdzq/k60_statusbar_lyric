.class Lcom/xiaomi/onetrack/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/a/a;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/a/a;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/xiaomi/onetrack/a/c;->a:Lcom/xiaomi/onetrack/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 268
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/c;->a:Lcom/xiaomi/onetrack/a/a;

    invoke-static {v0}, Lcom/xiaomi/onetrack/a/a;->a(Lcom/xiaomi/onetrack/a/a;)Lcom/xiaomi/onetrack/a/a$a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/c;->a:Lcom/xiaomi/onetrack/a/a;

    invoke-static {v0}, Lcom/xiaomi/onetrack/a/a;->a(Lcom/xiaomi/onetrack/a/a;)Lcom/xiaomi/onetrack/a/a$a;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 274
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/onetrack/a/c;->a:Lcom/xiaomi/onetrack/a/a;

    invoke-static {v2}, Lcom/xiaomi/onetrack/a/a;->a(Lcom/xiaomi/onetrack/a/a;)Lcom/xiaomi/onetrack/a/a$a;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 275
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v4, 0x6

    .line 277
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, -0x7

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xb

    const/4 v5, 0x0

    .line 279
    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    .line 280
    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xd

    .line 281
    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 282
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const-string v11, "timestamp < ? "

    const/4 v6, 0x1

    new-array v12, v6, [Ljava/lang/String;

    .line 285
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v5

    const-string v4, "monitor"

    new-array v6, v6, [Ljava/lang/String;

    const-string v3, "timestamp"

    aput-object v3, v6, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "timestamp ASC"

    move-object v3, v2

    move-object v5, v6

    move-object v6, v11

    move-object v7, v12

    .line 286
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 293
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "monitor"

    .line 296
    invoke-virtual {v2, v3, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    const-string v3, "AdMonitorManager"

    .line 297
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*** deleted obsolete ad monitor count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_1
    sget-boolean v2, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v2, :cond_2

    const-string v2, "AdMonitorManager"

    .line 300
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after delete obsolete ad monitor record remains="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/onetrack/a/c;->a:Lcom/xiaomi/onetrack/a/a;

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/a/a;->e()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :cond_2
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_2
    const-string v2, "AdMonitorManager"

    .line 303
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove obsolete ad monitor failed with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/xiaomi/onetrack/util/p;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    goto :goto_0

    .line 309
    :cond_3
    :goto_1
    :try_start_3
    monitor-exit v0

    return-void

    :goto_2
    if-eqz v1, :cond_4

    .line 306
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 308
    :cond_4
    throw p0

    :catchall_1
    move-exception p0

    .line 309
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method
