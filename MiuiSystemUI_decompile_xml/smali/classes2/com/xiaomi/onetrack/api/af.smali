.class public final Lcom/xiaomi/onetrack/api/af;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Lcom/xiaomi/onetrack/api/m;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/af;->c:Lcom/xiaomi/onetrack/api/m;

    .line 2
    iput-object p2, p0, Lcom/xiaomi/onetrack/api/af;->a:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/xiaomi/onetrack/api/af;->b:Ljava/util/Map;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/af;->c:Lcom/xiaomi/onetrack/api/m;

    .line 2
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/af;->a:Ljava/lang/String;

    .line 4
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/api/m;->a(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/af;->b:Ljava/util/Map;

    .line 13
    const/4 v1, 0x1

    .line 15
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/r;->a(ZLjava/util/Map;)Lorg/json/JSONObject;

    .line 16
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/af;->c:Lcom/xiaomi/onetrack/api/m;

    .line 20
    invoke-static {v1}, Lcom/xiaomi/onetrack/api/m;->b(Lcom/xiaomi/onetrack/api/m;)Lorg/json/JSONObject;

    .line 22
    move-result-object v1

    .line 25
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/af;->a:Ljava/lang/String;

    .line 26
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/af;->c:Lcom/xiaomi/onetrack/api/m;

    .line 28
    iget-object v4, v3, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    .line 30
    iget-object v3, v3, Lcom/xiaomi/onetrack/api/m;->i:Lcom/xiaomi/onetrack/util/v;

    .line 32
    new-instance v5, Lorg/json/JSONObject;

    .line 34
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 36
    invoke-static {v2, v4, v3}, Lcom/xiaomi/onetrack/f/b;->a(Ljava/lang/String;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/util/v;)Lorg/json/JSONObject;

    .line 39
    move-result-object v2

    .line 42
    const-string v3, "H"

    .line 43
    invoke-virtual {v5, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    const-string v2, "B"

    .line 48
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/r;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 50
    move-result-object v0

    .line 53
    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/af;->c:Lcom/xiaomi/onetrack/api/m;

    .line 61
    iget-object v1, v1, Lcom/xiaomi/onetrack/api/m;->b:Lcom/xiaomi/onetrack/api/j;

    .line 63
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/af;->a:Ljava/lang/String;

    .line 65
    invoke-interface {v1, p0, v0}, Lcom/xiaomi/onetrack/api/j;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    goto :goto_0

    .line 70
    :catch_0
    move-exception p0

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    const-string/jumbo v1, "track map error: "

    .line 74
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    const-string v1, "OneTrackImp"

    .line 80
    invoke-static {p0, v0, v1}, Lcom/xiaomi/onetrack/CrashAnalysis$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 82
    :goto_0
    return-void
    .line 85
.end method
