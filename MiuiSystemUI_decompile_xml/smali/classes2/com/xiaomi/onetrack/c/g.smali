.class public final Lcom/xiaomi/onetrack/c/g;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/c/c;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/c/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/c/g;->a:Lcom/xiaomi/onetrack/c/c;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    const-string v1, "after delete obsolete record remains="

    .line 4
    const-string v2, "*** deleted obsolete item count="

    .line 6
    const-string v3, "remove obsolete events failed with "

    .line 8
    iget-object v4, v0, Lcom/xiaomi/onetrack/c/g;->a:Lcom/xiaomi/onetrack/c/c;

    .line 10
    iget-object v4, v4, Lcom/xiaomi/onetrack/c/c;->i:Lcom/xiaomi/onetrack/c/c$a;

    .line 12
    monitor-enter v4

    .line 14
    :try_start_0
    iget-object v0, v0, Lcom/xiaomi/onetrack/c/g;->a:Lcom/xiaomi/onetrack/c/c;

    .line 15
    iget-object v0, v0, Lcom/xiaomi/onetrack/c/c;->i:Lcom/xiaomi/onetrack/c/c$a;

    .line 17
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 19
    move-result-object v0

    .line 22
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 23
    move-result-object v6

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    move-result-wide v7

    .line 30
    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 31
    const/4 v7, 0x6

    .line 34
    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    .line 35
    move-result v8

    .line 38
    add-int/lit8 v8, v8, -0x7

    .line 39
    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 41
    const/16 v7, 0xb

    .line 44
    const/4 v14, 0x0

    .line 46
    invoke-virtual {v6, v7, v14}, Ljava/util/Calendar;->set(II)V

    .line 47
    const/16 v7, 0xc

    .line 50
    invoke-virtual {v6, v7, v14}, Ljava/util/Calendar;->set(II)V

    .line 52
    const/16 v7, 0xd

    .line 55
    invoke-virtual {v6, v7, v14}, Ljava/util/Calendar;->set(II)V

    .line 57
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 60
    move-result-wide v6

    .line 63
    const-string/jumbo v15, "timestamp < ? "

    .line 64
    const/4 v13, 0x1

    .line 67
    new-array v12, v13, [Ljava/lang/String;

    .line 68
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 70
    move-result-object v6

    .line 73
    aput-object v6, v12, v14

    .line 74
    const-string v7, "events"

    .line 76
    new-array v8, v13, [Ljava/lang/String;

    .line 78
    const-string/jumbo v6, "timestamp"

    .line 80
    aput-object v6, v8, v14

    .line 83
    const/4 v11, 0x0

    .line 85
    const/16 v16, 0x0

    .line 86
    const-string/jumbo v17, "timestamp ASC"

    .line 88
    move-object v6, v0

    .line 91
    move-object v9, v15

    .line 92
    move-object v10, v12

    .line 93
    move-object v5, v12

    .line 94
    move-object/from16 v12, v16

    .line 95
    move/from16 v16, v13

    .line 97
    move-object/from16 v13, v17

    .line 99
    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 101
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 104
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    .line 105
    move-result v7

    .line 108
    if-eqz v7, :cond_0

    .line 109
    const-string v7, "events"

    .line 111
    invoke-virtual {v0, v7, v15, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 113
    move-result v0

    .line 116
    const-string v5, "EventManager"

    .line 117
    new-instance v7, Ljava/lang/StringBuilder;

    .line 119
    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object v0

    .line 130
    invoke-static {v5, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_0
    invoke-static {}, Lcom/xiaomi/onetrack/c/c;->a()Lcom/xiaomi/onetrack/c/c;

    .line 134
    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lcom/xiaomi/onetrack/c/c;->c()J

    .line 138
    move-result-wide v7

    .line 141
    const-wide/16 v9, 0x0

    .line 142
    cmp-long v0, v7, v9

    .line 144
    if-nez v0, :cond_1

    .line 146
    move/from16 v14, v16

    .line 148
    :cond_1
    const-class v2, Lcom/xiaomi/onetrack/b/n;

    .line 150
    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 152
    :try_start_2
    sput-boolean v14, Lcom/xiaomi/onetrack/b/n;->b:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    :try_start_3
    monitor-exit v2

    .line 155
    const-string v0, "EventManager"

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    .line 158
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    move-result-object v1

    .line 169
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 170
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 173
    goto :goto_2

    .line 176
    :catchall_0
    move-exception v0

    .line 177
    move-object v1, v0

    .line 178
    :try_start_5
    monitor-exit v2

    .line 179
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 180
    :catchall_1
    move-exception v0

    .line 181
    move-object v5, v6

    .line 182
    goto :goto_3

    .line 183
    :catch_0
    move-exception v0

    .line 184
    move-object v5, v6

    .line 185
    goto :goto_0

    .line 186
    :catchall_2
    move-exception v0

    .line 187
    const/4 v5, 0x0

    .line 188
    goto :goto_3

    .line 189
    :catch_1
    move-exception v0

    .line 190
    const/4 v5, 0x0

    .line 191
    :goto_0
    :try_start_6
    const-string v1, "EventManager"

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    .line 194
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    move-result-object v0

    .line 205
    sget-boolean v2, Lcom/xiaomi/onetrack/util/p;->a:Z

    .line 206
    if-eqz v2, :cond_2

    .line 208
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 210
    move-result-object v1

    .line 213
    const/4 v2, 0x2

    .line 214
    invoke-static {v1, v0, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 215
    goto :goto_1

    .line 218
    :catchall_3
    move-exception v0

    .line 219
    goto :goto_3

    .line 220
    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    .line 221
    :try_start_7
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 223
    :cond_3
    :goto_2
    monitor-exit v4

    .line 226
    return-void

    .line 227
    :goto_3
    if-eqz v5, :cond_4

    .line 228
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 230
    :cond_4
    throw v0

    .line 233
    :catchall_4
    move-exception v0

    .line 234
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 235
    throw v0
    .line 236
.end method
