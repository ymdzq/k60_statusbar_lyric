.class public final Lcom/xiaomi/onetrack/c/d;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    new-instance p0, Lcom/xiaomi/onetrack/c/e;

    .line 2
    invoke-direct {p0, p2}, Lcom/xiaomi/onetrack/c/e;-><init>(Landroid/content/Intent;)V

    .line 4
    invoke-static {p0}, Lcom/xiaomi/onetrack/c/a;->a(Ljava/lang/Runnable;)V

    .line 7
    return-void
    .line 10
.end method
