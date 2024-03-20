.class public final Lcom/xiaomi/onetrack/api/e;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/api/c;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/e;->a:Lcom/xiaomi/onetrack/api/c;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/e;->a:Lcom/xiaomi/onetrack/api/c;

    .line 2
    iget-object p1, p1, Lcom/xiaomi/onetrack/api/c;->d:Lcom/xiaomi/onetrack/api/c$a;

    .line 4
    if-eqz p1, :cond_0

    .line 6
    new-instance p1, Landroid/content/Intent;

    .line 8
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 10
    invoke-virtual {p1, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 13
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 16
    move-result-object p2

    .line 19
    const/16 v0, 0xa

    .line 20
    iput v0, p2, Landroid/os/Message;->what:I

    .line 22
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 24
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/e;->a:Lcom/xiaomi/onetrack/api/c;

    .line 26
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/c;->d:Lcom/xiaomi/onetrack/api/c$a;

    .line 28
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 30
    const-string p0, "BroadcastManager"

    .line 33
    const-string p1, "netReceiver"

    .line 35
    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_0
    return-void
    .line 40
.end method
