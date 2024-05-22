.class public final Lcom/xiaomi/onetrack/api/aq;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/api/ao;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/ao;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/aq;->a:Lcom/xiaomi/onetrack/api/ao;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/xiaomi/onetrack/c/i;->b()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/aq;->a:Lcom/xiaomi/onetrack/api/ao;

    .line 9
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ao;->f:Lcom/xiaomi/onetrack/Configuration;

    .line 11
    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/c/l;->a()Lcom/xiaomi/onetrack/c/l;

    .line 13
    move-result-object v0

    .line 16
    iget-object p0, p0, Lcom/xiaomi/onetrack/Configuration;->a:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, p0}, Lcom/xiaomi/onetrack/c/l;->c(Ljava/lang/String;)V

    .line 19
    const/4 p0, 0x0

    .line 22
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    invoke-static {}, Lcom/xiaomi/onetrack/c/l;->a()Lcom/xiaomi/onetrack/c/l;

    .line 29
    move-result-object v0

    .line 32
    invoke-virtual {v0, p0}, Lcom/xiaomi/onetrack/c/l;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_0

    .line 36
    :catch_0
    move-exception p0

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    const-string/jumbo v1, "trackCachedEvents: "

    .line 40
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 49
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 56
    const-string v0, "OneTrackSystemImp"

    .line 57
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_1
    :goto_0
    return-void
    .line 62
.end method
