.class public final Lcom/xiaomi/onetrack/f/h;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/f/h;->a:Landroid/content/Context;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/xiaomi/onetrack/c/a;->a()V

    .line 2
    invoke-static {}, Lcom/xiaomi/onetrack/api/c;->a()Lcom/xiaomi/onetrack/api/c;

    .line 5
    move-result-object p0

    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/xiaomi/onetrack/api/c;->m:Z

    .line 10
    invoke-static {}, Lcom/xiaomi/onetrack/api/c;->a()Lcom/xiaomi/onetrack/api/c;

    .line 12
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    sget-boolean v1, Lcom/xiaomi/onetrack/api/c;->j:Z

    .line 19
    if-nez v1, :cond_0

    .line 21
    sput-boolean v0, Lcom/xiaomi/onetrack/api/c;->j:Z

    .line 23
    invoke-static {}, Lcom/xiaomi/onetrack/g/c;->b()Z

    .line 25
    move-result v0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    const-string v2, "Get network status for the first time, isNetworkConnected: "

    .line 31
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 42
    const-string v2, "BroadcastManager"

    .line 43
    invoke-static {v2, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    sput-boolean v0, Lcom/xiaomi/onetrack/b/n;->c:Z

    .line 48
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    .line 50
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 52
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    sget-object v1, Lcom/xiaomi/onetrack/f/a;->a:Landroid/content/Context;

    .line 60
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/c;->o:Lcom/xiaomi/onetrack/api/e;

    .line 62
    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 64
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 70
    const-string v0, "register net receiver"

    .line 71
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    goto :goto_0

    .line 76
    :catchall_0
    const/4 p0, 0x0

    .line 77
    sput-boolean p0, Lcom/xiaomi/onetrack/api/c;->j:Z

    .line 78
    :cond_0
    :goto_0
    sget-object p0, Lcom/xiaomi/onetrack/c/c;->h:Lcom/xiaomi/onetrack/c/c;

    .line 80
    if-nez p0, :cond_2

    .line 82
    const-class p0, Lcom/xiaomi/onetrack/c/c;

    .line 84
    monitor-enter p0

    .line 86
    :try_start_1
    sget-object v0, Lcom/xiaomi/onetrack/c/c;->h:Lcom/xiaomi/onetrack/c/c;

    .line 87
    if-nez v0, :cond_1

    .line 89
    new-instance v0, Lcom/xiaomi/onetrack/c/c;

    .line 91
    invoke-direct {v0}, Lcom/xiaomi/onetrack/c/c;-><init>()V

    .line 93
    sput-object v0, Lcom/xiaomi/onetrack/c/c;->h:Lcom/xiaomi/onetrack/c/c;

    .line 96
    :cond_1
    monitor-exit p0

    .line 98
    goto :goto_1

    .line 99
    :catchall_1
    move-exception v0

    .line 100
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 101
    throw v0

    .line 102
    :cond_2
    :goto_1
    return-void
    .line 103
.end method
