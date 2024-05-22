.class public final Lcom/xiaomi/onetrack/c/d;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


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
