.class public final Lcom/xiaomi/onetrack/c/n;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/xiaomi/onetrack/c/l;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/c/l;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/c/n;->b:Lcom/xiaomi/onetrack/c/l;

    .line 2
    iput-object p2, p0, Lcom/xiaomi/onetrack/c/n;->a:Ljava/lang/String;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/c/n;->a:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/xiaomi/onetrack/c/l;->b(Ljava/lang/String;)Ljava/util/List;

    .line 4
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    move-result v1

    .line 13
    if-lez v1, :cond_0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 29
    check-cast v1, Lorg/json/JSONObject;

    .line 30
    const-string v2, "eventName"

    .line 32
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 37
    const-string v3, "data"

    .line 38
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 43
    invoke-static {}, Lcom/xiaomi/onetrack/api/ar;->a()Lcom/xiaomi/onetrack/api/ar;

    .line 44
    move-result-object v3

    .line 47
    iget-object v4, p0, Lcom/xiaomi/onetrack/c/n;->a:Ljava/lang/String;

    .line 48
    invoke-virtual {v3, v4, v2, v1}, Lcom/xiaomi/onetrack/api/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/c/n;->b:Lcom/xiaomi/onetrack/c/l;

    .line 54
    iget-object p0, p0, Lcom/xiaomi/onetrack/c/n;->a:Ljava/lang/String;

    .line 56
    invoke-virtual {v0, p0}, Lcom/xiaomi/onetrack/c/l;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    goto :goto_1

    .line 61
    :catch_0
    move-exception p0

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    const-string/jumbo v1, "trackSystemImpCache event error: "

    .line 65
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    const-string v1, "SystemImpCacheManager"

    .line 71
    invoke-static {p0, v0, v1}, Lcom/xiaomi/onetrack/CrashAnalysis$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 73
    :goto_1
    return-void
    .line 76
.end method
