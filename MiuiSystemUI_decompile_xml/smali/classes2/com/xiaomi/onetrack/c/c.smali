.class public final Lcom/xiaomi/onetrack/c/c;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static h:Lcom/xiaomi/onetrack/c/c;

.field public static final j:Lcom/xiaomi/onetrack/c/d;


# instance fields
.field public final i:Lcom/xiaomi/onetrack/c/c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xiaomi/onetrack/c/d;

    .line 2
    invoke-direct {v0}, Lcom/xiaomi/onetrack/c/d;-><init>()V

    .line 4
    sput-object v0, Lcom/xiaomi/onetrack/c/c;->j:Lcom/xiaomi/onetrack/c/d;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    .line 5
    move-result-object v0

    .line 8
    new-instance v1, Lcom/xiaomi/onetrack/c/c$a;

    .line 9
    invoke-direct {v1, v0}, Lcom/xiaomi/onetrack/c/c$a;-><init>(Landroid/content/Context;)V

    .line 11
    iput-object v1, p0, Lcom/xiaomi/onetrack/c/c;->i:Lcom/xiaomi/onetrack/c/c$a;

    .line 14
    new-instance v1, Lcom/xiaomi/onetrack/c/g;

    .line 16
    invoke-direct {v1, p0}, Lcom/xiaomi/onetrack/c/g;-><init>(Lcom/xiaomi/onetrack/c/c;)V

    .line 18
    invoke-static {v1}, Lcom/xiaomi/onetrack/c/b;->a(Ljava/lang/Runnable;)V

    .line 21
    new-instance p0, Landroid/content/IntentFilter;

    .line 24
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 26
    const-string v1, "android.intent.action.SCREEN_ON"

    .line 29
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 31
    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 34
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 36
    sget-object v1, Lcom/xiaomi/onetrack/c/c;->j:Lcom/xiaomi/onetrack/c/d;

    .line 39
    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 41
    return-void
    .line 44
.end method

