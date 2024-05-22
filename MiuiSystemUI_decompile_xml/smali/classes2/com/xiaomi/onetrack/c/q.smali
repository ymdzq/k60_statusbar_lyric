.class public final Lcom/xiaomi/onetrack/c/q;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/xiaomi/onetrack/c/p;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/c/p;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/c/q;->b:Lcom/xiaomi/onetrack/c/p;

    .line 2
    iput-boolean p2, p0, Lcom/xiaomi/onetrack/c/q;->a:Z

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/c/q;->b:Lcom/xiaomi/onetrack/c/p;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v1, Lcom/xiaomi/onetrack/c/r;

    .line 7
    invoke-direct {v1, v0}, Lcom/xiaomi/onetrack/c/r;-><init>(Lcom/xiaomi/onetrack/c/p;)V

    .line 9
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    .line 12
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaomi/onetrack/c/q;->a:Z

    .line 15
    if-eqz v0, :cond_1

    .line 17
    const/4 v0, 0x1

    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x2

    .line 21
    filled-new-array {v1, v0, v2}, [I

    .line 22
    move-result-object v0

    .line 25
    :goto_0
    const/4 v2, 0x3

    .line 26
    if-ge v1, v2, :cond_1

    .line 27
    aget v2, v0, v1

    .line 29
    invoke-static {v2}, Lcom/xiaomi/onetrack/b/n;->a(I)I

    .line 31
    move-result v3

    .line 34
    iget-object v4, p0, Lcom/xiaomi/onetrack/c/q;->b:Lcom/xiaomi/onetrack/c/p;

    .line 35
    invoke-virtual {v4, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 37
    move-result v4

    .line 40
    if-nez v4, :cond_0

    .line 41
    iget-object v4, p0, Lcom/xiaomi/onetrack/c/q;->b:Lcom/xiaomi/onetrack/c/p;

    .line 43
    int-to-long v5, v3

    .line 45
    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 49
    goto :goto_0

    .line 51
    :catch_0
    move-exception p0

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    const-string v1, "netReceiver error: "

    .line 55
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p0

    .line 66
    const-string v0, "UploadTimer"

    .line 67
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_1
    return-void
    .line 72
.end method
