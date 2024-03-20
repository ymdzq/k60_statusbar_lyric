.class public final Lcom/xiaomi/onetrack/util/o;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static volatile f:Lcom/xiaomi/onetrack/util/o;

.field public static g:Ljava/lang/String;

.field public static j:Ljava/lang/String;


# instance fields
.field public final i:Landroid/content/Context;

.field public k:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/xiaomi/onetrack/util/o;->k:Z

    .line 6
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    .line 8
    sget-object v0, Lcom/xiaomi/onetrack/f/a;->a:Landroid/content/Context;

    .line 11
    iput-object v0, p0, Lcom/xiaomi/onetrack/util/o;->i:Landroid/content/Context;

    .line 13
    sget-object p0, Lcom/xiaomi/onetrack/f/a;->e:Ljava/lang/String;

    .line 15
    sput-object p0, Lcom/xiaomi/onetrack/util/o;->j:Ljava/lang/String;

    .line 17
    return-void
    .line 19
.end method

.method public static a()Lcom/xiaomi/onetrack/util/o;
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/util/o;->f:Lcom/xiaomi/onetrack/util/o;

    .line 2
    if-nez v0, :cond_1

    .line 4
    const-class v0, Lcom/xiaomi/onetrack/util/o;

    .line 6
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/xiaomi/onetrack/util/o;->f:Lcom/xiaomi/onetrack/util/o;

    .line 9
    if-nez v1, :cond_0

    .line 11
    new-instance v1, Lcom/xiaomi/onetrack/util/o;

    .line 13
    invoke-direct {v1}, Lcom/xiaomi/onetrack/util/o;-><init>()V

    .line 15
    sput-object v1, Lcom/xiaomi/onetrack/util/o;->f:Lcom/xiaomi/onetrack/util/o;

    .line 18
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaomi/onetrack/util/o;->f:Lcom/xiaomi/onetrack/util/o;

    .line 25
    return-object v0
    .line 27
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 11

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/util/o;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/xiaomi/onetrack/util/o;->g:Ljava/lang/String;

    return-object p0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/onetrack/util/o;->k:Z

    const-string v1, "pref_instance_id"

    const-string v2, "custom_id"

    if-eqz v0, :cond_5

    const-string v0, "insId"

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "content://com.miui.analytics.OneTrackProvider/insId"

    .line 4
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "pkg"

    .line 5
    sget-object v6, Lcom/xiaomi/onetrack/util/o;->j:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string/jumbo v5, "sign"

    .line 6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/onetrack/util/o;->j:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/onetrack/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 7
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/o;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 8
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    .line 10
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 11
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v4, "o"

    const-string v5, "getRemoteCacheInstanceId e"

    .line 12
    invoke-static {v4, v5, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    :cond_2
    :goto_1
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 15
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 16
    :cond_3
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/aa;->e(Ljava/lang/String;)V

    .line 17
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 18
    invoke-virtual {p0, v0}, Lcom/xiaomi/onetrack/util/o;->b(Ljava/lang/String;)V

    :goto_3
    move-object v3, v0

    goto :goto_4

    .line 19
    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 20
    invoke-static {v3}, Lcom/xiaomi/onetrack/util/aa;->e(Ljava/lang/String;)V

    goto :goto_4

    .line 21
    :cond_5
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 23
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 24
    :cond_6
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/aa;->e(Ljava/lang/String;)V

    goto :goto_3

    .line 25
    :cond_7
    :goto_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 26
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/onetrack/util/o;->g:Ljava/lang/String;

    .line 27
    iget-boolean v1, p0, Lcom/xiaomi/onetrack/util/o;->k:Z

    if-eqz v1, :cond_8

    .line 28
    invoke-virtual {p0, v0}, Lcom/xiaomi/onetrack/util/o;->b(Ljava/lang/String;)V

    .line 29
    :cond_8
    sget-object p0, Lcom/xiaomi/onetrack/util/o;->g:Ljava/lang/String;

    invoke-static {p0}, Lcom/xiaomi/onetrack/util/aa;->e(Ljava/lang/String;)V

    goto :goto_5

    .line 30
    :cond_9
    sput-object v3, Lcom/xiaomi/onetrack/util/o;->g:Ljava/lang/String;

    .line 31
    :goto_5
    sget-object p0, Lcom/xiaomi/onetrack/util/o;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    .line 32
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "content://com.miui.analytics.OneTrackProvider/insId"

    .line 33
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 34
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 35
    sget-object v2, Lcom/xiaomi/onetrack/util/o;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object p0, p0, Lcom/xiaomi/onetrack/util/o;->i:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 37
    invoke-static {p1}, Lcom/xiaomi/onetrack/util/aa;->e(Ljava/lang/String;)V

    const-string p1, "o"

    const-string/jumbo v0, "setRemoteCacheInstanceId e"

    .line 38
    invoke-static {p1, v0, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
