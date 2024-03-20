.class Lcom/xiaomi/onetrack/c/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/xiaomi/onetrack/c/p;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/c/p;Z)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/xiaomi/onetrack/c/q;->b:Lcom/xiaomi/onetrack/c/p;

    iput-boolean p2, p0, Lcom/xiaomi/onetrack/c/q;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 114
    iget-object v0, p0, Lcom/xiaomi/onetrack/c/q;->b:Lcom/xiaomi/onetrack/c/p;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/c/p;->a()V

    .line 116
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaomi/onetrack/c/q;->a:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 117
    filled-new-array {v1, v0, v2}, [I

    move-result-object v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 123
    aget v2, v0, v1

    .line 124
    invoke-static {v2}, Lcom/xiaomi/onetrack/b/n;->a(I)I

    move-result v3

    .line 125
    iget-object v4, p0, Lcom/xiaomi/onetrack/c/q;->b:Lcom/xiaomi/onetrack/c/p;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 126
    iget-object v4, p0, Lcom/xiaomi/onetrack/c/q;->b:Lcom/xiaomi/onetrack/c/p;

    int-to-long v5, v3

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "netReceiver error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UploadTimer"

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
