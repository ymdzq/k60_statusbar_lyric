.class public final Lcom/xiaomi/onetrack/b/k;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/xiaomi/onetrack/b/h;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/b/h;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/b/k;->b:Lcom/xiaomi/onetrack/b/h;

    .line 2
    iput-object p2, p0, Lcom/xiaomi/onetrack/b/k;->a:Ljava/lang/String;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 12

    .line 1
    const-string v0, "getConfig  cursor.close"

    .line 2
    const-string v1, "ConfigDbManager"

    .line 4
    const/4 v2, 0x0

    .line 6
    :try_start_0
    const-string v6, "app_id=?"

    .line 7
    iget-object v3, p0, Lcom/xiaomi/onetrack/b/k;->b:Lcom/xiaomi/onetrack/b/h;

    .line 9
    iget-object v3, v3, Lcom/xiaomi/onetrack/b/h;->b:Lcom/xiaomi/onetrack/b/g;

    .line 11
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 13
    move-result-object v3

    .line 16
    const-string v4, "events_cloud"

    .line 17
    const/4 v5, 0x0

    .line 19
    const/4 v7, 0x1

    .line 20
    new-array v7, v7, [Ljava/lang/String;

    .line 21
    iget-object p0, p0, Lcom/xiaomi/onetrack/b/k;->a:Ljava/lang/String;

    .line 23
    const/4 v8, 0x0

    .line 25
    aput-object p0, v7, v8

    .line 26
    const/4 v8, 0x0

    .line 28
    const/4 v9, 0x0

    .line 29
    const/4 v10, 0x0

    .line 30
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 31
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :try_start_1
    const-string v3, "app_id"

    .line 35
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 37
    move-result v3

    .line 40
    const-string v4, "cloud_data"

    .line 41
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 43
    move-result v4

    .line 46
    const-string v5, "data_hash"

    .line 47
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 49
    move-result v5

    .line 52
    const-string/jumbo v6, "timestamp"

    .line 53
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 56
    move-result v6

    .line 59
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 60
    move-result v7

    .line 63
    if-eqz v7, :cond_1

    .line 64
    new-instance v7, Lcom/xiaomi/onetrack/b/l;

    .line 66
    invoke-direct {v7}, Lcom/xiaomi/onetrack/b/l;-><init>()V

    .line 68
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 71
    move-result-object v3

    .line 74
    iput-object v3, v7, Lcom/xiaomi/onetrack/b/l;->a:Ljava/lang/String;

    .line 75
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 77
    move-result-object v3

    .line 80
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 81
    move-result v4

    .line 84
    if-nez v4, :cond_0

    .line 85
    new-instance v4, Lorg/json/JSONObject;

    .line 87
    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 89
    iput-object v4, v7, Lcom/xiaomi/onetrack/b/l;->e:Lorg/json/JSONObject;

    .line 92
    :cond_0
    iget-object v3, v7, Lcom/xiaomi/onetrack/b/l;->e:Lorg/json/JSONObject;

    .line 94
    invoke-static {v3}, Lcom/xiaomi/onetrack/b/h;->a(Lorg/json/JSONObject;)I

    .line 96
    move-result v3

    .line 99
    int-to-long v3, v3

    .line 100
    iput-wide v3, v7, Lcom/xiaomi/onetrack/b/l;->b:J

    .line 101
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 103
    move-result-object v3

    .line 106
    iput-object v3, v7, Lcom/xiaomi/onetrack/b/l;->d:Ljava/lang/String;

    .line 107
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    .line 109
    move-result-wide v3

    .line 112
    iput-wide v3, v7, Lcom/xiaomi/onetrack/b/l;->c:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 113
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 115
    goto :goto_0

    .line 118
    :catch_0
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :goto_0
    move-object v2, v7

    .line 122
    goto :goto_2

    .line 123
    :catch_1
    move-exception v3

    .line 124
    goto :goto_1

    .line 125
    :catchall_0
    move-exception p0

    .line 126
    goto :goto_3

    .line 127
    :catch_2
    move-exception p0

    .line 128
    move-object v3, p0

    .line 129
    move-object p0, v2

    .line 130
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 131
    move-result-object v3

    .line 134
    invoke-static {v1, v3}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 135
    if-eqz p0, :cond_2

    .line 138
    :cond_1
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 140
    goto :goto_2

    .line 143
    :catch_3
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_2
    :goto_2
    return-object v2

    .line 147
    :catchall_1
    move-exception v2

    .line 148
    move-object v11, v2

    .line 149
    move-object v2, p0

    .line 150
    move-object p0, v11

    .line 151
    :goto_3
    if-eqz v2, :cond_3

    .line 152
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 154
    goto :goto_4

    .line 157
    :catch_4
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_3
    :goto_4
    throw p0
    .line 161
.end method
