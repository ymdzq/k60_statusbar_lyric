.class public final Lcom/xiaomi/onetrack/c/f;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/f/b;

.field public final synthetic b:Lcom/xiaomi/onetrack/c/c;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/c/c;Lcom/xiaomi/onetrack/f/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/c/f;->b:Lcom/xiaomi/onetrack/c/c;

    .line 2
    iput-object p2, p0, Lcom/xiaomi/onetrack/c/f;->a:Lcom/xiaomi/onetrack/f/b;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    const-string v0, "EventManager"

    .line 2
    const-string v1, "addEvent: "

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/onetrack/c/f;->b:Lcom/xiaomi/onetrack/c/c;

    .line 6
    iget-object v3, p0, Lcom/xiaomi/onetrack/c/f;->a:Lcom/xiaomi/onetrack/f/b;

    .line 8
    invoke-static {v2, v3}, Lcom/xiaomi/onetrack/c/c;->a(Lcom/xiaomi/onetrack/c/c;Lcom/xiaomi/onetrack/f/b;)V

    .line 10
    invoke-static {}, Lcom/xiaomi/onetrack/a/a;->a()Lcom/xiaomi/onetrack/a/a;

    .line 13
    move-result-object v2

    .line 16
    iget-object v3, p0, Lcom/xiaomi/onetrack/c/f;->a:Lcom/xiaomi/onetrack/f/b;

    .line 17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :try_start_1
    new-instance v4, Lcom/xiaomi/onetrack/a/b;

    .line 22
    invoke-direct {v4, v2, v3}, Lcom/xiaomi/onetrack/a/b;-><init>(Lcom/xiaomi/onetrack/a/a;Lcom/xiaomi/onetrack/f/b;)V

    .line 24
    invoke-static {v4}, Lcom/xiaomi/onetrack/a/a/a;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v2

    .line 31
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    const-string v4, "filterAdMonitor Throwable\uff1a"

    .line 34
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 42
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v2

    .line 49
    const-string v3, "AdMonitorManager"

    .line 50
    invoke-static {v3, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/xiaomi/onetrack/c/f;->a:Lcom/xiaomi/onetrack/f/b;

    .line 60
    iget-object v1, v1, Lcom/xiaomi/onetrack/f/b;->h:Ljava/lang/String;

    .line 62
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v1, "data:"

    .line 67
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v1, p0, Lcom/xiaomi/onetrack/c/f;->a:Lcom/xiaomi/onetrack/f/b;

    .line 72
    iget-object v1, v1, Lcom/xiaomi/onetrack/f/b;->j:Lorg/json/JSONObject;

    .line 74
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 76
    move-result-object v1

    .line 79
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v1

    .line 86
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object p0, p0, Lcom/xiaomi/onetrack/c/f;->a:Lcom/xiaomi/onetrack/f/b;

    .line 90
    iget p0, p0, Lcom/xiaomi/onetrack/f/b;->i:I

    .line 92
    sget-object v1, Lcom/xiaomi/onetrack/c/s$a;->a:Lcom/xiaomi/onetrack/c/s;

    .line 94
    const/4 v2, 0x0

    .line 96
    invoke-virtual {v1, p0, v2}, Lcom/xiaomi/onetrack/c/s;->a(IZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 97
    goto :goto_1

    .line 100
    :catch_0
    move-exception p0

    .line 101
    const-string v1, "EventManager.addEvent exception: "

    .line 102
    invoke-static {v0, v1, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    :goto_1
    return-void
    .line 107
.end method
