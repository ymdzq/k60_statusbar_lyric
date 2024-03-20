.class public final Lcom/xiaomi/onetrack/util/d;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static volatile h:Lcom/xiaomi/onetrack/util/d;


# instance fields
.field public final j:Landroid/content/Context;

.field public final k:Lcom/xiaomi/onetrack/util/e;

.field public final l:Lcom/xiaomi/onetrack/util/f;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/xiaomi/onetrack/util/e;

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    move-result-object v1

    .line 10
    invoke-direct {v0, p0, v1}, Lcom/xiaomi/onetrack/util/e;-><init>(Lcom/xiaomi/onetrack/util/d;Landroid/os/Looper;)V

    .line 11
    iput-object v0, p0, Lcom/xiaomi/onetrack/util/d;->k:Lcom/xiaomi/onetrack/util/e;

    .line 14
    new-instance v3, Lcom/xiaomi/onetrack/util/f;

    .line 16
    invoke-direct {v3, p0}, Lcom/xiaomi/onetrack/util/f;-><init>(Lcom/xiaomi/onetrack/util/d;)V

    .line 18
    iput-object v3, p0, Lcom/xiaomi/onetrack/util/d;->l:Lcom/xiaomi/onetrack/util/f;

    .line 21
    sget-object v2, Lcom/xiaomi/onetrack/f/a;->a:Landroid/content/Context;

    .line 23
    iput-object v2, p0, Lcom/xiaomi/onetrack/util/d;->j:Landroid/content/Context;

    .line 25
    if-nez v2, :cond_0

    .line 27
    goto :goto_0

    .line 29
    :cond_0
    :try_start_0
    new-instance v4, Landroid/content/IntentFilter;

    .line 30
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 32
    const-string p0, "com.xiaomi.onetrack.DEBUG"

    .line 35
    invoke-virtual {v4, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 37
    const-string v5, "com.xiaomi.onetrack.permissions.DEBUG_MODE"

    .line 40
    const/4 v6, 0x0

    .line 42
    const/4 v7, 0x2

    .line 43
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_0

    .line 47
    :catch_0
    move-exception p0

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    const-string v1, "registerDebugModeReceiver: "

    .line 51
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 62
    const-string v0, "d"

    .line 63
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :goto_0
    return-void
    .line 68
.end method

.method public static c(Lcom/xiaomi/onetrack/util/d;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 5
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7
    const-string p1, "code"

    .line 10
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 12
    move-result p1

    .line 15
    const-string v1, "message"

    .line 16
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 21
    const-string v2, "result"

    .line 22
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 27
    const-string/jumbo v3, "success"

    .line 28
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 31
    move-result v0

    .line 34
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 35
    move-result-object v3

    .line 38
    const/16 v4, 0x64

    .line 39
    iput v4, v3, Landroid/os/Message;->what:I

    .line 41
    new-instance v4, Landroid/os/Bundle;

    .line 43
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    const-string v5, "hint"

    .line 48
    if-nez p1, :cond_0

    .line 50
    if-eqz v0, :cond_0

    .line 52
    :try_start_1
    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :goto_0
    invoke-virtual {v3, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 61
    iget-object p0, p0, Lcom/xiaomi/onetrack/util/d;->k:Lcom/xiaomi/onetrack/util/e;

    .line 64
    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    goto :goto_1

    .line 69
    :catch_0
    move-exception p0

    .line 70
    const-string p1, "d"

    .line 71
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    .line 73
    move-result-object p0

    .line 76
    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :goto_1
    return-void
    .line 80
.end method
