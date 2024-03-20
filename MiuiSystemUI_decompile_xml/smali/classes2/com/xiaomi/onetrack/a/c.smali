.class public final Lcom/xiaomi/onetrack/a/c;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/a/a;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/a/c;->a:Lcom/xiaomi/onetrack/a/a;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    const-string v1, "*** deleted obsolete ad monitor count="

    .line 4
    const-string v2, "after delete obsolete ad monitor record remains="

    .line 6
    const-string v3, "remove obsolete ad monitor failed with "

    .line 8
    iget-object v4, v0, Lcom/xiaomi/onetrack/a/c;->a:Lcom/xiaomi/onetrack/a/a;

    .line 10
    iget-object v4, v4, Lcom/xiaomi/onetrack/a/a;->i:Lcom/xiaomi/onetrack/a/a$a;

    .line 12
    monitor-enter v4

    .line 14
    :try_start_0
    iget-object v6, v0, Lcom/xiaomi/onetrack/a/c;->a:Lcom/xiaomi/onetrack/a/a;

    .line 15
    iget-object v6, v6, Lcom/xiaomi/onetrack/a/a;->i:Lcom/xiaomi/onetrack/a/a$a;

    .line 17
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 19
    move-result-object v6

    .line 22
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 23
    move-result-object v7

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    move-result-wide v8

    .line 30
    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 31
    const/4 v8, 0x6

    .line 34
    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    .line 35
    move-result v9

    .line 38
    add-int/lit8 v9, v9, -0x7

    .line 39
    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 41
    const/16 v8, 0xb

    .line 44
    const/4 v9, 0x0

    .line 46
    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 47
    const/16 v8, 0xc

    .line 50
    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 52
    const/16 v8, 0xd

    .line 55
    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 57
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 60
    move-result-wide v7

    .line 63
    const-string/jumbo v15, "timestamp < ? "

    .line 64
    const/4 v10, 0x1

    .line 67
    new-array v14, v10, [Ljava/lang/String;

    .line 68
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 70
    move-result-object v7

    .line 73
    aput-object v7, v14, v9

    .line 74
    const-string v8, "monitor"

    .line 76
    new-array v10, v10, [Ljava/lang/String;

    .line 78
    const-string/jumbo v7, "timestamp"

    .line 80
    aput-object v7, v10, v9

    .line 83
    const/4 v12, 0x0

    .line 85
    const/4 v13, 0x0

    .line 86
    const-string/jumbo v16, "timestamp ASC"

    .line 87
    move-object v7, v6

    .line 90
    move-object v9, v10

    .line 91
    move-object v10, v15

    .line 92
    move-object v11, v14

    .line 93
    move-object v5, v14

    .line 94
    move-object/from16 v14, v16

    .line 95
    invoke-virtual/range {v7 .. v14}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 97
    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 100
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    .line 101
    move-result v8

    .line 104
    if-eqz v8, :cond_0

    .line 105
    const-string v8, "monitor"

    .line 107
    invoke-virtual {v6, v8, v15, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 109
    move-result v5

    .line 112
    const-string v6, "AdMonitorManager"

    .line 113
    new-instance v8, Ljava/lang/StringBuilder;

    .line 115
    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object v1

    .line 126
    invoke-static {v6, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_0
    sget-boolean v1, Lcom/xiaomi/onetrack/util/p;->a:Z

    .line 130
    if-eqz v1, :cond_1

    .line 132
    const-string v1, "AdMonitorManager"

    .line 134
    new-instance v5, Ljava/lang/StringBuilder;

    .line 136
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    iget-object v0, v0, Lcom/xiaomi/onetrack/a/c;->a:Lcom/xiaomi/onetrack/a/a;

    .line 141
    invoke-virtual {v0}, Lcom/xiaomi/onetrack/a/a;->e()J

    .line 143
    move-result-wide v8

    .line 146
    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    move-result-object v0

    .line 153
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    :cond_1
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 157
    goto :goto_2

    .line 160
    :catchall_0
    move-exception v0

    .line 161
    move-object v5, v7

    .line 162
    goto :goto_3

    .line 163
    :catch_0
    move-exception v0

    .line 164
    move-object v5, v7

    .line 165
    goto :goto_0

    .line 166
    :catchall_1
    move-exception v0

    .line 167
    const/4 v5, 0x0

    .line 168
    goto :goto_3

    .line 169
    :catch_1
    move-exception v0

    .line 170
    const/4 v5, 0x0

    .line 171
    :goto_0
    :try_start_3
    const-string v1, "AdMonitorManager"

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    .line 174
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    move-result-object v0

    .line 185
    sget-boolean v2, Lcom/xiaomi/onetrack/util/p;->a:Z

    .line 186
    if-eqz v2, :cond_2

    .line 188
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 190
    move-result-object v1

    .line 193
    const/4 v2, 0x2

    .line 194
    invoke-static {v1, v0, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 195
    goto :goto_1

    .line 198
    :catchall_2
    move-exception v0

    .line 199
    goto :goto_3

    .line 200
    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    .line 201
    :try_start_4
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 203
    :cond_3
    :goto_2
    monitor-exit v4

    .line 206
    return-void

    .line 207
    :goto_3
    if-eqz v5, :cond_4

    .line 208
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 210
    :cond_4
    throw v0

    .line 213
    :catchall_3
    move-exception v0

    .line 214
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 215
    throw v0
    .line 216
.end method