.method public static a()Lcom/xiaomi/onetrack/c/c;
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/c/c;->h:Lcom/xiaomi/onetrack/c/c;

    if-nez v0, :cond_1

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/xiaomi/onetrack/c/c;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/xiaomi/onetrack/c/c;->h:Lcom/xiaomi/onetrack/c/c;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/xiaomi/onetrack/c/c;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/c/c;-><init>()V

    sput-object v1, Lcom/xiaomi/onetrack/c/c;->h:Lcom/xiaomi/onetrack/c/c;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaomi/onetrack/c/c;->h:Lcom/xiaomi/onetrack/c/c;

    return-object v0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 7
    fill-array-data v0, :array_0

    .line 8
    invoke-static {v0}, Lcom/xiaomi/onetrack/d/d;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/d/a;->b([B[B)[B

    move-result-object p0

    .line 10
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x54t
        0x7bt
        0x64t
        0x65t
        0x76t
        0x21t
        0x50t
        0x64t
        0x65t
        0x74t
        0x74t
        0x25t
        0x5et
        0x34t
        0x4dt
        0x49t
    .end array-data
.end method

.method public static a(Lcom/xiaomi/onetrack/c/c;Lcom/xiaomi/onetrack/f/b;)V
    .locals 9

    const-string/jumbo v0, "\u6dfb\u52a0\u540e\uff0cDB \u4e2d\u4e8b\u4ef6\u4e2a\u6570\u4e3a "

    const-string v1, "DB-Thread: EventManager.addEventToDatabase , row="

    const-string v2, "addEventToDatabase event is inValid, event:"

    .line 14
    iget-object v3, p0, Lcom/xiaomi/onetrack/c/c;->i:Lcom/xiaomi/onetrack/c/c$a;

    .line 15
    monitor-enter v3

    .line 16
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x0

    .line 17
    :try_start_1
    iget-object v5, p1, Lcom/xiaomi/onetrack/f/b;->j:Lorg/json/JSONObject;

    if-eqz v5, :cond_0

    const-string v6, "H"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcom/xiaomi/onetrack/f/b;->j:Lorg/json/JSONObject;

    const-string v6, "B"

    .line 18
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcom/xiaomi/onetrack/f/b;->f:Ljava/lang/String;

    .line 19
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p1, Lcom/xiaomi/onetrack/f/b;->g:Ljava/lang/String;

    .line 20
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v5

    :try_start_2
    const-string v6, "Event"

    const-string v7, "check event isValid error, "

    .line 21
    invoke-static {v6, v7, v5}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move v5, v4

    :goto_0
    if-nez v5, :cond_1

    const-string p0, "EventManager"

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    iget-object p1, p1, Lcom/xiaomi/onetrack/f/b;->h:Ljava/lang/String;

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/util/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    monitor-exit v3

    goto/16 :goto_2

    .line 26
    :cond_1
    iget-object v2, p0, Lcom/xiaomi/onetrack/c/c;->i:Lcom/xiaomi/onetrack/c/c$a;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 27
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "appid"

    .line 28
    iget-object v7, p1, Lcom/xiaomi/onetrack/f/b;->f:Ljava/lang/String;

    .line 29
    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "package"

    .line 30
    iget-object v7, p1, Lcom/xiaomi/onetrack/f/b;->g:Ljava/lang/String;

    .line 31
    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "event_name"

    .line 32
    iget-object v7, p1, Lcom/xiaomi/onetrack/f/b;->h:Ljava/lang/String;

    .line 33
    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "priority"

    .line 34
    iget v7, p1, Lcom/xiaomi/onetrack/f/b;->i:I

    .line 35
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v6, "timestamp"

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 37
    iget-object v6, p1, Lcom/xiaomi/onetrack/f/b;->j:Lorg/json/JSONObject;

    .line 38
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/onetrack/c/c;->a(Ljava/lang/String;)[B

    move-result-object v6

    .line 39
    array-length v7, v6

    const v8, 0x32000

    if-le v7, v8, :cond_2

    const-string p0, "EventManager"

    const-string p1, "Too large data, discard ***"

    .line 40
    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    monitor-exit v3

    goto :goto_2

    :cond_2
    const-string v7, "data"

    .line 42
    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v6, "events"

    const/4 v7, 0x0

    .line 43
    invoke-virtual {v2, v6, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    const-string v2, "EventManager"

    .line 44
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, -0x1

    cmp-long v1, v5, v1

    if-eqz v1, :cond_5

    .line 45
    sget-boolean v1, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v1, :cond_3

    const-string v1, "EventManager"

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/c/c;->c()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string p0, "onetrack_active"

    .line 48
    iget-object p1, p1, Lcom/xiaomi/onetrack/f/b;->h:Ljava/lang/String;

    .line 49
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "last_upload_active_time"

    .line 50
    invoke-static {p0, v0, v1}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;J)V

    .line 51
    :cond_4
    const-class p0, Lcom/xiaomi/onetrack/b/n;

    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 52
    :try_start_3
    sput-boolean v4, Lcom/xiaomi/onetrack/b/n;->b:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    :try_start_4
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 54
    :cond_5
    :goto_1
    monitor-exit v3

    :goto_2
    return-void

    :catchall_1
    move-exception p0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 11
    fill-array-data v0, :array_0

    .line 12
    invoke-static {v0}, Lcom/xiaomi/onetrack/d/d;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/d/a;->a([B[B)[B

    move-result-object p0

    return-object p0

    :array_0
    .array-data 1
        0x54t
        0x7bt
        0x64t
        0x65t
        0x76t
        0x21t
        0x50t
        0x64t
        0x65t
        0x74t
        0x74t
        0x25t
        0x5et
        0x34t
        0x4dt
        0x49t
    .end array-data
.end method


# virtual methods
.method public final c()J
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/onetrack/c/c;->i:Lcom/xiaomi/onetrack/c/c$a;

    .line 2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    move-result-object p0

    .line 7
    const-string v0, "events"

    .line 8
    invoke-static {p0, v0}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    .line 10
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-wide v0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    const-string v1, "getTotalEventsNumberSync failed with "

    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 33
    const-string v0, "EventManager"

    .line 34
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-wide/16 v0, 0x0

    .line 39
    return-wide v0
    .line 41
.end method
