.class Lcom/xiaomi/onetrack/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/xiaomi/onetrack/b/a;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/b/a;Lorg/json/JSONObject;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/xiaomi/onetrack/b/c;->b:Lcom/xiaomi/onetrack/b/a;

    iput-object p2, p0, Lcom/xiaomi/onetrack/b/c;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, "checkAppConfigVersion start"

    const-string v1, "AppConfigUpdater"

    .line 452
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object p0, p0, Lcom/xiaomi/onetrack/b/c;->a:Lorg/json/JSONObject;

    const-string v0, "config"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_4

    const/4 v0, 0x0

    move v2, v0

    .line 455
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 456
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v4, ""

    goto :goto_1

    :cond_0
    const-string v4, "appId"

    .line 457
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 458
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "appId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_2

    :cond_1
    const-string v5, "version"

    .line 460
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 461
    :goto_2
    invoke-static {}, Lcom/xiaomi/onetrack/b/h;->a()Lcom/xiaomi/onetrack/b/h;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/xiaomi/onetrack/b/h;->e(Ljava/lang/String;)I

    move-result v5

    .line 462
    invoke-static {v4}, Lcom/xiaomi/onetrack/b/a;->e(Ljava/lang/String;)Z

    move-result v6

    .line 463
    invoke-static {}, Lcom/xiaomi/onetrack/b/a;->b()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/xiaomi/onetrack/b/a;->b()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    goto :goto_3

    :cond_2
    move v7, v0

    .line 464
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "local version: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", server version: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", canUpdate: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", isScheduling: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v3, :cond_3

    if-le v3, v5, :cond_3

    if-eqz v6, :cond_3

    if-nez v7, :cond_3

    .line 467
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 468
    iput v0, v3, Landroid/os/Message;->what:I

    .line 469
    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 470
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    const-wide v7, 0x413b774000000000L    # 1800000.0

    mul-double/2addr v5, v7

    double-to-long v5, v5

    .line 471
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "the message will be handled after "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-static {}, Lcom/xiaomi/onetrack/b/a;->c()Lcom/xiaomi/onetrack/b/a$b;

    move-result-object v7

    invoke-virtual {v7, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 473
    invoke-static {}, Lcom/xiaomi/onetrack/b/a;->b()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method
