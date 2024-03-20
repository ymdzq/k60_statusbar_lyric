.class public final Lcom/xiaomi/onetrack/api/d;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/api/c;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/d;->a:Lcom/xiaomi/onetrack/api/c;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/d;->a:Lcom/xiaomi/onetrack/api/c;

    .line 2
    iget-object p1, p1, Lcom/xiaomi/onetrack/api/c;->d:Lcom/xiaomi/onetrack/api/c$a;

    .line 4
    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    return-void

    .line 18
    :cond_0
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result p2

    .line 24
    const-wide/16 v0, 0x1f4

    .line 25
    if-eqz p2, :cond_1

    .line 27
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/d;->a:Lcom/xiaomi/onetrack/api/c;

    .line 29
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/c;->d:Lcom/xiaomi/onetrack/api/c$a;

    .line 31
    const/16 p1, 0x64

    .line 33
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 35
    goto :goto_0

    .line 38
    :cond_1
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 39
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result p1

    .line 44
    if-eqz p1, :cond_2

    .line 45
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/d;->a:Lcom/xiaomi/onetrack/api/c;

    .line 47
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/c;->d:Lcom/xiaomi/onetrack/api/c$a;

    .line 49
    const/16 p1, 0x65

    .line 51
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    .line 58
    const-string p2, "screenReceiver throwable: "

    .line 60
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 68
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 75
    const-string p1, "BroadcastManager"

    .line 76
    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_2
    :goto_0
    return-void
    .line 81
.end method
