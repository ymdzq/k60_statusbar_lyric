.class public final Lcom/xiaomi/onetrack/b/i;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:Lcom/xiaomi/onetrack/b/h;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/b/h;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/b/i;->b:Lcom/xiaomi/onetrack/b/h;

    .line 2
    iput-object p2, p0, Lcom/xiaomi/onetrack/b/i;->a:Ljava/util/ArrayList;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    sget-boolean v0, Lcom/xiaomi/onetrack/util/p;->a:Z

    .line 2
    const-string v1, "ConfigDbManager"

    .line 4
    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    const-string/jumbo v2, "update: "

    .line 10
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    iget-object v2, p0, Lcom/xiaomi/onetrack/b/i;->a:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 24
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/b/i;->b:Lcom/xiaomi/onetrack/b/h;

    .line 28
    iget-object p0, p0, Lcom/xiaomi/onetrack/b/i;->a:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    const-string v2, "events_cloud"

    .line 35
    const-string v3, "Exception while endTransaction:"

    .line 37
    const/4 v4, 0x0

    .line 39
    :try_start_0
    iget-object v5, v0, Lcom/xiaomi/onetrack/b/h;->b:Lcom/xiaomi/onetrack/b/g;

    .line 40
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 42
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 45
    :try_start_1
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 46
    const-string v6, "app_id=?"

    .line 49
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 51
    move-result-object p0

    .line 54
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    move-result v7

    .line 58
    if-eqz v7, :cond_4

    .line 59
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    move-result-object v7

    .line 64
    check-cast v7, Lcom/xiaomi/onetrack/b/l;

    .line 65
    new-instance v8, Landroid/content/ContentValues;

    .line 67
    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 69
    const-string v9, "app_id"

    .line 72
    iget-object v10, v7, Lcom/xiaomi/onetrack/b/l;->a:Ljava/lang/String;

    .line 74
    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string/jumbo v9, "timestamp"

    .line 79
    iget-wide v10, v7, Lcom/xiaomi/onetrack/b/l;->c:J

    .line 82
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 84
    move-result-object v10

    .line 87
    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 88
    iget-object v9, v7, Lcom/xiaomi/onetrack/b/l;->e:Lorg/json/JSONObject;

    .line 91
    if-eqz v9, :cond_1

    .line 93
    const-string v10, "cloud_data"

    .line 95
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 97
    move-result-object v9

    .line 100
    invoke-virtual {v8, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_1
    iget-object v9, v7, Lcom/xiaomi/onetrack/b/l;->d:Ljava/lang/String;

    .line 104
    if-eqz v9, :cond_2

    .line 106
    const-string v10, "data_hash"

    .line 108
    invoke-virtual {v8, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_2
    const/4 v9, 0x1

    .line 113
    new-array v10, v9, [Ljava/lang/String;

    .line 114
    iget-object v11, v7, Lcom/xiaomi/onetrack/b/l;->a:Ljava/lang/String;

    .line 116
    const/4 v12, 0x0

    .line 118
    aput-object v11, v10, v12

    .line 119
    invoke-static {v5, v2, v6, v10}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 121
    move-result-wide v10

    .line 124
    const-wide/16 v13, 0x0

    .line 125
    cmp-long v10, v10, v13

    .line 127
    if-lez v10, :cond_3

    .line 129
    new-array v9, v9, [Ljava/lang/String;

    .line 131
    iget-object v10, v7, Lcom/xiaomi/onetrack/b/l;->a:Ljava/lang/String;

    .line 133
    aput-object v10, v9, v12

    .line 135
    invoke-virtual {v5, v2, v8, v6, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 137
    move-result v8

    .line 140
    new-instance v9, Ljava/lang/StringBuilder;

    .line 141
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    const-string v10, "database updated, row: "

    .line 146
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    move-result-object v8

    .line 157
    invoke-static {v1, v8}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    goto :goto_1

    .line 161
    :cond_3
    invoke-virtual {v5, v2, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 162
    move-result-wide v8

    .line 165
    new-instance v10, Ljava/lang/StringBuilder;

    .line 166
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    const-string v11, "database inserted, row: "

    .line 171
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    move-result-object v8

    .line 182
    invoke-static {v1, v8}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :goto_1
    iget-object v8, v0, Lcom/xiaomi/onetrack/b/h;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 186
    iget-object v7, v7, Lcom/xiaomi/onetrack/b/l;->a:Ljava/lang/String;

    .line 188
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 190
    invoke-virtual {v8, v7, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    goto/16 :goto_0

    .line 195
    :cond_4
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    :try_start_2
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 200
    goto :goto_4

    .line 203
    :catch_0
    move-exception p0

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    .line 205
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    goto :goto_3

    .line 210
    :catchall_0
    move-exception p0

    .line 211
    goto :goto_6

    .line 212
    :catch_1
    move-exception p0

    .line 213
    move-object v4, v5

    .line 214
    goto :goto_2

    .line 215
    :catchall_1
    move-exception p0

    .line 216
    goto :goto_5

    .line 217
    :catch_2
    move-exception p0

    .line 218
    :goto_2
    :try_start_3
    const-string/jumbo v0, "updateToDb error: "

    .line 219
    invoke-static {v1, v0, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 222
    if-eqz v4, :cond_5

    .line 225
    :try_start_4
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 227
    goto :goto_4

    .line 230
    :catch_3
    move-exception p0

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    .line 232
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    :goto_3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    move-result-object p0

    .line 243
    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_5
    :goto_4
    return-void

    .line 247
    :goto_5
    move-object v5, v4

    .line 248
    :goto_6
    if-eqz v5, :cond_6

    .line 249
    :try_start_5
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 251
    goto :goto_7

    .line 254
    :catch_4
    move-exception v0

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    .line 256
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    move-result-object v0

    .line 267
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_6
    :goto_7
    throw p0
    .line 271
.end method
