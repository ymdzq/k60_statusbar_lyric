.class public final Lcom/xiaomi/onetrack/c/e;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/c/e;->a:Landroid/content/Intent;

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
    iget-object p0, p0, Lcom/xiaomi/onetrack/c/e;->a:Landroid/content/Intent;

    .line 2
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 13
    const-string v1, "android.intent.action.SCREEN_ON"

    .line 14
    if-nez v0, :cond_0

    .line 16
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    :cond_0
    const-string v0, "EventManager"

    .line 24
    const-string v2, "screen on/off"

    .line 26
    invoke-static {v0, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result p0

    .line 34
    const/4 v0, 0x0

    .line 35
    if-eqz p0, :cond_1

    .line 36
    move p0, v0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 p0, 0x2

    .line 40
    :goto_0
    sget-object v1, Lcom/xiaomi/onetrack/c/s$a;->a:Lcom/xiaomi/onetrack/c/s;

    .line 41
    invoke-virtual {v1, p0, v0}, Lcom/xiaomi/onetrack/c/s;->a(IZ)V

    .line 43
    invoke-static {}, Lcom/xiaomi/onetrack/a/c/b;->a()Lcom/xiaomi/onetrack/a/c/b;

    .line 46
    move-result-object p0

    .line 49
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/a/c/b;->b()V

    .line 50
    :cond_2
    return-void
    .line 53
.end method
