.class public final Lcom/xiaomi/onetrack/util/f;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/util/d;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/util/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/util/f;->a:Lcom/xiaomi/onetrack/util/d;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 1
    :try_start_0
    const-string p1, "host"

    .line 2
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 7
    const-string v0, "packagename"

    .line 8
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 13
    const-string v1, "projectId"

    .line 14
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 19
    const-string/jumbo v2, "user"

    .line 20
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 26
    const-string v3, "logon"

    .line 27
    const/4 v4, 0x0

    .line 29
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 30
    move-result v3

    .line 33
    const-string v5, "quickuploadon"

    .line 34
    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 36
    move-result p2

    .line 39
    sget-object v5, Lcom/xiaomi/onetrack/f/a;->e:Ljava/lang/String;

    .line 40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    move-result v6

    .line 45
    if-nez v6, :cond_5

    .line 46
    const-string v6, ""

    .line 48
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result v6

    .line 53
    if-nez v6, :cond_5

    .line 54
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result v0

    .line 59
    if-nez v0, :cond_0

    .line 60
    goto :goto_1

    .line 62
    :cond_0
    sput-boolean v3, Lcom/xiaomi/onetrack/util/p;->a:Z

    .line 63
    sput-boolean p2, Lcom/xiaomi/onetrack/util/p;->b:Z

    .line 65
    if-nez p2, :cond_1

    .line 67
    return-void

    .line 69
    :cond_1
    iget-object p2, p0, Lcom/xiaomi/onetrack/util/f;->a:Lcom/xiaomi/onetrack/util/d;

    .line 70
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 75
    move-result p2

    .line 78
    if-eqz p2, :cond_2

    .line 79
    goto :goto_0

    .line 81
    :cond_2
    const-string p2, ".mi.com"

    .line 82
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 84
    move-result p2

    .line 87
    if-eqz p2, :cond_3

    .line 88
    const/4 v4, 0x1

    .line 90
    :cond_3
    :goto_0
    if-nez v4, :cond_4

    .line 91
    return-void

    .line 93
    :cond_4
    iget-object p0, p0, Lcom/xiaomi/onetrack/util/f;->a:Lcom/xiaomi/onetrack/util/d;

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    new-instance p2, Lcom/xiaomi/onetrack/util/g;

    .line 99
    invoke-direct {p2, p0, p1, v1, v2}, Lcom/xiaomi/onetrack/util/g;-><init>(Lcom/xiaomi/onetrack/util/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {p2}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    goto :goto_2

    .line 107
    :cond_5
    :goto_1
    return-void

    .line 108
    :catch_0
    move-exception p0

    .line 109
    const-string p1, "d"

    .line 110
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 112
    move-result-object p0

    .line 115
    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :goto_2
    return-void
    .line 119
.end method
